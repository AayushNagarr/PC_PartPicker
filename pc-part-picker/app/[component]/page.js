'use client';
import { useRouter, usePathname } from 'next/navigation';
import React, { useState, useEffect } from 'react';
import fetch from 'node-fetch';
import PartCard from '../components/part';


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

  console.log("data",componentData);
  const renderedComponents = Array.isArray(componentData)
    ? componentData.map((part, index) => (
        <PartCard key={index} name={part.part_name} price={part.price} />
      ))
    : <h1>Loading...</h1>;

  // const id = query.id;
  return (
     <div>{renderedComponents}</div>

  );
}

export default ComponentPage;
