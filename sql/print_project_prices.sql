SELECT project_worker.project_id, datediff(MONTH, project.start_date, project.finish_date)*sum(worker.salary) AS cost FROM project_worker
JOIN worker ON project_worker.worker_id = worker.id
JOIN project ON project_worker.project_id = project.id
GROUP BY project_worker.project_id;