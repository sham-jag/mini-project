PGDMP     1                    x            mbenz     11.10    11.10 $    :           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            ;           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            <           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            =           1262    16794    mbenz     DATABASE     �   CREATE DATABASE "mbenz " WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE "mbenz ";
             postgres    false            �            1259    16906    car_configuration    TABLE     #  CREATE TABLE public.car_configuration (
    model_id integer NOT NULL,
    engine_power_c double precision,
    car_color_c text,
    wheel_c text,
    seating_c text,
    entertainment_c text,
    sun_protect_c text,
    driving_assistance_c text,
    additional_cost_c double precision
);
 %   DROP TABLE public.car_configuration;
       public         postgres    false            �            1259    16875    car_details    TABLE     8  CREATE TABLE public.car_details (
    model_id integer NOT NULL,
    car_color text,
    wheel text,
    headlights text,
    sunroof text,
    smart_parking text,
    stereo text,
    nav_system text,
    airbags integer,
    engine_capacity integer,
    seating text,
    speakers text,
    special_ft text
);
    DROP TABLE public.car_details;
       public         postgres    false            �            1259    16862 	   car_model    TABLE     �   CREATE TABLE public.car_model (
    model_id integer NOT NULL,
    branch_id integer,
    car_type text,
    model_name text,
    price double precision,
    fuel_type text,
    gear_type text,
    seating integer,
    mileage double precision
);
    DROP TABLE public.car_model;
       public         postgres    false            �            1259    16919    car_purchase    TABLE     9  CREATE TABLE public.car_purchase (
    purchase_id integer NOT NULL,
    customer_id integer,
    model_id integer,
    price double precision,
    tax double precision,
    additional_cost double precision,
    on_road_price double precision,
    purchase_date date,
    insurance text,
    payment_mode text
);
     DROP TABLE public.car_purchase;
       public         postgres    false            �            1259    16854    company_branch    TABLE     {   CREATE TABLE public.company_branch (
    branch_id integer NOT NULL,
    address text,
    phone bigint,
    email text
);
 "   DROP TABLE public.company_branch;
       public         postgres    false            �            1259    16841    customer    TABLE     �   CREATE TABLE public.customer (
    customer_id integer NOT NULL,
    login_id integer,
    name text,
    phone bigint,
    address text
);
    DROP TABLE public.customer;
       public         postgres    false            �            1259    16833    login    TABLE     i   CREATE TABLE public.login (
    login_id integer NOT NULL,
    username text,
    login_password text
);
    DROP TABLE public.login;
       public         postgres    false            �            1259    16888 
   test_drive    TABLE     �   CREATE TABLE public.test_drive (
    testdrive_id integer NOT NULL,
    customer_id integer,
    model_id integer,
    testdrive_date date,
    feedback text
);
    DROP TABLE public.test_drive;
       public         postgres    false            6          0    16906    car_configuration 
   TABLE DATA               �   COPY public.car_configuration (model_id, engine_power_c, car_color_c, wheel_c, seating_c, entertainment_c, sun_protect_c, driving_assistance_c, additional_cost_c) FROM stdin;
    public       postgres    false    202   �-       4          0    16875    car_details 
   TABLE DATA               �   COPY public.car_details (model_id, car_color, wheel, headlights, sunroof, smart_parking, stereo, nav_system, airbags, engine_capacity, seating, speakers, special_ft) FROM stdin;
    public       postgres    false    200   �.       3          0    16862 	   car_model 
   TABLE DATA               }   COPY public.car_model (model_id, branch_id, car_type, model_name, price, fuel_type, gear_type, seating, mileage) FROM stdin;
    public       postgres    false    199   	0       7          0    16919    car_purchase 
   TABLE DATA               �   COPY public.car_purchase (purchase_id, customer_id, model_id, price, tax, additional_cost, on_road_price, purchase_date, insurance, payment_mode) FROM stdin;
    public       postgres    false    203   �0       2          0    16854    company_branch 
   TABLE DATA               J   COPY public.company_branch (branch_id, address, phone, email) FROM stdin;
    public       postgres    false    198   ~1       1          0    16841    customer 
   TABLE DATA               O   COPY public.customer (customer_id, login_id, name, phone, address) FROM stdin;
    public       postgres    false    197   #2       0          0    16833    login 
   TABLE DATA               C   COPY public.login (login_id, username, login_password) FROM stdin;
    public       postgres    false    196   �2       5          0    16888 
   test_drive 
   TABLE DATA               c   COPY public.test_drive (testdrive_id, customer_id, model_id, testdrive_date, feedback) FROM stdin;
    public       postgres    false    201   /3       �
           2606    16913 (   car_configuration car_configuration_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.car_configuration
    ADD CONSTRAINT car_configuration_pkey PRIMARY KEY (model_id);
 R   ALTER TABLE ONLY public.car_configuration DROP CONSTRAINT car_configuration_pkey;
       public         postgres    false    202            �
           2606    16882    car_details car_details_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.car_details
    ADD CONSTRAINT car_details_pkey PRIMARY KEY (model_id);
 F   ALTER TABLE ONLY public.car_details DROP CONSTRAINT car_details_pkey;
       public         postgres    false    200            �
           2606    16869    car_model car_model_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.car_model
    ADD CONSTRAINT car_model_pkey PRIMARY KEY (model_id);
 B   ALTER TABLE ONLY public.car_model DROP CONSTRAINT car_model_pkey;
       public         postgres    false    199            �
           2606    16926    car_purchase car_purchase_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.car_purchase
    ADD CONSTRAINT car_purchase_pkey PRIMARY KEY (purchase_id);
 H   ALTER TABLE ONLY public.car_purchase DROP CONSTRAINT car_purchase_pkey;
       public         postgres    false    203            �
           2606    16861 "   company_branch company_branch_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.company_branch
    ADD CONSTRAINT company_branch_pkey PRIMARY KEY (branch_id);
 L   ALTER TABLE ONLY public.company_branch DROP CONSTRAINT company_branch_pkey;
       public         postgres    false    198            �
           2606    16848    customer customer_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public         postgres    false    197            �
           2606    16840    login login_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.login
    ADD CONSTRAINT login_pkey PRIMARY KEY (login_id);
 :   ALTER TABLE ONLY public.login DROP CONSTRAINT login_pkey;
       public         postgres    false    196            �
           2606    16895    test_drive test_drive_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.test_drive
    ADD CONSTRAINT test_drive_pkey PRIMARY KEY (testdrive_id);
 D   ALTER TABLE ONLY public.test_drive DROP CONSTRAINT test_drive_pkey;
       public         postgres    false    201            �
           2606    16914 1   car_configuration car_configuration_model_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.car_configuration
    ADD CONSTRAINT car_configuration_model_id_fkey FOREIGN KEY (model_id) REFERENCES public.car_model(model_id);
 [   ALTER TABLE ONLY public.car_configuration DROP CONSTRAINT car_configuration_model_id_fkey;
       public       postgres    false    199    2726    202            �
           2606    16883 %   car_details car_details_model_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.car_details
    ADD CONSTRAINT car_details_model_id_fkey FOREIGN KEY (model_id) REFERENCES public.car_model(model_id);
 O   ALTER TABLE ONLY public.car_details DROP CONSTRAINT car_details_model_id_fkey;
       public       postgres    false    2726    199    200            �
           2606    16870 "   car_model car_model_branch_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.car_model
    ADD CONSTRAINT car_model_branch_id_fkey FOREIGN KEY (branch_id) REFERENCES public.company_branch(branch_id);
 L   ALTER TABLE ONLY public.car_model DROP CONSTRAINT car_model_branch_id_fkey;
       public       postgres    false    199    2724    198            �
           2606    16927 *   car_purchase car_purchase_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.car_purchase
    ADD CONSTRAINT car_purchase_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);
 T   ALTER TABLE ONLY public.car_purchase DROP CONSTRAINT car_purchase_customer_id_fkey;
       public       postgres    false    203    2722    197            �
           2606    16932 '   car_purchase car_purchase_model_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.car_purchase
    ADD CONSTRAINT car_purchase_model_id_fkey FOREIGN KEY (model_id) REFERENCES public.car_model(model_id);
 Q   ALTER TABLE ONLY public.car_purchase DROP CONSTRAINT car_purchase_model_id_fkey;
       public       postgres    false    2726    199    203            �
           2606    16849    customer customer_login_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_login_id_fkey FOREIGN KEY (login_id) REFERENCES public.login(login_id);
 I   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_login_id_fkey;
       public       postgres    false    197    196    2720            �
           2606    16896 &   test_drive test_drive_customer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.test_drive
    ADD CONSTRAINT test_drive_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customer(customer_id);
 P   ALTER TABLE ONLY public.test_drive DROP CONSTRAINT test_drive_customer_id_fkey;
       public       postgres    false    2722    197    201            �
           2606    16901 #   test_drive test_drive_model_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.test_drive
    ADD CONSTRAINT test_drive_model_id_fkey FOREIGN KEY (model_id) REFERENCES public.car_model(model_id);
 M   ALTER TABLE ONLY public.test_drive DROP CONSTRAINT test_drive_model_id_fkey;
       public       postgres    false    2726    201    199            6   �   x�e���0�sy�=�A<O�cq����%��s8��K�]�����u�e���%p�	fzy4K�	�w�z{U]��(� ����G1�2QD3P�8�/_�ߊG�S�E-�>a�Vpv��m�-�[��IG#�����g�&57�5�;(r�t%���vFY��|��"�Dl��17�\4�/�}���4L�      4   J  x�m�[n�0E��UpEf�_�[E�����E�TR�@��6��0��l��S�{*;F���<�X��{=��t:�bzX�I&/d��L��Y!	:������3�M�_�=m;��.j9�Jp����?y=l��ՂlQy90��W:�ܧG��xდ�+��P��xcH?A�i�j�<�<T8��_UƜK��$��8$�GdI6��D<��'f}3�&W�/Е:�Cˉi-#���{��ؽj貓e-���Z9�PW���4C�W�p3:~��s�)޸���z����gvŅ+AN��zwF?�n��V�ؙS�^�T/���i�^ُX      3   �   x�u�M�0�ur���2�*(?�W��B�u`ɼo�^4�j���O��i�9�Zɿ�}-w#7��&�|ܖ�A�A�em�m�ǡoy��lR��h�x0U���;�q�Ha"(�^����^	��c�;��[ex�B�\��mC��TL��KXO+h��y0�:��Z��1_]�z��l��XZ-���*@�xM�눈o��l�      7   �   x�m��
�0���)|�JN�N�,�`�(l���s�;W���ӏ�L©� .7.]��������=���,r0V���V�o �X9g�˔ ɀ���
����dE0���y��<$GsNɭ�k�u�#�&.�<A[���Ĳ�6y�1��<A      2   �   x�]��
� ��>�O���mgM,҂�X��}��X����F�i�L�V�Rvڀ����G�Be��U�lؼR��c�rt��>�dv<Ȏb�ɹ=m�^��kQ�C)�q�I��<��2F�6�v-J��E�m��	h݃��zߊs��R<      1   �   x�M�K� е9ENP�,�*��Dh�H��9�ش����hhl���2�3#��jHGf��WU�v�p$Yb�3C��5�	b]�-uKp�"k�%�I.Y�!�3ݙ�{���#";��}�)ӕ���\�{6�18�M�7�SJV��R�^�,o      0   U   x���
� ����Ä�QW)aU6B�S���E�~�O�6�;ـ��k��V�3`F�U�8ع�Z ��j�X�CR�f�G�E�DD?�tU      5   �   x�=�Q
� ���x�\�a����J6ʜJ�`���Kݨ�򑟜�����Y�A8v��*�YĐ�!��I7�@��ʩc��?���'���q\�x_��-�����({��<�q�����j��NCNG�l����9s��s2�|�)     