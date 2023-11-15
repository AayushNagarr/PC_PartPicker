
import { NextResponse } from 'next/server';
import pool from '../../../lib/db';

export async function POST(request) {
  try {
    const { component } = await request.json();
    console.log({ component });

    const client = await pool.connect();
    const insertQuery = 'SELECT * FROM \"$1\"';
    const  rows  = await client.query(insertQuery, [component]);
    client.release();

    return NextResponse.json(rows);
  } catch (error) {
    console.error(error);
    return NextResponse.json({ error: error.message });
  }
}
