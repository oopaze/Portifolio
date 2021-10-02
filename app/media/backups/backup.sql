--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


--
-- Name: portifolio_project; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.portifolio_project (
    id bigint NOT NULL,
    title character varying(100) NOT NULL,
    description text NOT NULL,
    link character varying(200) NOT NULL,
    image character varying(100),
    is_active boolean NOT NULL,
    type character varying(10) NOT NULL
);


--
-- Name: portifolio_project_tecnologies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.portifolio_project_tecnologies (
    id bigint NOT NULL,
    project_id bigint NOT NULL,
    tecnology_id bigint NOT NULL
);


--
-- Name: portifolio_projeto_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.portifolio_projeto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: portifolio_projeto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.portifolio_projeto_id_seq OWNED BY public.portifolio_project.id;


--
-- Name: portifolio_projeto_tecnologies_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.portifolio_projeto_tecnologies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: portifolio_projeto_tecnologies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.portifolio_projeto_tecnologies_id_seq OWNED BY public.portifolio_project_tecnologies.id;


--
-- Name: portifolio_skill; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.portifolio_skill (
    id bigint NOT NULL,
    icon character varying(100) NOT NULL,
    title character varying(40) NOT NULL,
    is_active boolean NOT NULL,
    "order" character varying(5) NOT NULL
);


--
-- Name: portifolio_skills_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.portifolio_skills_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: portifolio_skills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.portifolio_skills_id_seq OWNED BY public.portifolio_skill.id;


--
-- Name: portifolio_tecnology; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.portifolio_tecnology (
    id bigint NOT NULL,
    label character varying(50) NOT NULL
);


--
-- Name: portifolio_tecnology_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.portifolio_tecnology_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: portifolio_tecnology_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.portifolio_tecnology_id_seq OWNED BY public.portifolio_tecnology.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: portifolio_project id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.portifolio_project ALTER COLUMN id SET DEFAULT nextval('public.portifolio_projeto_id_seq'::regclass);


--
-- Name: portifolio_project_tecnologies id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.portifolio_project_tecnologies ALTER COLUMN id SET DEFAULT nextval('public.portifolio_projeto_tecnologies_id_seq'::regclass);


--
-- Name: portifolio_skill id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.portifolio_skill ALTER COLUMN id SET DEFAULT nextval('public.portifolio_skills_id_seq'::regclass);


