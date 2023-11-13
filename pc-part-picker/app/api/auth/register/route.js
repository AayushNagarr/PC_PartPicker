import {NextResponse} from 'next/server';
import {hash} from 'bcrypt';
import {Client }

export async function POST(request){
    try{
        const{username, password} = await request.json();
        console.log({username, password});

        const hashedPassword = await hash(password, 10);

    }catch(e){
        console.log("ERROR IN POST /api/auth/register/route.js", e);
    }
    return NextResponse.json({message: "Hello"});
}