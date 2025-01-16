--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2 (Debian 17.2-1.pgdg120+1)
-- Dumped by pg_dump version 17.0

-- Started on 2025-01-16 10:10:21

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
-- TOC entry 3461 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 217 (class 1259 OID 49382)
-- Name: blogs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blogs (
    id bigint NOT NULL,
    title character varying(255),
    content text,
    description character varying(255),
    status character varying(255),
    create_date timestamp(6) without time zone,
    update_date timestamp(6) without time zone,
    img_url character varying(255)
);


ALTER TABLE public.blogs OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 49387)
-- Name: blogs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blogs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blogs_id_seq OWNER TO postgres;

--
-- TOC entry 3462 (class 0 OID 0)
-- Dependencies: 218
-- Name: blogs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blogs_id_seq OWNED BY public.blogs.id;


--
-- TOC entry 219 (class 1259 OID 49388)
-- Name: blogs_skills; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blogs_skills (
    id bigint NOT NULL,
    blog_id bigint,
    skill_id bigint
);


ALTER TABLE public.blogs_skills OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 49391)
-- Name: blogs_skills_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.blogs_skills_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blogs_skills_id_seq OWNER TO postgres;

--
-- TOC entry 3463 (class 0 OID 0)
-- Dependencies: 220
-- Name: blogs_skills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.blogs_skills_id_seq OWNED BY public.blogs_skills.id;


--
-- TOC entry 221 (class 1259 OID 49392)
-- Name: experiences; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.experiences (
    id bigint NOT NULL,
    company_img character varying(255),
    company_name character varying(255),
    job_title character varying(255),
    description text,
    working_period character varying(255),
    start_date timestamp(6) without time zone,
    end_date timestamp(6) without time zone
);


ALTER TABLE public.experiences OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 49397)
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
-- TOC entry 3464 (class 0 OID 0)
-- Dependencies: 222
-- Name: experiences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.experiences_id_seq OWNED BY public.experiences.id;


--
-- TOC entry 223 (class 1259 OID 49398)
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
-- TOC entry 224 (class 1259 OID 49403)
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
-- TOC entry 3465 (class 0 OID 0)
-- Dependencies: 224
-- Name: links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.links_id_seq OWNED BY public.links.id;


--
-- TOC entry 225 (class 1259 OID 49404)
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
-- TOC entry 226 (class 1259 OID 49409)
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
-- TOC entry 3466 (class 0 OID 0)
-- Dependencies: 226
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- TOC entry 227 (class 1259 OID 49410)
-- Name: projects_skills; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projects_skills (
    id bigint NOT NULL,
    skill_id bigint,
    project_id bigint
);


ALTER TABLE public.projects_skills OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 49413)
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
-- TOC entry 3467 (class 0 OID 0)
-- Dependencies: 228
-- Name: projects_skills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.projects_skills_id_seq OWNED BY public.projects_skills.id;


--
-- TOC entry 229 (class 1259 OID 49414)
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(20),
    CONSTRAINT roles_name_check CHECK (((name)::text = ANY (ARRAY[('ROLE_USER'::character varying)::text, ('ROLE_MODERATOR'::character varying)::text, ('ROLE_ADMIN'::character varying)::text])))
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 49418)
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
-- TOC entry 231 (class 1259 OID 49419)
-- Name: skills; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.skills (
    id bigint NOT NULL,
    icon text,
    name character varying(255)
);


ALTER TABLE public.skills OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 49424)
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
-- TOC entry 3468 (class 0 OID 0)
-- Dependencies: 232
-- Name: skills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.skills_id_seq OWNED BY public.skills.id;


