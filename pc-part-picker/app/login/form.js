'use client'
import {signIn} from 'next-auth/react'
import {useRouter} from 'next/navigation'
export default function Form(){
    const router = useRouter();
   const handleSubmit = async (e) =>
    {
        e.preventDefault();
        
        const formData = new FormData(e.currentTarget);
        const response = await signIn('credentials', {
            username: formData.get("username"),
            password: formData.get("password"),
            redirect:false,
            
        });
        console.log({response});
        if(!response?.error){
            router.push('/dashboard');
            router.refresh();
        }
    }
    return(
    <form onSubmit = {handleSubmit}className = "flex flex-col gap-2 mx-auto max-w-md mt-10">
            <input name = "username" className = "border border-black text-black" type="text" placeholder="Username" />
            <input name = "password" className = "border border-black text-black" type="password" placeholder="Password" />
            <button type = "submit">Login</button>
        </form>
        )
}