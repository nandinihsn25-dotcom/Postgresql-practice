SELECT e.emp_name, lt.type_name, lr.start_date, lr.end_date, lr.status
FROM leave_mgmt.leave_requests lr
JOIN leave_mgmt.employees e ON lr.emp_id = e.emp_id
JOIN leave_mgmt.leave_types lt ON lr.leave_type_id = lt.leave_type_id
WHERE lr.status = 'Rejected';