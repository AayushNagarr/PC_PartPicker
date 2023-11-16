import NextAuth from 'next-auth'
import CredentialsProvider from "next-auth/providers/credentials";
import {compare} from 'bcrypt';
import { NextResponse } from 'next/server';

export const authOptions= {
  providers: [
    CredentialsProvider({
      name: 'Credentials',
      credentials: {
        username: { label: "username", type: "text" },
        password: {  label: "password", type: "password" }
      },
      authorize: async (credentials) => {
        const response = await fetch('http://localhost:3000/api/user', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json'
          },
          body: JSON.stringify({ UserID: credentials.username })
        });
        console.log("THIS IS THE API/USERS RESPONSE", response);
        
        if (!response.ok) {
          throw new Error("Response is not OK");
        }
        
        const data = await response.json();
        console.log("received username credential ", credentials.username);
        console.log("THIS IS DATA FROM RESPONSE", data, "thiS IS our password", credentials.password);

        if (data.Error) {
          console.log("ERRRRRORRRR");
          throw new Error(data.Error);
        }
        
        const isMatch = await compare(credentials?.password || '', data.password);
        console.log("MATCHHHHHHHHHHHHHHHHHHHHHH",isMatch)

        if (isMatch) {
          const user = {id: 1, username: credentials.username }
          console.log("Next auth user", user.username);
          return user
        } else {
          return null
        }
      }
    })
  ],
  pages: {
    signIn: "/login",
  },
};

const handler = NextAuth(authOptions)

export { handler as GET,handler as POST}

  
// import NextAuth from "next-auth"
// import CredentialsProvider from "next-auth/providers/credentials"
// import {compare } from 'bcrypt';
// import pool from '../../../../lib/db';

// const handler = NextAuth({
//   session:{
//     strategy: "jwt"
//   },
//   pages : {
//     signIn: '/login',
//   },
//     providers: [CredentialsProvider({
//         credentials: {
//             username: {},
//             password: {}
//           },
//           async authorize(credentials, req) {
//             // Add logic here to look up the user from the credentials supplied
//             const client = await pool.connect();
//             const query = 'SELECT * FROM users WHERE username = $1';
//             const values = [credentials?.username];
//             const result = await client.query(query, values);
//             const user = result.rows[0];

//             const passwordCorrect = await compare(credentials?.password || '',
//              user.password);

//             console.log({passwordCorrect})

//             if(passwordCorrect){
//                 return{
//                   id: user.id,
//                   username: user.username,
//                 };
//             }
//             client.release();
//             return null;
//           }
//     })]
// })

// export {handler as GET, handler as POST}
