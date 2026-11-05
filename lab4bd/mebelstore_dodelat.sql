--
-- PostgreSQL database dump
--

\restrict gl4dmbVlZAdGSlIhxliVE2hxR8M5hJkhGyEse3V1ZPyECD39QIAA7gtGkMgjZFH

-- Dumped from database version 18.6 (Debian 18.6-1.pgdg13+2)
-- Dumped by pg_dump version 18.4

-- Started on 2026-11-05 17:09:28

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 231 (class 1259 OID 16481)
-- Name: brigade; Type: TABLE; Schema: public; Owner: SaetovYalaev
--

CREATE TABLE public.brigade (
    id integer NOT NULL,
    brigade_number integer,
    specialization character varying(100)
);


ALTER TABLE public.brigade OWNER TO "SaetovYalaev";

--
-- TOC entry 230 (class 1259 OID 16480)
-- Name: brigade_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.brigade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.brigade_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3534 (class 0 OID 0)
-- Dependencies: 230
-- Name: brigade_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.brigade_id_seq OWNED BY public.brigade.id;


--
-- TOC entry 220 (class 1259 OID 16438)
-- Name: client; Type: TABLE; Schema: public; Owner: SaetovYalaev
--

CREATE TABLE public.client (
    id integer NOT NULL,
    last_name character varying(100),
    first_name character varying(100),
    email character varying(100)
);


ALTER TABLE public.client OWNER TO "SaetovYalaev";

--
-- TOC entry 219 (class 1259 OID 16437)
-- Name: client_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.client_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3535 (class 0 OID 0)
-- Dependencies: 219
-- Name: client_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.client_id_seq OWNED BY public.client.id;


--
-- TOC entry 236 (class 1259 OID 16502)
-- Name: employee; Type: TABLE; Schema: public; Owner: SaetovYalaev
--

CREATE TABLE public.employee (
    id integer NOT NULL,
    last_name character varying(100),
    first_name character varying(100),
    "position" character varying(100)
);


ALTER TABLE public.employee OWNER TO "SaetovYalaev";

--
-- TOC entry 235 (class 1259 OID 16501)
-- Name: employee_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employee_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3536 (class 0 OID 0)
-- Dependencies: 235
-- Name: employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.employee_id_seq OWNED BY public.employee.id;


--
-- TOC entry 234 (class 1259 OID 16490)
-- Name: material; Type: TABLE; Schema: public; Owner: SaetovYalaev
--

CREATE TABLE public.material (
    id integer NOT NULL,
    product_id integer NOT NULL,
    title character varying(100),
    unit character varying(100),
    planed_qty numeric,
    actual_qty numeric
);


ALTER TABLE public.material OWNER TO "SaetovYalaev";

--
-- TOC entry 232 (class 1259 OID 16488)
-- Name: material_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.material_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.material_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3537 (class 0 OID 0)
-- Dependencies: 232
-- Name: material_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.material_id_seq OWNED BY public.material.id;


--
-- TOC entry 233 (class 1259 OID 16489)
-- Name: material_product_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.material_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.material_product_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3538 (class 0 OID 0)
-- Dependencies: 233
-- Name: material_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.material_product_id_seq OWNED BY public.material.product_id;


--
-- TOC entry 229 (class 1259 OID 16471)
-- Name: operation; Type: TABLE; Schema: public; Owner: SaetovYalaev
--

CREATE TABLE public.operation (
    id integer NOT NULL,
    product_id integer NOT NULL,
    title character varying(100),
    seq_number integer,
    planned_date date,
    actual_date date
);


ALTER TABLE public.operation OWNER TO "SaetovYalaev";

--
-- TOC entry 227 (class 1259 OID 16469)
-- Name: operation_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.operation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.operation_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3539 (class 0 OID 0)
-- Dependencies: 227
-- Name: operation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.operation_id_seq OWNED BY public.operation.id;


--
-- TOC entry 228 (class 1259 OID 16470)
-- Name: operation_product_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.operation_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.operation_product_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3540 (class 0 OID 0)
-- Dependencies: 228
-- Name: operation_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.operation_product_id_seq OWNED BY public.operation.product_id;


--
-- TOC entry 223 (class 1259 OID 16447)
-- Name: order_; Type: TABLE; Schema: public; Owner: SaetovYalaev
--

