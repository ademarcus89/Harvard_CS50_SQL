CREATE TABLE "ingredients" (
    "id" INTEGER PRIMARY KEY,
    "ingredient" TEXT NOT NULL,
    "price_per_unit" NUMERIC
);

CREATE TABLE "donuts" (
    "id" INTEGER PRIMARY KEY,
    "name" TEXT NOT NULL,
    "gluten_free" TEXT,
    "price_per_donut" NUMERIC
);

CREATE TABLE "orders" (
    "id" INTEGER PRIMARY KEY,
    "customer_id" INTEGER NOT NULL,
    "order" VARCHAR,
    FOREIGN KEY ("customer_id") REFERENCES customers("id")
);

CREATE TABLE "customers" (
    "id" INTEGER PRIMARY KEY,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "order_history" INTEGER,
    FOREIGN KEY ("order_history") REFERENCES orders("id")
);
