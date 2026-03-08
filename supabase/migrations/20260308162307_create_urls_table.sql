CREATE TABLE IF NOT EXISTS tinytrail.urls (
  id uuid primary key default uuid_generate_v4(),
  original_url text not null,
  slug varchar(20) not null unique,
  label text,
  click_count bigint default 0,
  is_active boolean default true,
  expires_at timestamp,
  created_at timestamp default now()
);
