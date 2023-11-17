'use client';
import {useSession} from 'next-auth/react'
import React, { useState, useEffect } from 'react';
import { useRouter, usePathname } from 'next/navigation';


const Checkout = () => {

    const { data: session, status } = useSession();

    let pathname = usePathname();
    pathname = pathname.substring(1,pathname.length);
    const [total, setTotal] = useState(0);


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
          setTotal(data); // Store the fetched data in the state variable
        };
        
        fetchData();
    }, [pathname]); // Execute the fetchData function whenever the pathname changes
    
    return (
        <div>Checkout

        <h1> Total : {total[0].total_price}</h1>
        {console.log(total[0].total_price)}
    </div>
  )
}

export default Checkout