-- Allow Supabase roles to use the schema
GRANT USAGE ON SCHEMA tinytrail TO anon, authenticated, service_role;

-- Allow access to existing tables (if any)
GRANT ALL ON ALL TABLES IN SCHEMA tinytrail TO anon, authenticated, service_role;
GRANT ALL ON ALL ROUTINES IN SCHEMA tinytrail TO anon, authenticated, service_role;
GRANT ALL ON ALL SEQUENCES IN SCHEMA tinytrail TO anon, authenticated, service_role;

-- Ensure future tables also get permissions automatically
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA tinytrail GRANT ALL ON TABLES TO anon, authenticated, service_role;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA tinytrail GRANT ALL ON ROUTINES TO anon, authenticated, service_role;
ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA tinytrail GRANT ALL ON SEQUENCES TO anon, authenticated, service_role;
