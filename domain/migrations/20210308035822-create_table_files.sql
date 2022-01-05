-- +migrate Up
CREATE TABLE IF NOT EXISTS "files"
(
    "id"          char(36) PRIMARY KEY DEFAULT (uuid_generate_v4()),
    "user_id"     varchar(36)  NOT NULL,
    "name"        varchar(255) NOT NULL,
    "created_at"  timestamp    NOT NULL,
    "updated_at"  timestamp    NOT NULL,
    "deleted_at"  timestamp
);

-- +migrate Down
DROP TABLE IF EXISTS "files";