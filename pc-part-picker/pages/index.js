import Image from 'next/image';
import { Inter } from 'next/font/google'; 
import { useState } from 'react';
import { useRouter } from 'next/router';


const inter = Inter({ subsets: ['latin'] });



export default function
 
Home() {
    const router = useRouter();

  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');
  const [isLoggedIn, setIsLoggedIn] = useState(false);

  const handleSubmit = () => {
    if (username === 'admin' && password === 'admin') {
      alert('Login Successful');
      setIsLoggedIn(true);
      router.push('/home');
    } else {
      alert('Invalid username or password');
    }
  }

    if(isLoggedIn){
        
    }
  return (
    <div className="grid h-screen place-items-center border-2 border-sky-500">
      <div className="flex flex-col items-center border-2 border-green-400 w-1/2 h-1/2">
        <h1 className="font-bold text-4xl">Login</h1>
        <label className="font-bold text-2xl">Username</label>
        <input
          onChange={(e) => setUsername(e.target.value)}
          value={username}
          className="border-2 border-green-400 text-black"
          type="text"
        />
        <label className="font-bold text-2xl">Password</label>
        <input
          onChange={(e) => setPassword(e.target.value)}
          value={password}
          className="border-2 border-green-400 text-black"
          type="password"
        />
        <button onClick={handleSubmit} className="border-2 border-green-400">
          Login
        </button>
      </div>

    </div>
  );
}