CREATE TABLE public.order_ (
    id integer NOT NULL,
    client_id integer NOT NULL,
    deadline date,
    delivery_address character varying(100),
    status character varying(100)
);


ALTER TABLE public.order_ OWNER TO "SaetovYalaev";

--
-- TOC entry 222 (class 1259 OID 16446)
-- Name: order__client_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.order__client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.order__client_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3541 (class 0 OID 0)
-- Dependencies: 222
-- Name: order__client_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.order__client_id_seq OWNED BY public.order_.client_id;


--
-- TOC entry 221 (class 1259 OID 16445)
-- Name: order__id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.order__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.order__id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3542 (class 0 OID 0)
-- Dependencies: 221
-- Name: order__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.order__id_seq OWNED BY public.order_.id;


--
-- TOC entry 226 (class 1259 OID 16458)
-- Name: product; Type: TABLE; Schema: public; Owner: SaetovYalaev
--

CREATE TABLE public.product (
    id integer NOT NULL,
    order_id integer NOT NULL,
    title character varying(100),
    size_ character varying(100),
    price numeric,
    finish character varying(100)
);


ALTER TABLE public.product OWNER TO "SaetovYalaev";

--
-- TOC entry 224 (class 1259 OID 16456)
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3543 (class 0 OID 0)
-- Dependencies: 224
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;


--
-- TOC entry 225 (class 1259 OID 16457)
-- Name: product_order_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.product_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_order_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3544 (class 0 OID 0)
-- Dependencies: 225
-- Name: product_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.product_order_id_seq OWNED BY public.product.order_id;


--
-- TOC entry 240 (class 1259 OID 16512)
-- Name: quality_check; Type: TABLE; Schema: public; Owner: SaetovYalaev
--

CREATE TABLE public.quality_check (
    id integer NOT NULL,
    product_id integer NOT NULL,
    employee_id integer NOT NULL,
    check_date date,
    result character varying(100)
);


ALTER TABLE public.quality_check OWNER TO "SaetovYalaev";

--
-- TOC entry 239 (class 1259 OID 16511)
-- Name: quality_check_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.quality_check_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.quality_check_employee_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3545 (class 0 OID 0)
-- Dependencies: 239
-- Name: quality_check_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.quality_check_employee_id_seq OWNED BY public.quality_check.employee_id;


--
-- TOC entry 237 (class 1259 OID 16509)
-- Name: quality_check_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.quality_check_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.quality_check_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3546 (class 0 OID 0)
-- Dependencies: 237
-- Name: quality_check_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.quality_check_id_seq OWNED BY public.quality_check.id;


--
-- TOC entry 238 (class 1259 OID 16510)
-- Name: quality_check_product_id_seq; Type: SEQUENCE; Schema: public; Owner: SaetovYalaev
--

CREATE SEQUENCE public.quality_check_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.quality_check_product_id_seq OWNER TO "SaetovYalaev";

--
-- TOC entry 3547 (class 0 OID 0)
-- Dependencies: 238
-- Name: quality_check_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: SaetovYalaev
--

ALTER SEQUENCE public.quality_check_product_id_seq OWNED BY public.quality_check.product_id;


--
-- TOC entry 3337 (class 2604 OID 16484)
-- Name: brigade id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.brigade ALTER COLUMN id SET DEFAULT nextval('public.brigade_id_seq'::regclass);


--
-- TOC entry 3330 (class 2604 OID 16441)
-- Name: client id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.client ALTER COLUMN id SET DEFAULT nextval('public.client_id_seq'::regclass);


--
-- TOC entry 3340 (class 2604 OID 16505)
-- Name: employee id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.employee ALTER COLUMN id SET DEFAULT nextval('public.employee_id_seq'::regclass);


--
-- TOC entry 3338 (class 2604 OID 16493)
-- Name: material id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.material ALTER COLUMN id SET DEFAULT nextval('public.material_id_seq'::regclass);


--
-- TOC entry 3339 (class 2604 OID 16494)
-- Name: material product_id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.material ALTER COLUMN product_id SET DEFAULT nextval('public.material_product_id_seq'::regclass);


--
-- TOC entry 3335 (class 2604 OID 16474)
-- Name: operation id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.operation ALTER COLUMN id SET DEFAULT nextval('public.operation_id_seq'::regclass);


