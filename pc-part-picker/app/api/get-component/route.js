
import { NextResponse } from 'next/server';
import pool from '../../../lib/db';

export async function POST(request) {
  try {
    const { component } = await request.json();
    console.log("component:", component );
    const client = await pool.connect();
    const insertQuery = `SELECT * FROM "${component}"`;
    const  result  = await client.query(insertQuery);
    const items = result.rows;
    client.release();

    return NextResponse.json(items);
  } catch (error) {
    return NextResponse.json({ error: error.message });
  }
}
