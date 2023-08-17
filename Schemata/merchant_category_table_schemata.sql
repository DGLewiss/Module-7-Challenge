--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2023-08-17 22:09:43 AEST

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
-- TOC entry 218 (class 1259 OID 17178)
-- Name: merchant_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.merchant_category (
    id integer NOT NULL,
    name character varying(50)
);


ALTER TABLE public.merchant_category OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 17177)
-- Name: merchant_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.merchant_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.merchant_category_id_seq OWNER TO postgres;

--
-- TOC entry 3617 (class 0 OID 0)
-- Dependencies: 217
-- Name: merchant_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.merchant_category_id_seq OWNED BY public.merchant_category.id;


--
-- TOC entry 3462 (class 2604 OID 17181)
-- Name: merchant_category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.merchant_category ALTER COLUMN id SET DEFAULT nextval('public.merchant_category_id_seq'::regclass);


--
-- TOC entry 3611 (class 0 OID 17178)
-- Dependencies: 218
-- Data for Name: merchant_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.merchant_category (id, name) FROM stdin;
1	restaurant
2	coffee shop
3	bar
4	pub
5	food truck
\.


--
-- TOC entry 3618 (class 0 OID 0)
-- Dependencies: 217
-- Name: merchant_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.merchant_category_id_seq', 1, false);


--
-- TOC entry 3464 (class 2606 OID 17183)
-- Name: merchant_category merchant_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.merchant_category
    ADD CONSTRAINT merchant_category_pkey PRIMARY KEY (id);


-- Completed on 2023-08-17 22:09:43 AEST

--
-- PostgreSQL database dump complete
--

