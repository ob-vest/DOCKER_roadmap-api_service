import { drizzle } from "drizzle-orm/node-postgres";
import { Pool } from "pg";
import { seedDatabase, resetDatabase } from "./seeder";
import * as schema from "./schema";
import dotenv from "dotenv";

dotenv.config();

export const pool = new Pool({
  connectionString: process.env.DATABASE_URL,
});

export const db = drizzle(pool, { schema });
console.log("Inserting data");
// db.insert(schema.requestType)
// .values({title: "testType22"})
// .catch(console.error);
// resetDatabase();
// seedDatabase();
