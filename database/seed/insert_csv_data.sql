\copy huesped FROM 'data/T_huesped.csv' WITH (FORMAT csv, HEADER true);
\copy tipos_habitacion FROM 'data/T_tipos_hab.csv' WITH (FORMAT csv, HEADER true);
\copy habitaciones FROM 'data/T_habitaciones.csv' WITH (FORMAT csv, HEADER true);
\copy reservas FROM 'data/T_reservas.csv' WITH (FORMAT csv, HEADER true);
\copy tipos_servicios FROM 'data/T_tipos_servicio.csv' WITH (FORMAT csv, HEADER true);
\copy reserva_servicio FROM 'data/T_reserva_servicio.csv' WITH (FORMAT csv, HEADER true);
\copy pagos FROM 'data/T_pago.csv' WITH (FORMAT csv, HEADER true);
