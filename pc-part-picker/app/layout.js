import { Inter } from 'next/font/google'
import './globals.css'
import {getServerSession} from 'next-auth'
import Link from 'next/link'
import Logout from './logout'

const inter = Inter({ subsets: ['latin'] })

export const metadata = {
  title: 'Create Next App',
  description: 'Generated by create next app',
}

export default async function RootLayout({ children }) {
  const session = await getServerSession();
  return (
    <html lang="en">
      <body className={inter.className}>
        <nav className = "bg-white border-2 text-black from-stone-700 to-green-600">
          {!!session && 
            <Logout/>
          }
          {
            !session &&
            
            <Link href = "/login">
              Login
              </Link>
              
          }
          </nav>
        {children}</body>
    </html>
  )
}
