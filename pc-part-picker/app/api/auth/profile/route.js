import { getServerSession } from 'next-auth/server';

export default async (req, res) => {
  const session = await getServerSession({ req });

  if (session) {
    const user = session.user;

    res.status(200).json({ user });
  } else {
    res.status(401).json({ error: 'Unauthorized' });
  }
};