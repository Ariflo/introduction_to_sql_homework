--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: url; Type: TABLE; Schema: public; Owner: AirMansEnigma; Tablespace: 
--

CREATE TABLE url (
    id integer NOT NULL,
    original_url character varying(80) NOT NULL,
    count integer DEFAULT 0
);


ALTER TABLE url OWNER TO "AirMansEnigma";

--
-- Name: url_id_seq; Type: SEQUENCE; Schema: public; Owner: AirMansEnigma
--

CREATE SEQUENCE url_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE url_id_seq OWNER TO "AirMansEnigma";

--
-- Name: url_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: AirMansEnigma
--

ALTER SEQUENCE url_id_seq OWNED BY url.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: AirMansEnigma
--

ALTER TABLE ONLY url ALTER COLUMN id SET DEFAULT nextval('url_id_seq'::regclass);


--
-- Data for Name: url; Type: TABLE DATA; Schema: public; Owner: AirMansEnigma
--

COPY url (id, original_url, count) FROM stdin;
1	www.arianflores.com	123
2	www.facebook.com	456
3	www.espn.com	666
5	www.netflix.com	1000
\.


--
-- Name: url_id_seq; Type: SEQUENCE SET; Schema: public; Owner: AirMansEnigma
--

SELECT pg_catalog.setval('url_id_seq', 5, true);


--
-- Name: url_pkey; Type: CONSTRAINT; Schema: public; Owner: AirMansEnigma; Tablespace: 
--

ALTER TABLE ONLY url
    ADD CONSTRAINT url_pkey PRIMARY KEY (id);


--
-- Name: public; Type: ACL; Schema: -; Owner: AirMansEnigma
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM "AirMansEnigma";
GRANT ALL ON SCHEMA public TO "AirMansEnigma";
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