--
-- TOC entry 3336 (class 2604 OID 16475)
-- Name: operation product_id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.operation ALTER COLUMN product_id SET DEFAULT nextval('public.operation_product_id_seq'::regclass);


--
-- TOC entry 3331 (class 2604 OID 16450)
-- Name: order_ id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.order_ ALTER COLUMN id SET DEFAULT nextval('public.order__id_seq'::regclass);


--
-- TOC entry 3332 (class 2604 OID 16451)
-- Name: order_ client_id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.order_ ALTER COLUMN client_id SET DEFAULT nextval('public.order__client_id_seq'::regclass);


--
-- TOC entry 3333 (class 2604 OID 16461)
-- Name: product id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);


--
-- TOC entry 3334 (class 2604 OID 16462)
-- Name: product order_id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.product ALTER COLUMN order_id SET DEFAULT nextval('public.product_order_id_seq'::regclass);


--
-- TOC entry 3341 (class 2604 OID 16515)
-- Name: quality_check id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.quality_check ALTER COLUMN id SET DEFAULT nextval('public.quality_check_id_seq'::regclass);


--
-- TOC entry 3342 (class 2604 OID 16516)
-- Name: quality_check product_id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.quality_check ALTER COLUMN product_id SET DEFAULT nextval('public.quality_check_product_id_seq'::regclass);


--
-- TOC entry 3343 (class 2604 OID 16517)
-- Name: quality_check employee_id; Type: DEFAULT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.quality_check ALTER COLUMN employee_id SET DEFAULT nextval('public.quality_check_employee_id_seq'::regclass);


--
-- TOC entry 3519 (class 0 OID 16481)
-- Dependencies: 231
-- Data for Name: brigade; Type: TABLE DATA; Schema: public; Owner: SaetovYalaev
--

COPY public.brigade (id, brigade_number, specialization) FROM stdin;
1	\N	раскрой и сборока
2	\N	окраска
\.


--
-- TOC entry 3508 (class 0 OID 16438)
-- Dependencies: 220
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: SaetovYalaev
--

COPY public.client (id, last_name, first_name, email) FROM stdin;
25	Золо	Иван	ivan@example.org
26	Петрова	Мария	maria@example.org
\.


--
-- TOC entry 3524 (class 0 OID 16502)
-- Dependencies: 236
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: SaetovYalaev
--

COPY public.employee (id, last_name, first_name, "position") FROM stdin;
1	Темный	Андрей	Контролер
2	Светлый	Максим	Контролер
\.


--
-- TOC entry 3522 (class 0 OID 16490)
-- Dependencies: 234
-- Data for Name: material; Type: TABLE DATA; Schema: public; Owner: SaetovYalaev
--

COPY public.material (id, product_id, title, unit, planed_qty, actual_qty) FROM stdin;
1	1	ЛСДП белый	м^3	4.2	4.1
2	2	Кромка ПВХ	м	12.0	10.0
3	3	ЛДСП белый	м^3	4.2	4.1
\.


--
-- TOC entry 3517 (class 0 OID 16471)
-- Dependencies: 229
-- Data for Name: operation; Type: TABLE DATA; Schema: public; Owner: SaetovYalaev
--

COPY public.operation (id, product_id, title, seq_number, planned_date, actual_date) FROM stdin;
1	1	\N	\N	2026-04-10	2026-04-10
2	2	\N	\N	2026-04-12	2026-04-12
3	3	\N	\N	2026-04-11	2026-04-12
4	4	\N	\N	2026-04-15	2026-04-15
\.


--
-- TOC entry 3511 (class 0 OID 16447)
-- Dependencies: 223
-- Data for Name: order_; Type: TABLE DATA; Schema: public; Owner: SaetovYalaev
--

COPY public.order_ (id, client_id, deadline, delivery_address, status) FROM stdin;
1	1	2026-04-20	ул. Горького, 5	в работе
2	2	2026-04-25	пр. Мира, 12	в работе
\.


--
-- TOC entry 3514 (class 0 OID 16458)
-- Dependencies: 226
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: SaetovYalaev
--

COPY public.product (id, order_id, title, size_, price, finish) FROM stdin;
1	1	Шкаф-купе «Пирожок»	200×80×60	25000	белый
2	2	Шкаф-купе «Пирожок»	200×80×60	25000	белый
3	3	Кровать «Аэродром»»	180×200	18000	дуб
\.


