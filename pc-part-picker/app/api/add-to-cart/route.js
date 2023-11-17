
import { NextResponse } from 'next/server';
import pool from '../../../lib/db';

export async function POST(request) {
  try {
    const { user, component } = await request.json();
    const client = await pool.connect();
    const insertQuery = `INSERT INTO carts (user_id, product_id)
    SELECT id, ${component.id}
    FROM users
    WHERE username = '${user}';`;
    const  result  = await client.query(insertQuery);
    const items = result.rows;
    client.release();

    return NextResponse.json(items);
  } catch (error) {
    return NextResponse.json({ error: error.message });
  }
}
