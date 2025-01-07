--
-- PostgreSQL database dump
--

-- Dumped from database version 16.5
-- Dumped by pg_dump version 16.5

-- Started on 2025-01-07 15:40:53

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

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 4861 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 16572)
-- Name: experiences; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.experiences (
    id bigint NOT NULL,
    company_img character varying(255),
    company_name character varying(255),
    job_title character varying(255),
    description character varying(255),
    working_period character varying(255),
    start_date timestamp(6) without time zone,
    end_date timestamp(6) without time zone
);


ALTER TABLE public.experiences OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16577)
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
-- TOC entry 4862 (class 0 OID 0)
-- Dependencies: 216
-- Name: experiences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.experiences_id_seq OWNED BY public.experiences.id;


--
-- TOC entry 217 (class 1259 OID 16578)
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
-- TOC entry 218 (class 1259 OID 16583)
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
-- TOC entry 4863 (class 0 OID 0)
-- Dependencies: 218
-- Name: links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.links_id_seq OWNED BY public.links.id;


--
-- TOC entry 219 (class 1259 OID 16584)
-- Name: projects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projects (
    id bigint NOT NULL,
    name character varying(255),
    img character varying(255),
    description character varying(255),
    link_github character varying(255),
    link_website character varying(255),
    start_date timestamp(6) without time zone,
    end_date timestamp(6) without time zone
);


ALTER TABLE public.projects OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16589)
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
-- TOC entry 4864 (class 0 OID 0)
-- Dependencies: 220
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- TOC entry 221 (class 1259 OID 16590)
-- Name: projects_skills; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projects_skills (
    id bigint NOT NULL,
    skill_id bigint,
    project_id bigint
);


ALTER TABLE public.projects_skills OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16593)
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
-- TOC entry 4865 (class 0 OID 0)
-- Dependencies: 222
-- Name: projects_skills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.projects_skills_id_seq OWNED BY public.projects_skills.id;


--
-- TOC entry 223 (class 1259 OID 16594)
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(20),
    CONSTRAINT roles_name_check CHECK (((name)::text = ANY (ARRAY[('ROLE_USER'::character varying)::text, ('ROLE_MODERATOR'::character varying)::text, ('ROLE_ADMIN'::character varying)::text])))
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16598)
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
-- TOC entry 225 (class 1259 OID 16599)
-- Name: skills; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.skills (
    id bigint NOT NULL,
    icon character varying(255),
    name character varying(255)
);


ALTER TABLE public.skills OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16604)
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
-- TOC entry 4866 (class 0 OID 0)
-- Dependencies: 226
-- Name: skills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.skills_id_seq OWNED BY public.skills.id;


