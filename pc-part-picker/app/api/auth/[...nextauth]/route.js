import NextAuth from "next-auth"
import CredentialsProvider from "next-auth/providers/credentials"
import {compare } from 'bcrypt';
import pool from '../../../../lib/db';

const handler = NextAuth({
  session:{
    strategy: "jwt"
  },
  pages : {
    signIn: '/login',
  },
    providers: [CredentialsProvider({
        credentials: {
            username: {},
            password: {}
          },
          async authorize(credentials, req) {
            // Add logic here to look up the user from the credentials supplied
            const client = await pool.connect();
            const query = 'SELECT * FROM users WHERE username = $1';
            const values = [credentials?.username];
            const result = await client.query(query, values);
            const user = result.rows[0];

            const passwordCorrect = await compare(credentials?.password || '',
             user.password);

            console.log({passwordCorrect})

            if(passwordCorrect){
                return{
                  id: user.id,
                  username: user.username,
                };
            }
            client.release();
            return null;
          }
    })]
})

export {handler as GET, handler as POST}