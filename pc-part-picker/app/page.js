import { useState } from 'react';
import { useRouter } from 'next/router';

"use client";

export default function Home() {
  const router = useRouter();

  const [userName, setUserName] = useState("");
  const [password, setPassword] = useState("");

  const handleLogin = async (e) => {
    e.preventDefault();
    const res = await fetch("http://localhost:3000/api/login", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        userName,
        password,
      }),
    });
    const data = await res.json();
    if (data.status === 400 || !data) {
      window.alert("Invalid Credentials");
    } else {
      window.alert("Login Success");
      router.push("/home");
    }
  };

  return (
    <div>
      {/* Your component content goes here */}
      <form onSubmit={handleLogin}>
        <label>
          Username:
          <input type="text" value={userName} onChange={(e) => setUserName(e.target.value)} />
        </label>
        <br />
        <label>
          Password:
          <input type="password" value={password} onChange={(e) => setPassword(e.target.value)} />
        </label>
        <br />
        <button type="submit">Login</button>
      </form>
    </div>
  );
}