--
-- Name: portifolio_tecnology id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.portifolio_tecnology ALTER COLUMN id SET DEFAULT nextval('public.portifolio_tecnology_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add tecnology	7	add_tecnology
26	Can change tecnology	7	change_tecnology
27	Can delete tecnology	7	delete_tecnology
28	Can view tecnology	7	view_tecnology
29	Can add projeto	8	add_projeto
30	Can change projeto	8	change_projeto
31	Can delete projeto	8	delete_projeto
32	Can view projeto	8	view_projeto
33	Can add project	8	add_project
34	Can change project	8	change_project
35	Can delete project	8	delete_project
36	Can view project	8	view_project
37	Can add skills	9	add_skills
38	Can change skills	9	change_skills
39	Can delete skills	9	delete_skills
40	Can view skills	9	view_skills
41	Can add skill	9	add_skill
42	Can change skill	9	change_skill
43	Can delete skill	9	delete_skill
44	Can view skill	9	view_skill
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$260000$L1k5HBKvx9WpgDALET4jac$kDUwS8TaaoIszGsyv2oXIKgwRDaRvzH1vaw+qEJtD9E=	2021-10-02 03:55:58.642938-03	t	oopaze			pedroosd28@gmail.com	t	t	2021-10-01 18:34:31.508066-03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-10-01 18:41:02.969719-03	1	Tecnology object (1)	1	[{"added": {}}]	7	1
2	2021-10-01 18:41:22.144208-03	2	Django	1	[{"added": {}}]	7	1
3	2021-10-01 18:41:27.324428-03	3	Python	1	[{"added": {}}]	7	1
4	2021-10-01 18:41:34.52432-03	4	Html	1	[{"added": {}}]	7	1
5	2021-10-01 18:41:39.39874-03	5	CSS	1	[{"added": {}}]	7	1
6	2021-10-01 18:41:47.890641-03	4	HTML	2	[{"changed": {"fields": ["Label"]}}]	7	1
7	2021-10-01 18:41:51.135276-03	6	JS	1	[{"added": {}}]	7	1
8	2021-10-01 18:41:55.415487-03	7	Flask	1	[{"added": {}}]	7	1
9	2021-10-01 18:42:00.290143-03	8	FastAPI	1	[{"added": {}}]	7	1
10	2021-10-01 18:42:08.807875-03	9	Typescript	1	[{"added": {}}]	7	1
11	2021-10-01 18:42:13.938832-03	10	Java	1	[{"added": {}}]	7	1
12	2021-10-01 18:42:17.987628-03	11	Postgres	1	[{"added": {}}]	7	1
13	2021-10-01 18:44:16.78013-03	1	Projeto object (1)	1	[{"added": {}}]	8	1
14	2021-10-01 18:46:49.745459-03	12	Mashmallow	1	[{"added": {}}]	7	1
15	2021-10-01 18:46:55.027074-03	13	Git	1	[{"added": {}}]	7	1
16	2021-10-01 18:47:03.182225-03	14	SQLAlchemy	1	[{"added": {}}]	7	1
17	2021-10-01 18:47:10.010551-03	15	PyTest	1	[{"added": {}}]	7	1
18	2021-10-01 18:48:29.299796-03	2	Mercadin API	1	[{"added": {}}]	8	1
19	2021-10-01 18:49:02.209926-03	3	Biblioteca API	1	[{"added": {}}]	8	1
20	2021-10-01 18:49:36.69223-03	16	DRF	1	[{"added": {}}]	7	1
21	2021-10-01 18:49:45.738275-03	4	Economize	1	[{"added": {}}]	8	1
22	2021-10-01 18:50:45.637089-03	5	Conversor de Moedas	1	[{"added": {}}]	8	1
23	2021-10-01 19:04:25.028266-03	1	Orion Estoque	2	[{"changed": {"fields": ["Image"]}}]	8	1
24	2021-10-01 20:28:56.577998-03	1	Orion Estoque	2	[{"changed": {"fields": ["Image"]}}]	8	1
25	2021-10-01 20:39:04.486178-03	3	Biblioteca API	2	[{"changed": {"fields": ["Image"]}}]	8	1
26	2021-10-01 20:41:40.334648-03	1	Orion Estoque	2	[{"changed": {"fields": ["Image"]}}]	8	1
27	2021-10-01 20:41:59.756068-03	3	Biblioteca API	2	[{"changed": {"fields": ["Image"]}}]	8	1
28	2021-10-01 20:42:15.699198-03	2	Mercadin API	2	[{"changed": {"fields": ["Image"]}}]	8	1
29	2021-10-01 20:42:41.19752-03	1	Orion Estoque	2	[{"changed": {"fields": ["Image"]}}]	8	1
30	2021-10-01 20:43:29.991074-03	3	Biblioteca API	2	[{"changed": {"fields": ["Image"]}}]	8	1
31	2021-10-01 20:44:13.300233-03	2	Mercadin API	2	[{"changed": {"fields": ["Image"]}}]	8	1
32	2021-10-01 20:44:16.554184-03	3	Biblioteca API	2	[{"changed": {"fields": ["Image"]}}]	8	1
33	2021-10-01 20:52:58.213728-03	4	Economize	2	[{"changed": {"fields": ["Image"]}}]	8	1
34	2021-10-01 20:54:02.617691-03	4	Economize	2	[{"changed": {"fields": ["Image"]}}]	8	1
35	2021-10-01 20:55:47.77893-03	5	Conversor de Moedas	2	[{"changed": {"fields": ["Image"]}}]	8	1
36	2021-10-01 23:34:03.617722-03	1	Fast API	1	[{"added": {}}]	9	1
37	2021-10-01 23:34:12.088479-03	2	Flask	1	[{"added": {}}]	9	1
38	2021-10-01 23:34:23.284393-03	3	Git	1	[{"added": {}}]	9	1
39	2021-10-01 23:34:31.46324-03	4	Github	1	[{"added": {}}]	9	1
40	2021-10-01 23:34:50.183772-03	5	Fedora	1	[{"added": {}}]	9	1
41	2021-10-01 23:34:58.11803-03	6	Linux	1	[{"added": {}}]	9	1
42	2021-10-01 23:35:08.912148-03	7	TypeScript	1	[{"added": {}}]	9	1
43	2021-10-01 23:35:17.714715-03	8	Java	1	[{"added": {}}]	9	1
44	2021-10-01 23:35:25.26616-03	9	CSS3	1	[{"added": {}}]	9	1
45	2021-10-01 23:35:33.245326-03	10	HTML5	1	[{"added": {}}]	9	1
46	2021-10-01 23:35:42.176876-03	11	JavaScript	1	[{"added": {}}]	9	1
47	2021-10-01 23:35:50.368727-03	12	Django	1	[{"added": {}}]	9	1
48	2021-10-01 23:36:00.328199-03	13	Python	1	[{"added": {}}]	9	1
49	2021-10-01 23:36:48.554637-03	14	React	1	[{"added": {}}]	9	1
50	2021-10-01 23:45:01.838029-03	7	TypeScript	2	[{"changed": {"fields": ["Is active"]}}]	9	1
51	2021-10-01 23:45:07.344551-03	6	Linux	2	[{"changed": {"fields": ["Is active"]}}]	9	1
52	2021-10-01 23:51:16.167444-03	4	Github	2	[{"changed": {"fields": ["Icon"]}}]	9	1
53	2021-10-01 23:51:37.640034-03	8	Java	2	[{"changed": {"fields": ["Icon"]}}]	9	1
54	2021-10-02 00:14:25.003263-03	17	Selenium	1	[{"added": {}}]	7	1
55	2021-10-02 00:14:31.592246-03	18	TelegramBot	1	[{"added": {}}]	7	1
56	2021-10-02 00:14:37.100864-03	6	Bet360 Automatic	1	[{"added": {}}]	8	1
57	2021-10-02 00:15:28.201559-03	6	Bet360 Automatic	2	[{"changed": {"fields": ["Link"]}}]	8	1
58	2021-10-02 00:20:02.031429-03	2	Mercadin API	2	[{"changed": {"fields": ["Type"]}}]	8	1
59	2021-10-02 00:20:06.213457-03	3	Biblioteca API	2	[{"changed": {"fields": ["Type"]}}]	8	1
60	2021-10-02 00:20:13.772828-03	6	Bet360 Automatic	2	[{"changed": {"fields": ["Type"]}}]	8	1
61	2021-10-02 00:24:56.573396-03	6	Bets360 Automatic	2	[{"changed": {"fields": ["Title", "Description"]}}]	8	1
62	2021-10-02 01:08:37.728583-03	14	React	2	[{"changed": {"fields": ["Order"]}}]	9	1
63	2021-10-02 01:08:42.552344-03	11	JavaScript	2	[{"changed": {"fields": ["Order"]}}]	9	1
64	2021-10-02 01:08:46.40479-03	10	HTML5	2	[{"changed": {"fields": ["Order"]}}]	9	1
65	2021-10-02 01:08:50.141367-03	9	CSS3	2	[{"changed": {"fields": ["Order"]}}]	9	1
66	2021-10-02 01:08:53.70302-03	8	Java	2	[{"changed": {"fields": ["Order"]}}]	9	1
67	2021-10-02 01:08:56.808432-03	7	TypeScript	2	[{"changed": {"fields": ["Order"]}}]	9	1
68	2021-10-02 01:09:01.829428-03	6	Linux	2	[{"changed": {"fields": ["Order"]}}]	9	1
69	2021-10-02 01:09:06.94353-03	6	Linux	2	[]	9	1
70	2021-10-02 01:09:12.081154-03	5	Fedora	2	[{"changed": {"fields": ["Order"]}}]	9	1
71	2021-10-02 01:09:17.406804-03	4	Github	2	[{"changed": {"fields": ["Order"]}}]	9	1
72	2021-10-02 01:09:21.182241-03	3	Git	2	[{"changed": {"fields": ["Order"]}}]	9	1
73	2021-10-02 01:09:25.062783-03	3	Git	2	[]	9	1
74	2021-10-02 01:09:29.060911-03	2	Flask	2	[]	9	1
75	2021-10-02 01:09:31.056323-03	1	Fast API	2	[]	9	1
76	2021-10-02 01:09:52.863981-03	13	Python	2	[]	9	1
77	2021-10-02 01:10:13.032056-03	12	Django	2	[]	9	1
78	2021-10-02 01:10:18.298824-03	12	Django	2	[{"changed": {"fields": ["Order"]}}]	9	1
79	2021-10-02 01:10:29.123399-03	2	Flask	2	[{"changed": {"fields": ["Order"]}}]	9	1
80	2021-10-02 01:10:32.104638-03	1	Fast API	2	[{"changed": {"fields": ["Order"]}}]	9	1
81	2021-10-02 01:10:48.765049-03	3	Git	2	[{"changed": {"fields": ["Order"]}}]	9	1
82	2021-10-02 01:10:55.252869-03	4	Github	2	[{"changed": {"fields": ["Order"]}}]	9	1
83	2021-10-02 01:11:05.503153-03	11	JavaScript	2	[{"changed": {"fields": ["Order"]}}]	9	1
84	2021-10-02 01:11:13.185642-03	14	React	2	[{"changed": {"fields": ["Order"]}}]	9	1
85	2021-10-02 01:11:21.104753-03	8	Java	2	[{"changed": {"fields": ["Order"]}}]	9	1
86	2021-10-02 01:11:44.584336-03	10	HTML5	2	[{"changed": {"fields": ["Order"]}}]	9	1
87	2021-10-02 01:11:50.19378-03	9	CSS3	2	[{"changed": {"fields": ["Order"]}}]	9	1
88	2021-10-02 01:11:56.367455-03	11	JavaScript	2	[]	9	1
89	2021-10-02 01:12:11.918052-03	4	Github	2	[{"changed": {"fields": ["Order"]}}]	9	1
90	2021-10-02 01:12:15.886977-03	3	Git	2	[{"changed": {"fields": ["Order"]}}]	9	1
91	2021-10-02 01:12:24.95102-03	10	HTML5	2	[{"changed": {"fields": ["Order"]}}]	9	1
92	2021-10-02 01:12:30.533264-03	5	Fedora	2	[{"changed": {"fields": ["Order"]}}]	9	1
93	2021-10-02 01:12:34.302245-03	10	HTML5	2	[{"changed": {"fields": ["Order"]}}]	9	1
94	2021-10-02 01:12:38.653776-03	9	CSS3	2	[{"changed": {"fields": ["Order"]}}]	9	1
95	2021-10-02 01:12:53.701071-03	11	JavaScript	2	[{"changed": {"fields": ["Order"]}}]	9	1
96	2021-10-02 01:12:59.998308-03	14	React	2	[{"changed": {"fields": ["Order"]}}]	9	1
97	2021-10-02 01:13:34.916052-03	15	Postgres	1	[{"added": {}}]	9	1
98	2021-10-02 01:13:51.644622-03	14	React	2	[{"changed": {"fields": ["Is active"]}}]	9	1
99	2021-10-02 01:24:34.940597-03	15	PostgreSQL	2	[{"changed": {"fields": ["Title"]}}]	9	1
100	2021-10-02 03:34:03.77423-03	7	Portifolio	1	[{"added": {}}]	8	1
101	2021-10-02 03:34:10.266186-03	5	Conversor de Moedas	2	[{"changed": {"fields": ["Is active", "Type"]}}]	8	1
102	2021-10-02 03:34:43.959016-03	7	Portifolio	2	[{"changed": {"fields": ["Image"]}}]	8	1
103	2021-10-02 03:56:17.070552-03	1	oopaze	2	[{"changed": {"fields": ["password"]}}]	4	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	portifolio	tecnology
8	portifolio	project
9	portifolio	skill
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-09-30 21:36:19.79547-03
2	auth	0001_initial	2021-09-30 21:36:19.890364-03
3	admin	0001_initial	2021-09-30 21:36:19.917266-03
4	admin	0002_logentry_remove_auto_add	2021-09-30 21:36:19.929208-03
5	admin	0003_logentry_add_action_flag_choices	2021-09-30 21:36:19.943011-03
6	contenttypes	0002_remove_content_type_name	2021-09-30 21:36:19.971036-03
7	auth	0002_alter_permission_name_max_length	2021-09-30 21:36:19.982951-03
8	auth	0003_alter_user_email_max_length	2021-09-30 21:36:19.99407-03
9	auth	0004_alter_user_username_opts	2021-09-30 21:36:20.005766-03
10	auth	0005_alter_user_last_login_null	2021-09-30 21:36:20.018718-03
11	auth	0006_require_contenttypes_0002	2021-09-30 21:36:20.023339-03
12	auth	0007_alter_validators_add_error_messages	2021-09-30 21:36:20.032947-03
13	auth	0008_alter_user_username_max_length	2021-09-30 21:36:20.047747-03
14	auth	0009_alter_user_last_name_max_length	2021-09-30 21:36:20.060175-03
15	auth	0010_alter_group_name_max_length	2021-09-30 21:36:20.073381-03
16	auth	0011_update_proxy_permissions	2021-09-30 21:36:20.086941-03
17	auth	0012_alter_user_first_name_max_length	2021-09-30 21:36:20.098258-03
18	sessions	0001_initial	2021-09-30 21:36:20.116683-03
19	portifolio	0001_initial	2021-10-01 18:37:51.546061-03
20	portifolio	0002_alter_tecnology_options	2021-10-01 18:40:54.500302-03
21	portifolio	0003_rename_projeto_project	2021-10-01 18:45:14.304324-03
22	portifolio	0004_alter_tecnology_label	2021-10-01 18:46:23.606187-03
23	portifolio	0005_alter_project_image	2021-10-01 18:48:23.653608-03
24	portifolio	0006_alter_project_image	2021-10-01 19:04:15.673585-03
25	portifolio	0007_skills	2021-10-01 23:01:14.954648-03
26	portifolio	0008_auto_20211002_0220	2021-10-01 23:20:59.309874-03
27	portifolio	0009_alter_skill_icon	2021-10-01 23:33:55.910201-03
28	portifolio	0010_skill_is_active	2021-10-01 23:37:36.426621-03
29	portifolio	0011_project_type	2021-10-02 00:17:08.206989-03
30	portifolio	0012_alter_project_type	2021-10-02 00:19:53.680005-03
31	portifolio	0013_skill_order	2021-10-02 01:07:47.764823-03
32	portifolio	0014_alter_skill_order	2021-10-02 01:10:08.433281-03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
rtb59002gf1boefzpg69dfgv6hnpk68r	.eJxVjDEOwjAMRe-SGUV1UycSIztniOzYIQWUSE07Ie4OlTrA-t97_2UibWuJW9clzmLOBszpd2NKD607kDvVW7Op1XWZ2e6KPWi31yb6vBzu30GhXr51HnEQ4imQ0xGDAyZEBhhUIXDImcFn9JAk-0TiAjicMLADp8mLmvcH7h84SA:1mWQBB:bcTpKqoS7l-kYYHLNStoSNyOc-6wxTRXSdpVU__Nt9I	2021-10-15 18:34:53.407137-03
sntru459l38hby5b5y1orschhnnydd47	.eJxVjDEOwjAMRe-SGUV1UycSIztniOzYIQWUSE07Ie4OlTrA-t97_2UibWuJW9clzmLOBszpd2NKD607kDvVW7Op1XWZ2e6KPWi31yb6vBzu30GhXr51HnEQ4imQ0xGDAyZEBhhUIXDImcFn9JAk-0TiAjicMLADp8mLmvcH7h84SA:1mWQd8:BUn3i8bYE_8nSOTYnJ_s2eFSM5n-geU78MqtNB27M1U	2021-10-15 19:03:46.392257-03
b6ovndmui7jhctb1ofucptam60bws295	.eJxVjDsOwjAQBe_iGllZfzZeSnrOEO36gwMokeKkQtwdIqWA9s3Me6mBt7UOW8vLMCZ1VqBOv5twfORpB-nO023WcZ7WZRS9K_qgTV_nlJ-Xw_07qNzqt-7RSggml46Aeiks6JzHaKMrLnnqCDEWMCSeDCFLcgABIVo0wrZX7w_OGjcl:1mWYwT:-72bHpQSLwwt9LQcFHqZdz4EHJ_uLzWFTkBOPZxUnqM	2021-10-16 03:56:17.082834-03
\.


--
-- Data for Name: portifolio_project; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.portifolio_project (id, title, description, link, image, is_active, type) FROM stdin;
1	Orion Estoque	Site para gerarenciamento de estoque da Empresa Orion	https://orion-estoque.herokuapp.com/	images/Captura_de_tela_de_2021-10-01_20-28-27_0jUhVWS.png	t	3
4	Economize	Site para suporte no gerenciamento de finanças	https://github.com/oopaze/Economize	images/Captura_de_tela_de_2021-10-01_20-53-40.png	t	3
2	Mercadin API	Uma API para gerenciamento de pequenos mercados	https://github.com/oopaze/Mercadin-API		t	api
3	Biblioteca API	API para suporte de gerenciamento de Bibliotecas	https://github.com/oopaze/Biblioteca-API		t	api
6	Bets360 Automatic	Bot responsável por fazer apostas automáticas na Bets360	https://github.com/oopaze/BetsBot		t	bot
5	Conversor de Moedas	Site para conversão de moedas em tempo real	https://github.com/oopaze/conversor-de-moedas	images/Captura_de_tela_de_2021-10-01_20-55-19.png	f	bot
7	Portifolio	Um portifolio com um breve resumo sobre minha carreria	http://localhost:8000/	images/Captura_de_tela_de_2021-10-02_03-32-45.png	t	site
\.


--
-- Data for Name: portifolio_project_tecnologies; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.portifolio_project_tecnologies (id, project_id, tecnology_id) FROM stdin;
1	1	2
2	1	3
3	1	4
4	1	5
5	1	6
6	1	11
7	2	7
8	2	11
9	2	12
10	2	13
11	2	14
12	2	15
13	3	7
14	3	11
15	3	12
16	3	13
17	3	14
18	4	2
19	4	4
20	4	5
21	4	6
22	4	11
23	4	16
24	5	1
25	5	4
26	5	5
27	5	9
28	6	17
29	6	18
30	6	3
31	6	7
32	7	2
33	7	3
34	7	4
35	7	5
\.


--
-- Data for Name: portifolio_skill; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.portifolio_skill (id, icon, title, is_active, "order") FROM stdin;
7	icons/typescript.svg	TypeScript	f	d
6	icons/linux.svg	Linux	f	b
13	icons/python.svg	Python	t	a
12	icons/django.svg	Django	t	a1
2	icons/pocoo_flask-icon.svg	Flask	t	a2
1	icons/fastapi-1.svg	Fast API	t	a3
8	icons/java1.svg	Java	t	w
4	icons/github1.svg	Github	t	b1
3	icons/git.svg	Git	t	b2
5	icons/fedora.svg	Fedora	t	c
10	icons/html.svg	HTML5	t	c1
9	icons/css.svg	CSS3	t	c2
11	icons/javascript.svg	JavaScript	t	c3
14	icons/react-js.svg	React	f	c4
15	icons/postgresql-icon.svg	PostgreSQL	t	b
\.


--
-- Data for Name: portifolio_tecnology; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.portifolio_tecnology (id, label) FROM stdin;
1	React
2	Django
3	Python
5	CSS
4	HTML
6	JS
7	Flask
8	FastAPI
9	Typescript
10	Java
11	Postgres
12	Mashmallow
13	Git
14	SQLAlchemy
15	PyTest
16	DRF
17	Selenium
18	TelegramBot
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 103, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 32, true);


