CREATE TABLE "passengers" (
    "id" INTEGER NOT NULL,
    "first_name" TEXT,
    "last_name" TEXT,
    "age" INTEGER,
    PRIMARY KEY ("id")
);

CREATE TABLE "airlines" (
    "id" INTEGER,
    "name" TEXT,
    "concourse" TEXT,
    PRIMARY KEY ("id")
);

CREATE TABLE "check_ins" (
    "date_time" DATETIME
    "passenger_id" INTEGER,
    "flight_id" INTEGER,
    PRIMARY KEY ("date_time")
    FOREIGN KEY ("flight_id") REFERENCES "flights"("id")
);

CREATE TABLE "flights" (
    "id" INTEGER,
    "airline_id" INTEGER,
    "departing_airport" TEXT,
    "arriving_airport" TEXT,
    "expected_departure" DATETIME,
    "expected_arrival" DATETIME,
    PRIMARY KEY ("id")
    FOREIGN KEY ("airline_id") REFERENCES "airlines"("id")
);




