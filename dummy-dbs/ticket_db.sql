CREATE TABLE tickets (
  id INTEGER PRIMARY KEY,
  issue TEXT,
  status TEXT
);

INSERT INTO tickets (issue, status) VALUES
('Login failure', 'Open'),
('Page not loading', 'Resolved');