--
-- TOC entry 233 (class 1259 OID 49425)
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
-- TOC entry 234 (class 1259 OID 49428)
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
-- TOC entry 235 (class 1259 OID 49429)
-- Name: users_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_roles (
    user_id bigint NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.users_roles OWNER TO postgres;

--
-- TOC entry 3254 (class 2604 OID 49432)
-- Name: blogs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blogs ALTER COLUMN id SET DEFAULT nextval('public.blogs_id_seq'::regclass);


--
-- TOC entry 3255 (class 2604 OID 49433)
-- Name: blogs_skills id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blogs_skills ALTER COLUMN id SET DEFAULT nextval('public.blogs_skills_id_seq'::regclass);


--
-- TOC entry 3256 (class 2604 OID 49434)
-- Name: experiences id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.experiences ALTER COLUMN id SET DEFAULT nextval('public.experiences_id_seq'::regclass);


--
-- TOC entry 3257 (class 2604 OID 49435)
-- Name: links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.links ALTER COLUMN id SET DEFAULT nextval('public.links_id_seq'::regclass);


--
-- TOC entry 3258 (class 2604 OID 49436)
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- TOC entry 3259 (class 2604 OID 49437)
-- Name: projects_skills id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects_skills ALTER COLUMN id SET DEFAULT nextval('public.projects_skills_id_seq'::regclass);


--
-- TOC entry 3260 (class 2604 OID 49438)
-- Name: skills id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.skills ALTER COLUMN id SET DEFAULT nextval('public.skills_id_seq'::regclass);


--
-- TOC entry 3437 (class 0 OID 49382)
-- Dependencies: 217
-- Data for Name: blogs; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.blogs VALUES (9, 'Perfect git commit message', '<p><span style="color: rgb(63, 63, 70);">When&nbsp;using&nbsp;Git&nbsp;to&nbsp;manage&nbsp;source&nbsp;code,&nbsp;a&nbsp;crucial&nbsp;and&nbsp;indispensable&nbsp;task&nbsp;every&nbsp;time&nbsp;we&nbsp;make&nbsp;changes&nbsp;to&nbsp;the&nbsp;source&nbsp;code&nbsp;is&nbsp;committing&nbsp;those&nbsp;changes,&nbsp;accompanied&nbsp;by&nbsp;writing&nbsp;commit&nbsp;messages.&nbsp;These&nbsp;commit&nbsp;messages&nbsp;provide&nbsp;an&nbsp;overview&nbsp;of&nbsp;the&nbsp;changes&nbsp;made&nbsp;in&nbsp;each&nbsp;commit.</span></p><p><span style="color: rgb(63, 63, 70);">In&nbsp;this&nbsp;post,&nbsp;I’ll&nbsp;guide&nbsp;you&nbsp;through&nbsp;the&nbsp;art&nbsp;of&nbsp;writing&nbsp;the&nbsp;perfect&nbsp;Git&nbsp;commit&nbsp;message.&nbsp;My&nbsp;goal&nbsp;is&nbsp;to&nbsp;help&nbsp;you&nbsp;enhance&nbsp;your&nbsp;Git&nbsp;skills&nbsp;and&nbsp;make&nbsp;your&nbsp;commit&nbsp;history&nbsp;clearer,&nbsp;more&nbsp;professional,&nbsp;and&nbsp;easier&nbsp;to&nbsp;collaborate&nbsp;with.</span></p><h2><span style="color: hsl(var(--foreground) / var(--tw-text-opacity));">Why&nbsp;should&nbsp;we&nbsp;write&nbsp;clean&nbsp;commit&nbsp;message?</span></h2><blockquote><em style="color: rgb(24, 24, 27);">&quot;A&nbsp;good&nbsp;commit&nbsp;shows&nbsp;whether&nbsp;a&nbsp;developer&nbsp;is&nbsp;a&nbsp;good&nbsp;collaborator&nbsp;(Peter&nbsp;Hutterer,&nbsp;Linux)&quot;</em></blockquote><p><span style="color: rgb(63, 63, 70);">As&nbsp;Peter&nbsp;Hutterer&nbsp;mentioned,&nbsp;for&nbsp;a&nbsp;professional&nbsp;developer,&nbsp;not&nbsp;only&nbsp;is&nbsp;writing&nbsp;clean&nbsp;code&nbsp;essential,&nbsp;but&nbsp;crafting&nbsp;clean&nbsp;commit&nbsp;messages&nbsp;is&nbsp;equally&nbsp;important.&nbsp;Here&nbsp;are&nbsp;a&nbsp;few&nbsp;benefits&nbsp;of&nbsp;writing&nbsp;clean&nbsp;commit&nbsp;messages:</span></p><ul><li><span style="color: rgb(63, 63, 70);">Makes&nbsp;it&nbsp;easier&nbsp;for&nbsp;code&nbsp;reviewers&nbsp;to&nbsp;understand&nbsp;the&nbsp;changes&nbsp;in&nbsp;the&nbsp;source&nbsp;code.</span></li><li><span style="color: rgb(63, 63, 70);">Simplifies&nbsp;tracking&nbsp;past&nbsp;changes&nbsp;in&nbsp;the&nbsp;source&nbsp;code.</span></li></ul><h2><span style="color: hsl(var(--foreground) / var(--tw-text-opacity));">How&nbsp;to&nbsp;write&nbsp;a&nbsp;good&nbsp;commit&nbsp;message</span></h2><h3><span style="color: hsl(var(--foreground) / var(--tw-text-opacity));">Simple&nbsp;commits</span></h3><p><span style="color: rgb(63, 63, 70);">For&nbsp;commits&nbsp;that&nbsp;involve&nbsp;minimal&nbsp;changes&nbsp;to&nbsp;the&nbsp;source&nbsp;code&nbsp;or&nbsp;simple&nbsp;updates,&nbsp;you&nbsp;can&nbsp;use&nbsp;the&nbsp;following&nbsp;structure:</span></p><pre data-language="plain">
git commit -m &quot;[&lt;Task ID&gt;] &lt;Commit type&gt;: message&quot;
</pre><p><span style="color: rgb(63, 63, 70);">Example:</span></p><pre data-language="plain">
git commit -m &quot;[DATA-181] fix: Resolve connection issue with Google Storage in daily Citus pipeline ingestion&quot;
</pre><h3><span style="color: hsl(var(--foreground) / var(--tw-text-opacity));">Complex&nbsp;commits</span></h3><p><span style="color: rgb(63, 63, 70);">The&nbsp;structure&nbsp;of&nbsp;a&nbsp;commit&nbsp;message&nbsp;should&nbsp;consist&nbsp;of&nbsp;two&nbsp;part:&nbsp;Subject&nbsp;and&nbsp;Body.</span></p><pre data-language="plain">
git commit -m &quot;Subject

Body&quot;
</pre><p><span style="color: rgb(63, 63, 70);">Example:</span></p><pre data-language="plain">
git commit -m &quot;Fix bug in user authentication process

- Resolved an issue where users with special characters in their email addresses were unable to log in.
- Updated the validation logic to correctly handle these cases and added test cases to cover this scenario.
- This fix improves the overall user experience and ensures compatibility with a wider range of email formats.&quot;
</pre><h4><span style="color: hsl(var(--foreground) / var(--tw-text-opacity));">Tips&nbsp;for&nbsp;writing&nbsp;a&nbsp;good&nbsp;subject&nbsp;line</span></h4><p><span style="color: rgb(63, 63, 70);">When&nbsp;crafting&nbsp;the&nbsp;subject&nbsp;line&nbsp;of&nbsp;a&nbsp;commit&nbsp;message,&nbsp;consider&nbsp;the&nbsp;following&nbsp;tips&nbsp;to&nbsp;ensure&nbsp;it&nbsp;is&nbsp;effective&nbsp;and&nbsp;informative:</span></p><h5><span style="color: hsl(var(--foreground) / var(--tw-text-opacity));">1.&nbsp;Be&nbsp;concise</span></h5><p><span style="color: rgb(63, 63, 70);">Aim&nbsp;for&nbsp;clarity&nbsp;and&nbsp;brevity.&nbsp;Keep&nbsp;the&nbsp;subject&nbsp;line&nbsp;under&nbsp;50&nbsp;characters&nbsp;to&nbsp;make&nbsp;it&nbsp;easy&nbsp;to&nbsp;read&nbsp;at&nbsp;a&nbsp;glance.</span></p><h5><span style="color: hsl(var(--foreground) / var(--tw-text-opacity));">2.&nbsp;Use&nbsp;imperative&nbsp;mood</span></h5><p><span style="color: rgb(63, 63, 70);">Write&nbsp;the&nbsp;subject&nbsp;line&nbsp;as&nbsp;a&nbsp;command,&nbsp;starting&nbsp;with&nbsp;a&nbsp;verb.&nbsp;For&nbsp;example,&nbsp;use&nbsp;“Fix”&nbsp;instead&nbsp;of&nbsp;“Fixed”&nbsp;or&nbsp;“Fixes.”</span></p><h5><span style="color: hsl(var(--foreground) / var(--tw-text-opacity));">3.&nbsp;Focus&nbsp;on&nbsp;the&nbsp;change</span></h5><p><span style="color: rgb(63, 63, 70);">Clearly&nbsp;state&nbsp;what&nbsp;the&nbsp;commit&nbsp;does,&nbsp;highlighting&nbsp;the&nbsp;most&nbsp;critical&nbsp;information&nbsp;without&nbsp;unnecessary&nbsp;details.</span></p><h5><span style="color: hsl(var(--foreground) / var(--tw-text-opacity));">4.&nbsp;Avoid&nbsp;periods</span></h5><p><span style="color: rgb(63, 63, 70);">Do&nbsp;not&nbsp;add&nbsp;a&nbsp;period&nbsp;at&nbsp;the&nbsp;end&nbsp;of&nbsp;the&nbsp;subject&nbsp;line.&nbsp;This&nbsp;keeps&nbsp;the&nbsp;format&nbsp;clean&nbsp;and&nbsp;aligns&nbsp;with&nbsp;common&nbsp;practices.</span></p><h5><span style="color: hsl(var(--foreground) / var(--tw-text-opacity));">5.&nbsp;Capitalize&nbsp;the&nbsp;First&nbsp;Letter</span></h5><p><span style="color: rgb(63, 63, 70);">Only&nbsp;capitalize&nbsp;the&nbsp;first&nbsp;letter&nbsp;of&nbsp;the&nbsp;subject&nbsp;line&nbsp;to&nbsp;maintain&nbsp;a&nbsp;consistent&nbsp;and&nbsp;professional&nbsp;appearance.</span></p><h4><span style="color: hsl(var(--foreground) / var(--tw-text-opacity));">Tips&nbsp;for&nbsp;writing&nbsp;good&nbsp;body&nbsp;lines</span></h4><p><span style="color: rgb(63, 63, 70);">The&nbsp;body&nbsp;of&nbsp;a&nbsp;commit&nbsp;message&nbsp;provides&nbsp;essential&nbsp;details&nbsp;about&nbsp;the&nbsp;changes&nbsp;made,&nbsp;offering&nbsp;context&nbsp;and&nbsp;clarity&nbsp;for&nbsp;future&nbsp;reference.&nbsp;Here&nbsp;are&nbsp;some&nbsp;tips&nbsp;to&nbsp;write&nbsp;an&nbsp;effective&nbsp;commit&nbsp;message&nbsp;body:</span></p><h5><span style="color: hsl(var(--foreground) / var(--tw-text-opacity));">1.&nbsp;Explain&nbsp;the&nbsp;“Why,”&nbsp;not&nbsp;just&nbsp;the&nbsp;“What”</span></h5><p><span style="color: rgb(63, 63, 70);">The&nbsp;body&nbsp;should&nbsp;go&nbsp;beyond&nbsp;describing&nbsp;the&nbsp;changes.&nbsp;Explain&nbsp;why&nbsp;the&nbsp;changes&nbsp;were&nbsp;necessary&nbsp;and&nbsp;the&nbsp;problem&nbsp;they&nbsp;solve.</span></p><h5><span style="color: hsl(var(--foreground) / var(--tw-text-opacity));">2.&nbsp;Be&nbsp;detailed&nbsp;but&nbsp;concise</span></h5><p><span style="color: rgb(63, 63, 70);">Include&nbsp;enough&nbsp;information&nbsp;to&nbsp;understand&nbsp;the&nbsp;reasoning&nbsp;behind&nbsp;the&nbsp;commit,&nbsp;but&nbsp;avoid&nbsp;overly&nbsp;long&nbsp;explanations.&nbsp;Stick&nbsp;to&nbsp;the&nbsp;key&nbsp;points.</span></p><h5><span style="color: hsl(var(--foreground) / var(--tw-text-opacity));">3.&nbsp;Use&nbsp;proper&nbsp;formatting</span></h5><p><span style="color: rgb(63, 63, 70);">Break&nbsp;the&nbsp;body&nbsp;into&nbsp;short&nbsp;paragraphs&nbsp;or&nbsp;use&nbsp;bullet&nbsp;points&nbsp;for&nbsp;multiple&nbsp;changes.&nbsp;This&nbsp;improves&nbsp;readability&nbsp;and&nbsp;makes&nbsp;it&nbsp;easier&nbsp;to&nbsp;scan.</span></p><h5><span style="color: hsl(var(--foreground) / var(--tw-text-opacity));">4.&nbsp;Reference&nbsp;related&nbsp;issues&nbsp;or&nbsp;tickets</span></h5><p><span style="color: rgb(63, 63, 70);">Link&nbsp;the&nbsp;commit&nbsp;to&nbsp;related&nbsp;issues&nbsp;or&nbsp;tasks&nbsp;in&nbsp;your&nbsp;project&nbsp;management&nbsp;system&nbsp;by&nbsp;mentioning&nbsp;their&nbsp;identifiers&nbsp;(e.g.,&nbsp;Fixes&nbsp;#123&nbsp;or&nbsp;Relates&nbsp;to&nbsp;#456).</span></p><p></p>', 'Learn how to write perfect Git commit messages to improve your skills, create clear commit histories, and enhance collaboration.', 'ACTIVE', '2025-01-03 00:00:00', '2025-01-03 00:00:00', 'http://localhost:8081/v1/image/view/c30bf6d4-9fc1-45f2-a432-f3da525f3ccb_git-commit.CJUwI3Xs_1JvqyE.webp');
INSERT INTO public.blogs VALUES (2, 'PySparkCode #1: Using Datetime functions', '<p><span class="ql-font-monospace" style="color: rgb(63, 63, 70);">Datetime&nbsp;functions&nbsp;are&nbsp;essential&nbsp;when&nbsp;working&nbsp;with&nbsp;time-sensitive&nbsp;data,&nbsp;espectially&nbsp;in&nbsp;scenarios&nbsp;where&nbsp;data&nbsp;processing&nbsp;requires&nbsp;precise&nbsp;filtering&nbsp;or&nbsp;transformations&nbsp;based&nbsp;on&nbsp;dates&nbsp;and&nbsp;times.</span></p><p><span style="color: rgb(63, 63, 70);" class="ql-font-monospace">In&nbsp;this&nbsp;post,&nbsp;We’ll&nbsp;explore&nbsp;how&nbsp;to&nbsp;use&nbsp;PySpark’s&nbsp;datetime&nbsp;functions&nbsp;to&nbsp;solve&nbsp;a&nbsp;real-world&nbsp;problem:&nbsp;</span><strong style="color: var(--tw-prose-bold);" class="ql-font-monospace">Detecting&nbsp;invalid&nbsp;transactions</strong><span class="ql-font-monospace" style="color: rgb(63, 63, 70);">.</span></p><h2><span class="ql-font-monospace" style="color: hsl(var(--foreground) / var(--tw-text-opacity));">Problem&nbsp;Statement</span></h2><p><span style="color: rgb(63, 63, 70);" class="ql-font-monospace">Imagine&nbsp;you&nbsp;have&nbsp;a&nbsp;dataset&nbsp;containing&nbsp;transactions&nbsp;for&nbsp;the&nbsp;month&nbsp;of&nbsp;Septemper,&nbsp;with&nbsp;the&nbsp;following&nbsp;columns:&nbsp;</span><em style="color: rgb(63, 63, 70);" class="ql-font-monospace">transaction_id</em><span style="color: rgb(63, 63, 70);" class="ql-font-monospace">&nbsp;and&nbsp;</span><em style="color: rgb(63, 63, 70);" class="ql-font-monospace">created_at</em><span class="ql-font-monospace" style="color: rgb(63, 63, 70);">&nbsp;(the&nbsp;timestamp&nbsp;of&nbsp;when&nbsp;the&nbsp;transaction&nbsp;was&nbsp;created).</span></p><p><span class="ql-font-monospace" style="color: rgb(63, 63, 70);">Your&nbsp;task&nbsp;is&nbsp;to&nbsp;filter&nbsp;out&nbsp;invalid&nbsp;transactions&nbsp;based&nbsp;on&nbsp;the&nbsp;following&nbsp;criteria:</span></p><ul><li><span class="ql-font-monospace" style="color: rgb(63, 63, 70);">Transactions&nbsp;that&nbsp;occur&nbsp;outside&nbsp;of&nbsp;business&nbsp;hours&nbsp;(09:00-16:00,&nbsp;Monday-Friday).</span></li><li><span class="ql-font-monospace" style="color: rgb(63, 63, 70);">Transactions&nbsp;that&nbsp;take&nbsp;place&nbsp;on&nbsp;weekends&nbsp;(Saturday&nbsp;or&nbsp;Sunday).</span></li><li><span class="ql-font-monospace" style="color: rgb(63, 63, 70);">Transactions&nbsp;that&nbsp;occur&nbsp;on&nbsp;Vietnam’s&nbsp;public&nbsp;holiday,&nbsp;specifically&nbsp;the&nbsp;2nd&nbsp;of&nbsp;September.</span></li></ul><h2><span class="ql-font-monospace" style="color: hsl(var(--foreground) / var(--tw-text-opacity));">Code&nbsp;walkthrough</span></h2><p><span class="ql-font-monospace" style="color: rgb(63, 63, 70);">Let’s&nbsp;break&nbsp;the&nbsp;solution&nbsp;into&nbsp;steps:</span></p><h3><span class="ql-font-monospace" style="color: hsl(var(--foreground) / var(--tw-text-opacity));">1.&nbsp;Initializing&nbsp;the&nbsp;spark&nbsp;session</span></h3><p><span class="ql-font-monospace" style="color: rgb(63, 63, 70);">We&nbsp;start&nbsp;by&nbsp;setting&nbsp;up&nbsp;a&nbsp;Spark&nbsp;session,&nbsp;which&nbsp;is&nbsp;the&nbsp;entry&nbsp;point&nbsp;for&nbsp;working&nbsp;with&nbsp;PySpark.</span></p><blockquote class="ql-align-justify">from&nbsp;pyspark.sql&nbsp;import&nbsp;SparkSession</blockquote><blockquote class="ql-align-justify"></blockquote><blockquote class="ql-align-justify">spark&nbsp;=&nbsp;SparkSession.builder.appName(&quot;InvalidTransactions&quot;).getOrCreate()</blockquote><h3><span class="ql-font-monospace" style="color: hsl(var(--foreground) / var(--tw-text-opacity));">2.&nbsp;Loading&nbsp;sample&nbsp;data</span></h3><p><span class="ql-font-monospace" style="color: rgb(63, 63, 70);">We&nbsp;define&nbsp;some&nbsp;sample&nbsp;transaction&nbsp;data&nbsp;with&nbsp;timestamps&nbsp;to&nbsp;mimic&nbsp;real-world&nbsp;transaction&nbsp;logs.</span></p><blockquote>data&nbsp;=&nbsp;[</blockquote><blockquote>&nbsp;(1051,&nbsp;&#39;2024-09-01&nbsp;10:15&#39;),</blockquote><blockquote>&nbsp;(1052,&nbsp;&#39;2024-09-01&nbsp;17:00&#39;),</blockquote><blockquote>&nbsp;(1053,&nbsp;&#39;2024-09-02&nbsp;10:00&#39;),</blockquote><blockquote>&nbsp;(1054,&nbsp;&#39;2024-09-02&nbsp;14:00&#39;),</blockquote><blockquote>&nbsp;(1055,&nbsp;&#39;2024-09-03&nbsp;08:59&#39;),</blockquote><blockquote>&nbsp;(1056,&nbsp;&#39;2024-09-03&nbsp;16:01&#39;),</blockquote><blockquote>&nbsp;(1057,&nbsp;&#39;2024-09-04&nbsp;09:00&#39;),</blockquote><blockquote>&nbsp;(1058,&nbsp;&#39;2024-09-04&nbsp;15:59&#39;),</blockquote><blockquote>&nbsp;(1059,&nbsp;&#39;2024-09-05&nbsp;12:00&#39;),</blockquote><blockquote>&nbsp;(1060,&nbsp;&#39;2024-09-05&nbsp;09:00&#39;),</blockquote><blockquote>&nbsp;(1061,&nbsp;&#39;2024-09-06&nbsp;10:00&#39;),</blockquote><blockquote>&nbsp;(1062,&nbsp;&#39;2024-09-06&nbsp;17:30&#39;),</blockquote><blockquote>&nbsp;(1063,&nbsp;&#39;2024-09-07&nbsp;12:00&#39;),</blockquote><blockquote>&nbsp;(1064,&nbsp;&#39;2024-09-08&nbsp;09:00&#39;),</blockquote><blockquote>&nbsp;(1065,&nbsp;&#39;2024-09-09&nbsp;08:59&#39;),</blockquote><blockquote>&nbsp;(1066,&nbsp;&#39;2024-09-09&nbsp;16:01&#39;),</blockquote><blockquote>&nbsp;(1067,&nbsp;&#39;2024-09-02&nbsp;10:00&#39;),</blockquote><blockquote>&nbsp;(1068,&nbsp;&#39;2024-09-02&nbsp;15:00&#39;),</blockquote><blockquote>&nbsp;(1069,&nbsp;&#39;2024-09-10&nbsp;09:00&#39;),</blockquote><blockquote>&nbsp;(1070,&nbsp;&#39;2024-09-11&nbsp;12:00&#39;),</blockquote><blockquote>&nbsp;(1071,&nbsp;&#39;2024-09-12&nbsp;08:59&#39;),</blockquote><blockquote>&nbsp;(1072,&nbsp;&#39;2024-09-12&nbsp;16:30&#39;),</blockquote><blockquote>&nbsp;(1073,&nbsp;&#39;2024-09-13&nbsp;09:00&#39;),</blockquote><blockquote>&nbsp;(1074,&nbsp;&#39;2024-09-14&nbsp;14:00&#39;),</blockquote><blockquote>&nbsp;(1075,&nbsp;&#39;2024-09-15&nbsp;17:00&#39;),</blockquote><blockquote>&nbsp;(1076,&nbsp;&#39;2024-09-16&nbsp;10:00&#39;),</blockquote><blockquote>]</blockquote><blockquote></blockquote><blockquote>columns&nbsp;=&nbsp;[&quot;transaction_id&quot;,&nbsp;&quot;created_at&quot;]</blockquote><blockquote>df&nbsp;=&nbsp;spark.createDataFrame(data,&nbsp;columns)</blockquote><h3><span class="ql-font-monospace" style="color: hsl(var(--foreground) / var(--tw-text-opacity));">3.&nbsp;Filtering&nbsp;transactions&nbsp;in&nbsp;September&nbsp;2024</span></h3><p><span style="color: rgb(63, 63, 70);" class="ql-font-monospace">We&nbsp;use&nbsp;</span><em style="color: rgb(63, 63, 70);" class="ql-font-monospace">month()</em><span style="color: rgb(63, 63, 70);" class="ql-font-monospace">&nbsp;and&nbsp;</span><em style="color: rgb(63, 63, 70);" class="ql-font-monospace">year()</em><span class="ql-font-monospace" style="color: rgb(63, 63, 70);">&nbsp;functions&nbsp;to&nbsp;filter&nbsp;transaction&nbsp;for&nbsp;September&nbsp;2024.</span></p><blockquote>from&nbsp;pyspark.sql.functions&nbsp;import&nbsp;dayofweek</blockquote><blockquote></blockquote><blockquote>weekend_check&nbsp;=&nbsp;(dayofweek(col(&#39;created_at&#39;)).isin([1,&nbsp;7]))</blockquote><h3><span class="ql-font-monospace" style="color: hsl(var(--foreground) / var(--tw-text-opacity));">5.&nbsp;Checking&nbsp;business&nbsp;hours</span></h3><p><span style="color: rgb(63, 63, 70);" class="ql-font-monospace">We&nbsp;use&nbsp;</span><em style="color: rgb(63, 63, 70);" class="ql-font-monospace">hour()</em><span style="color: rgb(63, 63, 70);" class="ql-font-monospace">&nbsp;and&nbsp;</span><em style="color: rgb(63, 63, 70);" class="ql-font-monospace">minute()</em><span class="ql-font-monospace" style="color: rgb(63, 63, 70);">&nbsp;functions&nbsp;to&nbsp;identify&nbsp;transactions&nbsp;outside&nbsp;of&nbsp;09:00-16:00.</span></p><blockquote>from&nbsp;pyspark.sql.functions&nbsp;import&nbsp;hour,&nbsp;minute</blockquote><blockquote></blockquote><blockquote>outside_business_hours&nbsp;=&nbsp;(hour(col(&#39;created_at&#39;))&nbsp;&lt;&nbsp;9)&nbsp;|&nbsp;(hour(col(&#39;created_at&#39;))&nbsp;&gt;&nbsp;16)&nbsp;|&nbsp;\</blockquote><blockquote>&nbsp;((hour(col(&#39;created_at&#39;))&nbsp;==&nbsp;16)&nbsp;&amp;&nbsp;(minute(col(&#39;created_at&#39;))&nbsp;&gt;&nbsp;0))</blockquote><h3><span class="ql-font-monospace" style="color: hsl(var(--foreground) / var(--tw-text-opacity));">6.&nbsp;Marking&nbsp;public&nbsp;holiday</span></h3><p><span style="color: rgb(63, 63, 70);" class="ql-font-monospace">Transactions&nbsp;on&nbsp;2nd&nbsp;September&nbsp;are&nbsp;flagged&nbsp;using&nbsp;the&nbsp;</span><em style="color: rgb(63, 63, 70);" class="ql-font-monospace">dayofmonth()</em><span class="ql-font-monospace" style="color: rgb(63, 63, 70);">&nbsp;function.</span></p><blockquote>from&nbsp;pyspark.sql.functions&nbsp;import&nbsp;dayofmonth</blockquote><blockquote></blockquote><blockquote>public_holiday_check&nbsp;=&nbsp;(dayofmonth(col(&#39;created_at&#39;))&nbsp;==&nbsp;2)</blockquote><h3><span class="ql-font-monospace" style="color: hsl(var(--foreground) / var(--tw-text-opacity));">7.&nbsp;Combining&nbsp;conditions&nbsp;for&nbsp;invalid&nbsp;transactions</span></h3><p><span class="ql-font-monospace" style="color: rgb(63, 63, 70);">We&nbsp;combind&nbsp;the&nbsp;conditions&nbsp;using&nbsp;logical&nbsp;operators&nbsp;to&nbsp;detect&nbsp;invalid&nbsp;transactions.</span></p><blockquote>invalid_transactions&nbsp;=&nbsp;df_september_2024.filter(weekend_check&nbsp;|&nbsp;outside_business_hours&nbsp;|&nbsp;public_holiday_check)</blockquote><h3><span class="ql-font-monospace" style="color: hsl(var(--foreground) / var(--tw-text-opacity));">8.&nbsp;Displaying&nbsp;results</span></h3><p><span class="ql-font-monospace" style="color: rgb(63, 63, 70);">Finally,&nbsp;We&nbsp;select&nbsp;and&nbsp;display&nbsp;the&nbsp;IDs&nbsp;of&nbsp;invalid&nbsp;transactions.</span></p><blockquote>invalid_transactions.select(&quot;transaction_id&quot;).show()</blockquote><h2><span class="ql-font-monospace" style="color: hsl(var(--foreground) / var(--tw-text-opacity));">Conclusion</span></h2><p><span class="ql-font-monospace" style="color: rgb(63, 63, 70);">In&nbsp;this&nbsp;post,&nbsp;we&nbsp;applied&nbsp;PySpark’s&nbsp;datetime&nbsp;functions&nbsp;to&nbsp;address&nbsp;a&nbsp;specific&nbsp;real-world&nbsp;problem.&nbsp;I&nbsp;hope&nbsp;that&nbsp;through&nbsp;this&nbsp;post,&nbsp;you&nbsp;have&nbsp;become&nbsp;familiar&nbsp;with&nbsp;the&nbsp;various&nbsp;functions&nbsp;for&nbsp;handling&nbsp;datetime&nbsp;data&nbsp;in&nbsp;PySpark.</span></p><p><span class="ql-font-monospace" style="color: rgb(63, 63, 70);">This&nbsp;is&nbsp;part&nbsp;of&nbsp;a&nbsp;series&nbsp;of&nbsp;posts&nbsp;sharing&nbsp;code&nbsp;examples&nbsp;using&nbsp;PySpark&nbsp;for&nbsp;data&nbsp;processing&nbsp;#PySparkCode.</span></p>', 'Getting started with applying datetime functions to dataframe in PySpark.', 'ACTIVE', '2025-01-07 00:00:00', '2025-01-07 00:00:00', 'http://localhost:8081/v1/image/view/01223d94-f7c5-4641-8bed-35bb0736efe9_pyspark-datetime.DWdSGHu8_2nrq9c.webp');


--
-- TOC entry 3439 (class 0 OID 49388)
-- Dependencies: 219
-- Data for Name: blogs_skills; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.blogs_skills VALUES (7, 9, 75);
INSERT INTO public.blogs_skills VALUES (8, 9, 74);
INSERT INTO public.blogs_skills VALUES (9, 2, 68);
INSERT INTO public.blogs_skills VALUES (10, 2, 77);


--
-- TOC entry 3441 (class 0 OID 49392)
-- Dependencies: 221
-- Data for Name: experiences; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.experiences VALUES (137, 'http://localhost:8081/v1/image/view/2bdaf24f-8a91-4632-b1a8-a75e7174d111_0666793d-cb0a-45c0-88bb-6eac9a92072f_logoeKMap-ava.png', 'Ekgis', 'Data Engineer', '<ul><li><strong>Web&nbsp;Crawler</strong>&nbsp;(Pyspider)</li><li><strong>Data&nbsp;Warehouse</strong>&nbsp;(Star&nbsp;Schema&nbsp;and&nbsp;Snow&nbsp;Schema)</li><li>Apache&nbsp;Nutch&nbsp;and&nbsp;OpenSearchServer</li></ul>', '1.5 month', '2004-07-15 00:00:00', '2024-08-15 00:00:00');
INSERT INTO public.experiences VALUES (129, 'http://localhost:8081/v1/image/view/09d82479-3903-441a-af39-fbb0cd03f0fb_1722367189_37.png', 'Funtap', 'Backend Dev', '<ul><li><strong>Frontend</strong>&nbsp;(Angular)</li><li><strong>Backend</strong>&nbsp;(Java&nbsp;spring)</li><li><strong>Admin&nbsp;panel</strong>&nbsp;(CMS)</li></ul>', '3 month', '2024-10-24 00:00:00', '2025-01-24 00:00:00');


--
-- TOC entry 3443 (class 0 OID 49398)
-- Dependencies: 223
-- Data for Name: links; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.links VALUES (51, 'Telegram', 'My telegram', 'https://t.me/tranhuy013', 'telegram-icon.png');
INSERT INTO public.links VALUES (2, 'Facebook', 'Social Media', 'https://www.facebook.com/tranphuhuyit003/', 'facebook-icon.png');
INSERT INTO public.links VALUES (3, 'Twitter', 'Microblogging', 'https://www.twitter.com', 'twitter-icon.png');
INSERT INTO public.links VALUES (6, 'Instagram', 'Photo Sharing', 'https://www.instagram.com', 'instagram-icon.png');
INSERT INTO public.links VALUES (5, 'LinkedIn', 'Professional Network', 'https://www.linkedin.com/in/huy-tr%E1%BA%A7n-ph%C3%BA-0028572b6/', 'linkedin-icon.png');
INSERT INTO public.links VALUES (8, 'GitHub', 'Code Hosting', 'https://github.com/hmonster013', 'github-icon.png');


--
-- TOC entry 3445 (class 0 OID 49404)
-- Dependencies: 225
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.projects VALUES (1, 'Portfolio Website', 'http://localhost:8081/v1/image/view/Screenshot 2025-01-12 132237.png', 'A personal portfolio website showcasing projects and skills.', 'https://github.com/hmonster013/personal-workspace', 'http://localhost:4200/', '2025-01-02 00:00:00', '2025-01-12 00:00:00');
INSERT INTO public.projects VALUES (2, 'E-Commerce Website', 'http://localhost:8081/v1/image/view/5a7cc651-301c-4745-a79f-83cfe2047262_Screenshot 2025-01-12 164244.png', 'An online shopping platform with user authentication and payment gateway.', 'https://github.com/hmonster013/tip-calculator-app-main', 'https://hmonster013.github.io/tip-calculator-app-main/', '2025-02-01 00:00:00', '2025-06-01 00:00:00');


--
-- TOC entry 3447 (class 0 OID 49410)
-- Dependencies: 227
-- Data for Name: projects_skills; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.projects_skills VALUES (37, 61, 1);
INSERT INTO public.projects_skills VALUES (38, 62, 1);
INSERT INTO public.projects_skills VALUES (39, 63, 1);
INSERT INTO public.projects_skills VALUES (40, 64, 1);
INSERT INTO public.projects_skills VALUES (41, 65, 1);
INSERT INTO public.projects_skills VALUES (42, 66, 1);
INSERT INTO public.projects_skills VALUES (43, 67, 1);
INSERT INTO public.projects_skills VALUES (44, 64, 2);
INSERT INTO public.projects_skills VALUES (45, 65, 2);
INSERT INTO public.projects_skills VALUES (46, 60, 2);
INSERT INTO public.projects_skills VALUES (47, 61, 2);
INSERT INTO public.projects_skills VALUES (48, 62, 2);
INSERT INTO public.projects_skills VALUES (49, 63, 2);


--
-- TOC entry 3449 (class 0 OID 49414)
-- Dependencies: 229
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.roles VALUES (1, 'ROLE_USER');
INSERT INTO public.roles VALUES (2, 'ROLE_MODERATOR');
INSERT INTO public.roles VALUES (3, 'ROLE_ADMIN');


--
-- TOC entry 3451 (class 0 OID 49419)
-- Dependencies: 231
-- Data for Name: skills; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.skills VALUES (61, '<svg fill="#000000" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 512 512" enable-background="new 0 0 512 512" xml:space="preserve"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g id="c133de6af664cd4f011a55de6b001b19"> <path display="inline" d="M483.111,0.501l-42.59,461.314l-184.524,49.684L71.47,461.815L28.889,0.501H483.111z M397.29,94.302 H255.831H111.866l6.885,55.708h137.08h7.7l-7.7,3.205l-132.07,55.006l4.38,54.453l127.69,0.414l68.438,0.217l-4.381,72.606 l-64.058,18.035v-0.057l-0.525,0.146l-61.864-15.617l-3.754-45.07h-0.205H132.1h-0.202l7.511,87.007l116.423,34.429v-0.062 l0.21,0.062l115.799-33.802l15.021-172.761h-131.03h-0.323l0.323-0.14l135.83-58.071L397.29,94.302z"> </path> </g> </g></svg>', 'CSS');
INSERT INTO public.skills VALUES (62, '<svg viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <rect x="2" y="2" width="28" height="28" fill="#FFCA28"></rect> <path d="M19 25.2879L21.0615 23.9237C21.2231 24.4313 22.2462 25.6368 23.5385 25.6368C24.8308 25.6368 25.4308 24.931 25.4308 24.463C25.4308 23.1878 24.1112 22.7382 23.4774 22.5223C23.374 22.4871 23.289 22.4581 23.2308 22.4328C23.2009 22.4198 23.1558 22.4025 23.0979 22.3804C22.393 22.1111 19.7923 21.1175 19.7923 18.2373C19.7923 15.065 22.8538 14.7002 23.5462 14.7002C23.9991 14.7002 26.1769 14.7557 27.2615 16.7939L25.2615 18.1898C24.8231 17.3015 24.0946 17.0081 23.6462 17.0081C22.5385 17.0081 22.3077 17.8201 22.3077 18.1898C22.3077 19.227 23.5112 19.6919 24.5273 20.0844C24.7932 20.1871 25.0462 20.2848 25.2615 20.3866C26.3692 20.91 28 21.7666 28 24.463C28 25.8136 26.8672 28.0002 24.0154 28.0002C20.1846 28.0002 19.1692 25.7003 19 25.2879Z" fill="#3E3E3E"></path> <path d="M9 25.5587L11.1487 24.1953C11.317 24.7026 11.9713 25.638 12.9205 25.638C13.8698 25.638 14.3557 24.663 14.3557 24.1953V15.0002H16.9982V24.1953C17.041 25.4636 16.3376 28.0002 13.2332 28.0002C10.379 28.0002 9.19242 26.3039 9 25.5587Z" fill="#3E3E3E"></path> </g></svg>', 'JavaScript');
INSERT INTO public.skills VALUES (63, '<svg viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M16 2L3 7L5 24L16 30L27 24L29 7L16 2Z" fill="#DD0031"></path> <path d="M16 2V30L27 24L29 7L16 2Z" fill="#C3002F"></path> <path d="M15.9998 5.09375L7.87305 23.3638H10.9031L12.5368 19.2757H19.4348L21.0685 23.3638H24.0986L15.9998 5.09375ZM18.3736 16.7557H13.626L15.9998 11.0298L18.3736 16.7557Z" fill="white"></path> </g></svg>', 'Angular');
INSERT INTO public.skills VALUES (64, '<svg viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M16.0497 8.44062C22.6378 3.32607 19.2566 0 19.2566 0C19.7598 5.28738 13.813 6.53583 12.2189 10.1692C11.1312 12.6485 12.9638 14.8193 16.0475 17.5554C15.7749 16.9494 15.3544 16.3606 14.9288 15.7645C13.4769 13.7313 11.9645 11.6132 16.0497 8.44062Z" fill="#E76F00"></path> <path d="M17.1015 18.677C17.1015 18.677 19.0835 17.0779 17.5139 15.3008C12.1931 9.27186 23.3333 6.53583 23.3333 6.53583C16.5317 9.8125 17.5471 11.7574 19.2567 14.1202C21.0871 16.6538 17.1015 18.677 17.1015 18.677Z" fill="#E76F00"></path> <path d="M22.937 23.4456C29.0423 20.3258 26.2195 17.3278 24.2492 17.7317C23.7662 17.8305 23.5509 17.9162 23.5509 17.9162C23.5509 17.9162 23.7302 17.64 24.0726 17.5204C27.9705 16.1729 30.9682 21.4949 22.8143 23.6028C22.8143 23.6029 22.9088 23.5198 22.937 23.4456Z" fill="#5382A1"></path> <path d="M10.233 19.4969C6.41312 18.9953 12.3275 17.6139 12.3275 17.6139C12.3275 17.6139 10.0307 17.4616 7.20592 18.8043C3.86577 20.3932 15.4681 21.1158 21.474 19.5625C22.0984 19.1432 22.9614 18.7798 22.9614 18.7798C22.9614 18.7798 20.5037 19.2114 18.0561 19.4145C15.0612 19.6612 11.8459 19.7093 10.233 19.4969Z" fill="#5382A1"></path> <path d="M11.6864 22.4758C9.55624 22.2592 10.951 21.2439 10.951 21.2439C5.43898 23.0429 14.0178 25.083 21.7199 22.8682C20.9012 22.5844 20.3806 22.0653 20.3806 22.0653C16.6163 22.7781 14.441 22.7553 11.6864 22.4758Z" fill="#5382A1"></path> <path d="M12.6145 25.6991C10.486 25.4585 11.7295 24.7474 11.7295 24.7474C6.72594 26.1222 14.7729 28.9625 21.1433 26.2777C20.0999 25.8787 19.3528 25.4181 19.3528 25.4181C16.5111 25.9469 15.1931 25.9884 12.6145 25.6991Z" fill="#5382A1"></path> <path d="M25.9387 27.3388C25.9387 27.3388 26.8589 28.0844 24.9252 28.6612C21.2481 29.7566 9.62093 30.0874 6.39094 28.7049C5.22984 28.2082 7.40723 27.5189 8.09215 27.3742C8.80646 27.2219 9.21466 27.2503 9.21466 27.2503C7.9234 26.3558 0.868489 29.0067 5.63111 29.7659C18.6195 31.8372 29.3077 28.8331 25.9387 27.3388Z" fill="#5382A1"></path> <path d="M28 28.9679C27.7869 31.6947 18.7877 32.2683 12.9274 31.8994C9.10432 31.6583 8.33812 31.0558 8.32691 31.047C11.9859 31.6402 18.1549 31.7482 23.1568 30.8225C27.5903 30.0016 28 28.9679 28 28.9679Z" fill="#5382A1"></path> </g></svg>', 'Java');
INSERT INTO public.skills VALUES (65, '<svg fill="#000000" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"><path d="M20.205 16.392c-2.469 3.289-7.741 2.179-11.122 2.338 0 0-.599.034-1.201.133 0 0 .228-.097.519-.198 2.374-.821 3.496-.986 4.939-1.727 2.71-1.388 5.408-4.413 5.957-7.555-1.032 3.022-4.17 5.623-7.027 6.679-1.955.722-5.492 1.424-5.493 1.424a5.28 5.28 0 0 1-.143-.076c-2.405-1.17-2.475-6.38 1.894-8.059 1.916-.736 3.747-.332 5.818-.825 2.208-.525 4.766-2.18 5.805-4.344 1.165 3.458 2.565 8.866.054 12.21zm.042-13.28a9.212 9.212 0 0 1-1.065 1.89 9.982 9.982 0 0 0-7.167-3.031C6.492 1.971 2 6.463 2 11.985a9.983 9.983 0 0 0 3.205 7.334l.22.194a.856.856 0 1 1 .001.001l.149.132A9.96 9.96 0 0 0 12.015 22c5.278 0 9.613-4.108 9.984-9.292.274-2.539-.476-5.763-1.752-9.596"></path></g></svg>', 'Spring boot');
INSERT INTO public.skills VALUES (66, '<svg viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <circle cx="16" cy="16" r="14" fill="#1794D4"></circle> <path d="M18 7H16V9H18V7Z" fill="white"></path> <path d="M10 10H12V12H10V10Z" fill="white"></path> <path d="M6.00155 16.9414C6.17244 19.8427 7.90027 24 14 24C20.8 24 23.8333 19 24.5 16.5C25.3333 16.5 27.2 16 28 14C27.5 13.5 25.5 13.5 24.5 14C24.5 13.2 24 11.5 23 11C22.3333 11.6667 21.3 13.4 22.5 15C22 16 20.6667 16 20 16H6.9429C6.41342 16 5.97041 16.4128 6.00155 16.9414Z" fill="white"></path> <path d="M9 13H7V15H9V13Z" fill="white"></path> <path d="M10 13H12V15H10V13Z" fill="white"></path> <path d="M15 13H13V15H15V13Z" fill="white"></path> <path d="M16 13H18V15H16V13Z" fill="white"></path> <path d="M21 13H19V15H21V13Z" fill="white"></path> <path d="M15 10H13V12H15V10Z" fill="white"></path> <path d="M16 10H18V12H16V10Z" fill="white"></path> </g></svg>', 'Docker');
INSERT INTO public.skills VALUES (67, '<svg viewBox="-4 0 264 264" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMinYMin meet" fill="#000000"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"><path d="M255.008 158.086c-1.535-4.649-5.556-7.887-10.756-8.664-2.452-.366-5.26-.21-8.583.475-5.792 1.195-10.089 1.65-13.225 1.738 11.837-19.985 21.462-42.775 27.003-64.228 8.96-34.689 4.172-50.492-1.423-57.64C233.217 10.847 211.614.683 185.552.372c-13.903-.17-26.108 2.575-32.475 4.549-5.928-1.046-12.302-1.63-18.99-1.738-12.537-.2-23.614 2.533-33.079 8.15-5.24-1.772-13.65-4.27-23.362-5.864-22.842-3.75-41.252-.828-54.718 8.685C6.622 25.672-.937 45.684.461 73.634c.444 8.874 5.408 35.874 13.224 61.48 4.492 14.718 9.282 26.94 14.237 36.33 7.027 13.315 14.546 21.156 22.987 23.972 4.731 1.576 13.327 2.68 22.368-4.85 1.146 1.388 2.675 2.767 4.704 4.048 2.577 1.625 5.728 2.953 8.875 3.74 11.341 2.835 21.964 2.126 31.027-1.848.056 1.612.099 3.152.135 4.482.06 2.157.12 4.272.199 6.25.537 13.374 1.447 23.773 4.143 31.049.148.4.347 1.01.557 1.657 1.345 4.118 3.594 11.012 9.316 16.411 5.925 5.593 13.092 7.308 19.656 7.308 3.292 0 6.433-.432 9.188-1.022 9.82-2.105 20.973-5.311 29.041-16.799 7.628-10.86 11.336-27.217 12.007-52.99.087-.729.167-1.425.244-2.088l.16-1.362 1.797.158.463.031c10.002.456 22.232-1.665 29.743-5.154 5.935-2.754 24.954-12.795 20.476-26.351"></path><path d="M237.906 160.722c-29.74 6.135-31.785-3.934-31.785-3.934 31.4-46.593 44.527-105.736 33.2-120.211-30.904-39.485-84.399-20.811-85.292-20.327l-.287.052c-5.876-1.22-12.451-1.946-19.842-2.067-13.456-.22-23.664 3.528-31.41 9.402 0 0-95.43-39.314-90.991 49.444.944 18.882 27.064 142.873 58.218 105.422 11.387-13.695 22.39-25.274 22.39-25.274 5.464 3.63 12.006 5.482 18.864 4.817l.533-.452c-.166 1.7-.09 3.363.213 5.332-8.026 8.967-5.667 10.541-21.711 13.844-16.235 3.346-6.698 9.302-.471 10.86 7.549 1.887 25.013 4.561 36.813-11.958l-.47 1.885c3.144 2.519 5.352 16.383 4.982 28.952-.37 12.568-.617 21.197 1.86 27.937 2.479 6.74 4.948 21.905 26.04 17.386 17.623-3.777 26.756-13.564 28.027-29.89.901-11.606 2.942-9.89 3.07-20.267l1.637-4.912c1.887-15.733.3-20.809 11.157-18.448l2.64.232c7.99.363 18.45-1.286 24.589-4.139 13.218-6.134 21.058-16.377 8.024-13.686h.002" fill="#336791"></path><path d="M108.076 81.525c-2.68-.373-5.107-.028-6.335.902-.69.523-.904 1.129-.962 1.546-.154 1.105.62 2.327 1.096 2.957 1.346 1.784 3.312 3.01 5.258 3.28.282.04.563.058.842.058 3.245 0 6.196-2.527 6.456-4.392.325-2.336-3.066-3.893-6.355-4.35M196.86 81.599c-.256-1.831-3.514-2.353-6.606-1.923-3.088.43-6.082 1.824-5.832 3.659.2 1.427 2.777 3.863 5.827 3.863.258 0 .518-.017.78-.054 2.036-.282 3.53-1.575 4.24-2.32 1.08-1.136 1.706-2.402 1.591-3.225" fill="#FFF"></path><path d="M247.802 160.025c-1.134-3.429-4.784-4.532-10.848-3.28-18.005 3.716-24.453 1.142-26.57-.417 13.995-21.32 25.508-47.092 31.719-71.137 2.942-11.39 4.567-21.968 4.7-30.59.147-9.463-1.465-16.417-4.789-20.665-13.402-17.125-33.072-26.311-56.882-26.563-16.369-.184-30.199 4.005-32.88 5.183-5.646-1.404-11.801-2.266-18.502-2.376-12.288-.199-22.91 2.743-31.704 8.74-3.82-1.422-13.692-4.811-25.765-6.756-20.872-3.36-37.458-.814-49.294 7.571-14.123 10.006-20.643 27.892-19.38 53.16.425 8.501 5.269 34.653 12.913 59.698 10.062 32.964 21 51.625 32.508 55.464 1.347.449 2.9.763 4.613.763 4.198 0 9.345-1.892 14.7-8.33a529.832 529.832 0 0 1 20.261-22.926c4.524 2.428 9.494 3.784 14.577 3.92.01.133.023.266.035.398a117.66 117.66 0 0 0-2.57 3.175c-3.522 4.471-4.255 5.402-15.592 7.736-3.225.666-11.79 2.431-11.916 8.435-.136 6.56 10.125 9.315 11.294 9.607 4.074 1.02 7.999 1.523 11.742 1.523 9.103 0 17.114-2.992 23.516-8.781-.197 23.386.778 46.43 3.586 53.451 2.3 5.748 7.918 19.795 25.664 19.794 2.604 0 5.47-.303 8.623-.979 18.521-3.97 26.564-12.156 29.675-30.203 1.665-9.645 4.522-32.676 5.866-45.03 2.836.885 6.487 1.29 10.434 1.289 8.232 0 17.731-1.749 23.688-4.514 6.692-3.108 18.768-10.734 16.578-17.36zm-44.106-83.48c-.061 3.647-.563 6.958-1.095 10.414-.573 3.717-1.165 7.56-1.314 12.225-.147 4.54.42 9.26.968 13.825 1.108 9.22 2.245 18.712-2.156 28.078a36.508 36.508 0 0 1-1.95-4.009c-.547-1.326-1.735-3.456-3.38-6.404-6.399-11.476-21.384-38.35-13.713-49.316 2.285-3.264 8.084-6.62 22.64-4.813zm-17.644-61.787c21.334.471 38.21 8.452 50.158 23.72 9.164 11.711-.927 64.998-30.14 110.969a171.33 171.33 0 0 0-.886-1.117l-.37-.462c7.549-12.467 6.073-24.802 4.759-35.738-.54-4.488-1.05-8.727-.92-12.709.134-4.22.692-7.84 1.232-11.34.663-4.313 1.338-8.776 1.152-14.037.139-.552.195-1.204.122-1.978-.475-5.045-6.235-20.144-17.975-33.81-6.422-7.475-15.787-15.84-28.574-21.482 5.5-1.14 13.021-2.203 21.442-2.016zM66.674 175.778c-5.9 7.094-9.974 5.734-11.314 5.288-8.73-2.912-18.86-21.364-27.791-50.624-7.728-25.318-12.244-50.777-12.602-57.916-1.128-22.578 4.345-38.313 16.268-46.769 19.404-13.76 51.306-5.524 64.125-1.347-.184.182-.376.352-.558.537-21.036 21.244-20.537 57.54-20.485 59.759-.002.856.07 2.068.168 3.735.362 6.105 1.036 17.467-.764 30.334-1.672 11.957 2.014 23.66 10.111 32.109a36.275 36.275 0 0 0 2.617 2.468c-3.604 3.86-11.437 12.396-19.775 22.426zm22.479-29.993c-6.526-6.81-9.49-16.282-8.133-25.99 1.9-13.592 1.199-25.43.822-31.79-.053-.89-.1-1.67-.127-2.285 3.073-2.725 17.314-10.355 27.47-8.028 4.634 1.061 7.458 4.217 8.632 9.645 6.076 28.103.804 39.816-3.432 49.229-.873 1.939-1.698 3.772-2.402 5.668l-.546 1.466c-1.382 3.706-2.668 7.152-3.465 10.424-6.938-.02-13.687-2.984-18.819-8.34zm1.065 37.9c-2.026-.506-3.848-1.385-4.917-2.114.893-.42 2.482-.992 5.238-1.56 13.337-2.745 15.397-4.683 19.895-10.394 1.031-1.31 2.2-2.794 3.819-4.602l.002-.002c2.411-2.7 3.514-2.242 5.514-1.412 1.621.67 3.2 2.702 3.84 4.938.303 1.056.643 3.06-.47 4.62-9.396 13.156-23.088 12.987-32.921 10.526zm69.799 64.952c-16.316 3.496-22.093-4.829-25.9-14.346-2.457-6.144-3.665-33.85-2.808-64.447.011-.407-.047-.8-.159-1.17a15.444 15.444 0 0 0-.456-2.162c-1.274-4.452-4.379-8.176-8.104-9.72-1.48-.613-4.196-1.738-7.46-.903.696-2.868 1.903-6.107 3.212-9.614l.549-1.475c.618-1.663 1.394-3.386 2.214-5.21 4.433-9.848 10.504-23.337 3.915-53.81-2.468-11.414-10.71-16.988-23.204-15.693-7.49.775-14.343 3.797-17.761 5.53-.735.372-1.407.732-2.035 1.082.954-11.5 4.558-32.992 18.04-46.59 8.489-8.56 19.794-12.788 33.568-12.56 27.14.444 44.544 14.372 54.366 25.979 8.464 10.001 13.047 20.076 14.876 25.51-13.755-1.399-23.11 1.316-27.852 8.096-10.317 14.748 5.644 43.372 13.315 57.129 1.407 2.521 2.621 4.7 3.003 5.626 2.498 6.054 5.732 10.096 8.093 13.046.724.904 1.426 1.781 1.96 2.547-4.166 1.201-11.649 3.976-10.967 17.847-.55 6.96-4.461 39.546-6.448 51.059-2.623 15.21-8.22 20.875-23.957 24.25zm68.104-77.936c-4.26 1.977-11.389 3.46-18.161 3.779-7.48.35-11.288-.838-12.184-1.569-.42-8.644 2.797-9.547 6.202-10.503.535-.15 1.057-.297 1.561-.473.313.255.656.508 1.032.756 6.012 3.968 16.735 4.396 31.874 1.271l.166-.033c-2.042 1.909-5.536 4.471-10.49 6.772z" fill="#FFF"></path></g></svg>', 'PostgreSql');
INSERT INTO public.skills VALUES (69, '<svg viewBox="0 0 256 256" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" preserveAspectRatio="xMidYMid" fill="#000000"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <defs> <radialGradient cx="1.55750275e-05%" cy="99.999994%" fx="1.55750275e-05%" fy="99.999994%" r="120.115697%" gradientTransform="translate(0.000000,1.000000),scale(0.832531,1.000000),scale(1.000000,0.832531),translate(-0.000000,-1.000000)" id="radialGradient-1"> <stop stop-color="#00C812" offset="0%"> </stop> <stop stop-color="#006E00" offset="100%"> </stop> </radialGradient> <radialGradient cx="5.95703125e-06%" cy="-0.000385453422%" fx="5.95703125e-06%" fy="-0.000385453422%" r="120.115697%" gradientTransform="translate(0.000000,-0.000004),scale(1.000000,0.832534),rotate(90.000000),scale(1.000000,0.832531),translate(-0.000000,0.000004)" id="radialGradient-2"> <stop stop-color="#56AFFD" offset="0%"> </stop> <stop stop-color="#04A3FF" offset="100%"> </stop> </radialGradient> <radialGradient cx="99.9999844%" cy="5.95703126e-06%" fx="99.9999844%" fy="5.95703126e-06%" r="120.115697%" gradientTransform="translate(1.000000,0.000000),scale(0.832531,1.000000),rotate(180.000000),scale(1.000000,0.832531),translate(-1.000000,-0.000000)" id="radialGradient-3"> <stop stop-color="#DF1F00" offset="0%"> </stop> <stop stop-color="#560D00" offset="100%"> </stop> </radialGradient> <radialGradient cx="99.999994%" cy="100.000694%" fx="99.999994%" fy="100.000694%" r="120.115697%" gradientTransform="translate(1.000000,1.000007),scale(1.000000,0.832536),rotate(-90.000000),scale(1.000000,0.832531),translate(-1.000000,-1.000007)" id="radialGradient-4"> <stop stop-color="#00FFFD" offset="0%"> </stop> <stop stop-color="#00DAFF" offset="100%"> </stop> </radialGradient> <radialGradient cx="0.000354796786%" cy="99.999994%" fx="0.000354796786%" fy="99.999994%" r="99.9996399%" gradientTransform="translate(0.000004,1.000000),scale(1.000000,0.573107),scale(1.000000,1.744881),translate(-0.000004,-1.000000)" id="radialGradient-5"> <stop stop-color="#008200" offset="0%"> </stop> <stop stop-color="#007500" offset="100%"> </stop> </radialGradient> <radialGradient cx="5.95703125e-06%" cy="9.08223426e-05%" fx="5.95703125e-06%" fy="9.08223426e-05%" r="99.9999039%" gradientTransform="translate(0.000000,0.000001),scale(0.573105,1.000000),rotate(90.000000),scale(1.000000,1.744881),translate(-0.000000,-0.000001)" id="radialGradient-6"> <stop stop-color="#3166D4" offset="0%"> </stop> <stop stop-color="#1A509E" offset="100%"> </stop> </radialGradient> <radialGradient cx="100.000355%" cy="5.95703126e-06%" fx="100.000355%" fy="5.95703126e-06%" r="100.00035%" gradientTransform="translate(1.000004,0.000000),scale(1.000000,0.573103),rotate(180.000000),scale(1.000000,1.744881),translate(-1.000004,-0.000000)" id="radialGradient-7"> <stop stop-color="#8E1400" offset="0%"> </stop> <stop stop-color="#4B0B00" offset="100%"> </stop> </radialGradient> <radialGradient cx="99.999994%" cy="100.001042%" fx="99.999994%" fy="100.001042%" r="99.9993325%" gradientTransform="translate(1.000000,1.000010),scale(0.573109,1.000000),rotate(-90.000000),scale(1.000000,1.744881),translate(-1.000000,-1.000010)" id="radialGradient-8"> <stop stop-color="#0090C4" offset="0%"> </stop> <stop stop-color="#005D8C" offset="100%"> </stop> </radialGradient> <radialGradient cx="4.88281244e-07%" cy="99.9989015%" fx="4.88281244e-07%" fy="99.9989015%" r="99.9999915%" gradientTransform="translate(0.000000,0.999989),scale(1.000000,0.679068),scale(1.000000,1.472586),translate(-0.000000,-0.999989)" id="radialGradient-9"> <stop stop-color="#00CD1C" offset="0%"> </stop> <stop stop-color="#00E950" offset="100%"> </stop> </radialGradient> <radialGradient cx="-6.74214414e-06%" cy="-1.18815104e-05%" fx="-6.74214414e-06%" fy="-1.18815104e-05%" r="99.9999915%" gradientTransform="translate(-0.000000,-0.000000),scale(0.679078,1.000000),rotate(90.000000),scale(1.000000,1.472586),translate(0.000000,0.000000)" id="radialGradient-10"> <stop stop-color="#B1C8FD" offset="0%"> </stop> <stop stop-color="#7EC3FD" offset="100%"> </stop> </radialGradient> <radialGradient cx="99.9999871%" cy="-6.74214411e-06%" fx="99.9999871%" fy="-6.74214411e-06%" r="99.9999915%" gradientTransform="translate(1.000000,-0.000000),scale(1.000000,0.679078),rotate(180.000000),scale(1.000000,1.472586),translate(-1.000000,0.000000)" id="radialGradient-11"> <stop stop-color="#E12A00" offset="0%"> </stop> <stop stop-color="#B62F00" offset="100%"> </stop> </radialGradient> <radialGradient cx="100.000007%" cy="99.9999995%" fx="100.000007%" fy="99.9999995%" r="99.998364%" gradientTransform="translate(1.000000,1.000000),scale(0.679089,1.000000),rotate(-90.000000),scale(1.000000,1.472586),translate(-1.000000,-1.000000)" id="radialGradient-12"> <stop stop-color="#00B6DD" offset="0%"> </stop> <stop stop-color="#00FFFF" offset="100%"> </stop> </radialGradient> </defs> <g> <path d="M179.2,230.4 L256,230.4 L133.12,128 C131.433,165.193 147.807,201.58 179.2,230.4" fill="url(#radialGradient-1)"> </path> <path d="M25.6,179.2 L25.6,256 L128,133.12 C126.254,133.041 124.517,133.002 122.775,133.002 C87.415,133.004 53.067,149.281 25.6,179.2" fill="url(#radialGradient-2)"> </path> <path d="M0,25.6 L122.88,128 C124.567,90.808 108.193,54.42 76.8,25.6 L0,25.6 Z" fill="url(#radialGradient-3)"> </path> <path d="M230.4,0 L128,122.879 C165.193,124.567 201.58,108.192 230.4,76.799 L230.4,0 Z" fill="url(#radialGradient-4)"> </path> <path d="M128,128 C116.521,157.755 118.255,188.086 133.12,217.601 C148.48,225.28 161.28,230.4 179.2,230.4 C147.807,201.58 131.433,165.193 133.12,128 L128,128 Z" fill="url(#radialGradient-5)"> </path> <path d="M38.4,133.12 C30.721,148.481 25.6,161.28 25.6,179.2 C54.419,147.807 90.807,131.434 128,133.12 L128,128 C115.056,123.007 102.006,120.514 88.96,120.514 C72.014,120.515 55.076,124.721 38.4,133.12" fill="url(#radialGradient-6)"> </path> <path d="M122.88,128 L128,128 C139.478,98.245 137.745,67.913 122.88,38.4 C107.52,30.72 94.721,25.6 76.8,25.6 C108.193,54.42 124.567,90.808 122.88,128" fill="url(#radialGradient-7)"> </path> <path d="M128,122.879 L128,128 C157.755,139.478 188.086,137.744 217.6,122.879 C225.28,107.521 230.4,94.721 230.4,76.799 C201.58,108.192 165.193,124.567 128,122.879" fill="url(#radialGradient-8)"> </path> <path d="M71.68,166.4 L133.12,217.601 C118.255,188.086 116.521,157.755 128,128 C126.224,127.408 124.142,127.124 121.842,127.124 C104.243,127.125 73.944,143.759 71.68,166.4" fill="url(#radialGradient-9)"> </path> <path d="M38.4,133.12 C67.914,118.255 98.245,116.522 128,128 C133.12,112.641 115.2,74.24 89.6,71.68 L38.4,133.12 Z" fill="url(#radialGradient-10)"> </path> <path d="M128,128 C143.36,133.12 181.759,115.2 184.32,89.6 L122.88,38.4 C137.745,67.913 139.478,98.245 128,128" fill="url(#radialGradient-11)"> </path> <path d="M128,128 C122.88,143.361 140.8,181.76 166.4,184.32 L217.6,122.879 C188.086,137.744 157.755,139.478 128,128" fill="url(#radialGradient-12)"> </path> <path d="M127.9998,121.6004 C131.5348,121.6004 134.3998,124.4654 134.3998,127.9994 C134.3998,131.5354 131.5348,134.4004 127.9998,134.4004 C124.4658,134.4004 121.6008,131.5354 121.6008,127.9994 C121.6008,124.4654 124.4658,121.6004 127.9998,121.6004" fill="#000000"> </path> </g> </g></svg>', 'AirFlow');
INSERT INTO public.skills VALUES (70, '<svg viewBox="0 -32 256 256" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" preserveAspectRatio="xMidYMid" fill="#000000"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g> <path d="M94.9192218,42.1862101 L77.9644514,44.9404514 L62.4948794,51.7229572 L49.3552062,59.9876732 L36.8510506,75.24607 L29.787642,82.7278444 L22.9563268,85.2460078 L21.1503813,80.8302568 L24.3090428,76.2710661 L25.0182724,69.8411829 L27.1340078,69.9268482 L29.4459767,72.0356109 L28.8224125,65.4851984 L26.2594241,63.7659144 L26.3381167,61.2696654 L20.2678288,64.704249 L14.7712996,71.1899144 L13.6237821,76.9862724 L15.9755953,81.6281401 L18.1680311,89.5133385 L22.6266148,91.6240934 L27.3172918,91.3939922 L31.7649183,88.8100856 L28.7975097,103.857307 L31.7649183,120.598911 L28.498677,128.329712 L17.801463,139.854693 L19.703035,146.740794 L24.7712374,154.719626 L34.3259144,161.443362 L39.3941167,162.13765 L45.0291051,162.328903 L41.5128405,176.760529 L54.4413385,182.057837 L70.5474241,184.177556 L76.0569027,180.575626 L76.4812451,170.825712 L82.6282335,160.653447 L83.0515798,152.599907 L97.8866304,153.659767 L111.661821,152.388732 L97.8866304,160.653447 L100.218521,170.614537 L108.906584,184.177556 L117.384467,187.780482 L124.165977,185.025245 L126.920218,179.515767 L141.119751,168.706988 L143.874988,171.037883 L166.128062,171.885572 L170.577681,168.283642 L171.001027,161.924482 L169.518817,159.171237 L168.457961,142.004296 L161.040934,127.169245 L162.312965,120.598911 L166.762584,122.930802 L179.266739,134.586272 L185.412732,135.010615 L192.194241,132.255377 L198.976747,127.169245 L202.366506,116.148296 L222.288685,117.420327 L234.368498,112.758537 L244.117416,103.645136 L251.111097,90.505463 L252.805479,75.0348949 L251.322272,57.0202646 L247.508171,40.9151751 L243.693074,35.8290428 L238.395767,34.1326693 L229.070195,44.3049339 L220.593307,47.2723424 L213.175284,34.980358 L205.758257,28.1988482 L201.730988,25.6557821 L185.623907,12.3039377 L172.697401,5.31025681 L159.768903,4.251393 L144.722677,6.79445914 L131.583004,11.6674241 L122.469603,19.0854475 L115.264747,27.7745058 L107.84772,29.8942257 L94.9192218,42.1862101" fill="#FFFF00"> </path> <path d="M45.7472996,80.4348016 C31.2250272,97.3736342 34.4514241,117.916389 38.4757043,138.044763 C36.3280934,132.616965 34.1794864,127.189167 32.0318755,121.764358 C31.2399689,116.788794 30.4480623,111.81323 29.6571518,106.837665 C29.8832685,101.749541 30.1083891,96.6624125 30.3355019,91.575284 C32.3705525,86.7142724 34.4056031,81.8522646 36.4406537,76.9902568 C39.4927315,72.4679222 42.5458054,67.9455875 45.5988794,63.4222568 C50.3473307,59.4657121 55.0967782,55.5081712 59.8452296,51.5516265 C65.0449183,49.4030195 70.2465992,47.2554086 75.447284,45.1068016 C81.5524358,44.3158911 87.6575875,43.5249805 93.7637354,42.7330739 C88.109821,49.1769027 82.4569027,55.6217276 76.8039844,62.0655564 C63.186179,66.4823035 55.1565447,69.4576809 45.7472996,80.4348016" fill="#FFFFCC"> </path> <path d="M114.114241,28.8254008 C104.018677,38.6759222 98.5032218,46.1049027 92.0783191,57.6378521 C87.4832685,65.8886226 82.3274086,73.8345837 77.495284,81.9698054 C75.0518288,86.0877198 74.8207315,89.5402335 74.0895875,94.2886848 C71.7158599,91.4627237 69.3421323,88.6357665 66.9674086,85.8098054 C68.0989883,82.4170584 69.2285759,79.0253074 70.3591595,75.6335564 C74.203144,68.7364981 78.0481245,61.8394397 81.8921089,54.9433774 C90.0323113,46.9157354 98.1735097,38.8890895 106.313712,30.8614475 C108.913556,30.1821012 111.514397,29.5047471 114.114241,28.8254008" fill="#FFFFCC"> </path> <path d="M163.975471,4.40479377 C155.888062,7.43595331 142.459518,8.43505058 141.528156,17.7157977 C140.864747,24.3070506 142.025214,27.6191128 145.997696,34.5928716 C136.185027,24.4375409 133.758506,26.0094008 114.792591,29.1650739 C117.506988,25.3210895 120.220389,21.4771051 122.932794,17.6331206 C127.681245,14.692607 132.430693,11.7530895 137.179144,8.81357198 C143.284296,7.4568716 149.390444,6.10017121 155.495595,4.74347082 C158.321556,4.63091051 161.148514,4.51835019 163.975471,4.40479377" fill="#FFFFCC"> </path> <path d="M186.288311,129.945401 C188.979798,131.606911 188.922023,132.811206 188.471782,133.949759 C190.595486,133.100078 192.719191,132.250397 194.841899,131.402708 C196.218521,129.554926 197.593152,127.70814 198.969774,125.860358 C199.990786,123.227642 201.011798,120.596918 202.032809,117.964202 C200.727907,116.983035 199.424,116.001868 198.118101,115.0207 C192.415377,115.74786 186.712654,116.476016 181.008934,117.205167 C180.585588,118.356669 180.160249,119.510163 179.734911,120.663658 C179.856436,122.301261 179.978957,123.93986 180.099486,125.577463 C180.645354,126.548669 181.192218,127.518879 181.738086,128.490086 C182.587767,128.914428 183.436451,129.339767 184.286132,129.764109 C184.954521,129.823875 185.620918,129.885634 186.288311,129.945401" fill="#CCCC00"> </path> <path d="M184.695533,100.685696 C176.119035,103.161027 176.185774,103.843362 173.653665,112.352125 C176.996607,106.988078 179.471938,104.280654 184.695533,100.685696" fill="#CCCC00"> </path> <path d="M241.719782,37.0154086 C240.195735,37.7196576 238.710537,38.0583346 237.758257,39.4528872 C235.706272,42.4551595 233.94814,44.9802957 230.555393,47.0870661 C228.84607,48.1489183 227.078973,48.8362335 225.267051,49.4020233 C223.763922,49.8691984 222.860451,49.4508327 221.581447,50.3712374 C222.340482,50.5027237 223.099518,50.6362023 223.858553,50.7686848 L228.878942,50.7686848 C230.941883,49.4946615 233.004825,48.2206381 235.067767,46.9476109 C236.282023,45.6725914 237.495284,44.3985681 238.708545,43.1245447 C239.711626,41.0884981 240.715704,39.0504591 241.719782,37.0154086" fill="#CCCC00"> </path> <path d="M105.10842,56.0470661 C101.734599,65.28 98.7861167,73.1940856 93.6760778,81.5524358 C100.224498,74.496 104.194988,68.498428 107.946335,60.5205914 C109.403642,57.4216965 109.678568,53.7849027 113.737712,55.1366226 C113.92,58.2325292 114.574444,61.3254475 114.755735,64.4193619 C116.949167,48.7007626 123.133012,42.1264436 137.50786,36.0252763 C133.442739,36.5113774 129.377619,36.9964825 125.313494,37.4815875 C121.490428,38.3312685 117.668358,39.1809494 113.845292,40.0296342 C111.964638,42.7599689 110.082988,45.4912996 108.203331,48.2206381 C107.171362,50.8294475 106.140389,53.4382568 105.10842,56.0470661" fill="#CCCC00"> </path> <path d="M132.956638,55.6834864 C136.057525,70.2734942 140.521089,84.2767938 142.459518,99.0988949 C143.718599,108.730272 143.856062,113.357198 139.010988,121.666739 C133.714677,121.324078 130.426521,121.920747 125.303533,123.600187 C104.911191,130.285074 93.2148794,140.114677 79.4735564,120.309043 C83.8604202,122.375969 88.247284,124.442895 92.6341479,126.510817 C95.7609339,125.896218 98.8877198,125.282615 102.014506,124.666023 C107.535938,121.45158 113.05737,118.235144 118.578802,115.0207 C122.885977,114.171019 127.194148,113.321339 131.501323,112.471658 C132.896872,106.648405 134.29242,100.82316 135.687969,94.9989105 C134.656,87.2930117 133.624031,79.5881089 132.593058,71.8822101 C132.472529,68.242428 132.351004,64.6026459 132.229479,60.9618677 C132.472529,59.2017432 132.71558,57.4426148 132.956638,55.6834864" fill="#CCCC00"> </path> <path d="M168.086412,145.962833 C166.373105,157.816529 172.031004,164.188638 169.688156,167.462848 C169.024747,168.38923 168.126257,170.006911 167.123175,170.451175 C163.538179,172.033992 158.609432,170.154335 158.257805,171.080716 L146.427019,171.080716 C144.849183,170.413323 143.272342,169.74593 141.694506,169.078537 C144.121027,166.226677 146.547549,163.374817 148.975066,160.523953 C151.340825,155.368093 153.70758,150.210241 156.073339,145.052389 C157.590412,139.83477 159.107486,134.617152 160.623564,129.399533 L162.990319,129.399533 C164.688685,134.920965 166.388047,140.441401 168.086412,145.962833" fill="#CCCC00"> </path> <path d="M148.201089,111.502444 C149.162335,116.88442 150.831813,118.163424 153.362926,123.373074 C151.67751,131.872872 148.971082,141.980389 145.712809,149.480093 C144.339175,152.642739 143.230506,154.386926 140.806973,156.831377 C136.717946,160.961245 132.584093,164.557198 127.94621,168.137214 C124.607253,170.710163 122.277354,169.420202 118.158444,168.836482 C116.406288,172.012078 115.923175,173.776187 112.69877,175.388887 C107.74014,177.867206 103.303471,172.52607 99.410677,169.38235 C102.2207,173.771206 105.030724,178.159066 107.838755,182.547922 C109.781167,184.368809 111.722584,186.186708 113.664,188.007595 C115.301603,188.24965 116.940202,188.493696 118.578802,188.736747 C120.762272,187.401961 122.946739,186.066179 125.13021,184.731393 C126.283704,182.547922 127.436202,180.363455 128.5887,178.179984 C131.016218,176.359097 133.443735,174.539206 135.869261,172.718319 C138.842646,170.171268 141.816031,167.622226 144.78842,165.074179 C146.67007,162.404607 148.549728,159.736031 150.431377,157.065463 C152.129743,153.910786 153.828109,150.756109 155.526475,147.601432 C157.711938,141.049027 159.895409,134.495626 162.080872,127.944218 C162.262163,125.455938 162.443455,122.968654 162.625743,120.480374 C159.895409,119.268109 157.16607,118.052856 154.434739,116.839595 C152.43256,114.959938 150.203268,113.383097 148.201089,111.502444" fill="#CCCC00"> </path> <path d="M82.9031595,149.421323 C92.0892763,149.421323 101.791377,148.911315 110.20551,145.052389 C112.58621,141.481339 114.937027,138.563735 117.84965,135.407066 C115.199004,140.414506 114.367253,143.245447 113.664,148.875455 C112.753556,150.210241 111.844109,151.544031 110.933665,152.879813 C104.016685,153.061105 97.1007004,153.243393 90.1837198,153.425681 C87.9384903,153.181634 85.6942568,152.93958 83.4490272,152.697525 C83.2059767,152.453479 82.9639222,152.211424 82.7208716,151.96937 C82.7826304,151.119689 82.843393,150.270008 82.9031595,149.421323" fill="#CCCC00"> </path> <path d="M81.6291362,143.051206 C81.3920623,140.897619 81.1539922,138.743035 80.9159222,136.587455 C79.3470506,146.034553 79.7235798,152.366817 75.3755642,160.829759 C72.128249,164.592062 68.1288716,168.015689 63.5487626,169.848529 C63.936249,172.168467 64.0517977,173.619798 63.826677,175.320156 C63.0198288,181.439253 50.779642,178.735813 45.7443113,178.491767 C53.823751,180.572638 61.9011984,182.651518 69.979642,184.731393 C71.8005292,184.003237 73.6194241,183.276078 75.4403113,182.547922 C76.0479377,179.029665 76.6545681,175.509416 77.2611984,171.99116 C78.9595642,168.836482 80.6589261,165.679813 82.3572918,162.527128 C82.6601089,160.58372 82.9639222,158.644296 83.2677354,156.701883 C82.7208716,152.151658 82.176,147.601432 81.6291362,143.051206" fill="#CCCC00"> </path> <path d="M67.977463,89.7205292 C67.7244514,94.3145837 67.4276109,96.2291051 69.4527004,100.286257 C72.027642,105.442117 75.1902879,110.288187 77.988358,115.38428 C78.2921712,111.985556 78.5949883,108.588825 78.8988016,105.191097 C75.2590195,100.033245 71.6182412,94.8773852 67.977463,89.7205292" fill="#CCCC00"> </path> <path d="M30.6144125,124.420981 C29.8254942,126.097432 29.0385681,127.774879 28.2496498,129.452327 C30.418179,136.756794 32.3466459,141.38372 36.4755175,147.764794 C35.7563268,150.349696 35.218428,151.481276 33.5638911,153.588047 C29.9300856,153.030226 26.7026926,152.86786 23.0200778,152.879813 C27.0851984,156.033494 31.1503191,159.190163 35.2154397,162.34484 C37.2166226,161.979268 39.2197977,161.615689 41.2219767,161.252109 C43.2231595,159.24993 45.2263346,157.247751 47.2285136,155.245572 C44.3766537,150.815875 41.5247938,146.388171 38.67393,141.958475 C35.986428,136.113307 33.2999222,130.266148 30.6144125,124.420981" fill="#CCCC00"> </path> <path d="M241.745681,34.5988482 C244.222008,45.7363424 247.415533,56.0151907 247.118693,67.4226304 C246.755113,81.4179611 244.027767,99.0969027 231.06042,107.535938 C216.538148,116.988016 199.490739,112.517479 183.556981,108.4673 C190.049619,111.137868 196.542257,113.806444 203.032903,116.476016 C209.100202,116.779829 215.167502,117.083642 221.234802,117.385463 C225.360685,116.173198 229.486568,114.959938 233.611455,113.746677 C236.826895,111.076109 240.043331,108.407533 243.25877,105.736965 C245.685292,100.640872 248.111813,95.5447782 250.539331,90.4486848 C251.449774,84.562677 252.359222,78.6776654 253.268669,72.7926537 C252.54151,67.0281712 251.812358,61.2646848 251.085198,55.5011984 C249.750412,49.7984747 248.41463,44.0947549 247.08084,38.3920311 C245.302786,37.1269728 243.524732,35.8629105 241.745681,34.5988482" fill="#CCCC00"> </path> <path d="M25.0282335,67.7951751 C18.4359844,72.0864125 15.8461012,73.9700545 16.5692763,81.9229883 C17.2257121,84.3046848 17.883144,86.6863813 18.5395798,89.0680778 C19.4709416,89.6986148 20.4013074,90.3281556 21.3316732,90.9576965 C22.482179,91.3411984 23.6316887,91.7237043 24.7821946,92.1072062 C26.8630661,91.6151284 28.9439377,91.1220545 31.0238132,90.6289805 C32.0926381,87.3159222 33.1604669,84.0038599 34.2272996,80.6908016 C31.2708482,82.1421323 28.3134008,83.593463 25.3569494,85.0447938 L23.3039689,85.0447938 C22.5379611,83.867393 21.7709572,82.6899922 21.0039533,81.5125914 C21.9353152,80.1429416 22.8656809,78.775284 23.7970428,77.4056342 C24.2901167,74.8047938 24.7821946,72.2039533 25.2752685,69.6031128 C25.9048093,69.7943658 26.5343502,69.9866148 27.1638911,70.1768716 C27.9308949,70.7805136 28.6969027,71.3831595 29.4639066,71.9838132 C29.3543346,70.6161556 29.2447626,69.2465058 29.1351907,67.8778521 C28.6152218,67.0022724 28.0942568,66.1256965 27.5742879,65.2501167 C27.0543191,64.8108327 26.5343502,64.3735409 26.0143813,63.9352529 C25.6856654,65.2222257 25.3569494,66.5091984 25.0282335,67.7951751" fill="#CCCC00"> </path> <path d="M172.938459,5.12996109 C178.789603,10.5637354 185.970553,15.2862879 190.651268,21.9263502 C192.462195,24.4963113 194.474335,25.8111751 190.620389,29.4419922 C194.692482,28.278537 196.205572,28.4050428 199.465837,28.7995019 C205.395673,29.5176965 210.953961,37.9477665 211.30758,43.9881712 C211.237852,44.552965 209.661012,45.8359533 205.075922,47.1020078 C204.985276,47.2783191 202.488031,46.7603424 202.54979,46.9296809 C203.026926,48.2325914 203.66344,48.4328093 204.635642,49.042428 C204.846817,50.4927626 204.982288,52.7290272 205.970428,54.3148327 C208.85516,54.263035 211.675144,54.5778054 214.500109,55.1366226 C215.450397,56.7144591 215.307953,58.2912996 215.228265,59.8691362 C216.32,59.6878444 217.411735,59.5055564 218.504467,59.3242646 C218.20165,56.8359844 217.897837,54.3487004 217.595019,51.8614163 C218.56523,50.2228171 219.53544,48.5842179 220.506646,46.9476109 C219.111097,43.7909416 217.715549,40.6372607 216.32,37.4815875 C213.651424,34.9335409 210.981852,32.3854942 208.311284,29.8374475 C208.055284,29.8244981 207.796296,29.8115486 207.541292,29.7985992 C204.538023,27.9557977 201.536747,26.1139922 198.534475,24.2711907 C193.637603,20.2648405 188.741728,16.2594864 183.844856,12.2531362 C180.209058,9.87841245 176.574257,7.50468482 172.938459,5.12996109" fill="#CCCC00"> </path> <path d="M182.794957,49.9767782 C182.486163,50.5166693 182.019984,51.3792996 181.423315,51.976965 C183.859798,54.2819611 185.062101,55.82593 185.931704,59.0861946 C183.176467,60.4538521 180.42123,61.8225058 177.666988,63.1891673 C175.335097,65.4244358 173.003206,67.6597043 170.673307,69.8939767 C167.604296,68.242428 166.84028,66.9743813 165.355082,63.8246848 C163.625837,64.2828949 161.988233,64.7231751 160.559813,64.1992218 C161.466272,64.2061946 162.022101,63.9800778 162.927564,63.4202646 C164.41077,61.879284 165.894973,60.3383035 167.378179,58.797323 C169.997946,56.8130739 172.618708,54.8278288 175.238475,52.8435798 C176.953774,52.2847626 178.668078,51.7259455 180.383377,51.1671284 C181.037821,50.898179 182.139518,50.2467237 182.794957,49.9767782" fill="#CCCC00"> </path> <path d="M190.399253,58.1986615 C181.63449,62.9182257 173.239284,67.6646848 168.75779,76.6276732 C168.75779,65.2511128 180.181167,60.242677 190.399253,58.1986615" fill="#CCCC00"> </path> <path d="M167.017588,35.8180856 C160.509012,40.255751 155.906988,49.2117665 156.484732,57.9396732 C154.365012,50.3821946 155.116078,43.2410895 161.62565,38.0214786 C162.724358,37.4875642 163.82207,36.9526537 164.920778,36.4197354 C165.620047,36.2195175 166.318319,36.0192996 167.017588,35.8180856" fill="#CCCC00"> </path> <path d="M254.605447,56.4235953 C253.424062,48.9806693 251.467704,41.7558911 248.752311,36.5611829 C248.421603,35.9256654 247.919564,35.282179 247.297992,34.6675798 C245.949261,33.3377743 243.952062,32.0786926 241.889121,31.369463 C239.702661,30.6174008 237.397665,30.464 235.567813,31.4202646 C235.092669,31.6692918 234.651393,31.9900389 234.25793,32.3894786 C233.07256,33.590786 232.073463,35.0490895 231.072374,36.5113774 C229.958724,38.1390195 228.839097,39.7746304 227.499331,40.9181634 C225.946397,42.2459767 224.002988,43.0518288 222.170148,43.7879533 C221.366288,41.8445447 220.441899,40.0664903 219.396981,38.3970117 C218.143875,36.3988171 216.717447,34.5281245 215.14758,32.6564358 C213.864591,31.1294008 212.616467,29.9818833 211.265743,28.9538988 C209.912031,27.9209339 208.526444,27.0513307 206.911751,26.0412763 C202.584654,23.3308638 198.900047,20.0994864 195.141728,16.8013696 C193.434397,15.3032218 191.709136,13.7911284 190.021728,12.3995642 C181.072685,5.02038911 172.724296,1.44136965 163.796171,0.879564202 C154.928809,0.321743191 145.565385,2.75822568 134.510568,7.41204669 C129.175409,9.65727626 125.212887,12.3109105 121.76137,15.5014475 C118.464249,18.5525292 115.665183,22.0638132 112.588202,26.1647938 C110.797198,26.2922957 109.212389,26.5572607 107.592716,27.2057276 C105.808685,27.9189416 104.0127,29.074428 101.861105,30.9740078 C100.33407,32.319751 98.8727782,33.6754553 97.4602957,35.0411206 C96.137463,36.3201245 94.8534786,37.6220389 93.5874241,38.9378988 C83.5227393,40.5545837 75.3227704,42.3396109 67.9794553,45.1844981 C60.4697899,48.0931362 53.8496498,52.0955019 47.0502101,58.1249494 C44.2720623,60.5873307 41.8674553,63.1901634 39.762677,65.947393 C37.6947549,68.6558132 35.9246693,71.5036887 34.3717354,74.5069572 C33.0110506,76.0120778 31.6493696,77.531144 30.1741323,78.8599533 C28.735751,80.1548949 27.2027393,81.2456342 25.4854475,81.9070506 L25.4864436,81.9080467 C24.4873463,82.2925447 24.0739611,82.5176654 24.0291362,82.5027237 C23.9793307,82.4748327 23.9514397,82.3254163 23.880716,82.0494942 C26.3480778,79.6946926 26.7355642,76.2362023 26.9636732,72.8016187 C27.2595175,73.1562335 27.5444047,73.5925292 27.8392529,74.047751 C28.1649805,74.550786 28.498677,75.0697588 28.8991128,75.574786 L30.573572,77.6875331 L31.1622724,75.0518288 C31.6563424,72.8434553 32.0258988,69.9019455 31.4501479,67.3519066 C31.0776031,65.6973696 30.3096031,64.2221323 28.9718288,63.177214 C29.1003268,62.8425214 29.220856,62.5347237 29.3403891,62.2309105 C29.7607471,61.1561089 30.1930584,60.0534163 30.5606226,59.0114864 L31.2857899,56.9455564 L29.1262257,57.3200934 C26.2524514,57.819144 20.0755798,61.2138833 15.7265681,65.7272529 C14.1108794,67.4037043 12.7223035,69.2564669 11.8108638,71.2008716 C10.8625681,73.2239689 10.4382257,75.3407004 10.8057899,77.4594241 C11.126537,79.3111907 12.0529183,81.1280934 13.7363424,82.843393 C14.043144,84.0795642 14.3260389,85.1523735 14.628856,86.1205914 C14.9755019,87.2222879 15.3490428,88.2074397 15.8162179,89.1766537 C17.0822724,91.8093696 19.1003891,93.4170895 21.4352685,94.1671595 C23.3129339,94.7698054 25.3888249,94.7996887 27.4248716,94.354428 C27.0274241,96.6554397 26.7764047,99.0610428 26.678786,101.688778 C26.5502879,105.124358 26.6757977,108.919533 27.0543191,113.323331 C27.1369961,114.289556 27.2615097,115.353401 27.4228794,116.508887 C27.5623346,117.495035 27.7286848,118.463253 27.9079844,119.424498 C27.5274708,120.462444 27.144965,121.502381 26.7634553,122.540327 C26.1707704,124.152031 25.5780856,125.765728 24.9863969,127.377432 C23.6824903,128.669385 22.3785837,129.961339 21.0756732,131.252296 C19.8594241,132.454599 18.642179,133.660887 17.42593,134.866179 C17.325323,134.966786 16.9149261,135.360249 16.5433774,135.718848 C14.0780078,138.090584 13.5899144,138.561743 14.290179,142.736436 C14.7175097,145.294444 15.5592218,147.886319 16.8730895,150.385556 C18.0833619,152.690553 19.7070195,154.934786 21.7908794,157.024623 C24.3917198,159.63144 28.6530739,162.868794 33.1146459,164.564171 C35.6646848,165.533385 38.2934163,166.006537 40.7597821,165.611082 C40.6342724,165.990599 40.511751,166.369121 40.3732918,166.751626 C39.9848093,167.824436 39.5515019,168.898241 39.0723735,169.949136 C36.0461946,176.584218 39.1530584,180.048685 43.9891673,182.25407 C46.4037354,183.35477 49.2745214,184.101852 51.9421012,184.798132 C52.4879689,184.938584 53.0338366,185.082023 53.7211518,185.2673 C56.8828016,186.121961 62.3434708,187.690833 67.3309883,188.005603 C72.7747237,188.350257 77.6845447,187.226646 79.0004047,182.339735 C79.5213696,180.4033 79.8241868,178.919097 79.9467082,177.46677 C80.0602646,176.119035 80.0164358,174.756358 79.8590506,173.070942 C81.4109883,169.631377 82.0694163,168.664156 83.2039844,167.004638 C83.4261167,166.676918 83.6950661,166.284451 83.775751,166.160934 C84.9929961,164.357977 85.5627704,163.077977 85.7699611,161.636607 C85.9691829,160.246039 85.8008405,158.860451 85.5488249,156.741728 C85.5249183,156.540514 85.4880623,156.246661 85.4362646,155.858179 C88.6228171,156.266584 91.7645447,156.485728 94.8883424,156.50565 C96.4741479,156.515611 98.0589572,156.468794 99.6437665,156.385121 C99.2393463,156.593307 98.8418988,156.798506 98.4075953,157.021634 C98.2153463,157.120249 98.0171206,157.222848 97.8178988,157.325447 C93.6143191,159.487004 93.4390039,163.582008 94.7548638,167.794553 C95.9412296,171.593712 98.3826926,175.47256 99.9147082,177.832342 C103.135128,182.794957 106.208125,186.995549 109.933572,189.27863 C113.839315,191.67228 118.300887,191.954179 124.060389,188.837354 C126.989946,187.250553 127.914335,185.633868 129.158475,183.454381 C129.538988,182.788981 129.959346,182.063813 130.426521,181.348607 C131.63779,180.546739 134.650023,178.062444 137.607471,175.616996 C138.613541,174.785245 139.619611,173.956482 140.755175,173.032093 C141.537121,173.606848 142.481432,174.006288 143.621977,174.278226 C145.104187,174.63284 146.869292,174.793214 148.984031,174.944623 C150.566848,175.061167 155.728685,175.057183 159.063658,175.056187 C160.093634,175.056187 160.949292,175.056187 161.462288,175.059175 C164.90484,175.080093 167.683984,174.898802 169.783782,173.709447 C172.022039,172.440405 173.348856,170.193183 173.638724,166.162926 C173.76523,164.372918 173.78814,163.26923 173.540109,162.141634 C173.308016,161.085759 172.854786,160.129494 172.076825,158.728965 C172.030008,156.987767 171.983191,155.245572 171.93737,153.504374 C171.88856,151.656591 171.837759,149.807813 171.788949,147.961027 C171.730179,145.782537 171.490117,144.013447 171.047844,142.272249 C170.609556,140.543004 169.984,138.879502 169.146272,136.884296 C168.57849,135.534568 168.118288,134.294412 167.668047,133.078163 L166.459767,133.520436 L166.646039,133.451704 L167.668047,133.078163 L167.668047,133.073183 C166.94786,131.13077 166.237634,129.240156 165.243518,127.217058 C165.308265,126.826584 165.373012,126.407222 165.435767,125.958973 C166.075268,126.57656 166.715767,127.193152 167.355268,127.808747 L170.185214,130.536093 C172.343782,132.614973 174.317074,134.505588 176.635019,135.872249 C179.031658,137.286724 181.727128,138.107518 185.217494,137.942163 C188.871222,137.769837 192.780949,136.230848 196.000374,133.856125 C199.11421,131.557105 201.613447,128.457214 202.656374,125.026615 C202.958195,124.03449 203.260016,123.04137 203.559844,122.050241 C203.799907,121.259331 204.040965,120.466428 204.282023,119.674521 C209.406008,120.543128 214.905525,120.823035 220.217774,120.267206 C225.343751,119.728311 230.296405,118.423409 234.566724,116.145307 C240.845198,112.795393 245.551813,107.860669 248.934599,102.001556 L248.936591,102.002553 C252.716825,95.4541323 254.833556,87.7382724 255.638412,79.7982879 C256.282895,73.4301634 255.931268,64.7729805 254.605447,56.4235953 L254.605447,56.4235953 Z M188.217774,109.941541 C185.265307,108.94842 183.212327,107.498086 180.617463,105.863471 C181.323704,109.046039 181.645447,112.411891 180.705121,115.589479 C179.212949,120.630786 176.803362,128.878568 183.647626,130.400623 C186.253447,130.979362 187.434833,130.895689 191.112467,128.998101 C188.136093,129.672467 186.634957,129.507113 184.588949,129.127595 C182.735191,128.786926 181.752031,127.609525 181.234054,126.220949 C181.881525,126.688125 182.938397,126.942132 184.743346,127.377432 C189.817525,128.600654 194.652638,126.157198 195.598942,122.638942 C196.14979,120.582973 196.056156,119.503191 197.224591,116.701136 C198.27449,117.025868 199.360249,117.320716 200.473899,117.590661 C199.845354,119.639658 199.216809,121.690646 198.588265,123.739642 C196.957634,129.05986 190.603455,133.349105 184.99337,133.251486 C179.80663,133.159844 176.518475,129.911533 172.937463,126.725977 C170.471097,124.529556 168.09737,122.430755 165.74456,120.350879 C159.289774,118.313837 154.115984,115.934132 148.125385,111.499455 C152.388732,116.508887 155.280436,119.283051 161.22621,121.776311 C160.361588,130.596856 157.29656,137.027735 154.68277,145.468763 C153.499393,149.284856 144.161868,164.580109 141.573977,166.071284 C139.729183,167.134132 128.171331,176.868109 125.997821,178.153089 C124.378148,180.303689 122.9567,183.275082 120.52221,184.561058 C113.104187,188.483735 108.336809,180.973074 104.345401,174.629852 C102.527502,171.739144 97.4802179,163.415658 101.880031,161.083767 C106.040778,158.88137 108.370677,157.306521 112.615097,154.519409 C113.238661,155.655969 114.308482,156.753681 115.005759,157.889245 C114.852358,156.647097 114.697961,155.405946 114.542568,154.162802 C114.263658,151.912591 114.274615,150.085728 114.453914,147.821572 C114.627237,145.630132 114.798568,143.437696 114.970895,141.245261 C114.332389,143.473556 113.056374,145.701852 112.418864,147.929152 C112.16386,148.820669 111.952685,149.540856 111.83116,150.208249 C102.307362,152.154646 92.8522957,152.276171 83.3255097,150.576809 C82.7178833,147.049588 81.9777743,143.374942 81.3571984,140.740233 C81.1689339,143.690708 81.2904591,151.847844 81.2745214,156.416 C81.2625681,159.954179 81.1141479,161.165447 79.2892763,164.176685 C77.5809494,166.993681 76.8577743,167.634179 74.4651206,172.39558 C74.6643424,175.40084 74.6683268,177.386086 73.8704436,180.237946 C72.5426304,184.979424 59.1499455,181.305774 55.6177432,180.338553 C51.2667393,179.147206 42.2728716,177.378117 44.535035,171.57877 C46.5252607,166.473712 47.7873307,161.091735 48.7595331,153.949634 C40.7886693,142.467486 33.3766226,126.731953 31.954179,112.789416 C30.8494942,101.9647 31.5119066,95.3017276 33.8547549,88.6795953 C37.5662568,78.1875798 42.7599689,69.1060545 51.0924202,61.7926226 C62.3315175,51.9301479 72.8384747,47.9696187 89.289214,45.4654008 C85.3326693,49.8941012 81.4189572,54.5768093 77.1526226,59.5981946 C72.8344903,64.6813385 70.2685136,69.815284 67.5262257,75.3755642 C63.7380233,83.0545681 63.8197043,85.9771518 68.8410895,92.7188171 C73.1681868,98.5291206 75.5040623,101.143907 77.3936809,106.829696 C75.8337743,110.045136 75.2659922,112.763518 74.7420389,117.155362 C80.0403424,122.947735 83.9779611,126.916233 89.1228638,128.138459 C94.1691518,129.337774 98.3826926,129.105681 102.898054,126.798693 C112.924887,121.67172 122.202646,115.05158 133.514459,114.778646 C138.747019,101.913899 138.218086,91.1638911 135.705899,78.7165136 C133.989603,70.2157198 133.301292,62.1671595 132.768374,53.5010117 C130.646661,62.4261479 130.248218,70.2744903 131.82207,79.1647626 C133.719658,89.8779144 135.194895,101.715673 129.916514,111.130895 C119.688467,111.913837 110.922708,118.136529 101.704716,122.910879 C97.9991907,124.830381 94.1412607,125.01765 90.0402802,123.892047 C86.2331518,122.846132 83.6641868,120.326973 79.5632062,115.597447 C79.4984591,110.848 80.5702724,108.65656 82.7507549,104.355362 C86.2550661,97.4483424 90.1219611,91.0194553 94.3663813,84.224 C89.1696809,90.4964981 84.2459144,95.7370272 80.1558911,102.043393 C78.592,97.5897899 76.3567315,95.3276265 72.6531984,90.3122179 C69.0363268,85.4133541 68.6578054,83.2687315 71.3622412,77.5988794 C74.0816187,71.9021323 76.3876109,66.8946926 81.0165292,61.897214 C89.0142879,53.2599533 96.3406693,43.6484981 105.086506,35.1417276 C109.835953,30.5237665 111.76442,30.683144 118.062817,29.7288716 C123.756576,28.8652451 129.314864,27.7764981 135.121183,26.4277665 C129.506117,26.9507237 124.078319,27.1429728 118.610677,27.2784436 C118.553899,27.2804358 118.498117,27.282428 118.441339,27.2834241 C123.820327,20.4142568 126.942132,16.5862101 135.677012,12.7900389 C157.184996,3.44952529 170.850615,2.43947082 187.745619,16.6409961 C192.124514,20.3226148 195.948576,23.8956576 200.388233,27.0712529 C198.778521,27.208716 197.390942,27.4975875 195.556109,28.2177743 C197.789385,27.7924358 200.368311,28.2137899 202.686257,28.6381323 C203.336716,29.0604825 204.005105,29.4718755 204.689432,29.8752996 C207.824187,31.7220856 209.603237,32.7421012 211.722957,35.6955642 C213.963206,38.8163735 215.830911,41.9351907 217.476482,45.3727626 C216.397696,44.9872685 215.49323,44.6615409 214.687377,44.4224747 C214.093696,44.1495409 213.448218,43.9712374 212.763891,43.9044981 C211.408187,43.7740078 210.111253,44.1077043 209.030475,44.7731051 C208.986646,44.7930272 208.943813,44.8129494 208.899984,44.8338677 C207.165759,45.677572 204.480249,46.6398132 202.683268,46.9316732 C203.599689,47.2484358 205.627767,47.3669728 206.584031,46.9884514 C206.711533,46.9376498 206.842023,46.8988016 206.975502,46.8669261 C206.544187,47.6010584 206.263284,48.4338054 206.175626,49.335284 C206.061074,50.5296187 206.304125,51.675144 206.817121,52.6702568 C206.819113,52.6732451 206.820109,52.6762335 206.822101,52.681214 C206.984467,53.0627237 207.209588,53.4143502 207.457619,53.668358 C206.636825,53.9711751 205.798101,54.3168249 204.933479,54.692358 C208.941821,54.0817432 212.555704,53.9771518 216.467424,54.4921401 C216.725416,55.725323 216.985401,57.0322179 217.226459,58.3610272 C216.741354,58.3988794 216.258241,58.4357354 215.773136,58.4745837 C215.735284,58.477572 215.694444,58.4815564 215.655595,58.4855409 C213.804825,57.0063191 211.742879,57.2543502 208.925883,57.8978366 C200.35835,59.8512062 202.371486,64.658428 198.430879,71.9021323 C202.522895,66.8996732 202.219082,61.6661167 208.888031,60.0862879 C210.441961,59.7187237 211.499829,59.2575253 212.55172,59.4159066 C210.659113,60.3681868 209.02151,61.9470195 208.372047,63.7798599 C206.541198,68.9486693 207.677759,73.3036576 205.666615,78.1317977 C208.157883,73.8156576 208.308296,69.6041089 210.535595,65.0628482 C211.335471,63.4322179 214.303875,60.8214163 216.126755,60.781572 C216.627798,60.7696187 217.125852,60.7596576 217.626895,60.7487004 C218.066179,63.6214786 218.333136,66.4743346 218.162802,68.8400934 C217.852016,73.1582257 216.730397,79.5671907 216.059019,82.0196109 C218.315206,79.1189416 219.343191,72.9759377 220.334319,68.6508327 C221.366288,64.1484202 221.105307,58.7445292 220.201837,53.9074241 C218.962677,47.2703502 225.797977,48.3501323 229.766475,45.2223502 C232.683082,42.9223346 234.692233,39.250677 237.366786,36.6488405 C240.019424,34.0699144 244.195113,37.8601089 245.239035,40.3812607 C249.763362,51.3275019 251.824311,68.5492296 250.629977,79.5841245 C249.288218,91.9657588 243.30758,105.482957 232.387237,111.579144 C218.464623,119.34979 202.049743,114.602335 188.217774,109.941541 L188.217774,109.941541 Z M168.436047,164.93572 C167.981821,170.044763 166.279471,170.382444 161.792996,170.303751 C159.754957,170.267891 151.638661,170.231035 149.578708,170.053728 C146.669074,169.802708 145.035455,169.542724 144.14593,168.879315 C148.71807,165.523424 156.486724,151.666553 158.000809,146.896187 C159.602553,141.856872 161.355704,137.458054 162.659611,132.800249 C163.259268,134.746646 163.733416,136.676109 164.606008,138.744031 C166.063315,142.199533 166.775533,144.335191 166.880125,148.041712 C166.989696,151.952436 167.100265,155.864156 167.210833,159.774879 C168.462942,161.967315 168.658179,162.435486 168.436047,164.93572 L168.436047,164.93572 Z M30.8425214,126.233899 C33.746179,136.276669 38.6918599,146.146117 44.1754397,154.442708 C44.1754397,154.490521 44.1744436,154.538335 44.1744436,154.58814 C43.8297899,156.014568 43.4333385,157.403144 42.5995953,158.518786 C38.6809027,163.762304 28.7118444,156.06537 25.8261167,153.120872 C22.6724358,149.899455 20.5606848,146.08635 20.0576498,142.508327 C19.6920778,139.899518 20.0476887,139.835767 21.8675798,137.989977 C24.3209961,135.505681 26.7774008,133.020389 29.229821,130.537089 C29.7667237,129.102693 30.3046226,127.6673 30.8425214,126.233899 L30.8425214,126.233899 Z M25.298179,63.0736187 C24.5540856,64.6713774 24.0261479,65.8816498 23.6665525,67.1277821 C22.1036576,72.5256965 24.3737899,77.3438755 19.4729339,81.2565914 C21.7759377,85.9034397 21.6703502,87.7562023 27.0274241,85.6095875 C29.0933541,84.7808249 30.7976965,83.6193619 32.3187549,82.2457276 C31.5935875,84.1204047 30.921214,86.0548482 30.2876887,88.0520467 C30.1821012,88.3827549 30.0814942,88.7154553 29.9838755,89.0451673 C26.1528405,90.6708171 21.1145214,91.7037821 19.1860545,87.6775097 C18.2497121,85.723144 17.7207782,83.8046381 17.0384436,81.335284 C10.7290895,74.7988171 20.160249,66.1685292 25.298179,63.0736187 L25.298179,63.0736187 Z M28.3990661,69.997572 C27.6201089,69.2186148 26.9965447,68.690677 25.9904747,68.8052296 C26.075144,68.1448093 26.1877043,67.5082957 26.3470817,66.9096342 C26.4277665,66.6018366 26.5134319,66.3000156 26.6050739,65.9971984 C27.9109728,66.7582257 28.2556265,68.1368405 28.3990661,69.997572 L28.3990661,69.997572 Z M217.577089,45.5839377 C217.81516,46.0859767 218.049245,46.5969805 218.279346,47.1139611 C218.089089,47.2534163 217.907798,47.4008405 217.738459,47.5562335 C217.427673,46.8290739 216.976436,46.1696498 216.417619,45.6178054 C216.794148,45.6038599 217.179642,45.5919066 217.577089,45.5839377 L217.577089,45.5839377 Z M35.4325914,75.2530428 L35.4315953,75.2520467 L35.4325914,75.2530428 L35.4325914,75.2530428 Z M14.8968093,82.1919377 L14.8978054,82.1919377 L14.8968093,82.1919377 L14.8968093,82.1919377 Z M83.9321401,154.361027 L83.9341323,154.361027 L83.9321401,154.361027 L83.9321401,154.361027 Z M140.795019,171.336716 L140.795019,171.336716 L140.794023,171.336716 L140.795019,171.336716 L140.795019,171.336716 Z M163.905743,127.410304 L163.906739,127.410304 L163.905743,127.4113 L163.905743,127.410304 L163.905743,127.410304 Z M25.9486381,83.1103502 L25.9486381,83.1093541 L25.947642,83.1103502 L25.9058054,82.998786 L25.9486381,83.1103502 L25.9486381,83.1103502 Z M247.803019,101.348109 L247.803019,101.348109 L247.832903,101.366039 L247.803019,101.348109 L247.803019,101.348109 Z" fill="#000000"> </path> <path d="M3.68759533,81.5384903 C4.69167315,70.1708949 6.90203891,65.2630661 14.9784903,56.7074864 C4.84806226,63.8465992 2.31993774,67.0909261 3.68759533,81.5384903" fill="#000000"> </path> <path d="M1.07480156,72.2527626 C2.19044358,67.1367471 3.23038132,65.2062879 6.38406226,61.0066926 C1.26705058,64.5817276 0.599657588,66.0499922 1.07480156,72.2527626" fill="#000000"> </path> <path d="M119.924545,0.934350195 C113.856249,2.39663813 112.69877,3.51925292 110.878879,9.46801556 C113.782537,5.11203113 115.455004,3.69456809 119.924545,0.934350195" fill="#000000"> </path> <path d="M129.49516,0.0677354086 C117.458179,3.01821012 113.920996,5.11601556 109.922615,19.0665214 C115.004763,8.84943191 118.853728,5.0871284 129.49516,0.0677354086" fill="#000000"> </path> <path d="M155.418895,50.9240778 C156.701883,45.2402802 158.981977,39.762677 167.809494,35.5252296 C156.108202,38.4557821 153.91477,43.3695875 155.418895,50.9240778" fill="#000000"> </path> <path d="M229.867082,51.3165447 C236.796016,48.8461946 240.135969,43.2759533 241.795486,36.7215564 C239.083082,42.2150973 234.898428,46.8091518 229.212638,49.6231595 C226.161556,51.1322646 224.213167,50.6063191 220.806475,50.2835798 C224.270942,51.2776965 226.46537,52.5288093 229.867082,51.3165447" fill="#000000"> </path> <path d="M182.665463,56.886786 C181.74207,54.9513463 180.124389,53.5647626 178.251704,52.8784436 C179.951066,51.9709883 181.620545,51.0177121 182.923455,49.8333385 C179.108358,51.5994397 174.666708,51.1681245 171.393494,53.3794864 C168.509759,55.3268794 164.530304,61.4987704 161.599751,64.1155486 C163.722459,63.2917665 165.767471,61.8673307 167.649121,60.3651984 C167.657089,61.4818366 167.902132,62.6124202 168.413136,63.6842335 C169.176156,65.2819922 170.410335,66.5042179 171.871626,67.2682335 C170.816747,68.6578054 169.941167,70.2137276 169.314615,71.9389883 C174.893821,65.3268171 182.983222,60.333323 190.588514,58.1976654 C188.462817,58.1677821 185.94565,58.5652296 183.381665,59.4079377 C183.288031,58.5552685 183.054942,57.7035953 182.665463,56.886786" fill="#000000"> </path> <path d="M174.637821,106.848623 C174.366879,108.560934 173.995331,110.688623 173.724389,112.40193 C174.44856,110.463502 175.321152,108.2113 176.16386,106.363518 C177.058366,104.408156 177.561401,104.223875 179.457992,103.191907 C180.802739,102.459767 183.245198,101.453696 184.589946,100.721556 C183.20635,100.954646 180.726039,101.463658 179.342444,101.696747 C175.645883,102.321307 175.210584,103.20884 174.637821,106.848623" fill="#000000"> </path> <path d="M111.499455,40.7458366 C107.209214,44.9862724 103.043486,59.5364358 101.711689,65.3576965 C103.809494,60.5215875 109.056996,46.994428 113.083268,43.5528716 C114.194926,42.6015875 114.971891,42.0178677 115.80663,41.5935253 C112.924887,46.4256498 113.136062,47.6279533 114.148109,54.1026615 C115.006755,47.5203735 117.282864,44.9773074 121.018272,40.0664903 C125.11228,39.0385058 128.944311,37.8083113 133.143907,36.1697121 C128.407409,36.7056187 123.677883,37.1957043 118.939393,37.6439533 C114.960934,38.0214786 114.320436,37.9567315 111.499455,40.7458366" fill="#000000"> </path> <path d="M169.939175,65.5140856 C169.15723,63.8784747 169.856498,61.9081712 171.496093,61.1282179 C173.135689,60.3472685 175.109977,61.0445447 175.891922,62.6811518 C175.96663,62.8365447 176.025401,62.9959222 176.07421,63.1552996 C174.508327,64.3177588 173.072934,65.6864125 171.868638,67.2722179 C171.058802,66.9464903 170.340607,66.3538054 169.939175,65.5140856" fill="#FFFFCC"> </path> <path d="M206.573074,51.3424436 C206.70456,49.9867393 207.860047,48.987642 209.214755,49.1191284 C210.568467,49.2506148 211.569556,50.4608872 211.439066,51.8155953 C211.410179,52.1044669 211.332482,52.3744125 211.215938,52.6234397 C209.975782,52.8356109 208.735626,53.1981946 207.457619,53.668358 C206.923704,53.1214942 206.498366,52.123393 206.573074,51.3424436" fill="#FFFFCC"> </path> </g> </g></svg>', 'Hadoop');
INSERT INTO public.skills VALUES (68, '<svg fill="#000000" viewBox="0 -1 34 34" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path fill="#000000" d="M26.588 15.625c0.53 0.138 1.059 0.276 1.751 0.456-0.34-0.655-0.596-1.212-0.911-1.732-0.195-0.321-0.159-0.526 0.088-0.793 0.461-0.498 0.883-1.032 1.321-1.551-0.021-0.043-0.043-0.086-0.064-0.129-0.539 0.139-1.092 0.238-1.613 0.428-0.549 0.2-0.894 0.125-1.147-0.447-0.201-0.453-0.511-0.858-0.866-1.434-0.134 0.7-0.281 1.246-0.333 1.8-0.053 0.575-0.279 0.891-0.871 1.011-0.557 0.113-1.091 0.34-1.801 0.57 0.696 0.299 1.252 0.537 1.882 0.808-0.381 0.249-0.704 0.468-1.036 0.67-0.085 0.052-0.225 0.104-0.299 0.069-0.616-0.287-1.269-0.527-1.818-0.914-0.519-0.366-0.387-1.031 0.229-1.282 0.731-0.297 1.489-0.533 2.247-0.752 0.349-0.101 0.496-0.272 0.541-0.628 0.075-0.587 0.197-1.169 0.313-1.751 0.038-0.192 0.093-0.388 0.181-0.561 0.351-0.692 0.939-0.741 1.378-0.103 0.326 0.474 0.637 0.964 0.897 1.476 0.215 0.422 0.466 0.5 0.905 0.357 0.665-0.218 1.345-0.409 2.033-0.526 0.293-0.050 0.622 0.115 0.935 0.183-0.084 0.312-0.089 0.682-0.267 0.924-0.468 0.637-1.001 1.228-1.53 1.818-0.223 0.249-0.273 0.449-0.091 0.755 0.33 0.556 0.654 1.125 0.891 1.724 0.11 0.279 0.129 0.728-0.027 0.939-0.156 0.21-0.6 0.332-0.888 0.291-0.581-0.083-1.2-0.209-1.69-0.504-0.276-0.166-0.327-0.705-0.48-1.077 0.047-0.031 0.094-0.063 0.141-0.095z"></path> <path fill="#000000" d="M9.035 21.264c-0.090 0.62-0.175 1.205-0.265 1.826-0.365 0-0.714 0-1.125 0 0.116-0.934 0.226-1.837 0.341-2.739 0.059-0.464 0.118-0.927 0.191-1.389 0.218-1.363 1.353-2.462 2.666-2.591 1.975-0.193 3.242 1.545 2.458 3.372-0.728 1.697-2.448 2.328-4.268 1.521zM12.317 18.829c0.007-0.748-0.537-1.299-1.286-1.3-0.903-0.002-1.698 0.789-1.695 1.687 0.003 0.734 0.566 1.281 1.318 1.278 0.869-0.003 1.654-0.79 1.663-1.666z"></path> <path fill="#000000" d="M3.315 20.211c0.404-0.216 0.782-0.418 1.19-0.636 0.116 0.19 0.206 0.362 0.319 0.517 0.322 0.441 0.833 0.495 1.276 0.145 0.41-0.324 0.435-0.637 0.043-1.109-0.333-0.401-0.69-0.784-1.050-1.163-0.546-0.576-0.857-1.229-0.527-2.008 0.357-0.844 1.022-1.325 1.946-1.422 0.879-0.092 1.478 0.32 1.938 1.097-0.363 0.277-0.727 0.553-1.089 0.829-0.183-0.195-0.319-0.467-0.507-0.511-0.294-0.068-0.685-0.082-0.925 0.063-0.354 0.215-0.133 0.533 0.085 0.772 0.339 0.373 0.67 0.756 1.030 1.107 0.608 0.594 0.869 1.288 0.596 2.107-0.296 0.888-0.926 1.453-1.847 1.642-1.306 0.268-2.062-0.168-2.48-1.431z"></path> <path fill="#000000" d="M18.955 21.507c-0.427 0-0.764 0-1.161 0 0.101-0.776 0.215-1.518 0.289-2.264 0.061-0.617-0.037-1.204-0.621-1.565-0.473-0.292-1.215-0.185-1.716 0.242-0.499 0.425-0.76 0.959-0.582 1.631 0.227 0.857 1.151 1.195 2.008 0.739 0.155-0.083 0.301-0.183 0.499-0.306-0.036 0.249-0.067 0.444-0.092 0.638-0.11 0.857-0.253 0.991-1.1 1.030-1.831 0.086-2.97-1.392-2.425-3.145 0.419-1.346 1.737-2.244 3.149-2.144 1.179 0.084 2.113 1.035 2.065 2.217-0.039 0.967-0.201 1.928-0.313 2.926z"></path> <path fill="#000000" d="M24.070 17.694c0.738-0.808 1.364-1.494 2.012-2.204 0.284 0.732 0.358 1.349-0.332 1.86-0.311 0.23-0.545 0.564-0.828 0.866 0.778 1.094 1.536 2.162 2.364 3.326-0.525 0-0.964 0.027-1.396-0.016-0.137-0.013-0.285-0.191-0.378-0.327-0.504-0.74-0.992-1.491-1.58-2.381-0.112 0.782-0.256 1.407-0.277 2.036-0.018 0.574-0.242 0.766-0.781 0.681-0.172-0.027-0.35-0.018-0.586-0.029 0.144-1.142 0.28-2.244 0.423-3.345 0.085-0.66 0.217-1.317 0.259-1.979 0.027-0.431 0.191-0.7 0.559-0.896 0.281-0.15 0.542-0.338 0.909-0.571-0.124 1.011-0.237 1.927-0.366 2.978z"></path> <path fill="#000000" d="M22.251 17.65c-0.212 0-0.355 0.008-0.496-0.001-0.422-0.027-0.627 0.177-0.678 0.588-0.114 0.909-0.28 1.814-0.349 2.726-0.036 0.477-0.198 0.641-0.653 0.575-0.173-0.025-0.352-0.004-0.602-0.004 0.11-0.886 0.21-1.717 0.316-2.547 0.043-0.339 0.090-0.677 0.148-1.013 0.172-1.008 0.748-1.489 1.777-1.493 0.18-0.001 0.36 0.004 0.539 0.011 0.032 0.001 0.064 0.028 0.128 0.057-0.040 0.341-0.081 0.691-0.129 1.102z"></path> <path fill="#ffffff" d="M12.317 18.829c-0.009 0.876-0.794 1.663-1.663 1.666-0.751 0.003-1.315-0.544-1.318-1.278-0.003-0.898 0.791-1.689 1.695-1.687 0.748 0.001 1.293 0.552 1.286 1.3z"></path> </g></svg>', 'Apache Spark');
INSERT INTO public.skills VALUES (71, '<svg height="200px" width="200px" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 512 512" xml:space="preserve" fill="#000000"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path style="fill:#ACAAB1;" d="M229.968,291.12c-13.135-8.8-22.428-23.018-24.547-39.717L142.094,0h227.811l-52.495,249.06 c-1.434,16.955-10.28,31.63-23.187,40.942L229.968,291.12z"></path> <polygon style="fill:#DFDFE2;" points="369.905,0 142.094,0 151.843,38.707 361.747,38.707 "></polygon> <path style="fill:#2A8FE7;" d="M289.978,289.489h-52.489c-10.037,0-18.173,8.136-18.173,18.173v21.269 c0,3.309,2.682,5.991,5.991,5.991l0,0c6.018,0,10.554,5.471,9.438,11.385l-4.576,24.247c-1.99,10.546-2.992,21.254-2.992,31.987 v91.477c0,9.93,8.05,17.982,17.982,17.982h37.15c9.93,0,17.982-8.05,17.982-17.982v-90.899c0-10.595-0.976-21.166-2.915-31.581 l-4.703-25.252c-1.1-5.907,3.433-11.363,9.442-11.363h0.047c3.308,0,5.991-2.682,5.991-5.991v-21.269 C308.151,297.626,300.015,289.489,289.978,289.489z"></path> <path style="opacity:0.38;fill:#28549C;enable-background:new ;" d="M289.978,289.489h-19.833 c10.037,0,18.173,8.137,18.173,18.173v21.27c0,3.309-2.682,5.991-5.991,5.991h-0.047c-6.009,0-10.542,5.455-9.442,11.363 l4.703,25.252c1.94,10.415,2.915,20.987,2.915,31.581v90.899c0,9.93-8.05,17.982-17.982,17.982h19.832 c9.93,0,17.982-8.05,17.982-17.982V403.12c0-10.595-0.976-21.166-2.915-31.581l-4.703-25.252c-1.1-5.907,3.433-11.363,9.442-11.363 h0.047c3.309,0,5.991-2.682,5.991-5.991v-21.27C308.151,297.626,300.015,289.489,289.978,289.489z"></path> <path style="fill:#FFD83B;" d="M305.17,38.707v84.805v25.616c0,8.053-6.589,14.642-14.642,14.642l0,0 c-8.053,0-14.642-6.589-14.642-14.642v-25.616v-10.371V96.872c0-8.053-6.589-14.642-14.642-14.642l0,0 c-8.053,0-14.642,6.589-14.642,14.642v16.269v10.371v67.516c0,8.053-6.589,14.642-14.642,14.642l0,0 c-8.053,0-14.642-6.589-14.642-14.642V38.707H305.17z"></path> <path style="opacity:0.25;fill:#3E3B43;enable-background:new ;" d="M294.223,290.002c12.906-9.313,21.753-23.987,23.187-40.942 L369.905,0h-25.744l-52.495,249.06c-1.434,16.955-10.28,31.63-23.187,40.942H294.223z"></path> </g></svg>', 'Web Scraping');
INSERT INTO public.skills VALUES (72, '<svg viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg" fill="none"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"><path fill="#202020" d="M13.338 12.033c-.1-.112-.146-.319-.197-.54-.05-.22-.107-.457-.288-.61v-.001a.756.756 0 00-.223-.134c.252-.745.153-1.487-.1-2.157-.312-.823-.855-1.54-1.27-2.03-.464-.586-.918-1.142-.91-1.963.014-1.254.138-3.579-2.068-3.582-.09 0-.183.004-.28.012-2.466.198-1.812 2.803-1.849 3.675-.045.638-.174 1.14-.613 1.764-.515.613-1.24 1.604-1.584 2.637-.162.487-.24.984-.168 1.454-.023.02-.044.041-.064.063-.151.161-.263.357-.388.489-.116.116-.282.16-.464.225-.183.066-.383.162-.504.395v.001a.702.702 0 00-.077.339c0 .108.016.217.032.322.034.22.068.427.023.567-.144.395-.163.667-.061.865.102.199.31.286.547.335.473.1 1.114.075 1.619.342l.043-.082-.043.082c.54.283 1.089.383 1.526.284a.99.99 0 00.706-.552c.342-.002.717-.146 1.318-.18.408-.032.918.145 1.503.113a.806.806 0 00.068.183l.001.001c.227.455.65.662 1.1.627.45-.036.928-.301 1.315-.762l-.07-.06.07.06c.37-.448.982-.633 1.388-.878.203-.123.368-.276.38-.499.013-.222-.118-.471-.418-.805z"></path><path fill="#F8BF11" d="M13.571 12.828c-.007.137-.107.24-.29.35-.368.222-1.019.414-1.434.918-.362.43-.802.665-1.19.696-.387.03-.721-.13-.919-.526v-.002c-.123-.233-.072-.6.031-.987s.251-.785.271-1.108v-.001c.02-.415.044-.776.114-1.055.07-.28.179-.468.373-.575a.876.876 0 01.027-.014c.022.359.2.725.514.804.343.09.838-.204 1.047-.445l.122-.004c.184-.005.337.006.495.143v.001c.121.102.179.296.229.512.05.217.09.453.239.621.287.32.38.534.371.672zM6.592 13.843v.003c-.034.435-.28.672-.656.758-.377.086-.888 0-1.398-.266-.565-.3-1.237-.27-1.667-.36-.216-.045-.357-.113-.421-.238-.064-.126-.066-.345.071-.72v-.001l.001-.002c.068-.209.018-.438-.015-.653-.033-.214-.049-.41.024-.546l.001-.001c.094-.181.232-.246.403-.307.17-.062.373-.11.533-.27l.001-.001h.001c.148-.157.26-.353.39-.492.11-.117.22-.195.385-.196h.005a.61.61 0 01.093.008c.22.033.411.187.596.437l.533.971v.001c.142.296.441.622.695.954.254.333.45.666.425.921z"></path><path fill="#D6A312" d="M9.25 4.788c-.043-.084-.13-.164-.28-.225-.31-.133-.444-.142-.617-.254-.28-.181-.513-.244-.706-.244a.834.834 0 00-.272.047c-.236.08-.392.25-.49.342-.02.019-.044.035-.104.08-.06.043-.15.11-.28.208-.117.086-.154.2-.114.332.04.132.167.285.4.417h.001c.145.085.244.2.358.291a.801.801 0 00.189.117c.072.031.156.052.26.058.248.015.43-.06.59-.151.16-.092.296-.204.452-.255h.001c.32-.1.548-.301.62-.493a.324.324 0 00-.008-.27z"></path><path fill="#202020" d="M8.438 5.26c-.255.133-.552.294-.869.294-.316 0-.566-.146-.745-.289-.09-.07-.163-.142-.218-.193-.096-.075-.084-.181-.045-.178.066.008.076.095.117.134.056.052.126.12.211.187.17.135.397.266.68.266.284 0 .614-.166.816-.28.115-.064.26-.179.379-.266.09-.067.087-.147.162-.138.075.009.02.089-.085.18-.105.092-.27.214-.403.283z"></path><path fill="#ffffff" d="M12.337 10.694a1.724 1.724 0 00-.104 0h-.01c.088-.277-.106-.48-.621-.713-.534-.235-.96-.212-1.032.265-.005.025-.009.05-.011.076a.801.801 0 00-.12.054c-.252.137-.389.386-.465.692-.076.305-.098.674-.119 1.09-.013.208-.099.49-.186.79-.875.624-2.09.894-3.122.19-.07-.11-.15-.22-.233-.328a13.85 13.85 0 00-.16-.205.65.65 0 00.268-.05.34.34 0 00.186-.192c.063-.17 0-.408-.202-.68-.201-.273-.542-.58-1.043-.888-.368-.23-.574-.51-.67-.814-.097-.305-.084-.635-.01-.96.143-.625.51-1.233.743-1.614.063-.046.023.086-.236.567-.232.44-.667 1.455-.072 2.248.016-.564.15-1.14.377-1.677.329-.747 1.018-2.041 1.072-3.073.029.02.125.086.169.11.126.075.221.184.344.283a.85.85 0 00.575.2c.24 0 .427-.079.582-.168.17-.096.304-.204.433-.245.27-.085.486-.235.608-.41.21.83.7 2.027 1.014 2.611.167.31.5.969.643 1.762.091-.002.191.01.299.038.375-.973-.319-2.022-.636-2.314-.128-.124-.135-.18-.07-.177.343.304.795.917.96 1.608.075.315.09.646.01.973.04.017.08.034.12.054.603.293.826.548.719.897z"></path><path fill="#E6E6E6" d="M8.04 8.062c-.556.002-1.099.251-1.558.716-.46.464-.814 1.122-1.018 1.888l.061.038v.004c.47.298.805.598 1.012.878.219.296.316.584.223.834a.513.513 0 01-.27.283l-.041.015c.074.097.146.197.213.3.944.628 2.042.396 2.867-.172.08-.278.153-.536.163-.698.021-.415.042-.792.124-1.12.082-.33.242-.63.544-.795.017-.01.034-.015.051-.023a.756.756 0 01.022-.094c-.242-.622-.591-1.14-1.01-1.5-.42-.36-.897-.551-1.382-.554zm2.37 2.155l-.002.005v-.002l.001-.004z"></path><path fill="#ffffff" d="M9.278 3.833a1.05 1.05 0 01-.215.656 4.119 4.119 0 00-.218-.09l-.127-.045c.029-.035.085-.075.107-.127a.669.669 0 00.05-.243l.001-.01a.673.673 0 00-.035-.236.434.434 0 00-.108-.184.223.223 0 00-.156-.07H8.57a.228.228 0 00-.151.06.434.434 0 00-.122.175.676.676 0 00-.05.243v.01a.718.718 0 00.009.14 1.773 1.773 0 00-.354-.12 1.196 1.196 0 01-.01-.133v-.013a1.035 1.035 0 01.088-.447.793.793 0 01.25-.328.554.554 0 01.346-.123h.006c.125 0 .232.036.342.116a.78.78 0 01.257.324c.063.138.094.273.097.433l.001.012zM7.388 3.997a1.05 1.05 0 00-.277.125.623.623 0 00.002-.15v-.008a.651.651 0 00-.048-.192.37.37 0 00-.096-.141.158.158 0 00-.119-.045c-.042.004-.077.024-.11.065a.372.372 0 00-.07.156.626.626 0 00-.013.205v.008a.634.634 0 00.048.193.367.367 0 00.116.156l-.102.08-.078.056a.706.706 0 01-.16-.24c-.053-.12-.082-.24-.09-.381v-.001a1.071 1.071 0 01.045-.39.668.668 0 01.167-.292.359.359 0 01.264-.118c.084 0 .158.028.235.09a.68.68 0 01.199.271c.053.12.08.24.089.382v.001c.003.06.003.115-.002.17z"></path><path fill="#202020" d="M7.806 4.335c.01.034.065.029.097.045.027.014.05.045.08.046.03.001.076-.01.08-.04.005-.038-.052-.063-.088-.077-.047-.019-.107-.028-.151-.003-.01.005-.021.018-.018.03zM7.484 4.335c-.01.034-.065.029-.096.045-.028.014-.05.045-.081.046-.03.001-.076-.01-.08-.04-.005-.038.052-.063.088-.077.047-.019.108-.028.152-.003.01.005.02.018.017.03z"></path></g></svg>', 'Linux');
INSERT INTO public.skills VALUES (73, '<svg viewBox="-78.5 0 413 413" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" preserveAspectRatio="xMidYMid" fill="#000000"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g> <path d="M87.9320692,36.714181 C83.382936,32.1427482 77.0364491,29.3196096 69.9808327,29.3196096 C62.9519759,29.3196096 56.6545483,32.1427482 52.1589343,36.714181 L52.0295962,36.714181 C47.4938428,41.2633143 44.6707042,47.614261 44.6707042,54.6431179 C44.6707042,61.6987343 47.4938428,67.9961618 52.0295962,72.5185355 L52.1589343,72.6211139 C56.6545483,77.1702472 62.9519759,79.9666261 69.9808327,79.9666261 C77.0364491,79.9666261 83.382936,77.1702472 87.9320692,72.6211139 L87.9989682,72.5185355 C92.5570213,67.9961618 95.3534002,61.6987343 95.3534002,54.6431179 C95.3534002,47.614261 92.5570213,41.2633143 87.9989682,36.714181 L87.9320692,36.714181 Z M69.9808327,383.353672 C77.0364491,383.353672 83.382936,380.481475 87.9320692,375.985861 L87.9989682,375.852063 C92.5570213,371.365368 95.3534002,365.014422 95.3534002,358.034624 C95.3534002,350.979008 92.5570213,344.654821 87.9989682,340.083388 L87.9320692,340.083388 C83.382936,335.458436 77.0364491,332.662057 69.9808327,332.662057 C62.9519759,332.662057 56.6545483,335.458436 52.1589343,340.083388 L52.0295962,340.083388 C47.4938428,344.654821 44.6707042,350.979008 44.6707042,358.034624 C44.6707042,365.014422 47.4938428,371.365368 52.0295962,375.852063 L52.1589343,375.985861 C56.6545483,380.481475 62.9519759,383.353672 69.9808327,383.353672 Z M207.953367,306.633879 C214.228495,304.988163 219.910452,300.960842 223.375821,294.873031 L223.844114,293.985504 C226.925929,288.209889 227.487881,281.546747 225.842165,275.641794 C224.183069,269.317607 220.106689,263.724849 214.032258,260.2238 L213.679923,259.987423 C207.76159,256.745051 201.018169,256.040381 194.82332,257.712857 C188.525893,259.282754 182.870696,263.488472 179.423166,269.527223 C175.931037,275.507996 175.199608,282.407514 176.872084,288.758461 C178.598078,295.002369 182.634319,300.648647 188.66861,304.176455 L188.70875,304.176455 C194.756421,307.650744 201.60688,308.279595 207.953367,306.633879 Z M95.9688712,180.386512 C89.3146489,173.750129 80.1450235,169.59347 69.9808327,169.59347 C59.8567813,169.59347 50.7094556,173.750129 44.0686131,180.386512 C37.4589901,187.000595 33.38261,196.147921 33.38261,206.285352 C33.38261,216.449543 37.4589901,225.623628 44.0686131,232.31353 C50.7094556,238.896393 59.8567813,243.026292 69.9808327,243.026292 C80.1450235,243.026292 89.3146489,238.896393 95.9688712,232.31353 C102.591874,225.623628 106.668254,216.449543 106.668254,206.285352 C106.668254,196.147921 102.591874,187.000595 95.9688712,180.386512 Z M81.3581257,137.223266 C96.0848295,139.64947 109.335295,146.705086 119.445967,156.896037 L119.526245,156.896037 C121.131822,158.514993 122.701719,160.267747 124.151198,162.042801 L149.434566,147.414216 C146.036096,137.142987 145.879999,126.403464 148.609478,116.341852 C152.217565,102.85501 160.959037,90.7819674 174.062325,83.2045386 L174.494938,82.9458624 C187.455508,75.6003502 202.191132,74.0839725 215.495117,77.6920595 C228.964119,81.2956866 241.11744,90.0772977 248.681489,103.171665 L248.681489,103.198425 C256.209859,116.212514 257.739616,131.157755 254.144909,144.591077 C250.563582,158.069 241.781971,170.222321 228.692063,177.746231 L225.240074,179.788881 L224.887739,179.788881 C212.779016,185.560036 199.461652,186.452023 187.232511,183.23641 C177.188739,180.569369 167.974514,174.976611 160.7628,167.006708 L135.519571,181.590694 C138.418528,189.270702 140.028564,197.55726 140.028564,206.285352 C140.028564,214.986684 138.418528,223.375821 135.519571,231.109347 L160.7628,245.639814 C167.974514,237.567333 177.188739,232.077153 187.232511,229.410112 C200.701514,225.726206 215.637835,227.296103 228.692063,234.900292 L229.526071,235.292766 L229.526071,235.346285 C242.138765,242.972773 250.603721,254.78714 254.144909,268.113424 C257.739616,281.466468 256.209859,296.416169 248.681489,309.457017 L248.226576,310.371304 L248.173057,310.291025 C240.609008,322.86358 228.692063,331.382055 215.535256,334.985683 C202.035034,338.54025 187.103173,337.023873 174.062325,329.526723 L174.062325,329.419684 C160.959037,321.842255 152.217565,309.742453 148.609478,296.286831 C145.879999,286.251978 146.036096,275.507996 149.434566,265.241226 L124.151198,250.65724 C122.701719,252.436754 121.131822,254.10923 119.526245,255.728186 L119.445967,255.804005 C109.335295,265.945896 96.0848295,273.001512 81.3581257,275.351898 L81.3581257,304.568929 C91.8523516,306.763217 101.258354,312.01702 108.630625,319.384832 L108.666305,319.46511 C118.54506,329.290346 124.65963,342.982345 124.65963,358.034624 C124.65963,373.037844 118.54506,386.645104 108.666305,396.523859 L108.630625,396.679957 C98.6849713,406.558712 85.0331117,412.673282 69.9808327,412.673282 C55.0088325,412.673282 41.3391332,406.558712 31.4202388,396.679957 L31.3845593,396.679957 L31.3845593,396.523859 C21.4924245,386.645104 15.3644745,373.037844 15.3644745,358.034624 C15.3644745,342.982345 21.4924245,329.290346 31.3845593,319.46511 L31.3845593,319.384832 L31.4202388,319.384832 C38.7791307,312.01702 48.1985125,306.763217 58.6659788,304.568929 L58.6659788,275.351898 C43.9258952,273.001512 30.7155691,265.945896 20.6182773,255.804005 L20.5112389,255.728186 C7.88962418,243.053052 0,225.623628 0,206.285352 C0,187.000595 7.88962418,169.571171 20.5112389,156.896037 L20.6182773,156.896037 C30.7155691,146.705086 43.9258952,139.64947 58.6659788,137.223266 L58.6659788,108.135573 C48.1985125,105.861006 38.7791307,100.611663 31.4202388,93.2929105 L31.3845593,93.2929105 L31.3845593,93.2126317 C21.4924245,83.2848174 15.3644745,69.6953969 15.3644745,54.6431179 C15.3644745,39.6666577 21.4924245,25.9478991 31.3845593,16.0691441 L31.4202388,16.0200848 C41.3391332,6.11457024 55.0088325,0 69.9808327,0 C85.0331117,0 98.6849713,6.11457024 108.630625,16.0200848 L108.630625,16.0691441 L108.666305,16.0691441 C118.54506,25.9478991 124.65963,39.6666577 124.65963,54.6431179 C124.65963,69.6953969 118.54506,83.2848174 108.666305,93.2126317 L108.630625,93.2929105 C101.258354,100.611663 91.8523516,105.861006 81.3581257,108.135573 L81.3581257,137.223266 Z M223.375821,117.83147 L223.166204,117.519275 C219.674075,111.636621 214.108077,107.716339 207.953367,106.017104 C201.60688,104.344628 194.756421,105.053758 188.66861,108.528047 L188.70875,108.528047 C182.634319,111.975576 178.571319,117.621853 176.872084,123.946041 C175.199608,130.216708 175.931037,137.142987 179.423166,143.177278 L179.539124,143.337836 C183.040173,149.291848 188.606171,153.28795 194.82332,154.906906 C201.071688,156.65966 208.033646,155.928231 214.032258,152.427182 L214.357833,152.271085 C220.262787,148.743276 224.196449,143.177278 225.842165,137.062708 C227.51464,130.76528 226.85011,123.865762 223.375821,117.83147 Z" fill="#1A1919"> </path> </g> </g></svg>', 'Apache Kafka');
INSERT INTO public.skills VALUES (74, '<svg viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg" fill="none"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"><path fill="#FC6D26" d="M14.975 8.904L14.19 6.55l-1.552-4.67a.268.268 0 00-.255-.18.268.268 0 00-.254.18l-1.552 4.667H5.422L3.87 1.879a.267.267 0 00-.254-.179.267.267 0 00-.254.18l-1.55 4.667-.784 2.357a.515.515 0 00.193.583l6.78 4.812 6.778-4.812a.516.516 0 00.196-.583z"></path><path fill="#E24329" d="M8 14.296l2.578-7.75H5.423L8 14.296z"></path><path fill="#FC6D26" d="M8 14.296l-2.579-7.75H1.813L8 14.296z"></path><path fill="#FCA326" d="M1.81 6.549l-.784 2.354a.515.515 0 00.193.583L8 14.3 1.81 6.55z"></path><path fill="#E24329" d="M1.812 6.549h3.612L3.87 1.882a.268.268 0 00-.254-.18.268.268 0 00-.255.18L1.812 6.549z"></path><path fill="#FC6D26" d="M8 14.296l2.578-7.75h3.614L8 14.296z"></path><path fill="#FCA326" d="M14.19 6.549l.783 2.354a.514.514 0 01-.193.583L8 14.296l6.188-7.747h.001z"></path><path fill="#E24329" d="M14.19 6.549H10.58l1.551-4.667a.267.267 0 01.255-.18c.115 0 .217.073.254.18l1.552 4.667z"></path></g></svg>', 'Gitlab');
INSERT INTO public.skills VALUES (75, '<svg viewBox="-1.65 0 259.3 259.3" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" preserveAspectRatio="xMidYMid" fill="#000000"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g> <path fill="#9EDCF2" d="M200.9,199.8c0,13.9-32.2,25.1-71.9,25.1c-39.7,0-71.9-11.3-71.9-25.1c0-13.9,32.2-25.1,71.9-25.1C168.7,174.7,200.9,185.9,200.9,199.8L200.9,199.8z M200.9,199.8"></path> <g> <defs> <path id="SVGID_1_" d="M98.1,244.8c1.6,7.5,5.5,11.9,9.4,14.5l41.1,0c5-3.4,10.1-9.8,10.1-21.8v-31c0,0,0.6-7.7,7.7-10.2c0,0,4.1-2.9-0.3-4.5c0,0-19.5-1.6-19.5,14.4v23.6c0,0,0.8,8.7-3.8,12.3v-29.2c0,0,0.3-9.3,5.1-12.8c0,0,3.2-5.7-3.8-4.2c0,0-13.4,1.9-14,17.6l-0.3,30h-3.2l-0.3-30c-0.6-15.6-14-17.6-14-17.6c-7-1.6-3.8,4.2-3.8,4.2c4.8,3.5,5.1,12.8,5.1,12.8v29.5c-4.6-3.3-3.8-12.6-3.8-12.6v-23.6c0-16-19.5-14.4-19.5-14.4c-4.5,1.6-0.3,4.5-0.3,4.5c7,2.6,7.7,10.2,7.7,10.2v21.7L98.1,244.8z"></path> </defs> <clipPath id="SVGID_2_"> <use xlink:href="#SVGID_1_" overflow="visible"></use> </clipPath> <path clip-path="url(#SVGID_2_)" fill="#7DBCE7" d="M200.9,199.8c0,13.9-32.2,25.1-71.9,25.1c-39.7,0-71.9-11.3-71.9-25.1c0-13.9,32.2-25.1,71.9-25.1C168.7,174.7,200.9,185.9,200.9,199.8L200.9,199.8z M200.9,199.8"></path> </g> <path fill="#9EDCF2" d="M46.9,125.9l-2.1,7.2c0,0-0.5,2.6,1.9,3.1c2.6-0.1,2.4-2.5,2.2-3.2L46.9,125.9L46.9,125.9z M46.9,125.9"></path> <path fill="#010101" d="M255.8,95.6l0.2-0.9c-21.1-4.2-42.7-4.3-55.8-3.7c2.1-7.7,2.8-16.7,2.8-26.6c0-14.3-5.4-25.7-14-34.3c1.5-4.9,3.5-15.8-2-29.7c0,0-9.8-3.1-32.1,11.8c-8.7-2.2-18-3.3-27.3-3.3c-10.2,0-20.5,1.3-30.2,3.9C74.4-2.9,64.3,0.3,64.3,0.3c-6.6,16.5-2.5,28.8-1.3,31.8c-7.8,8.4-12.5,19.1-12.5,32.2c0,9.9,1.1,18.8,3.9,26.5c-13.2-0.5-34-0.3-54.4,3.8l0.2,0.9c20.4-4.1,41.4-4.2,54.5-3.7c0.6,1.6,1.3,3.2,2,4.7c-13,0.4-35.1,2.1-56.3,8.1l0.3,0.9c21.4-6,43.7-7.6,56.6-8c7.8,14.4,23,23.8,50.2,26.7c-3.9,2.6-7.8,7-9.4,14.5c-5.3,2.5-21.9,8.7-31.9-8.5c0,0-5.6-10.2-16.3-11c0,0-10.4-0.2-0.7,6.5c0,0,6.9,3.3,11.7,15.6c0,0,6.3,21,36.4,14.2V177c0,0-0.6,7.7-7.7,10.2c0,0-4.2,2.9,0.3,4.5c0,0,19.5,1.6,19.5-14.4v-23.6c0,0-0.8-9.4,3.8-12.6v38.8c0,0-0.3,9.3-5.1,12.8c0,0-3.2,5.7,3.8,4.2c0,0,13.4-1.9,14-17.6l0.3-39.3h3.2l0.3,39.3c0.6,15.6,14,17.6,14,17.6c7,1.6,3.8-4.2,3.8-4.2c-4.8-3.5-5.1-12.8-5.1-12.8v-38.5c4.6,3.6,3.8,12.3,3.8,12.3v23.6c0,16,19.5,14.4,19.5,14.4c4.5-1.6,0.3-4.5,0.3-4.5c-7-2.6-7.7-10.2-7.7-10.2v-31c0-12.1-5.1-18.5-10.1-21.8c29-2.9,42.9-12.2,49.3-26.8c12.7,0.3,35.6,1.9,57.4,8.1l0.3-0.9c-21.7-6.1-44.4-7.7-57.3-8.1c0.6-1.5,1.1-3,1.6-4.6C212.9,91.4,234.6,91.4,255.8,95.6L255.8,95.6z M255.8,95.6"></path> <path fill="#F5CCB3" d="M174.6,63.7c6.2,5.7,9.9,12.5,9.9,19.8c0,34.4-25.6,35.3-57.2,35.3c-31.6,0-57.2-4.8-57.2-35.3c0-7.3,3.6-14.1,9.8-19.7c10.3-9.4,27.7-4.4,47.4-4.4C147,59.4,164.3,54.3,174.6,63.7L174.6,63.7z M174.6,63.7"></path> <path fill="#FFFFFF" d="M108.3,85.3c0,9.5-5.3,17.1-11.9,17.1c-6.6,0-11.9-7.7-11.9-17.1c0-9.5,5.3-17.1,11.9-17.1C103,68.1,108.3,75.8,108.3,85.3L108.3,85.3z M108.3,85.3"></path> <path fill="#AF5C51" d="M104.5,85.5c0,6.3-3.6,11.4-7.9,11.4c-4.4,0-7.9-5.1-7.9-11.4c0-6.3,3.6-11.4,7.9-11.4C100.9,74.1,104.5,79.2,104.5,85.5L104.5,85.5z M104.5,85.5"></path> <path fill="#FFFFFF" d="M172.2,85.3c0,9.5-5.3,17.1-11.9,17.1c-6.6,0-11.9-7.7-11.9-17.1c0-9.5,5.3-17.1,11.9-17.1C166.8,68.1,172.2,75.8,172.2,85.3L172.2,85.3z M172.2,85.3"></path> <path fill="#AF5C51" d="M168.3,85.5c0,6.3-3.6,11.4-7.9,11.4c-4.4,0-7.9-5.1-7.9-11.4c0-6.3,3.6-11.4,7.9-11.4C164.8,74.1,168.3,79.2,168.3,85.5L168.3,85.5z M168.3,85.5"></path> <path fill="#AF5C51" d="M130.5,100.5c0,1.6-1.3,3-3,3c-1.6,0-3-1.3-3-3s1.3-3,3-3C129.1,97.5,130.5,98.8,130.5,100.5L130.5,100.5z M130.5,100.5"></path> <path fill="#AF5C51" d="M120.6,108c-0.2-0.5,0.1-1,0.6-1.2c0.5-0.2,1,0.1,1.2,0.6c0.8,2.2,2.8,3.6,5.1,3.6c2.3,0,4.3-1.5,5.1-3.6c0.2-0.5,0.7-0.8,1.2-0.6c0.5,0.2,0.8,0.7,0.6,1.2c-1,2.9-3.8,4.9-6.9,4.9C124.4,112.9,121.6,110.9,120.6,108L120.6,108z M120.6,108"></path> <path fill="#C4E5D9" d="M54.5,121.6c0,0.8-0.9,1.4-2.1,1.4c-1.1,0-2.1-0.6-2.1-1.4c0-0.8,0.9-1.4,2.1-1.4C53.6,120.2,54.5,120.8,54.5,121.6L54.5,121.6z M54.5,121.6"></path> <path fill="#C4E5D9" d="M60.3,124.8c0,0.8-0.9,1.4-2.1,1.4c-1.1,0-2.1-0.6-2.1-1.4c0-0.8,0.9-1.4,2.1-1.4C59.4,123.4,60.3,124,60.3,124.8L60.3,124.8z M60.3,124.8"></path> <path fill="#C4E5D9" d="M63.8,129c0,0.8-0.9,1.4-2.1,1.4c-1.1,0-2.1-0.6-2.1-1.4c0-0.8,0.9-1.4,2.1-1.4C62.9,127.5,63.8,128.2,63.8,129L63.8,129z M63.8,129"></path> <path fill="#C4E5D9" d="M67,133.8c0,0.8-0.9,1.4-2.1,1.4c-1.1,0-2.1-0.6-2.1-1.4c0-0.8,0.9-1.4,2.1-1.4C66.1,132.3,67,133,67,133.8L67,133.8z M67,133.8"></path> <path fill="#C4E5D9" d="M70.5,138.2c0,0.8-0.9,1.4-2.1,1.4c-1.1,0-2.1-0.6-2.1-1.4c0-0.8,0.9-1.4,2.1-1.4C69.6,136.8,70.5,137.4,70.5,138.2L70.5,138.2z M70.5,138.2"></path> <path fill="#C4E5D9" d="M75.3,142.1c0,0.8-0.9,1.4-2.1,1.4c-1.1,0-2.1-0.6-2.1-1.4c0-0.8,0.9-1.4,2.1-1.4C74.4,140.6,75.3,141.3,75.3,142.1L75.3,142.1z M75.3,142.1"></path> <path fill="#C4E5D9" d="M82,144.6c0,0.8-0.9,1.4-2.1,1.4c-1.1,0-2.1-0.6-2.1-1.4c0-0.8,0.9-1.4,2.1-1.4C81.1,143.2,82,143.8,82,144.6L82,144.6z M82,144.6"></path> <path fill="#C4E5D9" d="M88.7,144.6c0,0.8-0.9,1.4-2.1,1.4c-1.1,0-2.1-0.6-2.1-1.4c0-0.8,0.9-1.4,2.1-1.4C87.8,143.2,88.7,143.8,88.7,144.6L88.7,144.6z M88.7,144.6"></path> <path fill="#C4E5D9" d="M95.5,143.5c0,0.8-0.9,1.4-2.1,1.4c-1.1,0-2.1-0.6-2.1-1.4c0-0.8,0.9-1.4,2.1-1.4C94.5,142.1,95.5,142.7,95.5,143.5L95.5,143.5z M95.5,143.5"></path> </g> </g></svg>', 'Github');
INSERT INTO public.skills VALUES (76, '<svg viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg" fill="none"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path fill="#252F3E" d="M4.51 7.687c0 .197.02.357.058.475.042.117.096.245.17.384a.233.233 0 01.037.123c0 .053-.032.107-.1.16l-.336.224a.255.255 0 01-.138.048c-.054 0-.107-.026-.16-.074a1.652 1.652 0 01-.192-.251 4.137 4.137 0 01-.165-.315c-.415.491-.936.737-1.564.737-.447 0-.804-.129-1.064-.385-.261-.256-.394-.598-.394-1.025 0-.454.16-.822.484-1.1.325-.278.756-.416 1.304-.416.18 0 .367.016.564.042.197.027.4.07.612.118v-.39c0-.406-.085-.689-.25-.854-.17-.166-.458-.246-.868-.246-.186 0-.377.022-.574.07a4.23 4.23 0 00-.575.181 1.525 1.525 0 01-.186.07.326.326 0 01-.085.016c-.075 0-.112-.054-.112-.166v-.262c0-.085.01-.15.037-.186a.399.399 0 01.15-.113c.185-.096.409-.176.67-.24.26-.07.537-.101.83-.101.633 0 1.096.144 1.394.432.293.288.442.726.442 1.314v1.73h.01zm-2.161.811c.175 0 .356-.032.548-.096.191-.064.362-.182.505-.342a.848.848 0 00.181-.341c.032-.129.054-.283.054-.465V7.03a4.43 4.43 0 00-.49-.09 3.996 3.996 0 00-.5-.033c-.357 0-.618.07-.793.214-.176.144-.26.347-.26.614 0 .25.063.437.196.566.128.133.314.197.559.197zm4.273.577c-.096 0-.16-.016-.202-.054-.043-.032-.08-.106-.112-.208l-1.25-4.127a.938.938 0 01-.049-.214c0-.085.043-.133.128-.133h.522c.1 0 .17.016.207.053.043.032.075.107.107.208l.894 3.535.83-3.535c.026-.106.058-.176.1-.208a.365.365 0 01.214-.053h.425c.102 0 .17.016.213.053.043.032.08.107.101.208l.841 3.578.92-3.578a.458.458 0 01.107-.208.346.346 0 01.208-.053h.495c.085 0 .133.043.133.133 0 .027-.006.054-.01.086a.76.76 0 01-.038.133l-1.283 4.127c-.032.107-.069.177-.111.209a.34.34 0 01-.203.053h-.457c-.101 0-.17-.016-.213-.053-.043-.038-.08-.107-.101-.214L8.213 5.37l-.82 3.439c-.026.107-.058.176-.1.213-.043.038-.118.054-.213.054h-.458zm6.838.144a3.51 3.51 0 01-.82-.096c-.266-.064-.473-.134-.612-.214-.085-.048-.143-.101-.165-.15a.378.378 0 01-.031-.149v-.272c0-.112.042-.166.122-.166a.3.3 0 01.096.016c.032.011.08.032.133.054.18.08.378.144.585.187.213.042.42.064.633.064.336 0 .596-.059.777-.176a.575.575 0 00.277-.508.52.52 0 00-.144-.373c-.095-.102-.276-.193-.537-.278l-.772-.24c-.388-.123-.676-.305-.851-.545a1.275 1.275 0 01-.266-.774c0-.224.048-.422.143-.593.096-.17.224-.32.384-.438.16-.122.34-.213.553-.277.213-.064.436-.091.67-.091.118 0 .24.005.357.021.122.016.234.038.346.06.106.026.208.052.303.085.096.032.17.064.224.096a.46.46 0 01.16.133.289.289 0 01.047.176v.251c0 .112-.042.171-.122.171a.552.552 0 01-.202-.064 2.427 2.427 0 00-1.022-.208c-.303 0-.543.048-.708.15-.165.1-.25.256-.25.475 0 .149.053.277.16.379.106.101.303.202.585.293l.756.24c.383.123.66.294.825.513.165.219.244.47.244.748 0 .23-.047.437-.138.619a1.436 1.436 0 01-.388.47c-.165.133-.362.23-.591.299-.24.075-.49.112-.761.112z"></path> <g fill="#F90" fill-rule="evenodd" clip-rule="evenodd"> <path d="M14.465 11.813c-1.75 1.297-4.294 1.986-6.481 1.986-3.065 0-5.827-1.137-7.913-3.027-.165-.15-.016-.353.18-.235 2.257 1.313 5.04 2.109 7.92 2.109 1.941 0 4.075-.406 6.039-1.239.293-.133.543.192.255.406z"></path> <path d="M15.194 10.98c-.223-.287-1.479-.138-2.048-.069-.17.022-.197-.128-.043-.24 1-.705 2.645-.502 2.836-.267.192.24-.053 1.89-.99 2.68-.143.123-.281.06-.218-.1.213-.53.687-1.72.463-2.003z"></path> </g> </g></svg>', 'AWS');
INSERT INTO public.skills VALUES (77, '<svg viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path fill-rule="evenodd" clip-rule="evenodd" d="M13.0164 2C10.8193 2 9.03825 3.72453 9.03825 5.85185V8.51852H15.9235V9.25926H5.97814C3.78107 9.25926 2 10.9838 2 13.1111L2 18.8889C2 21.0162 3.78107 22.7407 5.97814 22.7407H8.27322V19.4815C8.27322 17.3542 10.0543 15.6296 12.2514 15.6296H19.5956C21.4547 15.6296 22.9617 14.1704 22.9617 12.3704V5.85185C22.9617 3.72453 21.1807 2 18.9836 2H13.0164ZM12.0984 6.74074C12.8589 6.74074 13.4754 6.14378 13.4754 5.40741C13.4754 4.67103 12.8589 4.07407 12.0984 4.07407C11.3378 4.07407 10.7213 4.67103 10.7213 5.40741C10.7213 6.14378 11.3378 6.74074 12.0984 6.74074Z" fill="url(#paint0_linear_87_8204)"></path> <path fill-rule="evenodd" clip-rule="evenodd" d="M18.9834 30C21.1805 30 22.9616 28.2755 22.9616 26.1482V23.4815L16.0763 23.4815L16.0763 22.7408L26.0217 22.7408C28.2188 22.7408 29.9998 21.0162 29.9998 18.8889V13.1111C29.9998 10.9838 28.2188 9.25928 26.0217 9.25928L23.7266 9.25928V12.5185C23.7266 14.6459 21.9455 16.3704 19.7485 16.3704L12.4042 16.3704C10.5451 16.3704 9.03809 17.8296 9.03809 19.6296L9.03809 26.1482C9.03809 28.2755 10.8192 30 13.0162 30H18.9834ZM19.9015 25.2593C19.1409 25.2593 18.5244 25.8562 18.5244 26.5926C18.5244 27.329 19.1409 27.9259 19.9015 27.9259C20.662 27.9259 21.2785 27.329 21.2785 26.5926C21.2785 25.8562 20.662 25.2593 19.9015 25.2593Z" fill="url(#paint1_linear_87_8204)"></path> <defs> <linearGradient id="paint0_linear_87_8204" x1="12.4809" y1="2" x2="12.4809" y2="22.7407" gradientUnits="userSpaceOnUse"> <stop stop-color="#327EBD"></stop> <stop offset="1" stop-color="#1565A7"></stop> </linearGradient> <linearGradient id="paint1_linear_87_8204" x1="19.519" y1="9.25928" x2="19.519" y2="30" gradientUnits="userSpaceOnUse"> <stop stop-color="#FFDA4B"></stop> <stop offset="1" stop-color="#F9C600"></stop> </linearGradient> </defs> </g></svg>', 'Python');
INSERT INTO public.skills VALUES (60, '<svg viewBox="-1 0 20 20" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" fill="#000000"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <title>html [#124]</title> <desc>Created with Sketch.</desc> <defs> </defs> <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"> <g id="Dribbble-Light-Preview" transform="translate(-61.000000, -7639.000000)" fill="#000000"> <g id="icons" transform="translate(56.000000, 160.000000)"> <path d="M19.4350881,7485 L19.4279481,7485 L10.8119794,7485 L11.0180201,7487 L19.2300674,7487 C19.109707,7488.752 18.7455658,7492.464 18.6119454,7494.153 L13.99949,7495.451 L13.99949,7495.455 L13.98929,7495.46 L9.37377458,7493.836 L9.05757353,7490 L11.3199411,7490 L11.4800816,7492.063 L13.99337,7493 L13.99949,7493 L16.5086984,7492.1 L16.7667592,7489 L8.95659319,7489 C8.91885306,7488.599 8.43333144,7483.392 8.34867116,7483 L19.6370488,7483 C19.5738086,7483.66 19.5095484,7484.338 19.4350881,7485 L19.4350881,7485 Z M5,7479 L6.63812546,7497.148 L13.98929,7499 L21.3598345,7497.111 L23,7479 L5,7479 Z" id="html-[#124]"> </path> </g> </g> </g> </g></svg>', 'HTML');


--
-- TOC entry 3453 (class 0 OID 49425)
-- Dependencies: 233
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES (6, 'usertest01@gmail.com', '$2a$10$yqeonkjL6io06UJAxsLgOugdvgSAGsgK5M5yOO6/pGDmxzvTdUUU.', 'usertest01');
INSERT INTO public.users VALUES (7, 'usertest02@gmail.com', '$2a$10$2XkWAezRKAShtZqIT8pEcOU/DrbigHSHd.YeFTg4zrbFDAFrNsPwi', 'usertest02');
INSERT INTO public.users VALUES (9, 'usertest04@gmail.com', '$2a$10$DMonUmB5xU7pjvthCKPkUeBxTa2fEJdZGaIrpr6bvyVxW.7Vpwati', 'usertest04');
INSERT INTO public.users VALUES (10, 'usertest06@gmail.com', '$2a$10$1sZ2foymF.y9U6VSnE1O6eR.yOrgapaMXZhlW0LeZekTmE7nOr.C2', 'usertest06');
INSERT INTO public.users VALUES (11, 'usertest03@gmail.com', '$2a$10$Xn4PERnaw0vrTXaKH/mjg.u9kL4R53DKDCi27KCUHg5.o/JBMCCPS', 'usertest03');


--
-- TOC entry 3455 (class 0 OID 49429)
-- Dependencies: 235
-- Data for Name: users_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users_roles VALUES (6, 1);
INSERT INTO public.users_roles VALUES (7, 3);
INSERT INTO public.users_roles VALUES (9, 1);
INSERT INTO public.users_roles VALUES (9, 2);
INSERT INTO public.users_roles VALUES (10, 1);
INSERT INTO public.users_roles VALUES (11, 2);


--
-- TOC entry 3469 (class 0 OID 0)
-- Dependencies: 218
-- Name: blogs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blogs_id_seq', 9, true);


--
-- TOC entry 3470 (class 0 OID 0)
-- Dependencies: 220
-- Name: blogs_skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.blogs_skills_id_seq', 10, true);


--
-- TOC entry 3471 (class 0 OID 0)
-- Dependencies: 222
-- Name: experiences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.experiences_id_seq', 143, true);


--
-- TOC entry 3472 (class 0 OID 0)
-- Dependencies: 224
-- Name: links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.links_id_seq', 51, true);


--
-- TOC entry 3473 (class 0 OID 0)
-- Dependencies: 226
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.projects_id_seq', 51, true);


--
-- TOC entry 3474 (class 0 OID 0)
-- Dependencies: 228
-- Name: projects_skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.projects_skills_id_seq', 49, true);


--
-- TOC entry 3475 (class 0 OID 0)
-- Dependencies: 230
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 3, true);


--
-- TOC entry 3476 (class 0 OID 0)
-- Dependencies: 232
-- Name: skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.skills_id_seq', 77, true);


--
-- TOC entry 3477 (class 0 OID 0)
-- Dependencies: 234
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 11, true);


--
-- TOC entry 3263 (class 2606 OID 49448)
-- Name: blogs blogs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blogs
    ADD CONSTRAINT blogs_pkey PRIMARY KEY (id);


--
-- TOC entry 3265 (class 2606 OID 49450)
-- Name: blogs_skills blogs_skills_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blogs_skills
    ADD CONSTRAINT blogs_skills_pkey PRIMARY KEY (id);


--
-- TOC entry 3267 (class 2606 OID 49452)
-- Name: experiences experiences_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.experiences
    ADD CONSTRAINT experiences_pkey PRIMARY KEY (id);


--
-- TOC entry 3269 (class 2606 OID 49454)
-- Name: links links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.links
    ADD CONSTRAINT links_pkey PRIMARY KEY (id);


--
-- TOC entry 3271 (class 2606 OID 49456)
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- TOC entry 3273 (class 2606 OID 49458)
-- Name: projects_skills projects_skills_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects_skills
    ADD CONSTRAINT projects_skills_pkey PRIMARY KEY (id);


--
-- TOC entry 3275 (class 2606 OID 49460)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3277 (class 2606 OID 49462)
-- Name: skills skills_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.skills
    ADD CONSTRAINT skills_pkey PRIMARY KEY (id);


--
-- TOC entry 3279 (class 2606 OID 49464)
-- Name: users uk6dotkott2kjsp8vw4d0m25fb7; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT uk6dotkott2kjsp8vw4d0m25fb7 UNIQUE (email);


--
-- TOC entry 3281 (class 2606 OID 49466)
-- Name: users ukk8d0f2n7n88w1a16yhua64onx; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT ukk8d0f2n7n88w1a16yhua64onx UNIQUE (user_name);


--
-- TOC entry 3283 (class 2606 OID 49468)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3285 (class 2606 OID 49470)
-- Name: users_roles users_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT users_roles_pkey PRIMARY KEY (user_id, role_id);


--
-- TOC entry 3286 (class 2606 OID 49471)
-- Name: blogs_skills blogs_skills_blog_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blogs_skills
    ADD CONSTRAINT blogs_skills_blog_id_fkey FOREIGN KEY (blog_id) REFERENCES public.blogs(id);


--
-- TOC entry 3287 (class 2606 OID 49476)
-- Name: blogs_skills blogs_skills_skill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blogs_skills
    ADD CONSTRAINT blogs_skills_skill_id_fkey FOREIGN KEY (skill_id) REFERENCES public.skills(id);


--
-- TOC entry 3290 (class 2606 OID 49481)
-- Name: users_roles fk2o0jvgh89lemvvo17cbqvdxaa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT fk2o0jvgh89lemvvo17cbqvdxaa FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- TOC entry 3291 (class 2606 OID 49486)
-- Name: users_roles fkj6m8fwv7oqv74fcehir1a9ffy; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_roles
    ADD CONSTRAINT fkj6m8fwv7oqv74fcehir1a9ffy FOREIGN KEY (role_id) REFERENCES public.roles(id);


--
-- TOC entry 3288 (class 2606 OID 49491)
-- Name: projects_skills projects_skills_project_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects_skills
    ADD CONSTRAINT projects_skills_project_id_fkey FOREIGN KEY (project_id) REFERENCES public.projects(id);


--
-- TOC entry 3289 (class 2606 OID 49496)
-- Name: projects_skills projects_skills_skill_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projects_skills
    ADD CONSTRAINT projects_skills_skill_id_fkey FOREIGN KEY (skill_id) REFERENCES public.skills(id);


-- Completed on 2025-01-16 10:10:21

--
-- PostgreSQL database dump complete
--

