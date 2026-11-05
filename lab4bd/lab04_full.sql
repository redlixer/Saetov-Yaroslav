--
-- PostgreSQL database dump
--

\restrict KA6KGu4RRcp7LhSnqx8TFGm8POob7Df5AkhR4kW8pGOFwfRYgi4AX0HE87dpjId

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

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
-- Name: brigade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brigade (
    id integer NOT NULL,
    brigade_number integer,
    specialization character varying(100)
);


ALTER TABLE public.brigade OWNER TO postgres;

--
-- Name: brigade_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.brigade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.brigade_id_seq OWNER TO postgres;

--
-- Name: brigade_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.brigade_id_seq OWNED BY public.brigade.id;


--
-- Name: client; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.client (
    id integer NOT NULL,
    last_name character varying(100),
    first_name character varying(100),
    email character varying(100)
);


ALTER TABLE public.client OWNER TO postgres;

--
-- Name: client_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.client_id_seq OWNER TO postgres;

--
-- Name: client_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.client_id_seq OWNED BY public.client.id;


--
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    id integer NOT NULL,
    last_name character varying(100),
    first_name character varying(100),
    "position" character varying(100)
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- Name: employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employee_id_seq OWNER TO postgres;

--
-- Name: employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employee_id_seq OWNED BY public.employee.id;


--
-- Name: material; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.material (
    id integer NOT NULL,
    product_id integer NOT NULL,
    title character varying(100),
    unit character varying(100),
    planed_qty numeric,
    actual_qty numeric
);


ALTER TABLE public.material OWNER TO postgres;

--
-- Name: material_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.material_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.material_id_seq OWNER TO postgres;

--
-- Name: material_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.material_id_seq OWNED BY public.material.id;


--
-- Name: material_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.material_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.material_product_id_seq OWNER TO postgres;

--
-- Name: material_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.material_product_id_seq OWNED BY public.material.product_id;


--
-- Name: operation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.operation (
    id integer NOT NULL,
    product_id integer NOT NULL,
    title character varying(100),
    seq_number integer,
    planned_date date,
    actual_date date,
    brigade_id integer NOT NULL
);


ALTER TABLE public.operation OWNER TO postgres;

--
-- Name: operation_brigade_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.operation_brigade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.operation_brigade_id_seq OWNER TO postgres;

--
-- Name: operation_brigade_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.operation_brigade_id_seq OWNED BY public.operation.brigade_id;


--
-- Name: operation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.operation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.operation_id_seq OWNER TO postgres;

--
-- Name: operation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.operation_id_seq OWNED BY public.operation.id;


--
-- Name: operation_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.operation_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.operation_product_id_seq OWNER TO postgres;

--
-- Name: operation_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.operation_product_id_seq OWNED BY public.operation.product_id;


--
-- Name: order_; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.order_ (
    id integer NOT NULL,
    client_id integer NOT NULL,
    deadline date,
    delivery_address character varying(100),
    status character varying(100) DEFAULT 'в работе'::character varying
);


ALTER TABLE public.order_ OWNER TO postgres;

--
-- Name: order__client_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order__client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.order__client_id_seq OWNER TO postgres;

--
-- Name: order__client_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order__client_id_seq OWNED BY public.order_.client_id;


--
-- Name: order__id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.order__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.order__id_seq OWNER TO postgres;

--
-- Name: order__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.order__id_seq OWNED BY public.order_.id;


--
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    id integer NOT NULL,
    order_id integer NOT NULL,
    title character varying(100),
    size_ character varying(100),
    price numeric,
    finish character varying(100)
);


ALTER TABLE public.product OWNER TO postgres;

--
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_id_seq OWNER TO postgres;

--
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;


--
-- Name: product_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.product_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_order_id_seq OWNER TO postgres;

--
-- Name: product_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.product_order_id_seq OWNED BY public.product.order_id;


--
-- Name: quality_check; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.quality_check (
    id integer NOT NULL,
    product_id integer NOT NULL,
    employee_id integer NOT NULL,
    check_date date,
    result character varying(100)
);


ALTER TABLE public.quality_check OWNER TO postgres;

--
-- Name: quality_check_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.quality_check_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.quality_check_employee_id_seq OWNER TO postgres;

--
-- Name: quality_check_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.quality_check_employee_id_seq OWNED BY public.quality_check.employee_id;


--
-- Name: quality_check_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.quality_check_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.quality_check_id_seq OWNER TO postgres;

--
-- Name: quality_check_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.quality_check_id_seq OWNED BY public.quality_check.id;


--
-- Name: quality_check_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.quality_check_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.quality_check_product_id_seq OWNER TO postgres;

--
-- Name: quality_check_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.quality_check_product_id_seq OWNED BY public.quality_check.product_id;


--
-- Name: brigade id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brigade ALTER COLUMN id SET DEFAULT nextval('public.brigade_id_seq'::regclass);


--
-- Name: client id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client ALTER COLUMN id SET DEFAULT nextval('public.client_id_seq'::regclass);


--
-- Name: employee id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee ALTER COLUMN id SET DEFAULT nextval('public.employee_id_seq'::regclass);


--
-- Name: material id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material ALTER COLUMN id SET DEFAULT nextval('public.material_id_seq'::regclass);


--
-- Name: material product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material ALTER COLUMN product_id SET DEFAULT nextval('public.material_product_id_seq'::regclass);


--
-- Name: operation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.operation ALTER COLUMN id SET DEFAULT nextval('public.operation_id_seq'::regclass);


--
-- Name: operation product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.operation ALTER COLUMN product_id SET DEFAULT nextval('public.operation_product_id_seq'::regclass);


