import { NextResponse } from 'next/server';
import { hash } from 'bcrypt';
import pool from '../../../../lib/db';

export async function POST(request) {
  try {
    const { username, password } = await request.json();
    console.log({ username, password });
    const hashedPassword = await hash(password, 10);

    const client = await pool.connect();
    const insertQuery = 'INSERT INTO users (username, password) VALUES ($1, $2) RETURNING *';
    const values = [username, hashedPassword];
    const result = await client.query(insertQuery, values);
    const insertedUser = result.rows[0];

    client.release();
    console.log('Inserted User:', insertedUser);
    return NextResponse.json({ message: 'User registered successfully' });

  } catch (e) {
    console.error('ERROR IN POST /api/auth/register/route.js', e);
    return NextResponse.json({ error: 'Internal Server Error' }, { status: 500 });
  }
}