--
-- Name: portifolio_projeto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.portifolio_projeto_id_seq', 7, true);


--
-- Name: portifolio_projeto_tecnologies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.portifolio_projeto_tecnologies_id_seq', 35, true);


--
-- Name: portifolio_skills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.portifolio_skills_id_seq', 15, true);


--
-- Name: portifolio_tecnology_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.portifolio_tecnology_id_seq', 18, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: portifolio_project portifolio_projeto_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.portifolio_project
    ADD CONSTRAINT portifolio_projeto_pkey PRIMARY KEY (id);


--
-- Name: portifolio_project_tecnologies portifolio_projeto_tecno_projeto_id_tecnology_id_fa02d8ac_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.portifolio_project_tecnologies
    ADD CONSTRAINT portifolio_projeto_tecno_projeto_id_tecnology_id_fa02d8ac_uniq UNIQUE (project_id, tecnology_id);


--
-- Name: portifolio_project_tecnologies portifolio_projeto_tecnologies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.portifolio_project_tecnologies
    ADD CONSTRAINT portifolio_projeto_tecnologies_pkey PRIMARY KEY (id);


--
-- Name: portifolio_skill portifolio_skills_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.portifolio_skill
    ADD CONSTRAINT portifolio_skills_pkey PRIMARY KEY (id);


