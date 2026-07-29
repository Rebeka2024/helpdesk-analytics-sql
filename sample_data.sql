USE HelpDeskAnalytics;


INSERT INTO Employees VALUES
(1,'Alex Johnson','IT Support'),
(2,'Maria Smith','Systems Administration'),
(3,'David Lee','Network Support'),
(4,'Sarah Brown','Security');


INSERT INTO Customers VALUES
(1,'John Carter','Tech Solutions'),
(2,'Emily Davis','Health Systems'),
(3,'Michael Wilson','Finance Group'),
(4,'Jessica Moore','Retail Corp');


INSERT INTO Tickets VALUES

(101,1,1,'Password Reset','Low','Closed',
'2026-01-05','2026-01-05'),

(102,2,3,'Network Issue','High','Closed',
'2026-01-10','2026-01-12'),

(103,3,2,'Software Installation','Medium','Open',
'2026-01-15',NULL),

(104,4,4,'Security Alert','High','Closed',
'2026-01-18','2026-01-19'),

(105,1,1,'Email Issue','Medium','Closed',
'2026-01-20','2026-01-21');
