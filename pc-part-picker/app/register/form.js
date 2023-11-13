'use client'

export default function Form(){
    const handleSubmit = async (e) =>
    {
        e.preventDefault();
        const formData = new FormData(e.currentTarget);
        const response = await fetch("/api/auth/register/", {
            method: "POST",
            body: JSON.stringify({
                username: formData.get("username"),
                password: formData.get("password"),
            }),
        });
        console.log({response});

    }
    return(
    <form onSubmit = {handleSubmit}className = "flex flex-col gap-2 mx-auto max-w-md mt-10">
            <input name = "username" className = "border border-black text-black" type="text" placeholder="Username" />
            <input name = "password" className = "border border-black text-black" type="password" placeholder="Password" />
            <button type = "submit">Register</button>
        </form>
        )
}