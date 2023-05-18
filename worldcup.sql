--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(20) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (314, 2018, 'Final', 518, 519, 4, 2);
INSERT INTO public.games VALUES (315, 2018, 'Third Place', 520, 521, 2, 0);
INSERT INTO public.games VALUES (316, 2018, 'Semi-Final', 519, 521, 2, 1);
INSERT INTO public.games VALUES (317, 2018, 'Semi-Final', 518, 520, 1, 0);
INSERT INTO public.games VALUES (318, 2018, 'Quarter-Final', 519, 527, 3, 2);
INSERT INTO public.games VALUES (319, 2018, 'Quarter-Final', 521, 529, 2, 0);
INSERT INTO public.games VALUES (320, 2018, 'Quarter-Final', 520, 531, 2, 1);
INSERT INTO public.games VALUES (321, 2018, 'Quarter-Final', 518, 533, 2, 0);
INSERT INTO public.games VALUES (322, 2018, 'Eighth-Final', 521, 535, 2, 1);
INSERT INTO public.games VALUES (323, 2018, 'Eighth-Final', 529, 537, 1, 0);
INSERT INTO public.games VALUES (324, 2018, 'Eighth-Final', 520, 539, 3, 2);
INSERT INTO public.games VALUES (325, 2018, 'Eighth-Final', 531, 541, 2, 0);
INSERT INTO public.games VALUES (326, 2018, 'Eighth-Final', 519, 543, 2, 1);
INSERT INTO public.games VALUES (327, 2018, 'Eighth-Final', 527, 545, 2, 1);
INSERT INTO public.games VALUES (328, 2018, 'Eighth-Final', 533, 547, 2, 1);
INSERT INTO public.games VALUES (329, 2018, 'Eighth-Final', 518, 549, 4, 3);
INSERT INTO public.games VALUES (330, 2014, 'Final', 550, 549, 1, 0);
INSERT INTO public.games VALUES (331, 2014, 'Third Place', 552, 531, 3, 0);
INSERT INTO public.games VALUES (332, 2014, 'Semi-Final', 549, 552, 1, 0);
INSERT INTO public.games VALUES (333, 2014, 'Semi-Final', 550, 531, 7, 1);
INSERT INTO public.games VALUES (334, 2014, 'Quarter-Final', 552, 559, 1, 0);
INSERT INTO public.games VALUES (335, 2014, 'Quarter-Final', 549, 520, 1, 0);
INSERT INTO public.games VALUES (336, 2014, 'Quarter-Final', 531, 535, 2, 1);
INSERT INTO public.games VALUES (337, 2014, 'Quarter-Final', 550, 518, 1, 0);
INSERT INTO public.games VALUES (338, 2014, 'Eighth-Final', 531, 567, 2, 1);
INSERT INTO public.games VALUES (339, 2014, 'Eighth-Final', 535, 533, 2, 0);
INSERT INTO public.games VALUES (340, 2014, 'Eighth-Final', 518, 571, 2, 0);
INSERT INTO public.games VALUES (341, 2014, 'Eighth-Final', 550, 573, 2, 1);
INSERT INTO public.games VALUES (342, 2014, 'Eighth-Final', 552, 541, 2, 1);
INSERT INTO public.games VALUES (343, 2014, 'Eighth-Final', 559, 577, 2, 1);
INSERT INTO public.games VALUES (344, 2014, 'Eighth-Final', 549, 537, 1, 0);
INSERT INTO public.games VALUES (345, 2014, 'Eighth-Final', 520, 581, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (518, 'France');
INSERT INTO public.teams VALUES (519, 'Croatia');
INSERT INTO public.teams VALUES (520, 'Belgium');
INSERT INTO public.teams VALUES (521, 'England');
INSERT INTO public.teams VALUES (527, 'Russia');
INSERT INTO public.teams VALUES (529, 'Sweden');
INSERT INTO public.teams VALUES (531, 'Brazil');
INSERT INTO public.teams VALUES (533, 'Uruguay');
INSERT INTO public.teams VALUES (535, 'Colombia');
INSERT INTO public.teams VALUES (537, 'Switzerland');
INSERT INTO public.teams VALUES (539, 'Japan');
INSERT INTO public.teams VALUES (541, 'Mexico');
INSERT INTO public.teams VALUES (543, 'Denmark');
INSERT INTO public.teams VALUES (545, 'Spain');
INSERT INTO public.teams VALUES (547, 'Portugal');
INSERT INTO public.teams VALUES (549, 'Argentina');
INSERT INTO public.teams VALUES (550, 'Germany');
INSERT INTO public.teams VALUES (552, 'Netherlands');
INSERT INTO public.teams VALUES (559, 'Costa Rica');
INSERT INTO public.teams VALUES (567, 'Chile');
INSERT INTO public.teams VALUES (571, 'Nigeria');
INSERT INTO public.teams VALUES (573, 'Algeria');
INSERT INTO public.teams VALUES (577, 'Greece');
INSERT INTO public.teams VALUES (581, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 345, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 581, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

