--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2023-08-17 22:08:10 AEST

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
-- TOC entry 216 (class 1259 OID 17167)
-- Name: credit_card; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.credit_card (
    card character varying(20) NOT NULL,
    card_holder_id integer
);


ALTER TABLE public.credit_card OWNER TO postgres;

--
-- TOC entry 3610 (class 0 OID 17167)
-- Dependencies: 216
-- Data for Name: credit_card; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.credit_card (card, card_holder_id) FROM stdin;
3517111172421930	1
4761049645711555811	1
4866761290278198714	2
675911140852	2
30078299053512	3
4263694062533017	4
584226564303	4
4276466390111	5
4268491956169254	5
3581345943543942	6
4159836738768855913	6
3516952396080247	7
4539990688484983	7
4834483169177062	8
30063281385429	8
30181963913340	9
4962915017023706562	10
4165305432349489280	10
213193946980303	10
180098539019105	11
4644008655884311378	11
4027907156459098	11
501879657465	12
5297187379298983	12
376027549341849	12
4711773125020499	13
5135837688671496	13
3561954487988605	13
5175947111814778	14
4723783028106084756	15
6500236164848279	15
503842928916	16
5570600642865857	16
5500708021555307	16
6011987562414062	17
4498002758300	18
344119623920892	18
4743204091443101526	19
5361779664174555	19
3561072557118696	19
3535651398328201	20
4506405265172173	20
4586962917519654607	20
4279104135293225293	21
501809222273	22
4741042733274	23
4188164051171486	23
4150721559116778	23
4681896441519	24
30142966699187	24
3582198969197591	24
4319653513507	25
372414832802279	25
\.


--
-- TOC entry 3463 (class 2606 OID 17171)
-- Name: credit_card credit_card_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.credit_card
    ADD CONSTRAINT credit_card_pkey PRIMARY KEY (card);


--
-- TOC entry 3464 (class 2606 OID 17172)
-- Name: credit_card credit_card_card_holder_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.credit_card
    ADD CONSTRAINT credit_card_card_holder_id_fkey FOREIGN KEY (card_holder_id) REFERENCES public.card_holder(id);


-- Completed on 2023-08-17 22:08:11 AEST

--
-- PostgreSQL database dump complete
--

