
CREATE TABLE "Contacts" (
    "contact_id" INTEGER NOT NULL PRIMARY KEY,
    "first_name" VARCHAR NOT NULL,
    "last_name" VARCHAR NOT NULL,
    "email" VARCHAR NOT NULL
);

CREATE TABLE "Category" (
    "category_id" VARCHAR NOT NULL PRIMARY KEY,
    "category" VARCHAR NOT NULL
);

CREATE TABLE "Subcategory" (
    "subcategory_id" VARCHAR NOT NULL PRIMARY KEY,
    "subcategory" VARCHAR NOT NULL
);

CREATE TABLE "Campaign" (
    "cf_id" INTEGER NOT NULL,
    "contact_id" INTEGER NOT NULL,
    "company_name" VARCHAR NOT NULL,
    "description" VARCHAR NOT NULL,
    "goal" FLOAT NOT NULL,
    "pledged" FLOAT NOT NULL,
    "outcome" VARCHAR NOT NULL,
    "backers_count" INTEGER NOT NULL,
    "country" VARCHAR NOT NULL,
    "currency" VARCHAR NOT NULL,
    "launched_date" DATE NOT NULL,
    "end_date" DATE NOT NULL,
    "category_id" VARCHAR NOT NULL,
    "subcategory_id" VARCHAR NOT NULL,
    PRIMARY KEY ("cf_id"),
    CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id") REFERENCES "Contacts" ("contact_id"),
    CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY("category_id") REFERENCES "Category" ("category_id"),
    CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY("subcategory_id") REFERENCES "Subcategory" ("subcategory_id")
);

SELECT * FROM "Contacts";
SELECT * FROM "Category";
SELECT * FROM "Subcategory";
SELECT * FROM "Campaign";