'use client';
import { useRouter, usePathname } from 'next/navigation';
import React, { useState, useEffect } from 'react';
import fetch from 'node-fetch';


const ComponentPage = () => {

  const [componentData, setComponentData] = useState(null);
  const router = useRouter();
  let pathname = usePathname();
  pathname = pathname.substring(1,pathname.length);

  useEffect(() => {
    const fetchData = async () => {
      const response = await fetch('/api/get-component', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ component: pathname }), // Send the component name as the request body
      });

      const data = await response.json();
      setComponentData(data); // Store the fetched data in the state variable
    };

    fetchData();
  }, [pathname]); // Execute the fetchData function whenever the pathname changes

  console.log("data",componentData)

  // const id = query.id;
  return (
    <div>
    <h1>Component: {pathname}</h1>
    </div>

  );
}

export default ComponentPage;
