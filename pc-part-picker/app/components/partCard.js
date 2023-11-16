'use client';
import React from 'react';
import { useRouter } from 'next/navigation';

const PartCard = ({onclick, name, price}) => {
  const router = useRouter();

  return (
    <div onClick = {onclick} className="max-w-md mx-auto bg-white rounded-xl shadow-md overflow-hidden md:max-w-xl m-4" >
      <div className="md:flex">
        <div className="md:flex-shrink-0">
          {/* <img
            className="h-48 w-full object-cover md:w-48"
            src={`https://placekitten.com/300/200?${name}`}
            alt={`${name} Part`}
          /> */}
        </div>
        <div className="p-8">
          <div className="uppercase tracking-wide text-sm text-indigo-500 font-semibold">
            {name}
          </div>
          <p className="block mt-1 text-lg leading-tight font-medium text-black">{price}</p>
        </div>
      </div>
    </div>
  );
};

export default PartCard;
