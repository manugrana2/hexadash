import pool from '$utils/db';

export async function GET() {
  const client = await pool.connect();
  try {
    const result = await client.query('SELECT * FROM employees');
    return new Response(JSON.stringify(result.rows), {
      status: 200,
      headers: {
        'Content-Type': 'application/json',
      },
    });
  } catch (error) {
    console.log(error);
    return new Response(JSON.stringify({ error: 'Internal server error' }), {
      status: 500,
      headers: {
        'Content-Type': 'application/json',
      },
    });
  } finally {
    client.release();
  }
}
