--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2023-08-17 22:04:47 AEST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 17161)
-- Name: card_holder; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.card_holder (
    id integer NOT NULL,
    name character varying(50)
);


ALTER TABLE public.card_holder OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 17160)
-- Name: card_holder_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.card_holder_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.card_holder_id_seq OWNER TO postgres;

--
-- TOC entry 3617 (class 0 OID 0)
-- Dependencies: 214
-- Name: card_holder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.card_holder_id_seq OWNED BY public.card_holder.id;


--
-- TOC entry 3462 (class 2604 OID 17164)
-- Name: card_holder id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card_holder ALTER COLUMN id SET DEFAULT nextval('public.card_holder_id_seq'::regclass);


--
-- TOC entry 3611 (class 0 OID 17161)
-- Dependencies: 215
-- Data for Name: card_holder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.card_holder (id, name) FROM stdin;
1	Robert Johnson
2	Shane Shaffer
3	Elizabeth Sawyer
4	Danielle Green
5	Sara Cooper
6	Beth Hernandez
7	Sean Taylor
8	Michael Floyd
9	Laurie Gibbs
10	Matthew Gutierrez
11	Brandon Pineda
12	Megan Price
13	John Martin
14	Gary Jacobs
15	Kyle Tucker
16	Crystal Clark
17	Michael Carroll
18	Malik Carlson
19	Peter Mckay
20	Kevin Spencer
21	Dana Washington
22	Austin Johnson
23	Mark Lewis
24	Stephanie Dalton
25	Nancy Contreras
\.


--
-- TOC entry 3618 (class 0 OID 0)
-- Dependencies: 214
-- Name: card_holder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.card_holder_id_seq', 1, false);


--
-- TOC entry 3464 (class 2606 OID 17166)
-- Name: card_holder card_holder_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card_holder
    ADD CONSTRAINT card_holder_pkey PRIMARY KEY (id);


-- Completed on 2023-08-17 22:04:48 AEST

--
-- PostgreSQL database dump complete
--

