CREATE DATABASE nodes;
\connect nodes

CREATE USER "party_a" WITH LOGIN PASSWORD 'test';
CREATE SCHEMA "party_a";
GRANT USAGE, CREATE ON SCHEMA "party_a" TO "party_a";
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON ALL tables IN SCHEMA "party_a" TO "party_a";
ALTER DEFAULT privileges IN SCHEMA "party_a" GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON tables TO "party_a";
GRANT USAGE, SELECT ON ALL sequences IN SCHEMA "party_a" TO "party_a";
ALTER DEFAULT privileges IN SCHEMA "party_a" GRANT USAGE, SELECT ON sequences TO "party_a";
ALTER ROLE "party_a" SET search_path = "party_a";

CREATE USER "party_b" WITH LOGIN PASSWORD 'test';
CREATE SCHEMA "party_b";
GRANT USAGE, CREATE ON SCHEMA "party_b" TO "party_b";
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON ALL tables IN SCHEMA "party_b" TO "party_b";
ALTER DEFAULT privileges IN SCHEMA "party_b" GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON tables TO "party_b";
GRANT USAGE, SELECT ON ALL sequences IN SCHEMA "party_b" TO "party_b";
ALTER DEFAULT privileges IN SCHEMA "party_b" GRANT USAGE, SELECT ON sequences TO "party_b";
ALTER ROLE "party_b" SET search_path = "party_b";

CREATE USER "party_c" WITH LOGIN PASSWORD 'test';
CREATE SCHEMA "party_c";
GRANT USAGE, CREATE ON SCHEMA "party_c" TO "party_c";
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON ALL tables IN SCHEMA "party_c" TO "party_c";
ALTER DEFAULT privileges IN SCHEMA "party_c" GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON tables TO "party_c";
GRANT USAGE, SELECT ON ALL sequences IN SCHEMA "party_c" TO "party_c";
ALTER DEFAULT privileges IN SCHEMA "party_c" GRANT USAGE, SELECT ON sequences TO "party_c";
ALTER ROLE "party_c" SET search_path = "party_c";

CREATE USER "notary" WITH LOGIN PASSWORD 'test';
CREATE SCHEMA "notary";
GRANT USAGE, CREATE ON SCHEMA "notary" TO "notary";
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON ALL tables IN SCHEMA "notary" TO "notary";
ALTER DEFAULT privileges IN SCHEMA "notary" GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON tables TO "notary";
GRANT USAGE, SELECT ON ALL sequences IN SCHEMA "notary" TO "notary";
ALTER DEFAULT privileges IN SCHEMA "notary" GRANT USAGE, SELECT ON sequences TO "notary";
ALTER ROLE "notary" SET search_path = "notary";
