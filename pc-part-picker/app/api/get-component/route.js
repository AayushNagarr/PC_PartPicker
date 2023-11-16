
import { NextResponse } from 'next/server';
import pool from '../../../lib/db';

export async function POST(request) {
  try {
    const { component } = await request.json();
    const client = await pool.connect();
    const insertQuery = `SELECT * FROM pc_parts join "${component}" on pc_parts.id = "${component}".id where pc_parts.id = "${component}".id ORDER BY pc_parts.id ASC;`;
    const  result  = await client.query(insertQuery);
    const items = result.rows;
    client.release();

    return NextResponse.json(items);
  } catch (error) {
    return NextResponse.json({ error: error.message });
  }
}
