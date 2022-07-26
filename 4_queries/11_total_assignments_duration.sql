SELECT day, count(assignments), sum(duration)
from assignments
GROUP BY day
ORDER BY day;