--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    galaxy_type character varying(30) NOT NULL,
    age_in_millions_of_years numeric(12,2)
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
    name character varying(30) NOT NULL,
    description text,
    moon_type character varying(30) NOT NULL,
    age_in_millions_of_years numeric(12,2),
    distance_from_earth numeric(12,2),
    has_life boolean NOT NULL,
    planet_id integer
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
-- Name: nebula; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebula (
    nebula_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    nebula_type character varying(30) NOT NULL,
    nebula_class integer,
    galaxy_id integer
);


ALTER TABLE public.nebula OWNER TO freecodecamp;

--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nebula_nebula_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nebula_nebula_id_seq OWNER TO freecodecamp;

--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nebula_nebula_id_seq OWNED BY public.nebula.nebula_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    planet_type character varying(30) NOT NULL,
    planet_class integer,
    age_in_millions_of_years numeric(12,2),
    distance_from_earth numeric(12,2),
    has_life boolean NOT NULL,
    star_id integer
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
    name character varying(30) NOT NULL,
    description text,
    star_type character varying(30) NOT NULL,
    star_class integer,
    age_in_millions_of_years numeric(12,2),
    distance_from_earth numeric(12,2),
    galaxy_id integer
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: nebula nebula_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula ALTER COLUMN nebula_id SET DEFAULT nextval('public.nebula_nebula_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The Milky Way is the galaxy that contains our Solar System, characterized by a spiral shape.', 'Spiral', 13.51);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Andromeda is the closest spiral galaxy to the Milky Way and is on a collision course with it.', 'Spiral', 10.00);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Triangulum is a member of the Local Group and is one of the closest galaxies to the Milky Way.', 'Spiral', 12.03);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'Messier 87 is a massive elliptical galaxy known for hosting a supermassive black hole at its center.', 'Elliptical', 13.00);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy', 'The Whirlpool Galaxy is a well-known spiral galaxy, known for its distinct shape and interaction with a smaller galaxy.', 'Spiral', 11.80);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 'The Sombrero Galaxy has a bright nucleus and a large central bulge, with a faint and dusty ring around it.', 'Spiral', 9.50);
INSERT INTO public.galaxy VALUES (7, 'NGC 224', 'NGC 224, also known as Andromeda, is one of the largest galaxies in the Local Group and is rich in star formation.', 'Spiral', 14.00);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Earths natural satellite, bright and large.', 'Rocky', 4500.00, 384400.00, false, 3);
INSERT INTO public.moon VALUES (2, 'Callisto', 'Largest moon of Jupiter, covered in ice.', 'Icy', 4400.00, 628300.00, false, 5);
INSERT INTO public.moon VALUES (3, 'Ganymede', 'Jupiter s moon with its own magnetic field.', 'Icy/Rocky', 4600.00, 1070000.00, false, 5);
INSERT INTO public.moon VALUES (4, 'Titan', 'Saturn s largest moon, thick atmosphere.', 'Gaseous', 4000.00, 1200000.00, false, 6);
INSERT INTO public.moon VALUES (5, 'Enceladus', 'Saturn s moon with geysers and icy surface.', 'Icy', 1000.00, 2370000.00, false, 6);
INSERT INTO public.moon VALUES (6, 'Io', 'Volcanically active moon of Jupiter.', 'Volcanic', 1000.00, 421700.00, false, 5);
INSERT INTO public.moon VALUES (7, 'Europa', 'Icy moon of Jupiter with a subsurface ocean.', 'Icy', 4500.00, 671034.00, false, 5);
INSERT INTO public.moon VALUES (8, 'Triton', 'Neptunes largest moon, retrograde orbit.', 'Icy', 4000.00, 3547000.00, false, 8);
INSERT INTO public.moon VALUES (9, 'Miranda', 'A moon of Uranus with a fragmented surface.', 'Rocky', 3500.00, 1294000.00, false, 7);
INSERT INTO public.moon VALUES (10, 'Mimas', 'Saturns moon with a large impact crater.', 'Rocky', 4300.00, 1856000.00, false, 6);
INSERT INTO public.moon VALUES (11, 'Phobos', 'Marss moon, very close to the planet.', 'Rocky', 4000.00, 6000.00, false, 4);
INSERT INTO public.moon VALUES (12, 'Deimos', 'Smaller moon of Mars, irregular orbit.', 'Rocky', 4200.00, 23460.00, false, 4);
INSERT INTO public.moon VALUES (13, 'Rhea', 'Saturns moon with a thin atmosphere.', 'Icy/Rocky', 3300.00, 527000.00, false, 6);
INSERT INTO public.moon VALUES (14, 'Hyperion', 'Saturns moon with an irregular shape.', 'Rocky', 3700.00, 1481000.00, false, 6);
INSERT INTO public.moon VALUES (15, 'Charon', 'Plutos largest moon, rocky with icy features.', 'Rocky/Icy', 4000.00, 5906400.00, false, 9);
INSERT INTO public.moon VALUES (16, 'Oberon', 'Uranus moon with an icy surface.', 'Icy/Rocky', 3900.00, 583500.00, false, 7);
INSERT INTO public.moon VALUES (17, 'Tethys', 'Moon of Saturn, made mostly of ice.', 'Icy', 3700.00, 2946700.00, false, 6);
INSERT INTO public.moon VALUES (18, 'Dione', 'Saturns moon with craters and ice rings.', 'Icy/Rocky', 3800.00, 3774000.00, false, 6);
INSERT INTO public.moon VALUES (19, 'Ganymede II', 'An unexplored moon in the Ganymede system.', 'Rocky, Icy', 2000.00, 990000.00, false, 5);
INSERT INTO public.moon VALUES (20, 'Titan II', 'A small moon orbiting Titan, icy and distant.', 'Icy', 1000.00, 13000.00, false, 6);


