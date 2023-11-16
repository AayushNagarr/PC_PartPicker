'use client';
import { useRouter, usePathname } from 'next/navigation';
import React, { useState, useEffect } from 'react';
import fetch from 'node-fetch';
import PartCard from '../components/partCard';
import Modal from 'react-modal'
import {useSession} from "next-auth/react"


const ComponentPage = () => {
  const [modalOpen, setModalOpen] = useState(false);
  const [componentData, setComponentData] = useState(null);
  const [currentComponent, setCurrentComponent] = useState({});
  const router = useRouter(); let pathname = usePathname();
  pathname = pathname.substring(1,pathname.length);

  const t = useSession();
  const { data: session, status } = t;
  if (status === "authenticated") {
    console.log(`Signed in as ${JSON.stringify(t)}`);
  }

  

  const handleAddToCart = ()=>
  {
    console.log("In handleAddToCart");
    setModalOpen(false);
  }

  useEffect(() => {
    console.log(session);
  }, [session]);

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
        <PartCard onclick = {() => {setModalOpen(true);setCurrentComponent(componentData[index]);}} key={index} name={part.part_name} price={part.price} arrtibutes={part}/>
      ))
    : <h1>Loading...</h1>;

  // const id = query.id;
  return (
     <div>
      
    {session && renderedComponents}
 
      <Modal 
          isOpen={modalOpen} 
          onRequestClose={() => setModalOpen(false)} 
          className="flex items-center justify-center mt-10 outline-none"
      >
          <div className="bg-white rounded-lg w-1/2 p-10 shadow-lg">
          <div className="uppercase tracking-wide text-sm text-indigo-500 font-semibold">
            {componentData && currentComponent.part_name}
          </div>
          <p className="block mt-1 text-lg leading-tight font-medium text-black">{componentData && currentComponent.price}</p>
          <div>
          <h2>JSON Object:</h2>
          {currentComponent ? (
            <ul>
              {Object.entries(currentComponent).map(([attribute, value]) => (
              // Ignore specific attributes like "part_name" and "price"
             (attribute !== 'part_name' && attribute !== 'price' && attribute !== 'original_table' && attribute !=='id') && (
             <li key={attribute} className='text-black'>
               <strong>{attribute}:</strong> {value===null ? 'N/A' : value}
             </li>
              )
            ))}
          </ul>
  ) : (
    <p>No JSON object available.</p>
  )}
</div>
            <button className="bg-black text-white" onClick={handleAddToCart}>
            Add to Cart
          </button>
        </div>
      </Modal>
    </div>

  );
}

export default ComponentPage;
