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
-- Name: blackhole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blackhole (
    blackhole_id integer NOT NULL,
    gravity integer,
    galaxy_id integer,
    name character varying(60) NOT NULL
);


ALTER TABLE public.blackhole OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blackhole_blackhole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blackhole_blackhole_id_seq OWNER TO freecodecamp;

--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blackhole_blackhole_id_seq OWNED BY public.blackhole.blackhole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    speed integer,
    name character varying(60) NOT NULL,
    description text NOT NULL,
    rotation_speed integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    name_code character varying(60),
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
    has_rings boolean DEFAULT false NOT NULL,
    natural_satellite numeric NOT NULL,
    population numeric,
    star_id integer NOT NULL,
    name character varying(60) NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star_stage character varying(60) NOT NULL,
    star_temperature integer NOT NULL,
    radius integer NOT NULL,
    galaxy_id integer,
    name character varying(60) NOT NULL,
    mass character varying(255) NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: blackhole blackhole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole ALTER COLUMN blackhole_id SET DEFAULT nextval('public.blackhole_blackhole_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: blackhole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.blackhole VALUES (1, 1100000000, 1, 'Sagitarius A*');
INSERT INTO public.blackhole VALUES (2, 630000000, 1, 'Cygnus X-1');
INSERT INTO public.blackhole VALUES (3, 1500000000, 1, 'V616 Monocerotis');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 10000, 'Milky Way', 'The GALAXY that includes the Solar System with the name describing the galaxy appearance from Earth', NULL);
INSERT INTO public.galaxy VALUES (2, 110000, 'Andromeda', 'Androemda Galaxy also know as Messier 31 is a barred spiral galaxy with the diameter of about 46.56 kiloparsecs ', NULL);
INSERT INTO public.galaxy VALUES (3, 378000, 'Large Magelllanic Cloud', 'Sattelite galaxy of the Milky Way At a distance of around 50 kiloparsecs the LMC is the second or third closest galaxy', NULL);
INSERT INTO public.galaxy VALUES (4, 241000, 'Pimwheel Galaxy', 'is a face-on spiral galaxy 21 milion lightyear away from Earth in the costellation ursa major', NULL);
INSERT INTO public.galaxy VALUES (5, 243000, 'Sculptor Galaxy', 'An intermediate spiral galaxy in the constellation Sculptor, These galaxy is a starbust galaxy', NULL);
INSERT INTO public.galaxy VALUES (6, 179000, 'Triangulum Galaxy', 'Spiral Galaxy 2.73 million ly from Earth in the Costellation Triangulum', NULL);
INSERT INTO public.galaxy VALUES (7, 1024000, 'Sombrero Galaxy', 'A peculiar galaxyin the constellation borders of Virgo and Corvus', NULL);
INSERT INTO public.galaxy VALUES (8, NULL, 'Whirlpool Galaxy', 'An interacting grand-design spiraal galaxy with a seyfert 2 active galacti nucleus', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Lun', true, 1);
INSERT INTO public.moon VALUES (2, 'Fobos', 'PHO', true, 3);
INSERT INTO public.moon VALUES (3, 'Daeimos', 'DEI', true, 3);
INSERT INTO public.moon VALUES (4, 'Io', 'IO', false, 4);
INSERT INTO public.moon VALUES (5, 'Europa', 'EUR', true, 3);
INSERT INTO public.moon VALUES (6, 'Ganimedes', 'GAN', true, 3);
INSERT INTO public.moon VALUES (7, 'Calisto', 'Cal', true, 3);
INSERT INTO public.moon VALUES (8, 'Amalteia', 'AMA', false, 3);
INSERT INTO public.moon VALUES (15, 'Titan', 'TIT', true, 5);
INSERT INTO public.moon VALUES (16, 'Enceladus', 'ENC', true, 5);
INSERT INTO public.moon VALUES (17, 'Jápeto', 'JAP', false, 5);
INSERT INTO public.moon VALUES (18, 'Miranda', 'MIR', true, 6);
INSERT INTO public.moon VALUES (19, 'Ariel', 'ARI', true, 6);
INSERT INTO public.moon VALUES (20, 'Titania', 'TIA', true, 6);
INSERT INTO public.moon VALUES (21, 'Tritao', 'TRI', false, 7);
INSERT INTO public.moon VALUES (22, 'Nereida', 'NER', false, 7);
INSERT INTO public.moon VALUES (23, 'Proteu', 'PRO', false, 7);
INSERT INTO public.moon VALUES (24, 'Caronte', 'CAR', false, 8);
INSERT INTO public.moon VALUES (25, 'Nix', 'NIX', false, 8);
INSERT INTO public.moon VALUES (26, 'Hidra', 'HIR', false, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, false, 1, 7888000000, 1, 'Earth');
INSERT INTO public.planet VALUES (2, false, 0, 0, 1, 'Mercury');
INSERT INTO public.planet VALUES (3, false, 2, 0, 1, 'Mars');
INSERT INTO public.planet VALUES (4, true, 72, 0, 1, 'Jupiter');
INSERT INTO public.planet VALUES (5, true, 66, 0, 1, 'Saturn');
INSERT INTO public.planet VALUES (6, true, 27, 0, 1, 'Uranus');
INSERT INTO public.planet VALUES (7, true, 14, 0, 1, 'Neptune');
INSERT INTO public.planet VALUES (8, false, 5, 0, 1, 'Pluto');
INSERT INTO public.planet VALUES (9, false, 0, 0, 1, 'Venus');
INSERT INTO public.planet VALUES (10, false, 0, 0, 2, 'Messier 31');
INSERT INTO public.planet VALUES (11, false, 0, 0, 7, 'GJ 1132');
INSERT INTO public.planet VALUES (12, false, 0, 0, 8, 'HD 106906');
INSERT INTO public.planet VALUES (13, false, 0, 0, 6, 'HD 131664');
INSERT INTO public.planet VALUES (14, false, 0, 0, 3, 'HD 10180');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Yellow Dwarf', 5778, 696340, 1, 'Sun', '1989 x 10^33kg');
INSERT INTO public.star VALUES (2, 'Blue-White', 11000, 16000042, 2, 'Alpheratz', '7,558 x 10^30kg');
INSERT INTO public.star VALUES (3, 'Red Supergiant', 6650, 208902000, 3, 'R71', '79,56 x 10^30kg');
INSERT INTO public.star VALUES (4, 'Blue-White', 16000, 4596444, 4, 'Alkaid', '19,89 x 10^30kg');
INSERT INTO public.star VALUES (5, 'Blue-White', 13000, 0, 5, 'Alpha Sculptor', 'Unknown');
INSERT INTO public.star VALUES (6, 'Red Giant', 4500, 9748760, 6, 'Alpha Trianguli', '1,5 x 10^30kg');
INSERT INTO public.star VALUES (7, 'Blue-White Giant', 22400, 4874390, 7, 'Spica', '1 x 10^31kg');
INSERT INTO public.star VALUES (8, 'Red Supergiant', 3200, 8356080, 8, 'La Superba', '7 x 10^30kg');


--
-- Name: blackhole_blackhole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blackhole_blackhole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 26, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: blackhole blackhole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_name_key UNIQUE (name);


--
-- Name: blackhole blackhole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT blackhole_pkey PRIMARY KEY (blackhole_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_code_key UNIQUE (name_code);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: blackhole fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blackhole
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