--
-- Data for Name: nebula; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nebula VALUES (1, 'Orion Nebula', 'A bright emission nebula located in the Milky Way, known for its star formation.', 'Emission', 1, 1);
INSERT INTO public.nebula VALUES (2, 'Crab Nebula', 'A supernova remnant and pulsar wind nebula in the constellation Taurus.', 'Pulsar Wind', 2, 2);
INSERT INTO public.nebula VALUES (3, 'Eagle Nebula', 'A star-forming region with large pillars of gas and dust in the constellation Serpens.', 'Emission', 3, 1);
INSERT INTO public.nebula VALUES (4, 'Ring Nebula', 'A planetary nebula in the constellation Lyra, famous for its ring-like structure.', 'Planetary', 4, 3);
INSERT INTO public.nebula VALUES (5, 'Helix Nebula', 'A planetary nebula located in the constellation Aquarius, known for its large, bright appearance.', 'Planetary', 5, 4);
INSERT INTO public.nebula VALUES (6, 'Andromeda Nebula', 'A bright emission nebula located in the Andromeda Galaxy, where new stars are born.', 'Emission', 6, 5);
INSERT INTO public.nebula VALUES (7, 'Horsehead Nebula', 'A dark nebula located in the constellation Orion, resembling a horse''s head.', 'Dark', 7, 6);
INSERT INTO public.nebula VALUES (8, 'Cat''s Eye Nebula', 'A planetary nebula with complex structures, located in the constellation Draco.', 'Planetary', 8, 7);
INSERT INTO public.nebula VALUES (9, 'Dumbbell Nebula', 'A planetary nebula in the constellation Vulpecula, also known as Messier 27.', 'Planetary', 9, 2);
INSERT INTO public.nebula VALUES (10, 'Spider Nebula', 'A region with intense star formation, found in the constellation Ara.', 'Emission', 10, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Zyphos', 'A rocky planet with an iron core and a thin atmosphere.', 'Rocky', 3, 4500.00, 23.50, false, 1);
INSERT INTO public.planet VALUES (2, 'Thalor', 'A gas giant with massive storm systems and a ring of ice.', 'Gas Giant', 2, 2000.00, 150.25, false, 2);
INSERT INTO public.planet VALUES (3, 'Venara', 'A dense, hot planet with a sulfuric acid atmosphere.', 'Terrestrial', 1, 400.00, 15.75, false, 3);
INSERT INTO public.planet VALUES (4, 'Aurelia', 'A water world covered in vast oceans and scattered islands.', 'Oceanic', 4, 1000.00, 45.50, true, 4);
INSERT INTO public.planet VALUES (5, 'ExoTerra', 'A rocky planet with similar conditions to Earth, potentially habitable.', 'Rocky', 3, 500.00, 33.20, true, 5);
INSERT INTO public.planet VALUES (6, 'Volara', 'A volatile planet with a mix of lava plains and volcanic activity.', 'Terrestrial', 1, 100.00, 12.80, false, 6);
INSERT INTO public.planet VALUES (7, 'Florix', 'A small ice planet orbiting far from its star, with frozen methane lakes.', 'Icy', 2, 300.00, 270.00, false, 7);
INSERT INTO public.planet VALUES (8, 'Kryon', 'A dense gas giant with an atmosphere full of hydrogen and helium.', 'Gas Giant', 2, 600.00, 105.50, false, 8);
INSERT INTO public.planet VALUES (9, 'Erdon', 'A rocky planet with an active atmosphere and periodic dust storms.', 'Rocky', 3, 2500.00, 75.30, false, 1);
INSERT INTO public.planet VALUES (10, 'Rylor', 'A planet with large deserts, rare water, and massive canyons.', 'Desert', 3, 6000.00, 120.90, false, 2);
INSERT INTO public.planet VALUES (11, 'Nerilith', 'A planet rich in rare metals and a high gravity field.', 'Metallic', 4, 1500.00, 90.50, true, 3);
INSERT INTO public.planet VALUES (12, 'Celestia', 'A vibrant, forest-covered planet with a stable climate.', 'Terrestrial', 1, 120.00, 24.70, true, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Centauri', 'The closest star system to Earth.', 'Red Dwarf', 5, 4500.00, 4.37, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 'A red supergiant located in the constellation Orion.', 'Red Supergiant', 1, 100.00, 642.50, 2);
INSERT INTO public.star VALUES (3, 'Sirius', 'The brightest star in Earths night sky.', 'Main Sequence', 2, 200.00, 8.60, 3);
INSERT INTO public.star VALUES (4, 'Vega', 'A blue giant in the Lyra constellation.', 'Blue Giant', 3, 350.00, 25.04, 4);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 'A red dwarf and the closest star to the Sun.', 'Red Dwarf', 5, 4000.00, 4.24, 1);
INSERT INTO public.star VALUES (6, 'Antares', 'A red supergiant in the heart of the Scorpius constellation.', 'Red Supergiant', 1, 12.00, 550.00, 5);
INSERT INTO public.star VALUES (7, 'Alpha Orionis', 'Another name for Betelgeuse, a massive supergiant star.', 'Red Supergiant', 1, 10.00, 642.50, 6);
INSERT INTO public.star VALUES (8, 'Polaris', 'The current North Star located in the Ursa Minor constellation.', 'Supergiant', 1, 700.00, 433.00, 7);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nebula_nebula_id_seq', 10, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


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
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: nebula nebula_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_name_key UNIQUE (name);


--
-- Name: nebula nebula_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_pkey PRIMARY KEY (nebula_id);


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
-- Name: moon fk_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON DELETE SET NULL;


--
-- Name: nebula fk_nebula; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT fk_nebula FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON DELETE SET NULL;


--
-- Name: planet fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON DELETE SET NULL;


--
-- Name: star fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--