--
-- Name: portifolio_tecnology portifolio_tecnology_label_a7863aa0_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.portifolio_tecnology
    ADD CONSTRAINT portifolio_tecnology_label_a7863aa0_uniq UNIQUE (label);


--
-- Name: portifolio_tecnology portifolio_tecnology_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.portifolio_tecnology
    ADD CONSTRAINT portifolio_tecnology_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: portifolio_projeto_tecnologies_projeto_id_16adfc37; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX portifolio_projeto_tecnologies_projeto_id_16adfc37 ON public.portifolio_project_tecnologies USING btree (project_id);


--
-- Name: portifolio_projeto_tecnologies_tecnology_id_75af0a86; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX portifolio_projeto_tecnologies_tecnology_id_75af0a86 ON public.portifolio_project_tecnologies USING btree (tecnology_id);


--
-- Name: portifolio_tecnology_label_a7863aa0_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX portifolio_tecnology_label_a7863aa0_like ON public.portifolio_tecnology USING btree (label varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: portifolio_project_tecnologies portifolio_project_t_project_id_7ad375db_fk_portifoli; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.portifolio_project_tecnologies
    ADD CONSTRAINT portifolio_project_t_project_id_7ad375db_fk_portifoli FOREIGN KEY (project_id) REFERENCES public.portifolio_project(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: portifolio_project_tecnologies portifolio_projeto_t_tecnology_id_75af0a86_fk_portifoli; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.portifolio_project_tecnologies
    ADD CONSTRAINT portifolio_projeto_t_tecnology_id_75af0a86_fk_portifoli FOREIGN KEY (tecnology_id) REFERENCES public.portifolio_tecnology(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

