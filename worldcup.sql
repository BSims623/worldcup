--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.16 (Ubuntu 12.16-0ubuntu0.20.04.1)

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
    round character varying(30) NOT NULL,
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
    name character varying(30) NOT NULL
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
-- Name: test; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.test (
    round character varying(30) NOT NULL
);


ALTER TABLE public.test OWNER TO freecodecamp;

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

INSERT INTO public.games VALUES (209, 2018, 'Final', 724, 725, 4, 2);
INSERT INTO public.games VALUES (210, 2018, 'Third Place', 726, 727, 2, 0);
INSERT INTO public.games VALUES (211, 2018, 'Semi-Final', 725, 727, 2, 1);
INSERT INTO public.games VALUES (212, 2018, 'Semi-Final', 724, 726, 1, 0);
INSERT INTO public.games VALUES (213, 2018, 'Quarter-Final', 725, 728, 3, 2);
INSERT INTO public.games VALUES (214, 2018, 'Quarter-Final', 727, 729, 2, 0);
INSERT INTO public.games VALUES (215, 2018, 'Quarter-Final', 726, 730, 2, 1);
INSERT INTO public.games VALUES (216, 2018, 'Quarter-Final', 724, 731, 2, 0);
INSERT INTO public.games VALUES (217, 2018, 'Eighth-Final', 727, 732, 2, 1);
INSERT INTO public.games VALUES (218, 2018, 'Eighth-Final', 729, 733, 1, 0);
INSERT INTO public.games VALUES (219, 2018, 'Eighth-Final', 726, 734, 3, 2);
INSERT INTO public.games VALUES (220, 2018, 'Eighth-Final', 730, 735, 2, 0);
INSERT INTO public.games VALUES (221, 2018, 'Eighth-Final', 725, 736, 2, 1);
INSERT INTO public.games VALUES (222, 2018, 'Eighth-Final', 728, 737, 2, 1);
INSERT INTO public.games VALUES (223, 2018, 'Eighth-Final', 731, 738, 2, 1);
INSERT INTO public.games VALUES (224, 2018, 'Eighth-Final', 724, 739, 4, 3);
INSERT INTO public.games VALUES (225, 2014, 'Final', 740, 739, 1, 0);
INSERT INTO public.games VALUES (226, 2014, 'Third Place', 741, 730, 3, 0);
INSERT INTO public.games VALUES (227, 2014, 'Semi-Final', 739, 741, 1, 0);
INSERT INTO public.games VALUES (228, 2014, 'Semi-Final', 740, 730, 7, 1);
INSERT INTO public.games VALUES (229, 2014, 'Quarter-Final', 741, 742, 1, 0);
INSERT INTO public.games VALUES (230, 2014, 'Quarter-Final', 739, 726, 1, 0);
INSERT INTO public.games VALUES (231, 2014, 'Quarter-Final', 730, 732, 2, 1);
INSERT INTO public.games VALUES (232, 2014, 'Quarter-Final', 740, 724, 1, 0);
INSERT INTO public.games VALUES (233, 2014, 'Eighth-Final', 730, 743, 2, 1);
INSERT INTO public.games VALUES (234, 2014, 'Eighth-Final', 732, 731, 2, 0);
INSERT INTO public.games VALUES (235, 2014, 'Eighth-Final', 724, 744, 2, 0);
INSERT INTO public.games VALUES (236, 2014, 'Eighth-Final', 740, 745, 2, 1);
INSERT INTO public.games VALUES (237, 2014, 'Eighth-Final', 741, 735, 2, 1);
INSERT INTO public.games VALUES (238, 2014, 'Eighth-Final', 742, 746, 2, 1);
INSERT INTO public.games VALUES (239, 2014, 'Eighth-Final', 739, 733, 1, 0);
INSERT INTO public.games VALUES (240, 2014, 'Eighth-Final', 726, 747, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (724, 'France');
INSERT INTO public.teams VALUES (725, 'Croatia');
INSERT INTO public.teams VALUES (726, 'Belgium');
INSERT INTO public.teams VALUES (727, 'England');
INSERT INTO public.teams VALUES (728, 'Russia');
INSERT INTO public.teams VALUES (729, 'Sweden');
INSERT INTO public.teams VALUES (730, 'Brazil');
INSERT INTO public.teams VALUES (731, 'Uruguay');
INSERT INTO public.teams VALUES (732, 'Colombia');
INSERT INTO public.teams VALUES (733, 'Switzerland');
INSERT INTO public.teams VALUES (734, 'Japan');
INSERT INTO public.teams VALUES (735, 'Mexico');
INSERT INTO public.teams VALUES (736, 'Denmark');
INSERT INTO public.teams VALUES (737, 'Spain');
INSERT INTO public.teams VALUES (738, 'Portugal');
INSERT INTO public.teams VALUES (739, 'Argentina');
INSERT INTO public.teams VALUES (740, 'Germany');
INSERT INTO public.teams VALUES (741, 'Netherlands');
INSERT INTO public.teams VALUES (742, 'Costa Rica');
INSERT INTO public.teams VALUES (743, 'Chile');
INSERT INTO public.teams VALUES (744, 'Nigeria');
INSERT INTO public.teams VALUES (745, 'Algeria');
INSERT INTO public.teams VALUES (746, 'Greece');
INSERT INTO public.teams VALUES (747, 'United States');


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 240, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 747, true);


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

