-- CREAR ROLE Y CONFIGURAR PERMISOS PARA CONECTARSE A LA BASE DE DATOS DESDE POWERBI


-- crear un usuario solo-lectura (opcional)
CREATE ROLE pbiread LOGIN PASSWORD 'cOntr4sEni@';

-- permisos mínimos de lectura en la base de datos
GRANT CONNECT ON DATABASE "LoanBank" TO pbiread;
GRANT USAGE ON SCHEMA public TO pbiread;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO pbiread;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO pbiread;