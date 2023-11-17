'use client';
import {useSession} from 'next-auth/react'
import React, { useState, useEffect } from 'react';
import { useRouter, usePathname } from 'next/navigation';


const Checkout = () => {

    const { data: session, status } = useSession();

    let pathname = usePathname();
    pathname = pathname.substring(1,pathname.length);
    const [total, setTotal] = useState(0);

    const handleDeleteCart = async ()=>
    {
        if (!session) {
            return; // Do nothing if session is not defined
        }
        
        event.preventDefault()
        const response = await fetch('/api/delete-cart', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({}),
        })
        const data = await response.json()
        if (data.error) {
            alert(data.error)
        } else {
            console.log("SUCCESS");
            
            
        }
        setTotal(0);
  }

    useEffect(() => {
        const fetchData = async () => {
          const response = await fetch('/api/checkout', {
            method: 'POST',
            headers: {
              'Content-Type': 'application/json',
            },
            body: JSON.stringify({ user: session.user.username }), // Send the component name as the request body
          });
    
          const data = await response.json();
          setTotal(data);
          console.log(data); // Store the fetched data in the state variable
        };
        
        fetchData();
    }, [pathname]); // Execute the fetchData function whenever the pathname changes
    
    return (
        <div>Checkout

        <h1> Total : {total.total_price}</h1>
        {console.log(total.total_price)}
        <button onClick = {handleDeleteCart}> BUY </button>
    </div>
  )
}

export default Checkout