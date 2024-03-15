-- Reset the database tables by truncating them
TRUNCATE TABLE request_upvote, comment, request, request_type, request_state, "user" RESTART IDENTITY CASCADE;

-- Seed Request Types
INSERT INTO request_type (title) VALUES
('Feature'),
('Improvement'),
('Bug'),
('Documentation'),
('Design');

-- Seed Request States
INSERT INTO request_state (title) VALUES
('Pending'),
('Approved'),
('Rejected'),
('Planned'),
('In Progress');

-- Seed Users
-- Assuming `appleUserId` requires a random string, `refreshToken` as well, and that IDs are generated automatically.
INSERT INTO "user" (apple_user_id, refresh_token) VALUES
(gen_random_uuid(), gen_random_uuid()),
(gen_random_uuid(), gen_random_uuid()),
(gen_random_uuid(), gen_random_uuid()),
(gen_random_uuid(), gen_random_uuid()),
(gen_random_uuid(), gen_random_uuid());

-- Seed Requests
-- Using fixed `stateId`, `typeId`, `userId`, replace with actual IDs from your database.
INSERT INTO request (title, description, state_id, type_id, user_id) VALUES
('Sample Title 1', 'Sample description for request 1', 1, 1, 1),
('Sample Title 2', 'Sample description for request 2', 2, 2, 2),
('Sample Title 3', 'Sample description for request 3', 3, 3, 3),
('Sample Title 4', 'Sample description for request 4', 4, 1, 4),
('Sample Title 5', 'Sample description for request 5', 5, 2, 5);

-- Seed Comments
-- Assuming `requestId` and `userId` to be integers, randomly chosen between 1-5 for this example.
INSERT INTO comment (text, request_id, user_id) VALUES
('Lorem ipsum dolor sit amet', 1, 1),
('Consectetur adipiscing elit', 2, 2),
('Sed do eiusmod tempor incididunt', 3, 3),
('Ut labore et dolore magna aliqua', 4, 4),
('Ut enim ad minim veniam', 5, 5);

-- Seed Upvotes
-- Random `userId` and `requestId`, assuming we're working with 1-5 as valid IDs.
INSERT INTO request_upvote (user_id, request_id) VALUES
(1, 5),
(2, 4),
(3, 3),
(4, 2),
(5, 1);
