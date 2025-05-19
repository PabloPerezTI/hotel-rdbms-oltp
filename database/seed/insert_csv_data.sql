SET datestyle = 'DMY';

TRUNCATE TABLE huesped CASCADE;
TRUNCATE TABLE tipos_habitacion CASCADE;
TRUNCATE TABLE habitaciones CASCADE;
TRUNCATE TABLE reservas CASCADE;
TRUNCATE TABLE tipos_servicios CASCADE;
TRUNCATE TABLE reserva_servicio CASCADE;
TRUNCATE TABLE pagos CASCADE;

\copy huesped FROM '/tmp/data/T_huesped.csv' WITH (FORMAT csv, HEADER true);
\copy tipos_habitacion FROM '/tmp/data/T_tipos_hab.csv' WITH (FORMAT csv, HEADER true);
\copy habitaciones FROM '/tmp/data/T_habitaciones.csv' WITH (FORMAT csv, HEADER true);
\copy reservas FROM '/tmp/data/T_reservas.csv' WITH (FORMAT csv, HEADER true);
\copy tipos_servicios FROM '/tmp/data/T_tipos_servicio.csv' WITH (FORMAT csv, HEADER true);
\copy reserva_servicio FROM '/tmp/data/T_reserva_servicio.csv' WITH (FORMAT csv, HEADER true);
\copy pagos FROM '/tmp/data/T_pago.csv' WITH (FORMAT csv, HEADER true);