--
-- TOC entry 3528 (class 0 OID 16512)
-- Dependencies: 240
-- Data for Name: quality_check; Type: TABLE DATA; Schema: public; Owner: SaetovYalaev
--

COPY public.quality_check (id, product_id, employee_id, check_date, result) FROM stdin;
1	1	1	2026-04-13	Замечания
2	2	2	2026-04-14	Успешно
3	3	3	2026-04-16	Успешно
\.


--
-- TOC entry 3548 (class 0 OID 0)
-- Dependencies: 230
-- Name: brigade_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.brigade_id_seq', 6, true);


--
-- TOC entry 3549 (class 0 OID 0)
-- Dependencies: 219
-- Name: client_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.client_id_seq', 30, true);


--
-- TOC entry 3550 (class 0 OID 0)
-- Dependencies: 235
-- Name: employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.employee_id_seq', 6, true);


--
-- TOC entry 3551 (class 0 OID 0)
-- Dependencies: 232
-- Name: material_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.material_id_seq', 9, true);


--
-- TOC entry 3552 (class 0 OID 0)
-- Dependencies: 233
-- Name: material_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.material_product_id_seq', 9, true);


--
-- TOC entry 3553 (class 0 OID 0)
-- Dependencies: 227
-- Name: operation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.operation_id_seq', 12, true);


--
-- TOC entry 3554 (class 0 OID 0)
-- Dependencies: 228
-- Name: operation_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.operation_product_id_seq', 12, true);


--
-- TOC entry 3555 (class 0 OID 0)
-- Dependencies: 222
-- Name: order__client_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.order__client_id_seq', 6, true);


--
-- TOC entry 3556 (class 0 OID 0)
-- Dependencies: 221
-- Name: order__id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.order__id_seq', 6, true);


--
-- TOC entry 3557 (class 0 OID 0)
-- Dependencies: 224
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.product_id_seq', 9, true);


--
-- TOC entry 3558 (class 0 OID 0)
-- Dependencies: 225
-- Name: product_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.product_order_id_seq', 9, true);


--
-- TOC entry 3559 (class 0 OID 0)
-- Dependencies: 239
-- Name: quality_check_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.quality_check_employee_id_seq', 9, true);


--
-- TOC entry 3560 (class 0 OID 0)
-- Dependencies: 237
-- Name: quality_check_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.quality_check_id_seq', 9, true);


--
-- TOC entry 3561 (class 0 OID 0)
-- Dependencies: 238
-- Name: quality_check_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: SaetovYalaev
--

SELECT pg_catalog.setval('public.quality_check_product_id_seq', 9, true);


--
-- TOC entry 3353 (class 2606 OID 16487)
-- Name: brigade brigade_pkey; Type: CONSTRAINT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.brigade
    ADD CONSTRAINT brigade_pkey PRIMARY KEY (id);


--
-- TOC entry 3345 (class 2606 OID 16444)
-- Name: client client_pkey; Type: CONSTRAINT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);


--
-- TOC entry 3357 (class 2606 OID 16508)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);


--
-- TOC entry 3355 (class 2606 OID 16500)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (id);


--
-- TOC entry 3351 (class 2606 OID 16479)
-- Name: operation operation_pkey; Type: CONSTRAINT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.operation
    ADD CONSTRAINT operation_pkey PRIMARY KEY (id);


--
-- TOC entry 3347 (class 2606 OID 16455)
-- Name: order_ order__pkey; Type: CONSTRAINT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.order_
    ADD CONSTRAINT order__pkey PRIMARY KEY (id);


--
-- TOC entry 3349 (class 2606 OID 16468)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- TOC entry 3359 (class 2606 OID 16522)
-- Name: quality_check quality_check_pkey; Type: CONSTRAINT; Schema: public; Owner: SaetovYalaev
--

ALTER TABLE ONLY public.quality_check
    ADD CONSTRAINT quality_check_pkey PRIMARY KEY (id);


-- Completed on 2026-11-05 17:09:28

--
-- PostgreSQL database dump complete
--

\unrestrict gl4dmbVlZAdGSlIhxliVE2hxR8M5hJkhGyEse3V1ZPyECD39QIAA7gtGkMgjZFH

