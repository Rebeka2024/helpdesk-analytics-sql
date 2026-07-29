USE HelpDeskAnalytics;


-- 1. View all currently open tickets

SELECT *
FROM Tickets
WHERE status = 'Open';



-- 2. Count tickets by priority level

SELECT
priority,
COUNT(*) AS total_tickets
FROM Tickets
GROUP BY priority;



-- 3. Identify the most common support issues

SELECT
issue_type,
COUNT(*) AS occurrences
FROM Tickets
GROUP BY issue_type
ORDER BY occurrences DESC;



-- 4. Calculate average ticket resolution time

SELECT
AVG(
DATEDIFF(date_resolved,date_created)
)
AS average_resolution_days
FROM Tickets
WHERE date_resolved IS NOT NULL;



-- 5. Analyze employee ticket workload

SELECT
Employees.employee_name,
COUNT(Tickets.ticket_id) AS tickets_handled
FROM Employees

JOIN Tickets
ON Employees.employee_id = Tickets.assigned_employee

GROUP BY Employees.employee_name
ORDER BY tickets_handled DESC;



-- 6. Find unresolved high priority tickets

SELECT
ticket_id,
issue_type,
priority
FROM Tickets
WHERE priority='High'
AND status='Open';
