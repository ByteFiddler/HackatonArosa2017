-- Table: public."Location"

-- DROP TABLE public."Location";

CREATE TABLE public."Location"
(
    id bigserial,
    guid character varying(15) COLLATE pg_catalog."default",
    name character varying COLLATE pg_catalog."default" NOT NULL,
    coordinates point,
    CONSTRAINT "Location_pkey" PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."Location"
    OWNER to postgres;
COMMENT ON TABLE public."Location"
    IS 'Geo location';