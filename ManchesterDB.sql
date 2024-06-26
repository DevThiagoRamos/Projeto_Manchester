PGDMP                      |            projeto_manchester    16.2    16.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16423    projeto_manchester    DATABASE     �   CREATE DATABASE projeto_manchester WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
 "   DROP DATABASE projeto_manchester;
                postgres    false            �            1259    16461 	   pacientes    TABLE     M  CREATE TABLE public.pacientes (
    id bigint NOT NULL,
    data_de_entrada timestamp(6) without time zone,
    data_de_saida timestamp(6) without time zone,
    idade_do_paciente integer,
    nome_do_paciente character varying(255),
    remedios_receitados character varying(255),
    sintomas_do_paciente character varying(255)
);
    DROP TABLE public.pacientes;
       public         heap    postgres    false            �            1259    16460    pacientes_id_seq    SEQUENCE     y   CREATE SEQUENCE public.pacientes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.pacientes_id_seq;
       public          postgres    false    216            �           0    0    pacientes_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.pacientes_id_seq OWNED BY public.pacientes.id;
          public          postgres    false    215            P           2604    16464    pacientes id    DEFAULT     l   ALTER TABLE ONLY public.pacientes ALTER COLUMN id SET DEFAULT nextval('public.pacientes_id_seq'::regclass);
 ;   ALTER TABLE public.pacientes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �          0    16461 	   pacientes 
   TABLE DATA           �   COPY public.pacientes (id, data_de_entrada, data_de_saida, idade_do_paciente, nome_do_paciente, remedios_receitados, sintomas_do_paciente) FROM stdin;
    public          postgres    false    216   �       �           0    0    pacientes_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.pacientes_id_seq', 4, true);
          public          postgres    false    215            R           2606    16468    pacientes pacientes_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.pacientes
    ADD CONSTRAINT pacientes_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.pacientes DROP CONSTRAINT pacientes_pkey;
       public            postgres    false    216            �   Z   x�3�4202�50�52W04�22�26���42��*�����Wp�I�,���t�+��=ܘ����X����xx����:
�yY���
\1z\\\ ���     