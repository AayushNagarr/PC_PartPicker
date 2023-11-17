
import { NextResponse } from 'next/server';
import pool from '../../../lib/db';

export async function POST(request) {
  try {
    const { user } = await request.json();
    console.log("In checkout route", user);
    const client = await pool.connect();
    const insertQuery = `SELECT SUM(price) AS total_price FROM carts JOIN users on users.id = carts.user_id WHERE users.username = '${user}'`;
    const  result  = await client.query(insertQuery);
    const items = result.rows[0];
    console.log("checkout api result", result.rows[0]);
    client.release();
    console.log(items);
    return NextResponse.json(items);
  } catch (error) {
    return NextResponse.json({ error: error.message });
  }
}
