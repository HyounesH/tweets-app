CREATE TABLE IF NOT EXISTS tweets (
	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
	author_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
	content TEXT NOT NULL,
	created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

INSERT INTO tweets (author_id, content)
SELECT
	users.id,
	seed.content
FROM users
CROSS JOIN (
	VALUES
		('A tiny step today can lead to a big change tomorrow.'),
		('Coffee, code, and a fresh perspective.'),
		('Building something new is always exciting.'),
		('Remember to take a break and breathe.'),
		('The best ideas often arrive when you stop chasing them.'),
		('Learning never really has a finish line.'),
		('Small improvements add up over time.'),
		('Today is a good day to be curious.'),
		('Progress matters more than perfection.'),
		('A good conversation can change your whole outlook.'),
		('Keep going. The next improvement could be the one.'),
		('There is always more to discover.'),
		('Make time for the things that energize you.'),
		('A simple plan is better than no plan at all.'),
		('Sharing knowledge makes everyone stronger.'),
		('Sometimes the smartest move is to start small.')
) AS seed(content)
LIMIT 16;


