CREATE TABLE "huesped" (
  "id_huesped" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "nombre" varchar(20),
  "apellido" varchar(50),
  "email" varchar UNIQUE,
  "nacionalidad" varchar(20),
  "fecha_nac" date,
  "telefono" varchar(15)
);

CREATE TABLE "tipos_habitacion" (
  "id_tipo" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "descripcion" varchar,
  "capacidad" integer,
  "precio_base" float
);

CREATE TABLE "habitaciones" (
  "id_habitacion" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "id_tipo" integer,
  "estado" varchar
);

CREATE TABLE "reservas" (
  "id_reserva" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "id_huesped" integer,
  "id_habitacion" integer,
  "fecha_entrada" date,
  "fecha_salida" date,
  "estado" varchar,
  "fecha_reserva" timestamp,
  "num_personas" integer
);

CREATE TABLE "tipos_servicios" (
  "id_servicio" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "nombre" varchar,
  "precio" float
);

CREATE TABLE "reserva_servicio" (
  "id_reserva_servicio" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "id_reserva" integer,
  "id_servicio" integer,
  "cantidad" integer,
  "fecha_reserva_serv" timestamp
);

CREATE TABLE "pagos" (
  "id_pago" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  "id_reserva" integer,
  "monto" float,
  "metodo_pago" varchar,
  "fecha_pago" timestamp,
  "estado" varchar
);

ALTER TABLE "habitaciones" ADD FOREIGN KEY ("id_tipo") REFERENCES "tipos_habitacion" ("id_tipo");

ALTER TABLE "reservas" ADD FOREIGN KEY ("id_huesped") REFERENCES "huesped" ("id_huesped");

ALTER TABLE "reservas" ADD FOREIGN KEY ("id_habitacion") REFERENCES "habitaciones" ("id_habitacion");

ALTER TABLE "reserva_servicio" ADD FOREIGN KEY ("id_reserva") REFERENCES "reservas" ("id_reserva");

ALTER TABLE "reserva_servicio" ADD FOREIGN KEY ("id_servicio") REFERENCES "tipos_servicios" ("id_servicio");

ALTER TABLE "pagos" ADD FOREIGN KEY ("id_reserva") REFERENCES "reservas" ("id_reserva");
