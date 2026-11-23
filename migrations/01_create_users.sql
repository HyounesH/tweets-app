CREATE TABLE IF NOT EXISTS users (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    username VARCHAR(255) NOT NULL UNIQUE,
    display_name VARCHAR(255),
    bio TEXT,
    avatar_url TEXT,
    banner_url TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

INSERT INTO users (username, display_name, bio, avatar_url, banner_url)
VALUES
    (
        'maya_chen',
        'Maya Chen',
        'Designing thoughtful digital experiences. Coffee enthusiast.',
        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=400&h=400&q=80',
        'https://images.unsplash.com/photo-1470770841072-f978cf4d019e?auto=format&fit=crop&w=1500&h=500&q=80'
    ),
    (
        'alex_rivera',
        'Alex Rivera',
        'Photographer, weekend hiker, and lifelong learner.',
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=400&h=400&q=80',
        'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?auto=format&fit=crop&w=1500&h=500&q=80'
    ),
    (
        'sam_okafor',
        'Sam Okafor',
        'Building useful things with code. Here for the conversations.',
        'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?auto=format&fit=crop&w=400&h=400&q=80',
        'https://images.unsplash.com/photo-1501785888041-af3ef285b470?auto=format&fit=crop&w=1500&h=500&q=80'
    ),
    (
        'jordan_lee',
        'Jordan Lee',
        'Product manager by day, cook and curious reader by night.',
        'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?auto=format&fit=crop&w=400&h=400&q=80',
        'https://images.unsplash.com/photo-1470252649378-9c29740c9fa8?auto=format&fit=crop&w=1500&h=500&q=80'
    ),
    (
        'priya_shah',
        'Priya Shah',
        'Exploring the intersection of climate, community, and technology.',
        'https://images.unsplash.com/photo-1534528741775-53994a69daeb?auto=format&fit=crop&w=400&h=400&q=80',
        'https://images.unsplash.com/photo-1441974231531-c6227db76b6e?auto=format&fit=crop&w=1500&h=500&q=80'
    ),
    (
        'noah_williams',
        'Noah Williams',
        'Runner, amateur astronomer, and enthusiastic museum visitor.',
        'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=400&h=400&q=80',
        'https://images.unsplash.com/photo-1462331940025-496dfbfc7564?auto=format&fit=crop&w=1500&h=500&q=80'
    ),
    (
        'elena_garcia',
        'Elena Garcia',
        'Illustrator finding inspiration in everyday city life.',
        'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?auto=format&fit=crop&w=400&h=400&q=80',
        'https://images.unsplash.com/photo-1519608487953-e999c86e7455?auto=format&fit=crop&w=1500&h=500&q=80'
    ),
    (
        'liam_brooks',
        'Liam Brooks',
        'Learning in public, sharing what I make, and always up for a bike ride.',
        'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=400&h=400&q=80',
        'https://images.unsplash.com/photo-1473448912268-2022ce9509d8?auto=format&fit=crop&w=1500&h=500&q=80'
    ),
    (
        'amina_diallo',
        'Amina Diallo',
        'Community organizer, plant parent, and believer in small acts of care.',
        'https://images.unsplash.com/photo-1531123897727-8f129e1688ce?auto=format&fit=crop&w=400&h=400&q=80',
        'https://images.unsplash.com/photo-1500382017468-9049fed747ef?auto=format&fit=crop&w=1500&h=500&q=80'
    ),
    (
        'ethan_park',
        'Ethan Park',
        'Software engineer interested in open source and good coffee.',
        'https://images.unsplash.com/photo-1507591064344-4c6ce005b128?auto=format&fit=crop&w=400&h=400&q=80',
        'https://images.unsplash.com/photo-1518837695005-2083093ee35b?auto=format&fit=crop&w=1500&h=500&q=80'
    ),
    (
        'sofia_martin',
        'Sofia Martin',
        'Collecting recipes, stories, and far too many houseplants.',
        'https://images.unsplash.com/photo-1517841905240-472988babdf9?auto=format&fit=crop&w=400&h=400&q=80',
        'https://images.unsplash.com/photo-1470071459604-3b5ec3a7fe05?auto=format&fit=crop&w=1500&h=500&q=80'
    ),
    (
        'marcus_johnson',
        'Marcus Johnson',
        'Designer, basketball fan, and advocate for accessible products.',
        'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?auto=format&fit=crop&w=400&h=400&q=80',
        'https://images.unsplash.com/photo-1500534623283-312aade485b7?auto=format&fit=crop&w=1500&h=500&q=80'
    ),
    (
        'mei_tanaka',
        'Mei Tanaka',
        'UX researcher asking better questions and listening closely.',
        'https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=400&h=400&q=80',
        'https://images.unsplash.com/photo-1490750967868-88aa4486c946?auto=format&fit=crop&w=1500&h=500&q=80'
    ),
    (
        'oliver_reed',
        'Oliver Reed',
        'Weekend trail walker and weekday data storyteller.',
        'https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?auto=format&fit=crop&w=400&h=400&q=80',
        'https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?auto=format&fit=crop&w=1500&h=500&q=80'
    ),
    (
        'fatima_hassan',
        'Fatima Hassan',
        'Writer exploring the places where culture and technology meet.',
        'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=400&h=400&q=80',
        'https://images.unsplash.com/photo-1500534314209-a25ddb2bd429?auto=format&fit=crop&w=1500&h=500&q=80'
    ),
    (
        'ben_carter',
        'Ben Carter',
        'Making the web friendlier, one thoughtful detail at a time.',
        'https://images.unsplash.com/photo-1519345182560-3f2917c472ef?auto=format&fit=crop&w=400&h=400&q=80',
        'https://images.unsplash.com/photo-1472396961693-142e6e269027?auto=format&fit=crop&w=1500&h=500&q=80'
    ),
    (
        'lucia_rossi',
        'Lucia Rossi',
        'Architect, sketchbook keeper, and lifelong student of light.',
        'https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?auto=format&fit=crop&w=400&h=400&q=80',
        'https://images.unsplash.com/photo-1518005020951-eccf8ba6e3f7?auto=format&fit=crop&w=1500&h=500&q=80'
    ),
    (
        'diego_morales',
        'Diego Morales',
        'Music lover documenting neighborhood food and good company.',
        'https://images.unsplash.com/photo-1504593811423-6dd665756598?auto=format&fit=crop&w=400&h=400&q=80',
        'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?auto=format&fit=crop&w=1500&h=500&q=80'
    ),
    (
        'grace_kim',
        'Grace Kim',
        'Building tools for teams that care about doing meaningful work.',
        'https://images.unsplash.com/photo-1551836022-d5d88e9218df?auto=format&fit=crop&w=400&h=400&q=80',
        'https://images.unsplash.com/photo-1497366754035-f200968a6e72?auto=format&fit=crop&w=1500&h=500&q=80'
    ),
    (
        'tariq_ali',
        'Tariq Ali',
        'Cyclist, city explorer, and occasional long-form essay writer.',
        'https://images.unsplash.com/photo-1531384441138-2736e62e0919?auto=format&fit=crop&w=400&h=400&q=80',
        'https://images.unsplash.com/photo-1519501025264-65ba15a82390?auto=format&fit=crop&w=1500&h=500&q=80'
    ),
    (
        'chloe_bennett',
        'Chloe Bennett',
        'Photographing quiet moments and learning to bake sourdough.',
        'https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?auto=format&fit=crop&w=400&h=400&q=80',
        'https://images.unsplash.com/photo-1470252649378-9c29740c9fa8?auto=format&fit=crop&w=1500&h=500&q=80'
    ),
    (
        'gabriel_santos',
        'Gabriel Santos',
        'Helping small businesses find simple, useful digital solutions.',
        'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=400&h=400&q=80',
        'https://images.unsplash.com/photo-1497366811353-6870744d04b2?auto=format&fit=crop&w=1500&h=500&q=80'
    ),
    (
        'nora_patel',
        'Nora Patel',
        'Curious about public spaces, good books, and better questions.',
        'https://images.unsplash.com/photo-1524250502761-1ac6f2e30d43?auto=format&fit=crop&w=400&h=400&q=80',
        'https://images.unsplash.com/photo-1448375240586-882707db888b?auto=format&fit=crop&w=1500&h=500&q=80'
    ),
    (
        'isaac_turner',
        'Isaac Turner',
        'Engineer, home cook, and supporter of the local library.',
        'https://images.unsplash.com/photo-1517841905240-472988babdf9?auto=format&fit=crop&w=400&h=400&q=80',
        'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee?auto=format&fit=crop&w=1500&h=500&q=80'
    )
ON CONFLICT (username) DO NOTHING;



