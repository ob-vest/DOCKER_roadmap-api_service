import express from "express";
import { requestsRouter } from "./routes/requests";
import { db } from "./database/db-connect";
import { adminRequestsRouter } from "./routes/admin-requests";
import dotenv from "dotenv";

console.log("Setting up server");
const app = express();

dotenv.config();
console.log(process.env.DATABASE_URL)
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

app.use((req, res, next) => {
  res.header(
    "Access-Control-Allow-Origin",
    "https://roadmap-website-one.vercel.app"
  );
  res.header("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE, OPTIONS");
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept, Authorization"
  );
  next();
});

app.use("/api", requestsRouter);
app.use("/api", adminRequestsRouter);

db;

const port = 3000;

app.listen(port, () => {
  console.log(`Example app listening at port:${port}`);
});
