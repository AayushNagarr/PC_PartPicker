'use-client';

import {SessionProvider} from "next-auth/react"

const Provider = ({children}) =>{
    <SessionProvider>
    return {children}</SessionProvider>
}

export default Provider
