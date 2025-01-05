--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2 (Debian 17.2-1.pgdg120+1)
-- Dumped by pg_dump version 17.0

-- Started on 2025-01-06 01:05:58

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

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 3439 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 224 (class 1259 OID 16425)
-- Name: experiences; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.experiences (
    id bigint NOT NULL,
    company_img character varying(255),
    company_name character varying(255),
    job_title character varying(255),
    description character varying(255),
    working_period character varying(255),
    start_date date,
    end_date date
);


ALTER TABLE public.experiences OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16424)
-- Name: experiences_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.experiences_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.experiences_id_seq OWNER TO postgres;

--
-- TOC entry 3440 (class 0 OID 0)
-- Dependencies: 223
-- Name: experiences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.experiences_id_seq OWNED BY public.experiences.id;


--
-- TOC entry 226 (class 1259 OID 16434)
-- Name: links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.links (
    id bigint NOT NULL,
    name character varying(255),
    title character varying(255),
    url character varying(255),
    icon character varying(255)
);


ALTER TABLE public.links OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16433)
-- Name: links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.links_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.links_id_seq OWNER TO postgres;

--
-- TOC entry 3441 (class 0 OID 0)
-- Dependencies: 225
-- Name: links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.links_id_seq OWNED BY public.links.id;


--
-- TOC entry 220 (class 1259 OID 16399)
-- Name: projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projects (
    id bigint NOT NULL,
    name character varying(255),
    img character varying(255),
    description character varying(255),
    link_github character varying(255),
    link_website character varying(255),
    start_date date,
    end_date date
);


ALTER TABLE public.projects OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16398)
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.projects_id_seq OWNER TO postgres;

--
-- TOC entry 3442 (class 0 OID 0)
-- Dependencies: 219
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- TOC entry 222 (class 1259 OID 16408)
-- Name: projects_skills; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projects_skills (
    id bigint NOT NULL,
    skill_id bigint,
    project_id bigint
);


ALTER TABLE public.projects_skills OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16407)
-- Name: projects_skills_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.projects_skills_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.projects_skills_id_seq OWNER TO postgres;

--
-- TOC entry 3443 (class 0 OID 0)
-- Dependencies: 221
-- Name: projects_skills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.projects_skills_id_seq OWNED BY public.projects_skills.id;


--
-- TOC entry 228 (class 1259 OID 16544)
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(20),
    CONSTRAINT roles_name_check CHECK (((name)::text = ANY ((ARRAY['ROLE_USER'::character varying, 'ROLE_MODERATOR'::character varying, 'ROLE_ADMIN'::character varying])::text[])))
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16543)
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.roles ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 218 (class 1259 OID 16390)
-- Name: skills; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.skills (
    id bigint NOT NULL,
    icon character varying(255),
    name character varying(255)
);


ALTER TABLE public.skills OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16389)
-- Name: skills_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.skills_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.skills_id_seq OWNER TO postgres;

--
-- TOC entry 3444 (class 0 OID 0)
-- Dependencies: 217
-- Name: skills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.skills_id_seq OWNED BY public.skills.id;


--
-- TOC entry 230 (class 1259 OID 16551)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying(50) NOT NULL,
    password character varying(120) NOT NULL,
    user_name character varying(20) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16550)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.users ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 231 (class 1259 OID 16556)
