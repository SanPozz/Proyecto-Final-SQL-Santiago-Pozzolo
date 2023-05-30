CREATE VIEW user_messages AS
SELECT m.id_message, m.message, m.datetime, u1.username AS emisor, u2.username AS receptor
FROM messages m
JOIN users u1 ON m.id_system_user_emisor = u1.id_system_user
JOIN users u2 ON m.id_system_user_receptor = u2.id_system_user;

CREATE VIEW post_likes_count AS
SELECT p.id_post, p.post, COUNT(l.id_likes) AS like_count
FROM posts p
LEFT JOIN likes l ON p.id_post = l.id_post
GROUP BY p.id_post, p.post;

CREATE VIEW post_comments AS
SELECT p.id_post, p.post, c.comment, u.username AS commenter_username
FROM posts p
LEFT JOIN comments c ON p.id_post = c.id_post
LEFT JOIN users u ON c.id_system_user = u.id_system_user;

CREATE VIEW user_post_comment_count AS
SELECT u.id_system_user, u.username, COUNT(DISTINCT p.id_post) AS post_count, COUNT(c.id_comment) AS comment_count
FROM users u
LEFT JOIN posts p ON u.id_system_user = p.id_system_user
LEFT JOIN comments c ON p.id_post = c.id_post
GROUP BY u.id_system_user, u.username;

CREATE VIEW user_like_count AS
SELECT u.id_system_user, u.username, COUNT(l.id_likes) AS like_count
FROM users u
LEFT JOIN likes l ON u.id_system_user = l.id_system_user
GROUP BY u.id_system_user, u.username
ORDER BY like_count ASC;

SELECT id_message, message, datetime, emisor, receptor
FROM user_messages;

SELECT id_post, post, like_count
FROM post_likes_count;

SELECT id_post, post, comment, commenter_username
FROM post_comments;

SELECT id_system_user, username, post_count, comment_count
FROM user_post_comment_count;

SELECT id_system_user, username, like_count
FROM user_like_count;