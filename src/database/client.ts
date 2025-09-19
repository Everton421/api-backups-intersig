import 'dotenv/config';

if( !process.env.DATABASE_URL){
    throw new Error('DATABASE_URL is not defined')
}

import { drizzle } from 'drizzle-orm/mysql2';

const db= drizzle(process.env.DATABASE_URL)

export { db }