--
-- TOC entry 227 (class 1259 OID 16605)
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
-- TOC entry 228 (class 1259 OID 16608)
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
-- TOC entry 229 (class 1259 OID 16609)
-- Name: users_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_roles (
    user_id bigint NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.users_roles OWNER TO postgres;

--
-- TOC entry 4668 (class 2604 OID 16612)
-- Name: experiences id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.experiences ALTER COLUMN id SET DEFAULT nextval('public.experiences_id_seq'::regclass);


--
-- TOC entry 4669 (class 2604 OID 16613)
-- Name: links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.links ALTER COLUMN id SET DEFAULT nextval('public.links_id_seq'::regclass);


--
-- TOC entry 4670 (class 2604 OID 16614)
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- TOC entry 4671 (class 2604 OID 16615)
-- Name: projects_skills id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects_skills ALTER COLUMN id SET DEFAULT nextval('public.projects_skills_id_seq'::regclass);


--
-- TOC entry 4672 (class 2604 OID 16616)
-- Name: skills id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.skills ALTER COLUMN id SET DEFAULT nextval('public.skills_id_seq'::regclass);


--
-- TOC entry 4841 (class 0 OID 16572)
-- Dependencies: 215
-- Data for Name: experiences; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.experiences VALUES (1, 'company url', 'ABC', 'SW Engineer', 'text 1', '18d', '2025-01-06 00:00:00', '2025-01-07 00:00:00');
INSERT INTO public.experiences VALUES (2, 'company url', 'XYZ', 'Data Engineer', 'text 2', '19d', '2025-01-06 00:00:00', '2025-01-07 00:00:00');
INSERT INTO public.experiences VALUES (3, 'company url', 'ZDE', 'Web Engineer', 'text 3', '20d', '2025-01-06 00:00:00', '2025-01-07 00:00:00');
INSERT INTO public.experiences VALUES (4, 'company url 1', 'test 1', 'test Engineer 1', 'test 11', '18d test1', '2025-01-05 18:05:00', '2025-01-06 19:06:00');


--
-- TOC entry 4843 (class 0 OID 16578)
-- Dependencies: 217
-- Data for Name: links; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.links VALUES (2, 'lkd_link', 'ldk_link', '1https://chatgpt.com/c/6778041e-ffb8-8012-a3e2-521b817002f5', 'icon_img1');
INSERT INTO public.links VALUES (3, 'ins_link', 'ins_link', '2https://chatgpt.com/c/6778041e-ffb8-8012-a3e2-521b817002f5', 'icon_img2');
INSERT INTO public.links VALUES (1, 'github_link', 'github_link', 'https://chatgpt.com/c/6778041e-ffb8-8012-a3e2-521b817002f5', 'icon_img');


--
-- TOC entry 4845 (class 0 OID 16584)
-- Dependencies: 219
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.projects VALUES (1, 'Econ', 'url img', 'Econ project', 'url githut', 'url website', '2025-01-06 00:00:00', '2025-01-07 00:00:00');
INSERT INTO public.projects VALUES (2, 'CCD', 'url img', 'CCD project', 'url githut', 'url website', '2025-01-06 00:00:00', '2025-01-07 00:00:00');
INSERT INTO public.projects VALUES (3, 'AVC', 'url img', 'AVC project', 'url githut', 'url website', '2025-01-06 00:00:00', '2025-01-07 00:00:00');


--
-- TOC entry 4847 (class 0 OID 16590)
-- Dependencies: 221
-- Data for Name: projects_skills; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4849 (class 0 OID 16594)
-- Dependencies: 223
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.roles VALUES (1, 'ROLE_USER');
INSERT INTO public.roles VALUES (2, 'ROLE_MODERATOR');
INSERT INTO public.roles VALUES (3, 'ROLE_ADMIN');


--
-- TOC entry 4851 (class 0 OID 16599)
-- Dependencies: 225
-- Data for Name: skills; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.skills VALUES (1, NULL, 'HTML');
INSERT INTO public.skills VALUES (2, NULL, 'CSS');
INSERT INTO public.skills VALUES (3, NULL, 'JavaScript');


--
-- TOC entry 4853 (class 0 OID 16605)
-- Dependencies: 227
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES (6, 'usertest01@gmail.com', '$2a$10$yqeonkjL6io06UJAxsLgOugdvgSAGsgK5M5yOO6/pGDmxzvTdUUU.', 'usertest01');
INSERT INTO public.users VALUES (7, 'usertest02@gmail.com', '$2a$10$2XkWAezRKAShtZqIT8pEcOU/DrbigHSHd.YeFTg4zrbFDAFrNsPwi', 'usertest02');
INSERT INTO public.users VALUES (9, 'usertest04@gmail.com', '$2a$10$DMonUmB5xU7pjvthCKPkUeBxTa2fEJdZGaIrpr6bvyVxW.7Vpwati', 'usertest04');
INSERT INTO public.users VALUES (10, 'usertest06@gmail.com', '$2a$10$1sZ2foymF.y9U6VSnE1O6eR.yOrgapaMXZhlW0LeZekTmE7nOr.C2', 'usertest06');
INSERT INTO public.users VALUES (11, 'usertest03@gmail.com', '$2a$10$Xn4PERnaw0vrTXaKH/mjg.u9kL4R53DKDCi27KCUHg5.o/JBMCCPS', 'usertest03');


--
-- TOC entry 4855 (class 0 OID 16609)
-- Dependencies: 229
-- Data for Name: users_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users_roles VALUES (6, 1);
INSERT INTO public.users_roles VALUES (7, 3);
INSERT INTO public.users_roles VALUES (9, 1);
INSERT INTO public.users_roles VALUES (9, 2);
INSERT INTO public.users_roles VALUES (10, 1);
INSERT INTO public.users_roles VALUES (11, 2);


--
-- TOC entry 4867 (class 0 OID 0)
-- Dependencies: 216
-- Name: experiences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.experiences_id_seq', 4, true);


--
-- TOC entry 4868 (class 0 OID 0)
-- Dependencies: 218
-- Name: links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.links_id_seq', 4, true);


--
-- TOC entry 4869 (class 0 OID 0)
-- Dependencies: 220
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.projects_id_seq', 4, true);


--
-- TOC entry 4870 (class 0 OID 0)
-- Dependencies: 222
-- Name: projects_skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.projects_skills_id_seq', 1, false);


--
-- TOC entry 4871 (class 0 OID 0)
-- Dependencies: 224
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 3, true);


