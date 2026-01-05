CREATE TABLE "users" (
    "id" INTEGER PRIMARY KEY,
    "name" TEXT NOT NULL,
    "username" VARCHAR UNIQUE,
    "password" VARCHAR(255) NOT NULL
);

CREATE TABLE "schools" (
    "id" INTEGER PRIMARY KEY,
    "name" TEXT NOT NULL,
    "school_type" TEXT,
    "location" TEXT,
    "founding_year" INTEGER
);

CREATE TABLE "companies" (
    "id" INTEGER PRIMARY KEY,
    "name" TEXT UNIQUE NOT NULL,
    "industry" TEXT,
    "location" TEXT
);

CREATE TABLE "company_connections" (
    "user_id" INTEGER,
    "company_id" INTEGER,
    "title" TEXT,
    "start_date" DATE,
    "end_date" DATE,
    FOREIGN KEY ("user_id") REFERENCES "users"("id")
    FOREIGN KEY ("company_id") REFERENCES "companies"("id")
);

CREATE TABLE "people_connections" (
    "user_id1" INTEGER,
    "user_id2" INTEGER,
    PRIMARY KEY ("user_id1", "user_id2")
);

CREATE TABLE "school_connections" (
    "user_id" INTEGER,
    "school_id" INTEGER,
    "start_date" DATE,
    "end_date" DATE,
    "degree_type" TEXT,
    FOREIGN KEY ("user_id") REFERENCES "users"("id")
    FOREIGN KEY ("school_id") REFERENCES "schools"("id")
);
