
import { NextResponse } from 'next/server';
import pool from '../../../lib/db';

export async function POST(request) {
  try {
    console.log("In delete route");
    const client = await pool.connect();
    const insertQuery = `DELETE FROM carts;`;
    const  result  = await client.query(insertQuery);
    const items = result.rows;
    console.log("checkout api result", result.rows[0]);
    client.release();

    return NextResponse.json(items);
  } catch (error) {
    return NextResponse.json({ error: error.message });
  }
}
