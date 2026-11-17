--
-- PostgreSQL database dump
--

\restrict DboHVaCWie1zwAUJuG3JxXNQmprc8WZWZRgH8CJZDmrencBriYPgldX5YEjblkC

-- Dumped from database version 16.15 (Ubuntu 16.15-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.15 (Ubuntu 16.15-0ubuntu0.24.04.1)

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
-- Name: brigade; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.brigade (
    id integer NOT NULL,
    brigade_number integer,
    specialization character varying(100)
);


--
-- Name: brigade_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.brigade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: brigade_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.brigade_id_seq OWNED BY public.brigade.id;


--
-- Name: client; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.client (
    id integer NOT NULL,
    last_name character varying(100),
    first_name character varying(100),
    email character varying(100)
);


--
-- Name: client_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: client_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.client_id_seq OWNED BY public.client.id;


--
-- Name: employee; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.employee (
    id integer NOT NULL,
    last_name character varying(100),
    first_name character varying(100),
    "position" character varying(100)
);


--
-- Name: employee_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.employee_id_seq OWNED BY public.employee.id;


--
-- Name: material; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.material (
    id integer NOT NULL,
    product_id integer NOT NULL,
    title character varying(100),
    unit character varying(100),
    planed_qty numeric,
    actual_qty numeric
);


--
-- Name: material_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.material_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: material_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.material_id_seq OWNED BY public.material.id;


--
-- Name: operation; Type: TABLE; Schema: public; Owner: -
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


--
-- Name: operation_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.operation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: operation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.operation_id_seq OWNED BY public.operation.id;


--
-- Name: order_; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.order_ (
    id integer NOT NULL,
    client_id integer NOT NULL,
    deadline date,
    delivery_address character varying(100),
    status character varying(100) DEFAULT 'в работе'::character varying
);


--
-- Name: order__id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.order__id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: order__id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.order__id_seq OWNED BY public.order_.id;


--
-- Name: product; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.product (
    id integer NOT NULL,
    order_id integer NOT NULL,
    title character varying(100),
    size_ character varying(100),
    price numeric,
    finish character varying(100)
);


--
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;


--
-- Name: quality_check; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.quality_check (
    id integer NOT NULL,
    product_id integer NOT NULL,
    employee_id integer NOT NULL,
    check_date date,
    result character varying(100)
);


--
-- Name: quality_check_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.quality_check_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: quality_check_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.quality_check_id_seq OWNED BY public.quality_check.id;


--
-- Name: brigade id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.brigade ALTER COLUMN id SET DEFAULT nextval('public.brigade_id_seq'::regclass);


--
-- Name: client id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.client ALTER COLUMN id SET DEFAULT nextval('public.client_id_seq'::regclass);


--
-- Name: employee id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employee ALTER COLUMN id SET DEFAULT nextval('public.employee_id_seq'::regclass);


--
-- Name: material id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.material ALTER COLUMN id SET DEFAULT nextval('public.material_id_seq'::regclass);


--
-- Name: operation id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.operation ALTER COLUMN id SET DEFAULT nextval('public.operation_id_seq'::regclass);


--
-- Name: order_ id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_ ALTER COLUMN id SET DEFAULT nextval('public.order__id_seq'::regclass);


--
-- Name: product id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);


--
-- Name: quality_check id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.quality_check ALTER COLUMN id SET DEFAULT nextval('public.quality_check_id_seq'::regclass);


--
-- Data for Name: brigade; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.brigade (id, brigade_number, specialization) FROM stdin;
1	1	раскрой и сборка
2	2	окраска
3	3	фурнитура и упаковка
\.


--
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.client (id, last_name, first_name, email) FROM stdin;
1	Золотов	Иван	ivan@example.org
2	Петрова	Мария	maria@example.org
3	Сидоров	Алексей	alex@example.org
\.


--
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.employee (id, last_name, first_name, "position") FROM stdin;
1	Тёмный	Андрей	Контролёр
2	Светлый	Максим	Контролёр
3	Иванова	Елена	Старший контролёр
\.