-- Name: users_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_roles (
    user_id bigint NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.users_roles OWNER TO postgres;

--
-- TOC entry 3247 (class 2604 OID 16428)
-- Name: experiences id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.experiences ALTER COLUMN id SET DEFAULT nextval('public.experiences_id_seq'::regclass);


--
-- TOC entry 3248 (class 2604 OID 16437)
-- Name: links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.links ALTER COLUMN id SET DEFAULT nextval('public.links_id_seq'::regclass);


--
-- TOC entry 3245 (class 2604 OID 16402)
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- TOC entry 3246 (class 2604 OID 16411)
-- Name: projects_skills id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects_skills ALTER COLUMN id SET DEFAULT nextval('public.projects_skills_id_seq'::regclass);


--
-- TOC entry 3244 (class 2604 OID 16393)
-- Name: skills id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.skills ALTER COLUMN id SET DEFAULT nextval('public.skills_id_seq'::regclass);


--
-- TOC entry 3426 (class 0 OID 16425)
-- Dependencies: 224
-- Data for Name: experiences; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3428 (class 0 OID 16434)
-- Dependencies: 226
-- Data for Name: links; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3422 (class 0 OID 16399)
-- Dependencies: 220
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3424 (class 0 OID 16408)
-- Dependencies: 222
-- Data for Name: projects_skills; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3430 (class 0 OID 16544)
-- Dependencies: 228
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.roles VALUES (1, 'ROLE_USER');
INSERT INTO public.roles VALUES (2, 'ROLE_MODERATOR');
INSERT INTO public.roles VALUES (3, 'ROLE_ADMIN');


--
-- TOC entry 3420 (class 0 OID 16390)
-- Dependencies: 218
-- Data for Name: skills; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.skills VALUES (1, NULL, 'HTML');
INSERT INTO public.skills VALUES (2, NULL, 'CSS');
INSERT INTO public.skills VALUES (3, NULL, 'JavaScript');


--
-- TOC entry 3432 (class 0 OID 16551)
-- Dependencies: 230
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES (6, 'usertest01@gmail.com', '$2a$10$yqeonkjL6io06UJAxsLgOugdvgSAGsgK5M5yOO6/pGDmxzvTdUUU.', 'usertest01');
INSERT INTO public.users VALUES (7, 'usertest02@gmail.com', '$2a$10$2XkWAezRKAShtZqIT8pEcOU/DrbigHSHd.YeFTg4zrbFDAFrNsPwi', 'usertest02');
INSERT INTO public.users VALUES (9, 'usertest04@gmail.com', '$2a$10$DMonUmB5xU7pjvthCKPkUeBxTa2fEJdZGaIrpr6bvyVxW.7Vpwati', 'usertest04');
INSERT INTO public.users VALUES (10, 'usertest06@gmail.com', '$2a$10$1sZ2foymF.y9U6VSnE1O6eR.yOrgapaMXZhlW0LeZekTmE7nOr.C2', 'usertest06');
INSERT INTO public.users VALUES (11, 'usertest03@gmail.com', '$2a$10$Xn4PERnaw0vrTXaKH/mjg.u9kL4R53DKDCi27KCUHg5.o/JBMCCPS', 'usertest03');


--
-- TOC entry 3433 (class 0 OID 16556)
-- Dependencies: 231
-- Data for Name: users_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users_roles VALUES (6, 1);
INSERT INTO public.users_roles VALUES (7, 3);
INSERT INTO public.users_roles VALUES (9, 1);
INSERT INTO public.users_roles VALUES (9, 2);
INSERT INTO public.users_roles VALUES (10, 1);
INSERT INTO public.users_roles VALUES (11, 2);


--
-- TOC entry 3445 (class 0 OID 0)
-- Dependencies: 223
-- Name: experiences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.experiences_id_seq', 1, false);


--
-- TOC entry 3446 (class 0 OID 0)
-- Dependencies: 225
-- Name: links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.links_id_seq', 1, false);


--
-- TOC entry 3447 (class 0 OID 0)
-- Dependencies: 219
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.projects_id_seq', 1, false);


--
-- TOC entry 3448 (class 0 OID 0)
-- Dependencies: 221
-- Name: projects_skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.projects_skills_id_seq', 1, false);


--
-- TOC entry 3449 (class 0 OID 0)
-- Dependencies: 227
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 3, true);


--
-- TOC entry 3450 (class 0 OID 0)
-- Dependencies: 217
-- Name: skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.skills_id_seq', 3, true);


--
-- TOC entry 3451 (class 0 OID 0)
-- Dependencies: 229
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 11, true);


--
-- TOC entry 3257 (class 2606 OID 16432)
-- Name: experiences experiences_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.experiences
    ADD CONSTRAINT experiences_pkey PRIMARY KEY (id);


--
-- TOC entry 3259 (class 2606 OID 16441)
-- Name: links links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.links
    ADD CONSTRAINT links_pkey PRIMARY KEY (id);


--
-- TOC entry 3253 (class 2606 OID 16406)
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- TOC entry 3255 (class 2606 OID 16413)
-- Name: projects_skills projects_skills_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects_skills
    ADD CONSTRAINT projects_skills_pkey PRIMARY KEY (id);


--
-- TOC entry 3261 (class 2606 OID 16549)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3251 (class 2606 OID 16397)
-- Name: skills skills_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.skills
    ADD CONSTRAINT skills_pkey PRIMARY KEY (id);


--
-- TOC entry 3263 (class 2606 OID 16564)
-- Name: users uk6dotkott2kjsp8vw4d0m25fb7; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT uk6dotkott2kjsp8vw4d0m25fb7 UNIQUE (email);


--
-- TOC entry 3265 (class 2606 OID 16562)
-- Name: users ukk8d0f2n7n88w1a16yhua64onx; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT ukk8d0f2n7n88w1a16yhua64onx UNIQUE (user_name);


--
-- TOC entry 3267 (class 2606 OID 16555)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3269 (class 2606 OID 16560)
-- Name: users_roles users_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT users_roles_pkey PRIMARY KEY (user_id, role_id);


--
-- TOC entry 3272 (class 2606 OID 16570)
-- Name: users_roles fk2o0jvgh89lemvvo17cbqvdxaa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT fk2o0jvgh89lemvvo17cbqvdxaa FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3273 (class 2606 OID 16565)
-- Name: users_roles fkj6m8fwv7oqv74fcehir1a9ffy; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT fkj6m8fwv7oqv74fcehir1a9ffy FOREIGN KEY (role_id) REFERENCES public.roles(id);


--
-- TOC entry 3270 (class 2606 OID 16419)
-- Name: projects_skills projects_skills_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects_skills
    ADD CONSTRAINT projects_skills_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.projects(id);


--
-- TOC entry 3271 (class 2606 OID 16414)
-- Name: projects_skills projects_skills_skill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects_skills
    ADD CONSTRAINT projects_skills_skill_id_fkey FOREIGN KEY (skill_id) REFERENCES public.skills(id);


-- Completed on 2025-01-06 01:05:58

--
-- PostgreSQL database dump complete
--

