
import { NextResponse } from 'next/server';
import pool from '../../../lib/db';

export async function POST(request) {
  try {
    const { cartItem, user } = await request.json();
    const client = await pool.connect();
    const insertQuery = `INSERT INTO carts (part_name, price) VALUES (SELECT ID FROM USERS WHERE username = ${user.username}, '${cartItem.name}', '${cartItem.price}') RETURNING *`;
    const  result  = await client.query(insertQuery);
    const items = result.rows;
    client.release();

    return NextResponse.json(items);
  } catch (error) {
    return NextResponse.json({ error: error.message });
  }
}