--
-- Data for Name: material; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.material (id, product_id, title, unit, planed_qty, actual_qty) FROM stdin;
1	1	ЛДСП белый	м³	4.2	4.1
2	1	Кромка ПВХ	м	12.0	11.5
3	2	ЛДСП белый	м³	0.8	0.75
4	3	ЛДСП дуб	м³	3.5	3.4
5	4	ЛДСП орех	м³	1.5	1.5
\.


--
-- Data for Name: operation; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.operation (id, product_id, title, seq_number, planned_date, actual_date, brigade_id) FROM stdin;
1	1	Раскрой	1	2026-04-08	2026-04-08	1
2	1	Сборка	2	2026-04-10	2026-04-10	1
3	1	Окраска	3	2026-04-12	2026-04-12	2
4	3	Раскрой	1	2026-04-11	2026-04-11	1
5	3	Сборка	2	2026-04-14	2026-04-15	1
6	4	Раскрой	1	2026-04-20	2026-04-20	1
\.


--
-- Data for Name: order_; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.order_ (id, client_id, deadline, delivery_address, status) FROM stdin;
1	1	2026-04-20	ул. Горького, 5	в работе
2	2	2026-04-25	пр. Мира, 12	в работе
3	3	2026-05-10	ул. Ленина, 45	выполнен
\.


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.product (id, order_id, title, size_, price, finish) FROM stdin;
1	1	Шкаф-купе «Пирожок»	200×80×60	25000	белый
2	1	Тумба прикроватная	50×40×45	8500	белый
3	2	Кровать «Аэродром»	180×200	18000	дуб
4	3	Стол письменный	120×60×75	12000	орех
\.


--
-- Data for Name: quality_check; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.quality_check (id, product_id, employee_id, check_date, result) FROM stdin;
1	1	1	2026-04-13	Замечания
2	2	2	2026-04-14	Успешно
3	3	1	2026-04-16	Успешно
4	4	3	2026-04-22	Успешно
\.


--
-- Name: brigade_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.brigade_id_seq', 3, true);


--
-- Name: client_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.client_id_seq', 3, true);


--
-- Name: employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.employee_id_seq', 3, true);


--
-- Name: material_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.material_id_seq', 5, true);


--
-- Name: operation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.operation_id_seq', 6, true);


--
-- Name: order__id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.order__id_seq', 3, true);


--
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.product_id_seq', 4, true);


--
-- Name: quality_check_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.quality_check_id_seq', 4, true);


--
-- Name: brigade brigade_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.brigade
    ADD CONSTRAINT brigade_pkey PRIMARY KEY (id);


--
-- Name: client client_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);


--
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);


--
-- Name: material material_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (id);


--
-- Name: operation operation_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.operation
    ADD CONSTRAINT operation_pkey PRIMARY KEY (id);


--
-- Name: order_ order__pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_
    ADD CONSTRAINT order__pkey PRIMARY KEY (id);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- Name: quality_check quality_check_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.quality_check
    ADD CONSTRAINT quality_check_pkey PRIMARY KEY (id);


--
-- Name: operation fk_brigade_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.operation
    ADD CONSTRAINT fk_brigade_id FOREIGN KEY (brigade_id) REFERENCES public.brigade(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: order_ fk_client; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.order_
    ADD CONSTRAINT fk_client FOREIGN KEY (client_id) REFERENCES public.client(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: quality_check fk_employee_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.quality_check
    ADD CONSTRAINT fk_employee_id FOREIGN KEY (employee_id) REFERENCES public.employee(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: material fk_material_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.material
    ADD CONSTRAINT fk_material_id FOREIGN KEY (product_id) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: product fk_order_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk_order_id FOREIGN KEY (order_id) REFERENCES public.order_(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: operation fk_product_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.operation
    ADD CONSTRAINT fk_product_id FOREIGN KEY (product_id) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: quality_check fk_quality_check_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.quality_check
    ADD CONSTRAINT fk_quality_check_id FOREIGN KEY (product_id) REFERENCES public.product(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict DboHVaCWie1zwAUJuG3JxXNQmprc8WZWZRgH8CJZDmrencBriYPgldX5YEjblkC

