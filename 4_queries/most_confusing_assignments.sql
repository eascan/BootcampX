SELECT assignments.id as assignment_id, assignments.name as assignment_name, day, chapter, count(assistance_requests) as total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;