--
-- TOC entry 4872 (class 0 OID 0)
-- Dependencies: 226
-- Name: skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.skills_id_seq', 5, true);


--
-- TOC entry 4873 (class 0 OID 0)
-- Dependencies: 228
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 11, true);


--
-- TOC entry 4675 (class 2606 OID 16618)
-- Name: experiences experiences_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.experiences
    ADD CONSTRAINT experiences_pkey PRIMARY KEY (id);


--
-- TOC entry 4677 (class 2606 OID 16620)
-- Name: links links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.links
    ADD CONSTRAINT links_pkey PRIMARY KEY (id);


--
-- TOC entry 4679 (class 2606 OID 16622)
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- TOC entry 4681 (class 2606 OID 16624)
-- Name: projects_skills projects_skills_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects_skills
    ADD CONSTRAINT projects_skills_pkey PRIMARY KEY (id);


--
-- TOC entry 4683 (class 2606 OID 16626)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 4685 (class 2606 OID 16628)
-- Name: skills skills_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.skills
    ADD CONSTRAINT skills_pkey PRIMARY KEY (id);


--
-- TOC entry 4687 (class 2606 OID 16630)
-- Name: users uk6dotkott2kjsp8vw4d0m25fb7; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT uk6dotkott2kjsp8vw4d0m25fb7 UNIQUE (email);


--
-- TOC entry 4689 (class 2606 OID 16632)
-- Name: users ukk8d0f2n7n88w1a16yhua64onx; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT ukk8d0f2n7n88w1a16yhua64onx UNIQUE (user_name);


--
-- TOC entry 4691 (class 2606 OID 16634)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4693 (class 2606 OID 16636)
-- Name: users_roles users_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT users_roles_pkey PRIMARY KEY (user_id, role_id);


--
-- TOC entry 4696 (class 2606 OID 16637)
-- Name: users_roles fk2o0jvgh89lemvvo17cbqvdxaa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT fk2o0jvgh89lemvvo17cbqvdxaa FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 4697 (class 2606 OID 16642)
-- Name: users_roles fkj6m8fwv7oqv74fcehir1a9ffy; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT fkj6m8fwv7oqv74fcehir1a9ffy FOREIGN KEY (role_id) REFERENCES public.roles(id);


--
-- TOC entry 4694 (class 2606 OID 16647)
-- Name: projects_skills projects_skills_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects_skills
    ADD CONSTRAINT projects_skills_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.projects(id);


--
-- TOC entry 4695 (class 2606 OID 16652)
-- Name: projects_skills projects_skills_skill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects_skills
    ADD CONSTRAINT projects_skills_skill_id_fkey FOREIGN KEY (skill_id) REFERENCES public.skills(id);


-- Completed on 2025-01-07 15:40:53

--
-- PostgreSQL database dump complete
--

