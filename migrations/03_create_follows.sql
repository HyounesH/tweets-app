CREATE TABLE IF NOT EXISTS follows (
	follower_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	following_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	created_at TIMESTAMP NOT NULL DEFAULT NOW(),
	PRIMARY KEY (follower_id, following_id),
	CHECK (follower_id <> following_id)
);

INSERT INTO follows (follower_id, following_id)
SELECT follower.id, following.id
FROM users AS follower
CROSS JOIN users AS following
WHERE follower.id <> following.id
LIMIT 6
ON CONFLICT (follower_id, following_id) DO NOTHING;

