PGDMP     &                     {            shortly    15.3    15.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24576    shortly    DATABASE     ~   CREATE DATABASE shortly WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE shortly;
                postgres    false            �            1259    24633    urls    TABLE     �   CREATE TABLE public.urls (
    id integer NOT NULL,
    url character varying NOT NULL,
    "shortUrl" character varying NOT NULL,
    "visitCount" integer DEFAULT 0 NOT NULL,
    "idCreator" integer NOT NULL
);
    DROP TABLE public.urls;
       public         heap    postgres    false            �            1259    24632    urls_id_seq    SEQUENCE     �   CREATE SEQUENCE public.urls_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.urls_id_seq;
       public          postgres    false    217                       0    0    urls_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.urls_id_seq OWNED BY public.urls.id;
          public          postgres    false    216            �            1259    24594    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    token character varying(255)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    24593    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    215                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    214            k           2604    24636    urls id    DEFAULT     b   ALTER TABLE ONLY public.urls ALTER COLUMN id SET DEFAULT nextval('public.urls_id_seq'::regclass);
 6   ALTER TABLE public.urls ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            j           2604    24597    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            p           2606    24641    urls urls_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.urls
    ADD CONSTRAINT urls_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.urls DROP CONSTRAINT urls_pkey;
       public            postgres    false    217            n           2606    24601    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    215           