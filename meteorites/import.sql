CREATE TABLE "meteorites_temp" (
    "name" TEXT,
    "id" INTEGER,
    "nametype" TEXT,
    "class" TEXT,
    "mass" FLOAT,
    "discovery" TEXT,
    "year" INTEGER,
    "lat" FLOAT,
    "long" FLOAT,
    PRIMARY KEY ("id")
);

.import --csv --skip 1 meteorites.csv meteorites_temp

UPDATE "meteorites_temp"
SET "year" = NULL
WHERE "year" = "";

UPDATE "meteorites_temp"
SET "mass" = NULL
WHERE "mass" = ""
OR "mass" = "0";

UPDATE "meteorites_temp"
SET "lat" = NULL
WHERE "lat" = ""
OR "lat" = "0";

UPDATE "meteorites_temp"
SET "long" = NULL
WHERE "long" = ""
OR "long" = "0";

UPDATE "meteorites_temp"
SET "mass" = ROUND("mass", 2);

UPDATE "meteorites_temp"
SET "lat" = ROUND("lat", 2);

UPDATE "meteorites_temp"
SET "long" = ROUND("long", 2);

DELETE FROM "meteorites_temp"
WHERE "nametype" = "Relict";

ALTER TABLE "meteorites_temp"
DROP COLUMN "nametype";

CREATE TABLE "meteorites" (
    "id" INTEGER PRIMARY KEY,
    "name" TEXT,
    "class" TEXT,
    "mass" REAL,
    "discovery" TEXT,
    "year" INTEGER,
    "lat" REAL,
    "long" REAL
);

INSERT INTO "meteorites" ("id", "name", "class", "mass", "discovery", "year", "lat", "long")
SELECT ROW_NUMBER () OVER (ORDER BY "year" ASC, "name" ASC), "name", "class", "mass", "discovery", "year", "lat", "long"
FROM "meteorites_temp";

DROP TABLE "meteorites_temp";
