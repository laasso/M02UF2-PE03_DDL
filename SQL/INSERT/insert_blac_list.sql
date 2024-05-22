INSERT INTO llista_negra (client_id, motiu)
SELECT r.client_id, 'No asistencia a reserva pasada' AS motiu
FROM reserves r
JOIN clients c ON r.client_id = c.dni
WHERE r.data < CURDATE() AND r.assistencia = FALSE;