--
-- Name: operation brigade_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.operation ALTER COLUMN brigade_id SET DEFAULT nextval('public.operation_brigade_id_seq'::regclass);


--
-- Name: order_ id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_ ALTER COLUMN id SET DEFAULT nextval('public.order__id_seq'::regclass);


--
-- Name: order_ client_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_ ALTER COLUMN client_id SET DEFAULT nextval('public.order__client_id_seq'::regclass);


--
-- Name: product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);


--
-- Name: product order_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product ALTER COLUMN order_id SET DEFAULT nextval('public.product_order_id_seq'::regclass);


--
-- Name: quality_check id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quality_check ALTER COLUMN id SET DEFAULT nextval('public.quality_check_id_seq'::regclass);


--
-- Name: quality_check product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quality_check ALTER COLUMN product_id SET DEFAULT nextval('public.quality_check_product_id_seq'::regclass);


--
-- Name: quality_check employee_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quality_check ALTER COLUMN employee_id SET DEFAULT nextval('public.quality_check_employee_id_seq'::regclass);


--
-- Data for Name: brigade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.brigade (id, brigade_number, specialization) FROM stdin;
19	\N	раскрой и сборока
20	\N	окраска
\.


--
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.client (id, last_name, first_name, email) FROM stdin;
25	Золо	Иван	ivan@example.org
26	Петрова	Мария	maria@example.org
\.


--
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee (id, last_name, first_name, "position") FROM stdin;
3	Темный	Андрей	Контролер
4	Светлый	Максим	Контролер
\.


--
-- Data for Name: material; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.material (id, product_id, title, unit, planed_qty, actual_qty) FROM stdin;
4	4	ЛСДП белый	м^3	4.2	4.1
5	5	Кромка ПВХ	м	12.0	10.0
6	6	ЛДСП белый	м^3	4.2	4.1
\.


--
-- Data for Name: operation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.operation (id, product_id, title, seq_number, planned_date, actual_date, brigade_id) FROM stdin;
17	17	\N	\N	2026-04-10	2026-04-10	1
18	18	\N	\N	2026-04-12	2026-04-12	2
19	19	\N	\N	2026-04-11	2026-04-12	3
20	20	\N	\N	2026-04-15	2026-04-15	4
\.


--
-- Data for Name: order_; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.order_ (id, client_id, deadline, delivery_address, status) FROM stdin;
23	23	2026-04-20	ул. Горького, 5	в работе
24	24	2026-04-25	пр. Мира, 12	в работе
\.


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (id, order_id, title, size_, price, finish) FROM stdin;
28	28	Шкаф-купе «Пирожок»	200×80×60	25000	белый
29	29	Шкаф-купе «Пирожок»	200×80×60	25000	белый
30	30	Кровать «Аэродром»»	180×200	18000	дуб
\.


--
-- Data for Name: quality_check; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.quality_check (id, product_id, employee_id, check_date, result) FROM stdin;
1	1	1	2026-04-13	Замечания
2	2	2	2026-04-14	Успешно
3	3	3	2026-04-16	Успешно
\.


--
-- Name: brigade_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.brigade_id_seq', 20, true);


--
-- Name: client_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.client_id_seq', 26, true);


--
-- Name: employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_id_seq', 4, true);


--
-- Name: material_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.material_id_seq', 6, true);


--
-- Name: material_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.material_product_id_seq', 6, true);


--
-- Name: operation_brigade_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.operation_brigade_id_seq', 4, true);


--
-- Name: operation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.operation_id_seq', 20, true);


--
-- Name: operation_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.operation_product_id_seq', 20, true);


--
-- Name: order__client_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order__client_id_seq', 24, true);


--
-- Name: order__id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order__id_seq', 24, true);


--
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_id_seq', 30, true);


--
-- Name: product_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.product_order_id_seq', 30, true);


--
-- Name: quality_check_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quality_check_employee_id_seq', 3, true);


--
-- Name: quality_check_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quality_check_id_seq', 3, true);


--
-- Name: quality_check_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quality_check_product_id_seq', 3, true);


--
-- Name: brigade brigade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brigade
    ADD CONSTRAINT brigade_pkey PRIMARY KEY (id);


--
-- Name: client client_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);


--
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);


--
-- Name: material material_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (id);


--
-- Name: operation operation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.operation
    ADD CONSTRAINT operation_pkey PRIMARY KEY (id);


--
-- Name: order_ order__pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_
    ADD CONSTRAINT order__pkey PRIMARY KEY (id);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- Name: quality_check quality_check_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quality_check
    ADD CONSTRAINT quality_check_pkey PRIMARY KEY (id);


--
-- Name: operation fk_brigade_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.operation
    ADD CONSTRAINT fk_brigade_id FOREIGN KEY (brigade_id) REFERENCES public.brigade(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- Name: order_ fk_client; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.order_
    ADD CONSTRAINT fk_client FOREIGN KEY (client_id) REFERENCES public.client(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- Name: quality_check fk_employee_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quality_check
    ADD CONSTRAINT fk_employee_id FOREIGN KEY (employee_id) REFERENCES public.employee(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- Name: material fk_material_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material
    ADD CONSTRAINT fk_material_id FOREIGN KEY (product_id) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- Name: product fk_order_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES public.order_(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- Name: operation fk_product_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.operation
    ADD CONSTRAINT fk_product_id FOREIGN KEY (product_id) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- Name: quality_check fk_quality_check_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quality_check
    ADD CONSTRAINT fk_quality_check_id FOREIGN KEY (product_id) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;


--
-- PostgreSQL database dump complete
--

\unrestrict KA6KGu4RRcp7LhSnqx8TFGm8POob7Df5AkhR4kW8pGOFwfRYgi4AX0HE87dpjId

