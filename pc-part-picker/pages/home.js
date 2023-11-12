import Link from 'next/link';
import Head from 'next/head';

const Home = () => {
  return (
    <div>
      <Head>
        <title>PC Part Picker</title>
        <meta name="description" content="Build your custom PC with our part picker tool." />
      </Head>
      <header>
      </header>
      <main>
        <h1>Welcome to PC Part Picker</h1>
        <p>Build your custom PC with our easy-to-use part picker tool.</p>
      </main>
      <footer>
        <p>&copy; {new Date().getFullYear()} PC Part Picker</p>
      </footer>
    </div>
  );
};

export default Home;
