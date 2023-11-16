import NextAuth from 'next-auth'
import CredentialsProvider from "next-auth/providers/credentials";
import bcrypt from 'bcryptjs';

export const authOptions= {
  providers: [
    CredentialsProvider({
      name: 'Credentials',
      credentials: {
        username: { label: "Username", type: "text" },
        password: {  label: "Password", type: "password" }
      },
      authorize: async (credentials) => {
        const response = await fetch('/api/user', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json'
          },
          body: JSON.stringify({ UserID: credentials.username })
        });

        if (!response.ok) {
          throw new Error("Response is not OK");
        }

        const data = await response.json();

        if (data.Error) {
          throw new Error(data.Error);
        }

        const isMatch = await bcrypt.compare(credentials.password, data.HashedPassword);
        console.log(isMatch)

        if (isMatch) {
          const user = { id: 1, username: credentials.username }
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
