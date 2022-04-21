import * as edgedb from "edgedb";
import e from "./dbschema/edgeql-js";

const client = edgedb.createClient();

async function run() {
  const query = e.select(e.Movie, (movie) => ({
    id: true,
    title: true,
    uppercase_title: e.str_upper(movie.title),
    year: movie.year,
  }));

  const result = await query.run(client);
  console.log(result); // "Hello world!"
}

run();
