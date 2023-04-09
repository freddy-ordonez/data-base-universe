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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance integer,
    tem_media numeric,
    have_ocean boolean
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_eath_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_eath_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_eath_id_seq OWNER TO freecodecamp;

--
-- Name: earth_eath_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_eath_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age integer,
    size numeric,
    shape text,
    has_black_hole boolean NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance integer,
    radius numeric,
    has_water boolean NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance integer,
    mass numeric,
    has_atmosphere boolean NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planets_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planets_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planets_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planets_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planets_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance integer,
    temperature integer,
    is_main_sequence boolean NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: stars_start_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.stars_start_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stars_start_id_seq OWNER TO freecodecamp;

--
-- Name: stars_start_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.stars_start_id_seq OWNED BY public.star.star_id;


--
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_eath_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planets_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.stars_start_id_seq'::regclass);


--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'America', 580450, 18, true);
INSERT INTO public.earth VALUES (2, 'Europe', 7845000, 5, true);
INSERT INTO public.earth VALUES (3, 'Asia', 87666, 10, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Pinwheel', 45000, 200000000, 'Spiral', false);
INSERT INTO public.galaxy VALUES (2, 'Whirlpool', 60000, 150000000, 'Spiral', false);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 50000, 9000000000, 'Spiral', false);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 50000, 60000000, 'Spiral', false);
INSERT INTO public.galaxy VALUES (5, 'Andromeda', 220000, 100000000, 'Spiral', true);
INSERT INTO public.galaxy VALUES (6, 'Milky Way', 1000000, 13000000000, 'Spiral', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 2500, 1738, false, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 5000, 11.1, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 7000, 6.2, false, 4);
INSERT INTO public.moon VALUES (4, 'Ganymede', 26000, 1560.8, false, 9);
INSERT INTO public.moon VALUES (5, 'Europa', 18980, 2634, false, 9);
INSERT INTO public.moon VALUES (6, 'Callisto', 54000, 2410.3, false, 9);
INSERT INTO public.moon VALUES (7, 'Io', 8668, 1834.6, false, 7);
INSERT INTO public.moon VALUES (8, 'Titan', 10002, 2575, false, 7);
INSERT INTO public.moon VALUES (9, 'Enceladus', 65400, 252.1, false, 10);
INSERT INTO public.moon VALUES (10, 'Mimas', 5668, 198.2, false, 10);
INSERT INTO public.moon VALUES (11, 'Tethys', 14000, 531.1, false, 10);
INSERT INTO public.moon VALUES (12, 'Dione', 69450, 561.4, false, 10);
INSERT INTO public.moon VALUES (13, 'Rhea', 47800, 764.3, false, 10);
INSERT INTO public.moon VALUES (14, 'Iapetus', 4700, 734.5, false, 10);
INSERT INTO public.moon VALUES (15, 'Miranda', 8560, 235.8, false, 12);
INSERT INTO public.moon VALUES (16, 'Ariel', 37450, 578.5, false, 12);
INSERT INTO public.moon VALUES (17, 'Umbriel', 458711, 584.7, false, 12);
INSERT INTO public.moon VALUES (18, 'Titania', 65811, 788.9, false, 12);
INSERT INTO public.moon VALUES (19, 'Oberon', 48799, 761.4, false, 12);
INSERT INTO public.moon VALUES (20, 'Charon', 58746, 603.6, false, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 2440, 0.330, true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 6052, 4.87, true, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 6371, 5.97, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 3390, 0.642, true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 69911, 1898, false, 2);
INSERT INTO public.planet VALUES (6, 'Saturn', 58232, 568, false, 2);
INSERT INTO public.planet VALUES (7, 'Uranus', 25362, 86.8, false, 3);
INSERT INTO public.planet VALUES (8, 'Neptune', 24622, 102, false, 3);
INSERT INTO public.planet VALUES (9, 'Kepler-22b', 24000, 36.8, true, 4);
INSERT INTO public.planet VALUES (10, 'Kepler-62f', 7000, 2.8, true, 5);
INSERT INTO public.planet VALUES (11, 'WASP-12b', 200000, 1.4, false, 6);
INSERT INTO public.planet VALUES (12, 'HD 209458', 152064, 0.69, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 5490, 0, true, 1);
INSERT INTO public.star VALUES (2, 'Sirius A', 3500, 643, true, 3);
INSERT INTO public.star VALUES (3, 'Rigel', 12100, 860, false, 2);
INSERT INTO public.star VALUES (4, 'Polaris', 6000, 433, true, 4);
INSERT INTO public.star VALUES (5, 'Vega', 9602, 25, true, 5);
INSERT INTO public.star VALUES (6, 'Antares', 3500, 550, false, 6);


--
-- Name: earth_eath_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_eath_id_seq', 3, true);


--
-- Name: galxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planets_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planets_planet_id_seq', 12, true);


--
-- Name: stars_start_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.stars_start_id_seq', 6, true);


--
-- Name: earth earth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_name_key UNIQUE (name);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galxy_name_key UNIQUE (name);


--
-- Name: galaxy galxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_planet_id_key UNIQUE (name, planet_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planets_name_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planets_name_star_id_key UNIQUE (name, star_id);


--
-- Name: planet planets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planets_pkey PRIMARY KEY (planet_id);


--
-- Name: star stars_name_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT stars_name_galaxy_id_key UNIQUE (name, galaxy_id);


--
-- Name: star stars_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT stars_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planets_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planets_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star stars_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT stars_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--