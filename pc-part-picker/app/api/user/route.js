import pool from '../../../../lib/db';
// Import necessary libraries
// Define the handler function for the /api/user endpoint
export default async (req, res) => {
  if (req.method === 'POST') {
    const { UserID } = req.body;

    try {
      // Connect to the database
      const client = await pool.connect();

      // Query to get user information by username
      const query = 'SELECT * FROM users WHERE username = $1';
      const values = [UserID];
      const result = await client.query(query, values);

      // Check if the user exists
      if (result.rows.length > 0) {
        const user = result.rows[0];
        // Return the user data excluding sensitive information (e.g., password)
        res.status(200).json({
          UserID: user.UserID,
          // Add other user properties you want to include
        });
      } else {
        // User not found
        res.status(404).json({ Error: 'User not found' });
      }

      // Release the database connection
      client.release();
    } catch (error) {
      console.error('Error in /api/user:', error);
      res.status(500).json({ Error: 'Internal Server Error' });
    }
  } else {
    // Unsupported HTTP method
    res.status(405).end();
  }
};
