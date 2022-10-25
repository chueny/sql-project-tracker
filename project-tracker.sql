--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Homebrew)
-- Dumped by pg_dump version 14.5 (Homebrew)

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
-- Name: projects; Type: TABLE; Schema: public; Owner: chueyang
--

CREATE TABLE public.projects (
    title character varying(100) NOT NULL,
    description text,
    max_grade integer
);


ALTER TABLE public.projects OWNER TO chueyang;

--
-- Name: students; Type: TABLE; Schema: public; Owner: chueyang
--

CREATE TABLE public.students (
    github character varying(30) NOT NULL,
    first_name character varying(20),
    last_name character varying(20)
);



ALTER TABLE public.students OWNER TO chueyang;

--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: chueyang
--

COPY public.projects (title, description, max_grade) FROM stdin;
Markov	Tweets generated from Markov Chains	50
Blockly	Programmatic Logic Puzzle Game	100
Chue	Search Engine Optimization	80
Khalid	Teamwork - how we can get better	80
Hackbright	Make music world	97
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: chueyang
--

COPY public.students (github, first_name, last_name) FROM stdin;
jhacks	jane	hacker
sdevelops	sarah	developer
develops	sarah	developer
elops	sarah	developer
\.


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: chueyang
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (title);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: chueyang
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (github);


--
-- PostgreSQL database dump complete
--

