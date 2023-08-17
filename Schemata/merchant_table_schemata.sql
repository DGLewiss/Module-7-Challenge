--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2023-08-17 22:08:39 AEST

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
-- TOC entry 220 (class 1259 OID 17185)
-- Name: merchant; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.merchant (
    id integer NOT NULL,
    name character varying(50),
    id_merchant_category integer
);


ALTER TABLE public.merchant OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17184)
-- Name: merchant_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.merchant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.merchant_id_seq OWNER TO postgres;

--
-- TOC entry 3618 (class 0 OID 0)
-- Dependencies: 219
-- Name: merchant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.merchant_id_seq OWNED BY public.merchant.id;


--
-- TOC entry 3462 (class 2604 OID 17188)
-- Name: merchant id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.merchant ALTER COLUMN id SET DEFAULT nextval('public.merchant_id_seq'::regclass);


--
-- TOC entry 3612 (class 0 OID 17185)
-- Dependencies: 220
-- Data for Name: merchant; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.merchant (id, name, id_merchant_category) FROM stdin;
1	Murphy, Heath and Fields	1
2	Riggs-Adams	1
3	Sanders, Parks and Mcfarland	2
4	Mccarty-Thomas	3
5	Miller-Blevins	4
6	Wilson and Sons	1
7	Gomez-Kelly	4
8	Russell-Thomas	1
9	Curry, Scott and Richardson	3
10	Herrera Group	1
11	Stanton Group	4
12	Bell, Gonzalez and Lowe	4
13	Giles and Sons	4
14	Osborne-Page	2
15	Long, Harrell and Johnson	5
16	Bryant, Thomas and Collins	4
17	Bauer-Cole	3
18	Romero-Jordan	5
19	Santos-Fitzgerald	4
20	Kim-Lopez	2
21	Robertson-Smith	4
22	Dalton, Cameron and Jones	3
23	Wilson, Roberts and Davenport	5
24	Rodgers, Johnston and Macias	5
25	Vaughn, Wilson and Hall	1
26	Smith-Stephens	2
27	Horn Ltd	2
28	Hess-Fischer	5
29	Browning-Cantu	4
30	Atkinson Ltd	3
31	Fisher, Salazar and Thomas	5
32	Norton, Burton and Smith	5
33	Vasquez-Parker	3
34	Combs-Jones	5
35	Jarvis-Turner	4
36	Hamilton-Mcfarland	1
37	Nguyen, Bautista and Williams	4
38	Brown LLC	3
39	Young-Navarro	5
40	Cox, Montgomery and Morgan	3
41	Ford, Williams and Dunn	4
42	Kennedy-Chen	3
43	Wallace and Sons	2
44	Little-Floyd	4
45	Velazquez Ltd	4
46	Miller, Chavez and Cobb	5
47	Martin Inc	1
48	Baker Inc	5
49	Davis, Lowe and Baxter	5
50	Johnson-Watts	1
51	Fisher-Bolton	1
52	Jensen-Stanley	5
53	Wallace PLC	4
54	Berry-Lopez	1
55	Johnson, Rivas and Anderson	1
56	Smith PLC	3
57	Thornton-Williams	4
58	Young, Hull and Williams	4
59	Williams Group	3
60	Smith-Richards	4
61	Richardson, Smith and Jordan	5
62	Cooper, Carpenter and Jackson	5
63	Reed Group	5
64	Cline, Myers and Strong	1
65	Allen, Ramos and Carroll	4
66	Robles Inc	3
67	Maxwell, Tapia and Villanueva	2
68	Ramirez-Carr	2
69	Dominguez PLC	5
70	White-Hall	3
71	Greene LLC	1
72	Lopez-Kelly	1
73	Colon Ltd	3
74	Skinner-Williams	4
75	Martinez Group	1
76	Lowe PLC	1
77	Brown, Ballard and Glass	1
78	Ruiz-Anderson	4
79	Lee LLC	1
80	Kelly, Dyer and Schmitt	5
81	Fowler and Sons	5
82	Day-Murray	5
83	Solis Group	5
84	Marshall-Rojas	2
85	Patton-Rivera	3
86	Walker, Campbell and Sullivan	5
87	Griffin-Woodard	3
88	Armstrong PLC	5
89	Kelley-Roberts	5
90	Brown-Cunningham	4
91	Turner Ltd	4
92	Garcia-White	4
93	Rodriguez-Parker	5
94	Yoder-Zavala	5
95	Baxter-Smith	1
96	Johnson-Fuller	4
97	Ruiz-Chavez	3
98	Rivera PLC	4
99	Bond, Lewis and Rangel	1
100	Townsend-Anderson	1
101	Whitehead-Sexton	4
102	Walters-Ward	1
103	Jones, Clark and Hoover	2
104	Mcdaniel, Hines and Mcfarland	2
105	Garcia and Sons	4
106	Carter-Blackwell	4
107	Rowe-Abbott	4
108	Best Inc	1
109	Collins LLC	2
110	Rodriguez, Dunlap and Nunez	2
111	Padilla-Clements	2
112	Greer Inc	3
113	Edwards-Aguirre	2
114	Greene-Wood	3
115	Williams Inc	4
116	Ferguson Ltd	2
117	Mitchell Group	2
118	Maldonado Group	2
119	Henderson and Sons	1
120	Vega, Jones and Castro	5
121	Fleming, Smith and Collins	3
122	Perry and Sons	3
123	Boone, Davis and Townsend	4
124	Mccarty PLC	1
125	Russell and Sons	4
126	Bartlett and Sons	4
127	Williams, Wright and Wagner	2
128	Pitts, Salinas and Garcia	2
129	Sweeney-Paul	2
130	Brown, Estrada and Powers	2
131	Harrison, Newton and Hansen	1
132	Pugh-Williams	3
133	Scott, Hess and Finley	3
134	Jenkins, Peterson and Beck	1
135	Jacobs, Torres and Walker	3
136	Martinez-Robinson	3
137	Garcia PLC	5
138	Mccullough-Murphy	5
139	Kidd-Lopez	5
140	Wheeler-Moreno	5
141	Wood-Ramirez	3
142	Thomas-Garcia	5
143	Guzman, Garcia and Church	3
144	Walker, Deleon and Wolf	1
145	Hood-Phillips	3
146	Pitts, Smith and Gonzalez	4
147	Marshall-Lopez	5
148	Huerta, Keith and Walters	5
149	Clark and Sons	5
150	Johnson and Sons	2
\.


--
-- TOC entry 3619 (class 0 OID 0)
-- Dependencies: 219
-- Name: merchant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.merchant_id_seq', 1, false);


--
-- TOC entry 3464 (class 2606 OID 17190)
-- Name: merchant merchant_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.merchant
    ADD CONSTRAINT merchant_pkey PRIMARY KEY (id);


--
-- TOC entry 3465 (class 2606 OID 17191)
-- Name: merchant merchant_id_merchant_category_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.merchant
    ADD CONSTRAINT merchant_id_merchant_category_fkey FOREIGN KEY (id_merchant_category) REFERENCES public.merchant_category(id);


-- Completed on 2023-08-17 22:08:39 AEST

--
-- PostgreSQL database dump complete
--

