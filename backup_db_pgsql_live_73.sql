PGDMP                      }            live    16.2    16.3 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    21402    live    DATABASE     p   CREATE DATABASE live WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE live;
                postgres    false                        2615    21403    fiola    SCHEMA        CREATE SCHEMA fiola;
    DROP SCHEMA fiola;
                postgres    false                        2615    21404    preman    SCHEMA        CREATE SCHEMA preman;
    DROP SCHEMA preman;
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            �           0    0    SCHEMA public    COMMENT         COMMENT ON SCHEMA public IS '';
                   postgres    false    8            �           0    0    SCHEMA public    ACL     +   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
                   postgres    false    8                        2615    21406    rfid_delivery    SCHEMA        CREATE SCHEMA rfid_delivery;
    DROP SCHEMA rfid_delivery;
                postgres    false            �            1259    21407    alerts    TABLE     T  CREATE TABLE fiola.alerts (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    nohp character varying(255),
    role character varying(255) NOT NULL,
    department bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE fiola.alerts;
       fiola         heap    postgres    false    5            �            1259    21412    alerts_id_seq    SEQUENCE     u   CREATE SEQUENCE fiola.alerts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE fiola.alerts_id_seq;
       fiola          postgres    false    5    218            �           0    0    alerts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE fiola.alerts_id_seq OWNED BY fiola.alerts.id;
          fiola          postgres    false    219            J           1259    22427    apps    TABLE       CREATE TABLE fiola.apps (
    id bigint NOT NULL,
    uuid uuid,
    name character varying(255) NOT NULL,
    url character varying(255),
    description text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE fiola.apps;
       fiola         heap    postgres    false    5            I           1259    22426    apps_id_seq    SEQUENCE     s   CREATE SEQUENCE fiola.apps_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE fiola.apps_id_seq;
       fiola          postgres    false    330    5            �           0    0    apps_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE fiola.apps_id_seq OWNED BY fiola.apps.id;
          fiola          postgres    false    329            �            1259    21413    devices    TABLE     �   CREATE TABLE fiola.devices (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    cost character varying(255),
    spesifikasi text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE fiola.devices;
       fiola         heap    postgres    false    5            �            1259    21418    devices_id_seq    SEQUENCE     v   CREATE SEQUENCE fiola.devices_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE fiola.devices_id_seq;
       fiola          postgres    false    220    5            �           0    0    devices_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE fiola.devices_id_seq OWNED BY fiola.devices.id;
          fiola          postgres    false    221            �            1259    21419    folders    TABLE     �   CREATE TABLE fiola.folders (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE fiola.folders;
       fiola         heap    postgres    false    5            �            1259    21422    folders_id_seq    SEQUENCE     v   CREATE SEQUENCE fiola.folders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE fiola.folders_id_seq;
       fiola          postgres    false    5    222            �           0    0    folders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE fiola.folders_id_seq OWNED BY fiola.folders.id;
          fiola          postgres    false    223            �            1259    21423    form_account    TABLE     �  CREATE TABLE fiola.form_account (
    id bigint NOT NULL,
    no_reg character varying(255) NOT NULL,
    budget_type character varying(20),
    form_type character varying(15),
    npk character varying(6),
    fullname character varying(60),
    department character varying(60),
    phone character varying(20),
    company character varying(60),
    expired_date date,
    ad_name character varying(60),
    is_email boolean,
    email_address character varying(80),
    purpose text,
    final_status character varying(30),
    is_manager_approve boolean,
    is_it_approve boolean,
    is_it_mgr_approve boolean,
    is_on_progress boolean,
    is_finish boolean,
    is_confirm boolean,
    manager_approval_date timestamp(0) without time zone,
    it_approval_date timestamp(0) without time zone,
    it_mgr_approval_date timestamp(0) without time zone,
    on_progress_date timestamp(0) without time zone,
    finish_date timestamp(0) without time zone,
    manager_note text,
    it_note text,
    it_mgr_note text,
    on_progress_note text,
    finish_note text,
    created_by bigint,
    created_dept bigint,
    manager_approve_by bigint,
    it_approve_by bigint,
    it_mgr_approve_by bigint,
    on_progress_by bigint,
    finish_by bigint,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    job_rank character varying(255),
    account_type character varying(255),
    ad_name_after character varying(60)
);
    DROP TABLE fiola.form_account;
       fiola         heap    postgres    false    5            �            1259    21428    form_account_id_seq    SEQUENCE     {   CREATE SEQUENCE fiola.form_account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE fiola.form_account_id_seq;
       fiola          postgres    false    5    224            �           0    0    form_account_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE fiola.form_account_id_seq OWNED BY fiola.form_account.id;
          fiola          postgres    false    225            D           1259    22159    form_akses_sistem    TABLE     a  CREATE TABLE fiola.form_akses_sistem (
    id uuid NOT NULL,
    no_reg character varying(255) NOT NULL,
    nama character varying(255),
    asal_instansi character varying(255),
    keperluan text,
    akses text,
    department_pic character varying(255),
    final_status character varying(30),
    is_manager_approve boolean,
    is_gm_approve boolean,
    is_dir_approve boolean,
    is_it_approve boolean,
    is_it_mgr_approve boolean,
    is_on_progress boolean,
    is_finish boolean,
    is_confirm boolean,
    manager_approval_date timestamp(0) without time zone,
    gm_approval_date timestamp(0) without time zone,
    dir_approval_date timestamp(0) without time zone,
    it_approval_date timestamp(0) without time zone,
    it_mgr_approval_date timestamp(0) without time zone,
    on_progress_date timestamp(0) without time zone,
    finish_date timestamp(0) without time zone,
    manager_note text,
    gm_note text,
    dir_note text,
    it_note text,
    it_mgr_note text,
    on_progress_note text,
    finish_note text,
    created_by bigint,
    created_dept bigint,
    manager_approve_by bigint,
    gm_approve_by bigint,
    dir_approve_by bigint,
    it_approve_by bigint,
    it_mgr_approve_by bigint,
    on_progress_by bigint,
    finish_by bigint,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 $   DROP TABLE fiola.form_akses_sistem;
       fiola         heap    postgres    false    5            �            1259    21429 
   form_fitur    TABLE     B  CREATE TABLE fiola.form_fitur (
    id bigint NOT NULL,
    no_reg character varying(255) NOT NULL,
    budget_type character varying(20),
    npk character varying(10),
    fullname character varying(100),
    department character varying(100),
    phone character varying(200),
    aplikasi character varying(200),
    nama_fitur character varying(200),
    lampiran character varying(200),
    kondisi_sebelum text,
    kondisi_target text,
    benefit text,
    purpose text,
    final_status character varying(30),
    is_manager_approve boolean,
    is_it_approve boolean,
    is_it_mgr_approve boolean,
    is_on_progress boolean,
    is_finish boolean,
    is_confirm boolean,
    manager_approval_date timestamp(0) without time zone,
    it_approval_date timestamp(0) without time zone,
    it_mgr_approval_date timestamp(0) without time zone,
    on_progress_date timestamp(0) without time zone,
    finish_date timestamp(0) without time zone,
    manager_note text,
    it_note text,
    it_mgr_note text,
    on_progress_note text,
    finish_note text,
    created_by bigint,
    created_dept bigint,
    manager_approve_by bigint,
    it_approve_by bigint,
    it_mgr_approve_by bigint,
    on_progress_by bigint,
    finish_by bigint,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE fiola.form_fitur;
       fiola         heap    postgres    false    5            �            1259    21434    form_fitur_id_seq    SEQUENCE     y   CREATE SEQUENCE fiola.form_fitur_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE fiola.form_fitur_id_seq;
       fiola          postgres    false    5    226            �           0    0    form_fitur_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE fiola.form_fitur_id_seq OWNED BY fiola.form_fitur.id;
          fiola          postgres    false    227            �            1259    21435    form_folder_access    TABLE     �  CREATE TABLE fiola.form_folder_access (
    id bigint NOT NULL,
    no_reg character varying(255) NOT NULL,
    purpose text,
    final_status character varying(30),
    is_manager_approve boolean,
    is_it_approve boolean,
    is_it_mgr_approve boolean,
    is_on_progress boolean,
    is_finish boolean,
    is_confirm boolean,
    manager_approval_date timestamp(0) without time zone,
    it_approval_date timestamp(0) without time zone,
    it_mgr_approval_date timestamp(0) without time zone,
    on_progress_date timestamp(0) without time zone,
    finish_date timestamp(0) without time zone,
    manager_note text,
    it_note text,
    it_mgr_note text,
    on_progress_note text,
    finish_note text,
    created_by bigint,
    created_dept bigint,
    manager_approve_by bigint,
    it_approve_by bigint,
    it_mgr_approve_by bigint,
    on_progress_by bigint,
    finish_by bigint,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 %   DROP TABLE fiola.form_folder_access;
       fiola         heap    postgres    false    5            �            1259    21440    form_folder_access_id_seq    SEQUENCE     �   CREATE SEQUENCE fiola.form_folder_access_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE fiola.form_folder_access_id_seq;
       fiola          postgres    false    5    228            �           0    0    form_folder_access_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE fiola.form_folder_access_id_seq OWNED BY fiola.form_folder_access.id;
          fiola          postgres    false    229            �            1259    21441    form_folder_access_path    TABLE       CREATE TABLE fiola.form_folder_access_path (
    id bigint NOT NULL,
    folder_access_id bigint NOT NULL,
    folder character varying(255) NOT NULL,
    subfolder character varying(255) NOT NULL,
    subsubfolder character varying(255),
    permission character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE fiola.form_folder_access_path;
       fiola         heap    postgres    false    5            �            1259    21446    form_folder_access_path_id_seq    SEQUENCE     �   CREATE SEQUENCE fiola.form_folder_access_path_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE fiola.form_folder_access_path_id_seq;
       fiola          postgres    false    230    5            �           0    0    form_folder_access_path_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE fiola.form_folder_access_path_id_seq OWNED BY fiola.form_folder_access_path.id;
          fiola          postgres    false    231            �            1259    21447    form_folder_access_user    TABLE     )  CREATE TABLE fiola.form_folder_access_user (
    id bigint NOT NULL,
    folder_access_id bigint NOT NULL,
    username character varying(255) NOT NULL,
    department character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE fiola.form_folder_access_user;
       fiola         heap    postgres    false    5            �            1259    21452    form_folder_access_user_id_seq    SEQUENCE     �   CREATE SEQUENCE fiola.form_folder_access_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE fiola.form_folder_access_user_id_seq;
       fiola          postgres    false    232    5            �           0    0    form_folder_access_user_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE fiola.form_folder_access_user_id_seq OWNED BY fiola.form_folder_access_user.id;
          fiola          postgres    false    233            �            1259    21453    form_hardware    TABLE     I  CREATE TABLE fiola.form_hardware (
    id bigint NOT NULL,
    no_reg character varying(255) NOT NULL,
    budget_type character varying(20),
    category character varying(20),
    type character varying(20),
    npk character varying(6),
    fullname character varying(100),
    department character varying(100),
    phone character varying(20),
    due_date character varying(100),
    device_before character varying(100),
    device_after character varying(100),
    purpose text,
    final_status character varying(30),
    is_manager_approve boolean,
    is_it_approve boolean,
    is_it_mgr_approve boolean,
    is_on_progress boolean,
    is_finish boolean,
    is_confirm boolean,
    manager_approval_date timestamp(0) without time zone,
    it_approval_date timestamp(0) without time zone,
    it_mgr_approval_date timestamp(0) without time zone,
    on_progress_date timestamp(0) without time zone,
    finish_date timestamp(0) without time zone,
    manager_note text,
    it_note text,
    it_mgr_note text,
    on_progress_note text,
    finish_note text,
    created_by bigint,
    created_dept bigint,
    manager_approve_by bigint,
    it_approve_by bigint,
    it_mgr_approve_by bigint,
    on_progress_by bigint,
    finish_by bigint,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE fiola.form_hardware;
       fiola         heap    postgres    false    5            �            1259    21458    form_hardware_id_seq    SEQUENCE     |   CREATE SEQUENCE fiola.form_hardware_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE fiola.form_hardware_id_seq;
       fiola          postgres    false    5    234            �           0    0    form_hardware_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE fiola.form_hardware_id_seq OWNED BY fiola.form_hardware.id;
          fiola          postgres    false    235            H           1259    22225    form_incident_report    TABLE     �  CREATE TABLE fiola.form_incident_report (
    id bigint NOT NULL,
    uuid uuid,
    no_reg character varying(255) NOT NULL,
    kategori character varying(255),
    penyebab character varying(255),
    aktual_keparahan character varying(255),
    penemu character varying(255),
    department character varying(255),
    tanggal_penemuan timestamp(0) without time zone,
    device character varying(255),
    dampak_awal text,
    kronologi text,
    dampak_luas text,
    root_cause text,
    potensi_kelemahan text,
    staff_corrective_action character varying(255),
    tanggal_mulai_corrective_action date,
    tanggal_berakhir_corrective_action date,
    corrective_action text,
    dampak_lanjutan_corrective_action text,
    kondisi_bisnis_corrective_action character varying(255),
    staff_preventive_action character varying(255),
    tanggal_mulai_preventive_action date,
    tanggal_berakhir_preventive_action date,
    preventive_action text,
    dampak_lanjutan_preventive_action text,
    kondisi_bisnis_preventive_action character varying(255),
    final_status character varying(30),
    is_manager_approve boolean,
    is_gm_approve boolean,
    is_pres_approve boolean,
    is_it_approve boolean,
    is_it_mgr_approve boolean,
    is_on_progress boolean,
    is_finish boolean,
    is_confirm boolean,
    manager_approval_date timestamp(0) without time zone,
    gm_approval_date timestamp(0) without time zone,
    pres_approval_date timestamp(0) without time zone,
    it_approval_date timestamp(0) without time zone,
    it_mgr_approval_date timestamp(0) without time zone,
    on_progress_date timestamp(0) without time zone,
    finish_date timestamp(0) without time zone,
    manager_note text,
    gm_note text,
    pres_note text,
    it_note text,
    it_mgr_note text,
    on_progress_note text,
    finish_note text,
    created_by bigint,
    created_dept bigint,
    manager_approve_by bigint,
    gm_approve_by bigint,
    pres_approve_by bigint,
    it_approve_by bigint,
    it_mgr_approve_by bigint,
    on_progress_by bigint,
    finish_by bigint,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 '   DROP TABLE fiola.form_incident_report;
       fiola         heap    postgres    false    5            G           1259    22224    form_incident_report_id_seq    SEQUENCE     �   CREATE SEQUENCE fiola.form_incident_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE fiola.form_incident_report_id_seq;
       fiola          postgres    false    328    5            �           0    0    form_incident_report_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE fiola.form_incident_report_id_seq OWNED BY fiola.form_incident_report.id;
          fiola          postgres    false    327            R           1259    22473 	   form_izin    TABLE     |  CREATE TABLE fiola.form_izin (
    id bigint NOT NULL,
    uuid uuid,
    no_reg character varying(255) NOT NULL,
    lokasi character varying(255) NOT NULL,
    date_access_start timestamp(0) without time zone,
    date_access_end timestamp(0) without time zone,
    purpose text,
    final_status character varying(30),
    is_manager_approve boolean,
    is_it_approve boolean,
    is_it_mgr_approve boolean,
    is_on_progress boolean,
    is_finish boolean,
    is_confirm boolean,
    manager_approval_date timestamp(0) without time zone,
    it_approval_date timestamp(0) without time zone,
    it_mgr_approval_date timestamp(0) without time zone,
    on_progress_date timestamp(0) without time zone,
    finish_date timestamp(0) without time zone,
    manager_note text,
    it_note text,
    it_mgr_note text,
    on_progress_note text,
    finish_note text,
    created_by bigint,
    created_dept bigint,
    manager_approve_by bigint,
    it_approve_by bigint,
    it_mgr_approve_by bigint,
    on_progress_by bigint,
    finish_by bigint,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE fiola.form_izin;
       fiola         heap    postgres    false    5            V           1259    22498    form_izin_barang    TABLE     �  CREATE TABLE fiola.form_izin_barang (
    id bigint NOT NULL,
    izin_id bigint NOT NULL,
    nama_barang character varying(255) NOT NULL,
    no_device character varying(255) NOT NULL,
    merk character varying(255) NOT NULL,
    jumlah character varying(255) NOT NULL,
    satuan character varying(255) NOT NULL,
    keterangan character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 #   DROP TABLE fiola.form_izin_barang;
       fiola         heap    postgres    false    5            U           1259    22497    form_izin_barang_id_seq    SEQUENCE        CREATE SEQUENCE fiola.form_izin_barang_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE fiola.form_izin_barang_id_seq;
       fiola          postgres    false    5    342            �           0    0    form_izin_barang_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE fiola.form_izin_barang_id_seq OWNED BY fiola.form_izin_barang.id;
          fiola          postgres    false    341            Q           1259    22472    form_izin_id_seq    SEQUENCE     x   CREATE SEQUENCE fiola.form_izin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE fiola.form_izin_id_seq;
       fiola          postgres    false    5    338            �           0    0    form_izin_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE fiola.form_izin_id_seq OWNED BY fiola.form_izin.id;
          fiola          postgres    false    337            T           1259    22484    form_izin_user    TABLE     l  CREATE TABLE fiola.form_izin_user (
    id bigint NOT NULL,
    izin_id bigint NOT NULL,
    npk character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    asal_perusahaan character varying(255) NOT NULL,
    no_hp character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 !   DROP TABLE fiola.form_izin_user;
       fiola         heap    postgres    false    5            S           1259    22483    form_izin_user_id_seq    SEQUENCE     }   CREATE SEQUENCE fiola.form_izin_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE fiola.form_izin_user_id_seq;
       fiola          postgres    false    5    340            �           0    0    form_izin_user_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE fiola.form_izin_user_id_seq OWNED BY fiola.form_izin_user.id;
          fiola          postgres    false    339            �            1259    21459    form_network    TABLE       CREATE TABLE fiola.form_network (
    id bigint NOT NULL,
    no_reg character varying(255) NOT NULL,
    project_name character varying(255),
    date_access_start timestamp(0) without time zone,
    date_access_end timestamp(0) without time zone,
    rack character varying(255),
    device character varying(255),
    down_time character varying(255),
    lampiran character varying(255),
    detail text,
    purpose text,
    final_status character varying(30),
    is_manager_approve boolean,
    is_it_approve boolean,
    is_it_mgr_approve boolean,
    is_on_progress boolean,
    is_finish boolean,
    is_confirm boolean,
    manager_approval_date timestamp(0) without time zone,
    it_approval_date timestamp(0) without time zone,
    it_mgr_approval_date timestamp(0) without time zone,
    on_progress_date timestamp(0) without time zone,
    finish_date timestamp(0) without time zone,
    manager_note text,
    it_note text,
    it_mgr_note text,
    on_progress_note text,
    finish_note text,
    created_by bigint,
    created_dept bigint,
    manager_approve_by bigint,
    it_approve_by bigint,
    it_mgr_approve_by bigint,
    on_progress_by bigint,
    finish_by bigint,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE fiola.form_network;
       fiola         heap    postgres    false    5            �            1259    21464    form_network_id_seq    SEQUENCE     {   CREATE SEQUENCE fiola.form_network_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE fiola.form_network_id_seq;
       fiola          postgres    false    5    236            �           0    0    form_network_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE fiola.form_network_id_seq OWNED BY fiola.form_network.id;
          fiola          postgres    false    237            �            1259    21465    form_new_folder    TABLE     �  CREATE TABLE fiola.form_new_folder (
    id bigint NOT NULL,
    no_reg character varying(255) NOT NULL,
    purpose text,
    final_status character varying(30),
    is_manager_approve boolean,
    is_it_approve boolean,
    is_it_mgr_approve boolean,
    is_on_progress boolean,
    is_finish boolean,
    is_confirm boolean,
    manager_approval_date timestamp(0) without time zone,
    it_approval_date timestamp(0) without time zone,
    it_mgr_approval_date timestamp(0) without time zone,
    on_progress_date timestamp(0) without time zone,
    finish_date timestamp(0) without time zone,
    manager_note text,
    it_note text,
    it_mgr_note text,
    on_progress_note text,
    finish_note text,
    created_by bigint,
    created_dept bigint,
    manager_approve_by bigint,
    it_approve_by bigint,
    it_mgr_approve_by bigint,
    on_progress_by bigint,
    finish_by bigint,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 "   DROP TABLE fiola.form_new_folder;
       fiola         heap    postgres    false    5            �            1259    21470    form_new_folder_id_seq    SEQUENCE     ~   CREATE SEQUENCE fiola.form_new_folder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE fiola.form_new_folder_id_seq;
       fiola          postgres    false    5    238            �           0    0    form_new_folder_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE fiola.form_new_folder_id_seq OWNED BY fiola.form_new_folder.id;
          fiola          postgres    false    239            �            1259    21471    form_new_folder_path    TABLE     #  CREATE TABLE fiola.form_new_folder_path (
    id bigint NOT NULL,
    new_folder_id bigint NOT NULL,
    foldername character varying(255) NOT NULL,
    mainpath character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 '   DROP TABLE fiola.form_new_folder_path;
       fiola         heap    postgres    false    5            �            1259    21476    form_new_folder_path_id_seq    SEQUENCE     �   CREATE SEQUENCE fiola.form_new_folder_path_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE fiola.form_new_folder_path_id_seq;
       fiola          postgres    false    5    240            �           0    0    form_new_folder_path_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE fiola.form_new_folder_path_id_seq OWNED BY fiola.form_new_folder_path.id;
          fiola          postgres    false    241            �            1259    21477    form_new_folder_user    TABLE     S  CREATE TABLE fiola.form_new_folder_user (
    id bigint NOT NULL,
    new_folder_id bigint NOT NULL,
    username character varying(255) NOT NULL,
    department character varying(255) NOT NULL,
    permission character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 '   DROP TABLE fiola.form_new_folder_user;
       fiola         heap    postgres    false    5            �            1259    21482    form_new_folder_user_id_seq    SEQUENCE     �   CREATE SEQUENCE fiola.form_new_folder_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE fiola.form_new_folder_user_id_seq;
       fiola          postgres    false    5    242            �           0    0    form_new_folder_user_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE fiola.form_new_folder_user_id_seq OWNED BY fiola.form_new_folder_user.id;
          fiola          postgres    false    243            �            1259    21483    form_project    TABLE     ?  CREATE TABLE fiola.form_project (
    id bigint NOT NULL,
    no_reg character varying(255) NOT NULL,
    budget_type character varying(20),
    npk character varying(10),
    fullname character varying(100),
    department character varying(100),
    phone character varying(200),
    nama_project character varying(200),
    lampiran character varying(200),
    kondisi_sebelum text,
    kondisi_target text,
    benefit text,
    alat text,
    cost text,
    purpose text,
    final_status character varying(30),
    is_manager_approve boolean,
    is_it_approve boolean,
    is_it_mgr_approve boolean,
    is_on_progress boolean,
    is_finish boolean,
    is_confirm boolean,
    manager_approval_date timestamp(0) without time zone,
    it_approval_date timestamp(0) without time zone,
    it_mgr_approval_date timestamp(0) without time zone,
    on_progress_date timestamp(0) without time zone,
    finish_date timestamp(0) without time zone,
    manager_note text,
    it_note text,
    it_mgr_note text,
    on_progress_note text,
    finish_note text,
    created_by bigint,
    created_dept bigint,
    manager_approve_by bigint,
    it_approve_by bigint,
    it_mgr_approve_by bigint,
    on_progress_by bigint,
    finish_by bigint,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE fiola.form_project;
       fiola         heap    postgres    false    5            �            1259    21488    form_project_id_seq    SEQUENCE     {   CREATE SEQUENCE fiola.form_project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE fiola.form_project_id_seq;
       fiola          postgres    false    244    5            �           0    0    form_project_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE fiola.form_project_id_seq OWNED BY fiola.form_project.id;
          fiola          postgres    false    245            �            1259    21489    form_relayout    TABLE     �  CREATE TABLE fiola.form_relayout (
    id uuid NOT NULL,
    no_reg character varying(255) NOT NULL,
    budget_type character varying(20),
    request_type character varying(50),
    project_name character varying(255),
    date_finish_plan date,
    location character varying(255),
    relayout_type character varying(255),
    description text,
    lampiran character varying(255),
    purpose text,
    final_status character varying(30),
    is_manager_approve boolean,
    is_it_approve boolean,
    is_it_mgr_approve boolean,
    is_on_progress boolean,
    is_finish boolean,
    is_confirm boolean,
    manager_approval_date timestamp(0) without time zone,
    it_approval_date timestamp(0) without time zone,
    it_mgr_approval_date timestamp(0) without time zone,
    on_progress_date timestamp(0) without time zone,
    finish_date timestamp(0) without time zone,
    manager_note text,
    it_note text,
    it_mgr_note text,
    on_progress_note text,
    finish_note text,
    created_by bigint,
    created_dept bigint,
    manager_approve_by bigint,
    it_approve_by bigint,
    it_mgr_approve_by bigint,
    on_progress_by bigint,
    finish_by bigint,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE fiola.form_relayout;
       fiola         heap    postgres    false    5            L           1259    22436    form_sistem    TABLE     �  CREATE TABLE fiola.form_sistem (
    id bigint NOT NULL,
    uuid uuid,
    no_reg character varying(255) NOT NULL,
    purpose text,
    final_status character varying(30),
    is_manager_approve boolean,
    is_it_approve boolean,
    is_it_mgr_approve boolean,
    is_on_progress boolean,
    is_finish boolean,
    is_confirm boolean,
    manager_approval_date timestamp(0) without time zone,
    it_approval_date timestamp(0) without time zone,
    it_mgr_approval_date timestamp(0) without time zone,
    on_progress_date timestamp(0) without time zone,
    finish_date timestamp(0) without time zone,
    manager_note text,
    it_note text,
    it_mgr_note text,
    on_progress_note text,
    finish_note text,
    created_by bigint,
    created_dept bigint,
    manager_approve_by bigint,
    it_approve_by bigint,
    it_mgr_approve_by bigint,
    on_progress_by bigint,
    finish_by bigint,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE fiola.form_sistem;
       fiola         heap    postgres    false    5            P           1259    22461    form_sistem_app    TABLE     �   CREATE TABLE fiola.form_sistem_app (
    id bigint NOT NULL,
    sistem_id bigint NOT NULL,
    app_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 "   DROP TABLE fiola.form_sistem_app;
       fiola         heap    postgres    false    5            O           1259    22460    form_sistem_app_id_seq    SEQUENCE     ~   CREATE SEQUENCE fiola.form_sistem_app_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE fiola.form_sistem_app_id_seq;
       fiola          postgres    false    5    336            �           0    0    form_sistem_app_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE fiola.form_sistem_app_id_seq OWNED BY fiola.form_sistem_app.id;
          fiola          postgres    false    335            K           1259    22435    form_sistem_id_seq    SEQUENCE     z   CREATE SEQUENCE fiola.form_sistem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE fiola.form_sistem_id_seq;
       fiola          postgres    false    5    332            �           0    0    form_sistem_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE fiola.form_sistem_id_seq OWNED BY fiola.form_sistem.id;
          fiola          postgres    false    331            N           1259    22447    form_sistem_user    TABLE     b  CREATE TABLE fiola.form_sistem_user (
    id bigint NOT NULL,
    sistem_id bigint NOT NULL,
    npk character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255),
    department character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 #   DROP TABLE fiola.form_sistem_user;
       fiola         heap    postgres    false    5            M           1259    22446    form_sistem_user_id_seq    SEQUENCE        CREATE SEQUENCE fiola.form_sistem_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE fiola.form_sistem_user_id_seq;
       fiola          postgres    false    334    5            �           0    0    form_sistem_user_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE fiola.form_sistem_user_id_seq OWNED BY fiola.form_sistem_user.id;
          fiola          postgres    false    333            �            1259    21494    form_software    TABLE     �  CREATE TABLE fiola.form_software (
    id bigint NOT NULL,
    no_reg character varying(255) NOT NULL,
    type character varying(20) DEFAULT NULL::character varying,
    category character varying(20),
    appname character varying(100),
    installon character varying(100),
    detail text,
    purpose text,
    final_status character varying(30),
    is_manager_approve boolean,
    is_it_approve boolean,
    is_it_mgr_approve boolean,
    is_on_progress boolean,
    is_finish boolean,
    is_confirm boolean,
    manager_approval_date timestamp(0) without time zone,
    it_approval_date timestamp(0) without time zone,
    it_mgr_approval_date timestamp(0) without time zone,
    on_progress_date timestamp(0) without time zone,
    finish_date timestamp(0) without time zone,
    manager_note text,
    it_note text,
    it_mgr_note text,
    on_progress_note text,
    finish_note text,
    created_by bigint,
    created_dept bigint,
    manager_approve_by bigint,
    it_approve_by bigint,
    it_mgr_approve_by bigint,
    on_progress_by bigint,
    finish_by bigint,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE fiola.form_software;
       fiola         heap    postgres    false    5            �            1259    21500    form_software_id_seq    SEQUENCE     |   CREATE SEQUENCE fiola.form_software_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE fiola.form_software_id_seq;
       fiola          postgres    false    5    247            �           0    0    form_software_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE fiola.form_software_id_seq OWNED BY fiola.form_software.id;
          fiola          postgres    false    248            �            1259    21501    form_vpn    TABLE     �  CREATE TABLE fiola.form_vpn (
    id bigint NOT NULL,
    no_reg character varying(255) NOT NULL,
    npk character varying(6),
    fullname character varying(100),
    department character varying(100),
    phone character varying(20),
    email character varying(100),
    username character varying(100),
    purpose text,
    final_status character varying(30),
    is_manager_approve boolean,
    is_it_approve boolean,
    is_it_mgr_approve boolean,
    is_on_progress boolean,
    is_finish boolean,
    is_confirm boolean,
    manager_approval_date timestamp(0) without time zone,
    it_approval_date timestamp(0) without time zone,
    it_mgr_approval_date timestamp(0) without time zone,
    on_progress_date timestamp(0) without time zone,
    finish_date timestamp(0) without time zone,
    manager_note text,
    it_note text,
    it_mgr_note text,
    on_progress_note text,
    finish_note text,
    created_by bigint,
    created_dept bigint,
    manager_approve_by bigint,
    it_approve_by bigint,
    it_mgr_approve_by bigint,
    on_progress_by bigint,
    finish_by bigint,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE fiola.form_vpn;
       fiola         heap    postgres    false    5            �            1259    21506    form_vpn_id_seq    SEQUENCE     w   CREATE SEQUENCE fiola.form_vpn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE fiola.form_vpn_id_seq;
       fiola          postgres    false    5    249            �           0    0    form_vpn_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE fiola.form_vpn_id_seq OWNED BY fiola.form_vpn.id;
          fiola          postgres    false    250            F           1259    22188    guides    TABLE        CREATE TABLE fiola.guides (
    id bigint NOT NULL,
    uuid uuid,
    form_name character varying(255) NOT NULL,
    lampiran character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE fiola.guides;
       fiola         heap    postgres    false    5            E           1259    22187    guides_id_seq    SEQUENCE     u   CREATE SEQUENCE fiola.guides_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE fiola.guides_id_seq;
       fiola          postgres    false    5    326            �           0    0    guides_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE fiola.guides_id_seq OWNED BY fiola.guides.id;
          fiola          postgres    false    325            �            1259    21507 
   migrations    TABLE     �   CREATE TABLE fiola.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE fiola.migrations;
       fiola         heap    postgres    false    5            �            1259    21510    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE fiola.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE fiola.migrations_id_seq;
       fiola          postgres    false    251    5            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE fiola.migrations_id_seq OWNED BY fiola.migrations.id;
          fiola          postgres    false    252            �            1259    21511 	   reminders    TABLE     �   CREATE TABLE fiola.reminders (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    department_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE fiola.reminders;
       fiola         heap    postgres    false    5            �            1259    21514    reminders_id_seq    SEQUENCE     x   CREATE SEQUENCE fiola.reminders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE fiola.reminders_id_seq;
       fiola          postgres    false    5    253            �           0    0    reminders_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE fiola.reminders_id_seq OWNED BY fiola.reminders.id;
          fiola          postgres    false    254            �            1259    21515 
   subfolders    TABLE     �   CREATE TABLE fiola.subfolders (
    id bigint NOT NULL,
    folder_id bigint NOT NULL,
    name character varying(100) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE fiola.subfolders;
       fiola         heap    postgres    false    5                        1259    21518    subfolders_id_seq    SEQUENCE     y   CREATE SEQUENCE fiola.subfolders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE fiola.subfolders_id_seq;
       fiola          postgres    false    255    5            �           0    0    subfolders_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE fiola.subfolders_id_seq OWNED BY fiola.subfolders.id;
          fiola          postgres    false    256                       1259    21519    supports    TABLE     a  CREATE TABLE fiola.supports (
    id uuid NOT NULL,
    name character varying(255) NOT NULL,
    nohp character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    shift character varying(255) NOT NULL,
    status character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE fiola.supports;
       fiola         heap    postgres    false    5                       1259    21524    ticket_photos    TABLE     �   CREATE TABLE fiola.ticket_photos (
    id uuid NOT NULL,
    ticket_id character varying(255) NOT NULL,
    path character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE fiola.ticket_photos;
       fiola         heap    postgres    false    5                       1259    21529    tickets    TABLE       CREATE TABLE fiola.tickets (
    id uuid NOT NULL,
    no_reg character varying(255) NOT NULL,
    detail_case character varying(255),
    category character varying(255),
    location character varying(255),
    sla character varying(255),
    solution character varying(255),
    requestor_name character varying(255) NOT NULL,
    requestor_phone character varying(255) NOT NULL,
    requestor_department character varying(255) NOT NULL,
    final_status character varying(30),
    is_it_approve boolean,
    is_on_progress boolean,
    is_finish boolean,
    is_confirm boolean,
    it_approval_date timestamp(0) without time zone,
    on_progress_date timestamp(0) without time zone,
    finish_date timestamp(0) without time zone,
    it_note text,
    on_progress_note text,
    finish_note text,
    it_approve_by bigint,
    on_progress_by bigint,
    finish_by bigint,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    review character varying(255),
    comment character varying(255)
);
    DROP TABLE fiola.tickets;
       fiola         heap    postgres    false    5                       1259    21534    alert    TABLE       CREATE TABLE preman.alert (
    id bigint NOT NULL,
    total_alert character varying(255) NOT NULL,
    date_alert character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    preventive_id character varying(15)
);
    DROP TABLE preman.alert;
       preman         heap    postgres    false    6                       1259    21539    alert_id_seq    SEQUENCE     u   CREATE SEQUENCE preman.alert_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE preman.alert_id_seq;
       preman          postgres    false    6    260            �           0    0    alert_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE preman.alert_id_seq OWNED BY preman.alert.id;
          preman          postgres    false    261                       1259    21540 
   checksheet    TABLE     @  CREATE TABLE preman.checksheet (
    id bigint NOT NULL,
    title character varying(50) NOT NULL,
    form_number character varying(50),
    line_id integer NOT NULL,
    machine_id integer NOT NULL,
    is_delete boolean,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE preman.checksheet;
       preman         heap    postgres    false    6                       1259    21543    checksheet_id_seq    SEQUENCE     z   CREATE SEQUENCE preman.checksheet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE preman.checksheet_id_seq;
       preman          postgres    false    6    262            �           0    0    checksheet_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE preman.checksheet_id_seq OWNED BY preman.checksheet.id;
          preman          postgres    false    263                       1259    21544 	   dashboard    TABLE     j  CREATE TABLE preman.dashboard (
    id bigint NOT NULL,
    plan_mo1 integer DEFAULT 0,
    plan_mo2 integer DEFAULT 0,
    plan_mo3 integer DEFAULT 0,
    plan_mo4 integer DEFAULT 0,
    plan_mo5 integer DEFAULT 0,
    plan_mo6 integer DEFAULT 0,
    plan_mo7 integer DEFAULT 0,
    plan_mo8 integer DEFAULT 0,
    plan_mo9 integer DEFAULT 0,
    plan_mo10 integer DEFAULT 0,
    plan_mo11 integer DEFAULT 0,
    plan_mo12 integer DEFAULT 0,
    checksheet_id integer,
    item_id integer,
    year character varying(4),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE preman.dashboard;
       preman         heap    postgres    false    6            	           1259    21559    dashboard_id_seq    SEQUENCE     y   CREATE SEQUENCE preman.dashboard_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE preman.dashboard_id_seq;
       preman          postgres    false    6    264            �           0    0    dashboard_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE preman.dashboard_id_seq OWNED BY preman.dashboard.id;
          preman          postgres    false    265            
           1259    21560 	   execution    TABLE     �  CREATE TABLE preman.execution (
    id bigint NOT NULL,
    machine_id integer NOT NULL,
    checksheet_id integer NOT NULL,
    item_id integer NOT NULL,
    standart_condition character varying(150),
    actual_condition character varying(150),
    actual_value numeric(8,2),
    plan_date date NOT NULL,
    mp integer,
    "time" character varying(100),
    mh numeric(10,2),
    cost double precision,
    status character varying(50),
    keterangan character varying(255),
    alasan character varying(255),
    actual_date date,
    actual_time_start time(0) without time zone,
    actual_time_end time(0) without time zone,
    actual_total_time character varying(255),
    corrective_action character varying(255),
    photo character varying(255),
    user_id integer,
    approved_id integer,
    is_delete boolean,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    is_confirm integer,
    generation_log_id integer,
    preventive_id integer
);
    DROP TABLE preman.execution;
       preman         heap    postgres    false    6                       1259    21565    execution_id_seq    SEQUENCE     y   CREATE SEQUENCE preman.execution_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE preman.execution_id_seq;
       preman          postgres    false    266    6            �           0    0    execution_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE preman.execution_id_seq OWNED BY preman.execution.id;
          preman          postgres    false    267                       1259    21566    finding    TABLE     $  CREATE TABLE preman.finding (
    id bigint NOT NULL,
    checksheet_id integer NOT NULL,
    item_id integer NOT NULL,
    execution_id integer NOT NULL,
    corrective_action character varying(150),
    corrective_actual_date date,
    improvement_action character varying(150),
    improvement_plan_date date,
    improvement_actual_date date,
    execution_date date,
    user_id integer,
    status character varying(10),
    approved_by integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE preman.finding;
       preman         heap    postgres    false    6                       1259    21569    finding_id_seq    SEQUENCE     w   CREATE SEQUENCE preman.finding_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE preman.finding_id_seq;
       preman          postgres    false    6    268            �           0    0    finding_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE preman.finding_id_seq OWNED BY preman.finding.id;
          preman          postgres    false    269                       1259    21570    generation_log    TABLE       CREATE TABLE preman.generation_log (
    id bigint NOT NULL,
    checksheet_id integer NOT NULL,
    year character varying(4) NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 "   DROP TABLE preman.generation_log;
       preman         heap    postgres    false    6                       1259    21573    generation_log_id_seq    SEQUENCE     ~   CREATE SEQUENCE preman.generation_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE preman.generation_log_id_seq;
       preman          postgres    false    6    270            �           0    0    generation_log_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE preman.generation_log_id_seq OWNED BY preman.generation_log.id;
          preman          postgres    false    271                       1259    21574    items    TABLE     �  CREATE TABLE preman.items (
    id bigint NOT NULL,
    checksheet_id integer,
    device character varying(150) NOT NULL,
    item_check character varying(150) NOT NULL,
    standart_condition character varying(200),
    metode character varying(150) NOT NULL,
    periode integer NOT NULL,
    start_periode date NOT NULL,
    source character varying(20) NOT NULL,
    mp integer,
    "time" character varying(100),
    mh numeric(10,2),
    cost double precision,
    last_check date,
    wis character varying(255),
    is_delete boolean,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE preman.items;
       preman         heap    postgres    false    6                       1259    21579    items_id_seq    SEQUENCE     u   CREATE SEQUENCE preman.items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE preman.items_id_seq;
       preman          postgres    false    6    272            �           0    0    items_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE preman.items_id_seq OWNED BY preman.items.id;
          preman          postgres    false    273                       1259    21580    line    TABLE     �   CREATE TABLE preman.line (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE preman.line;
       preman         heap    postgres    false    6                       1259    21583    line_id_seq    SEQUENCE     t   CREATE SEQUENCE preman.line_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE preman.line_id_seq;
       preman          postgres    false    274    6            �           0    0    line_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE preman.line_id_seq OWNED BY preman.line.id;
          preman          postgres    false    275                       1259    21584    machine    TABLE     ^  CREATE TABLE preman.machine (
    id bigint NOT NULL,
    line_id integer NOT NULL,
    machine_name character varying(100) NOT NULL,
    machine_process character varying(100) NOT NULL,
    machine_number character varying(100) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    plan_time_3 character varying(5),
    plan_time_6 character varying(5),
    plan_time_12 character varying(5),
    plan_time_24 character varying(5),
    plan_time_36 character varying(5),
    plan_time_60 character varying(5),
    plan_time_72 character varying(5)
);
    DROP TABLE preman.machine;
       preman         heap    postgres    false    6                       1259    21587    machine_id_seq    SEQUENCE     w   CREATE SEQUENCE preman.machine_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE preman.machine_id_seq;
       preman          postgres    false    276    6            �           0    0    machine_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE preman.machine_id_seq OWNED BY preman.machine.id;
          preman          postgres    false    277                       1259    21588    photos    TABLE     �   CREATE TABLE preman.photos (
    id bigint NOT NULL,
    execution_id bigint NOT NULL,
    path character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE preman.photos;
       preman         heap    postgres    false    6                       1259    21591    photos_id_seq    SEQUENCE     v   CREATE SEQUENCE preman.photos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE preman.photos_id_seq;
       preman          postgres    false    278    6            �           0    0    photos_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE preman.photos_id_seq OWNED BY preman.photos.id;
          preman          postgres    false    279                       1259    21592    departments    TABLE       CREATE TABLE public.departments (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    code character varying(100) NOT NULL,
    division_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.departments;
       public         heap    postgres    false    8                       1259    21595    departments_id_seq    SEQUENCE     {   CREATE SEQUENCE public.departments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.departments_id_seq;
       public          postgres    false    8    280            �           0    0    departments_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.departments_id_seq OWNED BY public.departments.id;
          public          postgres    false    281                       1259    21596 	   divisions    TABLE     �   CREATE TABLE public.divisions (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    code character varying(10) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.divisions;
       public         heap    postgres    false    8                       1259    21599    divisions_id_seq    SEQUENCE     y   CREATE SEQUENCE public.divisions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.divisions_id_seq;
       public          postgres    false    282    8            �           0    0    divisions_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.divisions_id_seq OWNED BY public.divisions.id;
          public          postgres    false    283                       1259    21600    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    postgres    false    8                       1259    21606    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    284    8                        0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    285                       1259    21607 	   job_ranks    TABLE     �   CREATE TABLE public.job_ranks (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    code character varying(10) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.job_ranks;
       public         heap    postgres    false    8                       1259    21610    job_ranks_id_seq    SEQUENCE     y   CREATE SEQUENCE public.job_ranks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.job_ranks_id_seq;
       public          postgres    false    286    8                       0    0    job_ranks_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.job_ranks_id_seq OWNED BY public.job_ranks.id;
          public          postgres    false    287                        1259    21611    lines    TABLE       CREATE TABLE public.lines (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    code character varying(10) NOT NULL,
    process_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.lines;
       public         heap    postgres    false    8            !           1259    21614    lines_id_seq    SEQUENCE     u   CREATE SEQUENCE public.lines_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.lines_id_seq;
       public          postgres    false    288    8                       0    0    lines_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.lines_id_seq OWNED BY public.lines.id;
          public          postgres    false    289            "           1259    21615    machines    TABLE     
  CREATE TABLE public.machines (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    number character varying(100) NOT NULL,
    line_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.machines;
       public         heap    postgres    false    8            #           1259    21618    machines_id_seq    SEQUENCE     x   CREATE SEQUENCE public.machines_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.machines_id_seq;
       public          postgres    false    8    290                       0    0    machines_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.machines_id_seq OWNED BY public.machines.id;
          public          postgres    false    291            $           1259    21619 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false    8            %           1259    21622    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    8    292                       0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    293            &           1259    21623    model_has_departments    TABLE     o   CREATE TABLE public.model_has_departments (
    model_id bigint NOT NULL,
    department_id bigint NOT NULL
);
 )   DROP TABLE public.model_has_departments;
       public         heap    postgres    false    8            '           1259    21626    model_has_divisions    TABLE     k   CREATE TABLE public.model_has_divisions (
    model_id bigint NOT NULL,
    division_id bigint NOT NULL
);
 '   DROP TABLE public.model_has_divisions;
       public         heap    postgres    false    8            (           1259    21629    model_has_job_ranks    TABLE     k   CREATE TABLE public.model_has_job_ranks (
    model_id bigint NOT NULL,
    job_rank_id bigint NOT NULL
);
 '   DROP TABLE public.model_has_job_ranks;
       public         heap    postgres    false    8            )           1259    21632    model_has_permissions    TABLE     �   CREATE TABLE public.model_has_permissions (
    permission_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);
 )   DROP TABLE public.model_has_permissions;
       public         heap    postgres    false    8            *           1259    21635    model_has_roles    TABLE     �   CREATE TABLE public.model_has_roles (
    role_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);
 #   DROP TABLE public.model_has_roles;
       public         heap    postgres    false    8            +           1259    21638    model_has_sections    TABLE     i   CREATE TABLE public.model_has_sections (
    model_id bigint NOT NULL,
    section_id bigint NOT NULL
);
 &   DROP TABLE public.model_has_sections;
       public         heap    postgres    false    8            ,           1259    21641    password_reset_tokens    TABLE     �   CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 )   DROP TABLE public.password_reset_tokens;
       public         heap    postgres    false    8            -           1259    21646    permissions    TABLE     �   CREATE TABLE public.permissions (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.permissions;
       public         heap    postgres    false    8            .           1259    21651    permissions_id_seq    SEQUENCE     {   CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.permissions_id_seq;
       public          postgres    false    8    301                       0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
          public          postgres    false    302            /           1259    21652    personal_access_tokens    TABLE     �  CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.personal_access_tokens;
       public         heap    postgres    false    8            0           1259    21657    personal_access_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.personal_access_tokens_id_seq;
       public          postgres    false    303    8                       0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;
          public          postgres    false    304            1           1259    21658 	   processes    TABLE     �   CREATE TABLE public.processes (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    code character varying(10) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.processes;
       public         heap    postgres    false    8            2           1259    21661    processes_id_seq    SEQUENCE     y   CREATE SEQUENCE public.processes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.processes_id_seq;
       public          postgres    false    8    305                       0    0    processes_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.processes_id_seq OWNED BY public.processes.id;
          public          postgres    false    306            3           1259    21662    role_has_permissions    TABLE     m   CREATE TABLE public.role_has_permissions (
    permission_id bigint NOT NULL,
    role_id bigint NOT NULL
);
 (   DROP TABLE public.role_has_permissions;
       public         heap    postgres    false    8            4           1259    21665    roles    TABLE     �   CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.roles;
       public         heap    postgres    false    8            5           1259    21670    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    8    308                       0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    309            6           1259    21671    sections    TABLE     �   CREATE TABLE public.sections (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    department_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.sections;
       public         heap    postgres    false    8            7           1259    21674    sections_id_seq    SEQUENCE     x   CREATE SEQUENCE public.sections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.sections_id_seq;
       public          postgres    false    8    310            	           0    0    sections_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.sections_id_seq OWNED BY public.sections.id;
          public          postgres    false    311            8           1259    21675    users    TABLE     3  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255),
    npk character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    nohp character varying,
    company character varying(255) DEFAULT 'AIIA'::character varying NOT NULL,
    last_online timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false    8            9           1259    21681    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    312    8            
           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    313            :           1259    21725 
   deliveries    TABLE     G  CREATE TABLE rfid_delivery.deliveries (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    destinasi_id bigint NOT NULL,
    destinasi character varying(50) NOT NULL,
    dock character varying(50) NOT NULL,
    cycle character varying(2) NOT NULL,
    logistic character varying(50) NOT NULL,
    start timestamp(0) without time zone NOT NULL,
    "end" timestamp(0) without time zone,
    total_delivery integer DEFAULT 0 NOT NULL,
    photo character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 %   DROP TABLE rfid_delivery.deliveries;
       rfid_delivery         heap    postgres    false    7            ;           1259    21731    deliveries_id_seq    SEQUENCE     �   CREATE SEQUENCE rfid_delivery.deliveries_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE rfid_delivery.deliveries_id_seq;
       rfid_delivery          postgres    false    314    7                       0    0    deliveries_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE rfid_delivery.deliveries_id_seq OWNED BY rfid_delivery.deliveries.id;
          rfid_delivery          postgres    false    315            <           1259    21732    destinations    TABLE     �  CREATE TABLE rfid_delivery.destinations (
    id bigint NOT NULL,
    uuid character varying(50) NOT NULL,
    name character varying(50) NOT NULL,
    other_name character varying(50) NOT NULL,
    dock character varying(50) NOT NULL,
    logistic character varying(50) NOT NULL,
    logo character varying(50) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 '   DROP TABLE rfid_delivery.destinations;
       rfid_delivery         heap    postgres    false    7            =           1259    21735    destinations_id_seq    SEQUENCE     �   CREATE SEQUENCE rfid_delivery.destinations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE rfid_delivery.destinations_id_seq;
       rfid_delivery          postgres    false    316    7                       0    0    destinations_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE rfid_delivery.destinations_id_seq OWNED BY rfid_delivery.destinations.id;
          rfid_delivery          postgres    false    317            >           1259    21736    kanbans    TABLE     �   CREATE TABLE rfid_delivery.kanbans (
    id bigint NOT NULL,
    code character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 "   DROP TABLE rfid_delivery.kanbans;
       rfid_delivery         heap    postgres    false    7            ?           1259    21739    kanbans_id_seq    SEQUENCE     ~   CREATE SEQUENCE rfid_delivery.kanbans_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE rfid_delivery.kanbans_id_seq;
       rfid_delivery          postgres    false    318    7                       0    0    kanbans_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE rfid_delivery.kanbans_id_seq OWNED BY rfid_delivery.kanbans.id;
          rfid_delivery          postgres    false    319            @           1259    21740 
   migrations    TABLE     �   CREATE TABLE rfid_delivery.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
 %   DROP TABLE rfid_delivery.migrations;
       rfid_delivery         heap    postgres    false    7            A           1259    21743    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE rfid_delivery.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE rfid_delivery.migrations_id_seq;
       rfid_delivery          postgres    false    320    7                       0    0    migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE rfid_delivery.migrations_id_seq OWNED BY rfid_delivery.migrations.id;
          rfid_delivery          postgres    false    321            B           1259    21744    personal_access_tokens    TABLE     �  CREATE TABLE rfid_delivery.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 1   DROP TABLE rfid_delivery.personal_access_tokens;
       rfid_delivery         heap    postgres    false    7            C           1259    21749    personal_access_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE rfid_delivery.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE rfid_delivery.personal_access_tokens_id_seq;
       rfid_delivery          postgres    false    322    7                       0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE rfid_delivery.personal_access_tokens_id_seq OWNED BY rfid_delivery.personal_access_tokens.id;
          rfid_delivery          postgres    false    323            �           2604    21750 	   alerts id    DEFAULT     d   ALTER TABLE ONLY fiola.alerts ALTER COLUMN id SET DEFAULT nextval('fiola.alerts_id_seq'::regclass);
 7   ALTER TABLE fiola.alerts ALTER COLUMN id DROP DEFAULT;
       fiola          postgres    false    219    218            �           2604    22430    apps id    DEFAULT     `   ALTER TABLE ONLY fiola.apps ALTER COLUMN id SET DEFAULT nextval('fiola.apps_id_seq'::regclass);
 5   ALTER TABLE fiola.apps ALTER COLUMN id DROP DEFAULT;
       fiola          postgres    false    329    330    330            �           2604    21751 
   devices id    DEFAULT     f   ALTER TABLE ONLY fiola.devices ALTER COLUMN id SET DEFAULT nextval('fiola.devices_id_seq'::regclass);
 8   ALTER TABLE fiola.devices ALTER COLUMN id DROP DEFAULT;
       fiola          postgres    false    221    220            �           2604    21752 
   folders id    DEFAULT     f   ALTER TABLE ONLY fiola.folders ALTER COLUMN id SET DEFAULT nextval('fiola.folders_id_seq'::regclass);
 8   ALTER TABLE fiola.folders ALTER COLUMN id DROP DEFAULT;
       fiola          postgres    false    223    222            �           2604    21753    form_account id    DEFAULT     p   ALTER TABLE ONLY fiola.form_account ALTER COLUMN id SET DEFAULT nextval('fiola.form_account_id_seq'::regclass);
 =   ALTER TABLE fiola.form_account ALTER COLUMN id DROP DEFAULT;
       fiola          postgres    false    225    224            �           2604    21754    form_fitur id    DEFAULT     l   ALTER TABLE ONLY fiola.form_fitur ALTER COLUMN id SET DEFAULT nextval('fiola.form_fitur_id_seq'::regclass);
 ;   ALTER TABLE fiola.form_fitur ALTER COLUMN id DROP DEFAULT;
       fiola          postgres    false    227    226            �           2604    21755    form_folder_access id    DEFAULT     |   ALTER TABLE ONLY fiola.form_folder_access ALTER COLUMN id SET DEFAULT nextval('fiola.form_folder_access_id_seq'::regclass);
 C   ALTER TABLE fiola.form_folder_access ALTER COLUMN id DROP DEFAULT;
       fiola          postgres    false    229    228            �           2604    21756    form_folder_access_path id    DEFAULT     �   ALTER TABLE ONLY fiola.form_folder_access_path ALTER COLUMN id SET DEFAULT nextval('fiola.form_folder_access_path_id_seq'::regclass);
 H   ALTER TABLE fiola.form_folder_access_path ALTER COLUMN id DROP DEFAULT;
       fiola          postgres    false    231    230            �           2604    21757    form_folder_access_user id    DEFAULT     �   ALTER TABLE ONLY fiola.form_folder_access_user ALTER COLUMN id SET DEFAULT nextval('fiola.form_folder_access_user_id_seq'::regclass);
 H   ALTER TABLE fiola.form_folder_access_user ALTER COLUMN id DROP DEFAULT;
       fiola          postgres    false    233    232            �           2604    21758    form_hardware id    DEFAULT     r   ALTER TABLE ONLY fiola.form_hardware ALTER COLUMN id SET DEFAULT nextval('fiola.form_hardware_id_seq'::regclass);
 >   ALTER TABLE fiola.form_hardware ALTER COLUMN id DROP DEFAULT;
       fiola          postgres    false    235    234            �           2604    22228    form_incident_report id    DEFAULT     �   ALTER TABLE ONLY fiola.form_incident_report ALTER COLUMN id SET DEFAULT nextval('fiola.form_incident_report_id_seq'::regclass);
 E   ALTER TABLE fiola.form_incident_report ALTER COLUMN id DROP DEFAULT;
       fiola          postgres    false    328    327    328            �           2604    22476    form_izin id    DEFAULT     j   ALTER TABLE ONLY fiola.form_izin ALTER COLUMN id SET DEFAULT nextval('fiola.form_izin_id_seq'::regclass);
 :   ALTER TABLE fiola.form_izin ALTER COLUMN id DROP DEFAULT;
       fiola          postgres    false    338    337    338            �           2604    22501    form_izin_barang id    DEFAULT     x   ALTER TABLE ONLY fiola.form_izin_barang ALTER COLUMN id SET DEFAULT nextval('fiola.form_izin_barang_id_seq'::regclass);
 A   ALTER TABLE fiola.form_izin_barang ALTER COLUMN id DROP DEFAULT;
       fiola          postgres    false    342    341    342            �           2604    22487    form_izin_user id    DEFAULT     t   ALTER TABLE ONLY fiola.form_izin_user ALTER COLUMN id SET DEFAULT nextval('fiola.form_izin_user_id_seq'::regclass);
 ?   ALTER TABLE fiola.form_izin_user ALTER COLUMN id DROP DEFAULT;
       fiola          postgres    false    339    340    340            �           2604    21759    form_network id    DEFAULT     p   ALTER TABLE ONLY fiola.form_network ALTER COLUMN id SET DEFAULT nextval('fiola.form_network_id_seq'::regclass);
 =   ALTER TABLE fiola.form_network ALTER COLUMN id DROP DEFAULT;
       fiola          postgres    false    237    236            �           2604    21760    form_new_folder id    DEFAULT     v   ALTER TABLE ONLY fiola.form_new_folder ALTER COLUMN id SET DEFAULT nextval('fiola.form_new_folder_id_seq'::regclass);
 @   ALTER TABLE fiola.form_new_folder ALTER COLUMN id DROP DEFAULT;
       fiola          postgres    false    239    238            �           2604    21761    form_new_folder_path id    DEFAULT     �   ALTER TABLE ONLY fiola.form_new_folder_path ALTER COLUMN id SET DEFAULT nextval('fiola.form_new_folder_path_id_seq'::regclass);
 E   ALTER TABLE fiola.form_new_folder_path ALTER COLUMN id DROP DEFAULT;
       fiola          postgres    false    241    240            �           2604    21762    form_new_folder_user id    DEFAULT     �   ALTER TABLE ONLY fiola.form_new_folder_user ALTER COLUMN id SET DEFAULT nextval('fiola.form_new_folder_user_id_seq'::regclass);
 E   ALTER TABLE fiola.form_new_folder_user ALTER COLUMN id DROP DEFAULT;
       fiola          postgres    false    243    242            �           2604    21763    form_project id    DEFAULT     p   ALTER TABLE ONLY fiola.form_project ALTER COLUMN id SET DEFAULT nextval('fiola.form_project_id_seq'::regclass);
 =   ALTER TABLE fiola.form_project ALTER COLUMN id DROP DEFAULT;
       fiola          postgres    false    245    244            �           2604    22439    form_sistem id    DEFAULT     n   ALTER TABLE ONLY fiola.form_sistem ALTER COLUMN id SET DEFAULT nextval('fiola.form_sistem_id_seq'::regclass);
 <   ALTER TABLE fiola.form_sistem ALTER COLUMN id DROP DEFAULT;
       fiola          postgres    false    331    332    332            �           2604    22464    form_sistem_app id    DEFAULT     v   ALTER TABLE ONLY fiola.form_sistem_app ALTER COLUMN id SET DEFAULT nextval('fiola.form_sistem_app_id_seq'::regclass);
 @   ALTER TABLE fiola.form_sistem_app ALTER COLUMN id DROP DEFAULT;
       fiola          postgres    false    335    336    336            �           2604    22450    form_sistem_user id    DEFAULT     x   ALTER TABLE ONLY fiola.form_sistem_user ALTER COLUMN id SET DEFAULT nextval('fiola.form_sistem_user_id_seq'::regclass);
 A   ALTER TABLE fiola.form_sistem_user ALTER COLUMN id DROP DEFAULT;
       fiola          postgres    false    334    333    334            �           2604    21764    form_software id    DEFAULT     r   ALTER TABLE ONLY fiola.form_software ALTER COLUMN id SET DEFAULT nextval('fiola.form_software_id_seq'::regclass);
 >   ALTER TABLE fiola.form_software ALTER COLUMN id DROP DEFAULT;
       fiola          postgres    false    248    247            �           2604    21765    form_vpn id    DEFAULT     h   ALTER TABLE ONLY fiola.form_vpn ALTER COLUMN id SET DEFAULT nextval('fiola.form_vpn_id_seq'::regclass);
 9   ALTER TABLE fiola.form_vpn ALTER COLUMN id DROP DEFAULT;
       fiola          postgres    false    250    249            �           2604    22191 	   guides id    DEFAULT     d   ALTER TABLE ONLY fiola.guides ALTER COLUMN id SET DEFAULT nextval('fiola.guides_id_seq'::regclass);
 7   ALTER TABLE fiola.guides ALTER COLUMN id DROP DEFAULT;
       fiola          postgres    false    325    326    326            �           2604    21766    migrations id    DEFAULT     l   ALTER TABLE ONLY fiola.migrations ALTER COLUMN id SET DEFAULT nextval('fiola.migrations_id_seq'::regclass);
 ;   ALTER TABLE fiola.migrations ALTER COLUMN id DROP DEFAULT;
       fiola          postgres    false    252    251            �           2604    21767    reminders id    DEFAULT     j   ALTER TABLE ONLY fiola.reminders ALTER COLUMN id SET DEFAULT nextval('fiola.reminders_id_seq'::regclass);
 :   ALTER TABLE fiola.reminders ALTER COLUMN id DROP DEFAULT;
       fiola          postgres    false    254    253            �           2604    21768    subfolders id    DEFAULT     l   ALTER TABLE ONLY fiola.subfolders ALTER COLUMN id SET DEFAULT nextval('fiola.subfolders_id_seq'::regclass);
 ;   ALTER TABLE fiola.subfolders ALTER COLUMN id DROP DEFAULT;
       fiola          postgres    false    256    255            �           2604    21769    alert id    DEFAULT     d   ALTER TABLE ONLY preman.alert ALTER COLUMN id SET DEFAULT nextval('preman.alert_id_seq'::regclass);
 7   ALTER TABLE preman.alert ALTER COLUMN id DROP DEFAULT;
       preman          postgres    false    261    260            �           2604    21770    checksheet id    DEFAULT     n   ALTER TABLE ONLY preman.checksheet ALTER COLUMN id SET DEFAULT nextval('preman.checksheet_id_seq'::regclass);
 <   ALTER TABLE preman.checksheet ALTER COLUMN id DROP DEFAULT;
       preman          postgres    false    263    262            �           2604    21771    dashboard id    DEFAULT     l   ALTER TABLE ONLY preman.dashboard ALTER COLUMN id SET DEFAULT nextval('preman.dashboard_id_seq'::regclass);
 ;   ALTER TABLE preman.dashboard ALTER COLUMN id DROP DEFAULT;
       preman          postgres    false    265    264            �           2604    21772    execution id    DEFAULT     l   ALTER TABLE ONLY preman.execution ALTER COLUMN id SET DEFAULT nextval('preman.execution_id_seq'::regclass);
 ;   ALTER TABLE preman.execution ALTER COLUMN id DROP DEFAULT;
       preman          postgres    false    267    266            �           2604    21773 
   finding id    DEFAULT     h   ALTER TABLE ONLY preman.finding ALTER COLUMN id SET DEFAULT nextval('preman.finding_id_seq'::regclass);
 9   ALTER TABLE preman.finding ALTER COLUMN id DROP DEFAULT;
       preman          postgres    false    269    268            �           2604    21774    generation_log id    DEFAULT     v   ALTER TABLE ONLY preman.generation_log ALTER COLUMN id SET DEFAULT nextval('preman.generation_log_id_seq'::regclass);
 @   ALTER TABLE preman.generation_log ALTER COLUMN id DROP DEFAULT;
       preman          postgres    false    271    270            �           2604    21775    items id    DEFAULT     d   ALTER TABLE ONLY preman.items ALTER COLUMN id SET DEFAULT nextval('preman.items_id_seq'::regclass);
 7   ALTER TABLE preman.items ALTER COLUMN id DROP DEFAULT;
       preman          postgres    false    273    272            �           2604    21776    line id    DEFAULT     b   ALTER TABLE ONLY preman.line ALTER COLUMN id SET DEFAULT nextval('preman.line_id_seq'::regclass);
 6   ALTER TABLE preman.line ALTER COLUMN id DROP DEFAULT;
       preman          postgres    false    275    274            �           2604    21777 
   machine id    DEFAULT     h   ALTER TABLE ONLY preman.machine ALTER COLUMN id SET DEFAULT nextval('preman.machine_id_seq'::regclass);
 9   ALTER TABLE preman.machine ALTER COLUMN id DROP DEFAULT;
       preman          postgres    false    277    276            �           2604    21778 	   photos id    DEFAULT     f   ALTER TABLE ONLY preman.photos ALTER COLUMN id SET DEFAULT nextval('preman.photos_id_seq'::regclass);
 8   ALTER TABLE preman.photos ALTER COLUMN id DROP DEFAULT;
       preman          postgres    false    279    278            �           2604    21779    departments id    DEFAULT     p   ALTER TABLE ONLY public.departments ALTER COLUMN id SET DEFAULT nextval('public.departments_id_seq'::regclass);
 =   ALTER TABLE public.departments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    281    280            �           2604    21780    divisions id    DEFAULT     l   ALTER TABLE ONLY public.divisions ALTER COLUMN id SET DEFAULT nextval('public.divisions_id_seq'::regclass);
 ;   ALTER TABLE public.divisions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    283    282            �           2604    21781    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    285    284            �           2604    21782    job_ranks id    DEFAULT     l   ALTER TABLE ONLY public.job_ranks ALTER COLUMN id SET DEFAULT nextval('public.job_ranks_id_seq'::regclass);
 ;   ALTER TABLE public.job_ranks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    287    286            �           2604    21783    lines id    DEFAULT     d   ALTER TABLE ONLY public.lines ALTER COLUMN id SET DEFAULT nextval('public.lines_id_seq'::regclass);
 7   ALTER TABLE public.lines ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    289    288            �           2604    21784    machines id    DEFAULT     j   ALTER TABLE ONLY public.machines ALTER COLUMN id SET DEFAULT nextval('public.machines_id_seq'::regclass);
 :   ALTER TABLE public.machines ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    291    290            �           2604    21785    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    293    292            �           2604    21786    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    302    301            �           2604    21787    personal_access_tokens id    DEFAULT     �   ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);
 H   ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    304    303            �           2604    21788    processes id    DEFAULT     l   ALTER TABLE ONLY public.processes ALTER COLUMN id SET DEFAULT nextval('public.processes_id_seq'::regclass);
 ;   ALTER TABLE public.processes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    306    305            �           2604    21789    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    309    308            �           2604    21790    sections id    DEFAULT     j   ALTER TABLE ONLY public.sections ALTER COLUMN id SET DEFAULT nextval('public.sections_id_seq'::regclass);
 :   ALTER TABLE public.sections ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    311    310            �           2604    21791    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    313    312            �           2604    21797    deliveries id    DEFAULT     |   ALTER TABLE ONLY rfid_delivery.deliveries ALTER COLUMN id SET DEFAULT nextval('rfid_delivery.deliveries_id_seq'::regclass);
 C   ALTER TABLE rfid_delivery.deliveries ALTER COLUMN id DROP DEFAULT;
       rfid_delivery          postgres    false    315    314            �           2604    21798    destinations id    DEFAULT     �   ALTER TABLE ONLY rfid_delivery.destinations ALTER COLUMN id SET DEFAULT nextval('rfid_delivery.destinations_id_seq'::regclass);
 E   ALTER TABLE rfid_delivery.destinations ALTER COLUMN id DROP DEFAULT;
       rfid_delivery          postgres    false    317    316            �           2604    21799 
   kanbans id    DEFAULT     v   ALTER TABLE ONLY rfid_delivery.kanbans ALTER COLUMN id SET DEFAULT nextval('rfid_delivery.kanbans_id_seq'::regclass);
 @   ALTER TABLE rfid_delivery.kanbans ALTER COLUMN id DROP DEFAULT;
       rfid_delivery          postgres    false    319    318            �           2604    21800    migrations id    DEFAULT     |   ALTER TABLE ONLY rfid_delivery.migrations ALTER COLUMN id SET DEFAULT nextval('rfid_delivery.migrations_id_seq'::regclass);
 C   ALTER TABLE rfid_delivery.migrations ALTER COLUMN id DROP DEFAULT;
       rfid_delivery          postgres    false    321    320            �           2604    21801    personal_access_tokens id    DEFAULT     �   ALTER TABLE ONLY rfid_delivery.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('rfid_delivery.personal_access_tokens_id_seq'::regclass);
 O   ALTER TABLE rfid_delivery.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       rfid_delivery          postgres    false    323    322            S          0    21407    alerts 
   TABLE DATA           `   COPY fiola.alerts (id, name, email, nohp, role, department, created_at, updated_at) FROM stdin;
    fiola          postgres    false    218   q�      �          0    22427    apps 
   TABLE DATA           W   COPY fiola.apps (id, uuid, name, url, description, created_at, updated_at) FROM stdin;
    fiola          postgres    false    330   ��      U          0    21413    devices 
   TABLE DATA           U   COPY fiola.devices (id, name, cost, spesifikasi, created_at, updated_at) FROM stdin;
    fiola          postgres    false    220   ��      W          0    21419    folders 
   TABLE DATA           B   COPY fiola.folders (id, name, created_at, updated_at) FROM stdin;
    fiola          postgres    false    222   I�      Y          0    21423    form_account 
   TABLE DATA           c  COPY fiola.form_account (id, no_reg, budget_type, form_type, npk, fullname, department, phone, company, expired_date, ad_name, is_email, email_address, purpose, final_status, is_manager_approve, is_it_approve, is_it_mgr_approve, is_on_progress, is_finish, is_confirm, manager_approval_date, it_approval_date, it_mgr_approval_date, on_progress_date, finish_date, manager_note, it_note, it_mgr_note, on_progress_note, finish_note, created_by, created_dept, manager_approve_by, it_approve_by, it_mgr_approve_by, on_progress_by, finish_by, created_at, updated_at, job_rank, account_type, ad_name_after) FROM stdin;
    fiola          postgres    false    224   ��      �          0    22159    form_akses_sistem 
   TABLE DATA           r  COPY fiola.form_akses_sistem (id, no_reg, nama, asal_instansi, keperluan, akses, department_pic, final_status, is_manager_approve, is_gm_approve, is_dir_approve, is_it_approve, is_it_mgr_approve, is_on_progress, is_finish, is_confirm, manager_approval_date, gm_approval_date, dir_approval_date, it_approval_date, it_mgr_approval_date, on_progress_date, finish_date, manager_note, gm_note, dir_note, it_note, it_mgr_note, on_progress_note, finish_note, created_by, created_dept, manager_approve_by, gm_approve_by, dir_approve_by, it_approve_by, it_mgr_approve_by, on_progress_by, finish_by, created_at, updated_at) FROM stdin;
    fiola          postgres    false    324   ��      [          0    21429 
   form_fitur 
   TABLE DATA           @  COPY fiola.form_fitur (id, no_reg, budget_type, npk, fullname, department, phone, aplikasi, nama_fitur, lampiran, kondisi_sebelum, kondisi_target, benefit, purpose, final_status, is_manager_approve, is_it_approve, is_it_mgr_approve, is_on_progress, is_finish, is_confirm, manager_approval_date, it_approval_date, it_mgr_approval_date, on_progress_date, finish_date, manager_note, it_note, it_mgr_note, on_progress_note, finish_note, created_by, created_dept, manager_approve_by, it_approve_by, it_mgr_approve_by, on_progress_by, finish_by, created_at, updated_at) FROM stdin;
    fiola          postgres    false    226   ��      ]          0    21435    form_folder_access 
   TABLE DATA           �  COPY fiola.form_folder_access (id, no_reg, purpose, final_status, is_manager_approve, is_it_approve, is_it_mgr_approve, is_on_progress, is_finish, is_confirm, manager_approval_date, it_approval_date, it_mgr_approval_date, on_progress_date, finish_date, manager_note, it_note, it_mgr_note, on_progress_note, finish_note, created_by, created_dept, manager_approve_by, it_approve_by, it_mgr_approve_by, on_progress_by, finish_by, created_at, updated_at) FROM stdin;
    fiola          postgres    false    228   ��      _          0    21441    form_folder_access_path 
   TABLE DATA           �   COPY fiola.form_folder_access_path (id, folder_access_id, folder, subfolder, subsubfolder, permission, created_at, updated_at) FROM stdin;
    fiola          postgres    false    230   ��      a          0    21447    form_folder_access_user 
   TABLE DATA           t   COPY fiola.form_folder_access_user (id, folder_access_id, username, department, created_at, updated_at) FROM stdin;
    fiola          postgres    false    232   ��      c          0    21453    form_hardware 
   TABLE DATA           0  COPY fiola.form_hardware (id, no_reg, budget_type, category, type, npk, fullname, department, phone, due_date, device_before, device_after, purpose, final_status, is_manager_approve, is_it_approve, is_it_mgr_approve, is_on_progress, is_finish, is_confirm, manager_approval_date, it_approval_date, it_mgr_approval_date, on_progress_date, finish_date, manager_note, it_note, it_mgr_note, on_progress_note, finish_note, created_by, created_dept, manager_approve_by, it_approve_by, it_mgr_approve_by, on_progress_by, finish_by, created_at, updated_at) FROM stdin;
    fiola          postgres    false    234   6�      �          0    22225    form_incident_report 
   TABLE DATA           L  COPY fiola.form_incident_report (id, uuid, no_reg, kategori, penyebab, aktual_keparahan, penemu, department, tanggal_penemuan, device, dampak_awal, kronologi, dampak_luas, root_cause, potensi_kelemahan, staff_corrective_action, tanggal_mulai_corrective_action, tanggal_berakhir_corrective_action, corrective_action, dampak_lanjutan_corrective_action, kondisi_bisnis_corrective_action, staff_preventive_action, tanggal_mulai_preventive_action, tanggal_berakhir_preventive_action, preventive_action, dampak_lanjutan_preventive_action, kondisi_bisnis_preventive_action, final_status, is_manager_approve, is_gm_approve, is_pres_approve, is_it_approve, is_it_mgr_approve, is_on_progress, is_finish, is_confirm, manager_approval_date, gm_approval_date, pres_approval_date, it_approval_date, it_mgr_approval_date, on_progress_date, finish_date, manager_note, gm_note, pres_note, it_note, it_mgr_note, on_progress_note, finish_note, created_by, created_dept, manager_approve_by, gm_approve_by, pres_approve_by, it_approve_by, it_mgr_approve_by, on_progress_by, finish_by, created_at, updated_at) FROM stdin;
    fiola          postgres    false    328   �      �          0    22473 	   form_izin 
   TABLE DATA           �  COPY fiola.form_izin (id, uuid, no_reg, lokasi, date_access_start, date_access_end, purpose, final_status, is_manager_approve, is_it_approve, is_it_mgr_approve, is_on_progress, is_finish, is_confirm, manager_approval_date, it_approval_date, it_mgr_approval_date, on_progress_date, finish_date, manager_note, it_note, it_mgr_note, on_progress_note, finish_note, created_by, created_dept, manager_approve_by, it_approve_by, it_mgr_approve_by, on_progress_by, finish_by, created_at, updated_at) FROM stdin;
    fiola          postgres    false    338   �      �          0    22498    form_izin_barang 
   TABLE DATA           �   COPY fiola.form_izin_barang (id, izin_id, nama_barang, no_device, merk, jumlah, satuan, keterangan, created_at, updated_at) FROM stdin;
    fiola          postgres    false    342   =
      �          0    22484    form_izin_user 
   TABLE DATA           o   COPY fiola.form_izin_user (id, izin_id, npk, name, asal_perusahaan, no_hp, created_at, updated_at) FROM stdin;
    fiola          postgres    false    340   �      e          0    21459    form_network 
   TABLE DATA           &  COPY fiola.form_network (id, no_reg, project_name, date_access_start, date_access_end, rack, device, down_time, lampiran, detail, purpose, final_status, is_manager_approve, is_it_approve, is_it_mgr_approve, is_on_progress, is_finish, is_confirm, manager_approval_date, it_approval_date, it_mgr_approval_date, on_progress_date, finish_date, manager_note, it_note, it_mgr_note, on_progress_note, finish_note, created_by, created_dept, manager_approve_by, it_approve_by, it_mgr_approve_by, on_progress_by, finish_by, created_at, updated_at) FROM stdin;
    fiola          postgres    false    236   �      g          0    21465    form_new_folder 
   TABLE DATA           �  COPY fiola.form_new_folder (id, no_reg, purpose, final_status, is_manager_approve, is_it_approve, is_it_mgr_approve, is_on_progress, is_finish, is_confirm, manager_approval_date, it_approval_date, it_mgr_approval_date, on_progress_date, finish_date, manager_note, it_note, it_mgr_note, on_progress_note, finish_note, created_by, created_dept, manager_approve_by, it_approve_by, it_mgr_approve_by, on_progress_by, finish_by, created_at, updated_at) FROM stdin;
    fiola          postgres    false    238   �      i          0    21471    form_new_folder_path 
   TABLE DATA           n   COPY fiola.form_new_folder_path (id, new_folder_id, foldername, mainpath, created_at, updated_at) FROM stdin;
    fiola          postgres    false    240   >      k          0    21477    form_new_folder_user 
   TABLE DATA           z   COPY fiola.form_new_folder_user (id, new_folder_id, username, department, permission, created_at, updated_at) FROM stdin;
    fiola          postgres    false    242   �      m          0    21483    form_project 
   TABLE DATA           F  COPY fiola.form_project (id, no_reg, budget_type, npk, fullname, department, phone, nama_project, lampiran, kondisi_sebelum, kondisi_target, benefit, alat, cost, purpose, final_status, is_manager_approve, is_it_approve, is_it_mgr_approve, is_on_progress, is_finish, is_confirm, manager_approval_date, it_approval_date, it_mgr_approval_date, on_progress_date, finish_date, manager_note, it_note, it_mgr_note, on_progress_note, finish_note, created_by, created_dept, manager_approve_by, it_approve_by, it_mgr_approve_by, on_progress_by, finish_by, created_at, updated_at) FROM stdin;
    fiola          postgres    false    244   ^      o          0    21489    form_relayout 
   TABLE DATA           5  COPY fiola.form_relayout (id, no_reg, budget_type, request_type, project_name, date_finish_plan, location, relayout_type, description, lampiran, purpose, final_status, is_manager_approve, is_it_approve, is_it_mgr_approve, is_on_progress, is_finish, is_confirm, manager_approval_date, it_approval_date, it_mgr_approval_date, on_progress_date, finish_date, manager_note, it_note, it_mgr_note, on_progress_note, finish_note, created_by, created_dept, manager_approve_by, it_approve_by, it_mgr_approve_by, on_progress_by, finish_by, created_at, updated_at) FROM stdin;
    fiola          postgres    false    246   {      �          0    22436    form_sistem 
   TABLE DATA           �  COPY fiola.form_sistem (id, uuid, no_reg, purpose, final_status, is_manager_approve, is_it_approve, is_it_mgr_approve, is_on_progress, is_finish, is_confirm, manager_approval_date, it_approval_date, it_mgr_approval_date, on_progress_date, finish_date, manager_note, it_note, it_mgr_note, on_progress_note, finish_note, created_by, created_dept, manager_approve_by, it_approve_by, it_mgr_approve_by, on_progress_by, finish_by, created_at, updated_at) FROM stdin;
    fiola          postgres    false    332   �      �          0    22461    form_sistem_app 
   TABLE DATA           Y   COPY fiola.form_sistem_app (id, sistem_id, app_name, created_at, updated_at) FROM stdin;
    fiola          postgres    false    336   i      �          0    22447    form_sistem_user 
   TABLE DATA           n   COPY fiola.form_sistem_user (id, sistem_id, npk, name, email, department, created_at, updated_at) FROM stdin;
    fiola          postgres    false    334   �      p          0    21494    form_software 
   TABLE DATA           �  COPY fiola.form_software (id, no_reg, type, category, appname, installon, detail, purpose, final_status, is_manager_approve, is_it_approve, is_it_mgr_approve, is_on_progress, is_finish, is_confirm, manager_approval_date, it_approval_date, it_mgr_approval_date, on_progress_date, finish_date, manager_note, it_note, it_mgr_note, on_progress_note, finish_note, created_by, created_dept, manager_approve_by, it_approve_by, it_mgr_approve_by, on_progress_by, finish_by, created_at, updated_at) FROM stdin;
    fiola          postgres    false    247   �      r          0    21501    form_vpn 
   TABLE DATA           �  COPY fiola.form_vpn (id, no_reg, npk, fullname, department, phone, email, username, purpose, final_status, is_manager_approve, is_it_approve, is_it_mgr_approve, is_on_progress, is_finish, is_confirm, manager_approval_date, it_approval_date, it_mgr_approval_date, on_progress_date, finish_date, manager_note, it_note, it_mgr_note, on_progress_note, finish_note, created_by, created_dept, manager_approve_by, it_approve_by, it_mgr_approve_by, on_progress_by, finish_by, created_at, updated_at) FROM stdin;
    fiola          postgres    false    249   �'      �          0    22188    guides 
   TABLE DATA           V   COPY fiola.guides (id, uuid, form_name, lampiran, created_at, updated_at) FROM stdin;
    fiola          postgres    false    326   "+      t          0    21507 
   migrations 
   TABLE DATA           9   COPY fiola.migrations (id, migration, batch) FROM stdin;
    fiola          postgres    false    251   �+      v          0    21511 	   reminders 
   TABLE DATA           V   COPY fiola.reminders (id, user_id, department_id, created_at, updated_at) FROM stdin;
    fiola          postgres    false    253   .      x          0    21515 
   subfolders 
   TABLE DATA           P   COPY fiola.subfolders (id, folder_id, name, created_at, updated_at) FROM stdin;
    fiola          postgres    false    255   :.      z          0    21519    supports 
   TABLE DATA           _   COPY fiola.supports (id, name, nohp, email, shift, status, created_at, updated_at) FROM stdin;
    fiola          postgres    false    257   J4      {          0    21524    ticket_photos 
   TABLE DATA           S   COPY fiola.ticket_photos (id, ticket_id, path, created_at, updated_at) FROM stdin;
    fiola          postgres    false    258   a5      |          0    21529    tickets 
   TABLE DATA           �  COPY fiola.tickets (id, no_reg, detail_case, category, location, sla, solution, requestor_name, requestor_phone, requestor_department, final_status, is_it_approve, is_on_progress, is_finish, is_confirm, it_approval_date, on_progress_date, finish_date, it_note, on_progress_note, finish_note, it_approve_by, on_progress_by, finish_by, created_at, updated_at, review, comment) FROM stdin;
    fiola          postgres    false    259   L9      }          0    21534    alert 
   TABLE DATA           c   COPY preman.alert (id, total_alert, date_alert, created_at, updated_at, preventive_id) FROM stdin;
    preman          postgres    false    260   �`                0    21540 
   checksheet 
   TABLE DATA           t   COPY preman.checksheet (id, title, form_number, line_id, machine_id, is_delete, created_at, updated_at) FROM stdin;
    preman          postgres    false    262   �`      �          0    21544 	   dashboard 
   TABLE DATA           �   COPY preman.dashboard (id, plan_mo1, plan_mo2, plan_mo3, plan_mo4, plan_mo5, plan_mo6, plan_mo7, plan_mo8, plan_mo9, plan_mo10, plan_mo11, plan_mo12, checksheet_id, item_id, year, created_at, updated_at) FROM stdin;
    preman          postgres    false    264   Aa      �          0    21560 	   execution 
   TABLE DATA           �  COPY preman.execution (id, machine_id, checksheet_id, item_id, standart_condition, actual_condition, actual_value, plan_date, mp, "time", mh, cost, status, keterangan, alasan, actual_date, actual_time_start, actual_time_end, actual_total_time, corrective_action, photo, user_id, approved_id, is_delete, created_at, updated_at, is_confirm, generation_log_id, preventive_id) FROM stdin;
    preman          postgres    false    266   �a      �          0    21566    finding 
   TABLE DATA              COPY preman.finding (id, checksheet_id, item_id, execution_id, corrective_action, corrective_actual_date, improvement_action, improvement_plan_date, improvement_actual_date, execution_date, user_id, status, approved_by, created_at, updated_at) FROM stdin;
    preman          postgres    false    268   3b      �          0    21570    generation_log 
   TABLE DATA           b   COPY preman.generation_log (id, checksheet_id, year, user_id, created_at, updated_at) FROM stdin;
    preman          postgres    false    270   Pb      �          0    21574    items 
   TABLE DATA           �   COPY preman.items (id, checksheet_id, device, item_check, standart_condition, metode, periode, start_periode, source, mp, "time", mh, cost, last_check, wis, is_delete, created_at, updated_at) FROM stdin;
    preman          postgres    false    272   �b      �          0    21580    line 
   TABLE DATA           @   COPY preman.line (id, name, created_at, updated_at) FROM stdin;
    preman          postgres    false    274   &c      �          0    21584    machine 
   TABLE DATA           �   COPY preman.machine (id, line_id, machine_name, machine_process, machine_number, created_at, updated_at, plan_time_3, plan_time_6, plan_time_12, plan_time_24, plan_time_36, plan_time_60, plan_time_72) FROM stdin;
    preman          postgres    false    276   �c      �          0    21588    photos 
   TABLE DATA           P   COPY preman.photos (id, execution_id, path, created_at, updated_at) FROM stdin;
    preman          postgres    false    278   �c      �          0    21592    departments 
   TABLE DATA           Z   COPY public.departments (id, name, code, division_id, created_at, updated_at) FROM stdin;
    public          postgres    false    280   6d      �          0    21596 	   divisions 
   TABLE DATA           K   COPY public.divisions (id, name, code, created_at, updated_at) FROM stdin;
    public          postgres    false    282   �f      �          0    21600    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    284   �g      �          0    21607 	   job_ranks 
   TABLE DATA           K   COPY public.job_ranks (id, name, code, created_at, updated_at) FROM stdin;
    public          postgres    false    286   �g      �          0    21611    lines 
   TABLE DATA           S   COPY public.lines (id, name, code, process_id, created_at, updated_at) FROM stdin;
    public          postgres    false    288   �h      �          0    21615    machines 
   TABLE DATA           U   COPY public.machines (id, name, number, line_id, created_at, updated_at) FROM stdin;
    public          postgres    false    290   i      �          0    21619 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    292   i      �          0    21623    model_has_departments 
   TABLE DATA           H   COPY public.model_has_departments (model_id, department_id) FROM stdin;
    public          postgres    false    294   �j      �          0    21626    model_has_divisions 
   TABLE DATA           D   COPY public.model_has_divisions (model_id, division_id) FROM stdin;
    public          postgres    false    295   �l      �          0    21629    model_has_job_ranks 
   TABLE DATA           D   COPY public.model_has_job_ranks (model_id, job_rank_id) FROM stdin;
    public          postgres    false    296   tn      �          0    21632    model_has_permissions 
   TABLE DATA           T   COPY public.model_has_permissions (permission_id, model_type, model_id) FROM stdin;
    public          postgres    false    297   7p      �          0    21635    model_has_roles 
   TABLE DATA           H   COPY public.model_has_roles (role_id, model_type, model_id) FROM stdin;
    public          postgres    false    298   �s      �          0    21638    model_has_sections 
   TABLE DATA           B   COPY public.model_has_sections (model_id, section_id) FROM stdin;
    public          postgres    false    299   �s      �          0    21641    password_reset_tokens 
   TABLE DATA           I   COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
    public          postgres    false    300   �s      �          0    21646    permissions 
   TABLE DATA           S   COPY public.permissions (id, name, guard_name, created_at, updated_at) FROM stdin;
    public          postgres    false    301   t      �          0    21652    personal_access_tokens 
   TABLE DATA           �   COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
    public          postgres    false    303   �t      �          0    21658 	   processes 
   TABLE DATA           K   COPY public.processes (id, name, code, created_at, updated_at) FROM stdin;
    public          postgres    false    305   �t      �          0    21662    role_has_permissions 
   TABLE DATA           F   COPY public.role_has_permissions (permission_id, role_id) FROM stdin;
    public          postgres    false    307   u      �          0    21665    roles 
   TABLE DATA           M   COPY public.roles (id, name, guard_name, created_at, updated_at) FROM stdin;
    public          postgres    false    308   4u      �          0    21671    sections 
   TABLE DATA           S   COPY public.sections (id, name, department_id, created_at, updated_at) FROM stdin;
    public          postgres    false    310   Qu      �          0    21675    users 
   TABLE DATA           �   COPY public.users (id, name, email, npk, email_verified_at, password, remember_token, created_at, updated_at, nohp, company, last_online) FROM stdin;
    public          postgres    false    312   �u      �          0    21725 
   deliveries 
   TABLE DATA           �   COPY rfid_delivery.deliveries (id, uuid, destinasi_id, destinasi, dock, cycle, logistic, start, "end", total_delivery, photo, created_at, updated_at) FROM stdin;
    rfid_delivery          postgres    false    314   v�      �          0    21732    destinations 
   TABLE DATA           w   COPY rfid_delivery.destinations (id, uuid, name, other_name, dock, logistic, logo, created_at, updated_at) FROM stdin;
    rfid_delivery          postgres    false    316   ��      �          0    21736    kanbans 
   TABLE DATA           J   COPY rfid_delivery.kanbans (id, code, created_at, updated_at) FROM stdin;
    rfid_delivery          postgres    false    318   ��      �          0    21740 
   migrations 
   TABLE DATA           A   COPY rfid_delivery.migrations (id, migration, batch) FROM stdin;
    rfid_delivery          postgres    false    320   ͹      �          0    21744    personal_access_tokens 
   TABLE DATA           �   COPY rfid_delivery.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
    rfid_delivery          postgres    false    322   Y�                 0    0    alerts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('fiola.alerts_id_seq', 37, true);
          fiola          postgres    false    219                       0    0    apps_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('fiola.apps_id_seq', 12, true);
          fiola          postgres    false    329                       0    0    devices_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('fiola.devices_id_seq', 2, true);
          fiola          postgres    false    221                       0    0    folders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('fiola.folders_id_seq', 21, true);
          fiola          postgres    false    223                       0    0    form_account_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('fiola.form_account_id_seq', 39, true);
          fiola          postgres    false    225                       0    0    form_fitur_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('fiola.form_fitur_id_seq', 9, true);
          fiola          postgres    false    227                       0    0    form_folder_access_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('fiola.form_folder_access_id_seq', 47, true);
          fiola          postgres    false    229                       0    0    form_folder_access_path_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('fiola.form_folder_access_path_id_seq', 86, true);
          fiola          postgres    false    231                       0    0    form_folder_access_user_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('fiola.form_folder_access_user_id_seq', 49, true);
          fiola          postgres    false    233                       0    0    form_hardware_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('fiola.form_hardware_id_seq', 22, true);
          fiola          postgres    false    235                       0    0    form_incident_report_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('fiola.form_incident_report_id_seq', 1, false);
          fiola          postgres    false    327                       0    0    form_izin_barang_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('fiola.form_izin_barang_id_seq', 21, true);
          fiola          postgres    false    341                       0    0    form_izin_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('fiola.form_izin_id_seq', 17, true);
          fiola          postgres    false    337                       0    0    form_izin_user_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('fiola.form_izin_user_id_seq', 27, true);
          fiola          postgres    false    339                       0    0    form_network_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('fiola.form_network_id_seq', 12, true);
          fiola          postgres    false    237                       0    0    form_new_folder_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('fiola.form_new_folder_id_seq', 1, true);
          fiola          postgres    false    239                        0    0    form_new_folder_path_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('fiola.form_new_folder_path_id_seq', 1, true);
          fiola          postgres    false    241            !           0    0    form_new_folder_user_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('fiola.form_new_folder_user_id_seq', 6, true);
          fiola          postgres    false    243            "           0    0    form_project_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('fiola.form_project_id_seq', 1, false);
          fiola          postgres    false    245            #           0    0    form_sistem_app_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('fiola.form_sistem_app_id_seq', 9, true);
          fiola          postgres    false    335            $           0    0    form_sistem_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('fiola.form_sistem_id_seq', 5, true);
          fiola          postgres    false    331            %           0    0    form_sistem_user_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('fiola.form_sistem_user_id_seq', 11, true);
          fiola          postgres    false    333            &           0    0    form_software_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('fiola.form_software_id_seq', 27, true);
          fiola          postgres    false    248            '           0    0    form_vpn_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('fiola.form_vpn_id_seq', 5, true);
          fiola          postgres    false    250            (           0    0    guides_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('fiola.guides_id_seq', 6, true);
          fiola          postgres    false    325            )           0    0    migrations_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('fiola.migrations_id_seq', 40, true);
          fiola          postgres    false    252            *           0    0    reminders_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('fiola.reminders_id_seq', 1, false);
          fiola          postgres    false    254            +           0    0    subfolders_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('fiola.subfolders_id_seq', 77, true);
          fiola          postgres    false    256            ,           0    0    alert_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('preman.alert_id_seq', 1, false);
          preman          postgres    false    261            -           0    0    checksheet_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('preman.checksheet_id_seq', 1, true);
          preman          postgres    false    263            .           0    0    dashboard_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('preman.dashboard_id_seq', 1, true);
          preman          postgres    false    265            /           0    0    execution_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('preman.execution_id_seq', 4, true);
          preman          postgres    false    267            0           0    0    finding_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('preman.finding_id_seq', 1, false);
          preman          postgres    false    269            1           0    0    generation_log_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('preman.generation_log_id_seq', 1, true);
          preman          postgres    false    271            2           0    0    items_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('preman.items_id_seq', 1, true);
          preman          postgres    false    273            3           0    0    line_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('preman.line_id_seq', 4, true);
          preman          postgres    false    275            4           0    0    machine_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('preman.machine_id_seq', 1, true);
          preman          postgres    false    277            5           0    0    photos_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('preman.photos_id_seq', 1, true);
          preman          postgres    false    279            6           0    0    departments_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.departments_id_seq', 34, true);
          public          postgres    false    281            7           0    0    divisions_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.divisions_id_seq', 7, true);
          public          postgres    false    283            8           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          postgres    false    285            9           0    0    job_ranks_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.job_ranks_id_seq', 15, true);
          public          postgres    false    287            :           0    0    lines_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.lines_id_seq', 1, false);
          public          postgres    false    289            ;           0    0    machines_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.machines_id_seq', 1, false);
          public          postgres    false    291            <           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 22, true);
          public          postgres    false    293            =           0    0    permissions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.permissions_id_seq', 26, true);
          public          postgres    false    302            >           0    0    personal_access_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);
          public          postgres    false    304            ?           0    0    processes_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.processes_id_seq', 1, false);
          public          postgres    false    306            @           0    0    roles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.roles_id_seq', 1, false);
          public          postgres    false    309            A           0    0    sections_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.sections_id_seq', 3, true);
          public          postgres    false    311            B           0    0    users_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.users_id_seq', 3190, true);
          public          postgres    false    313            C           0    0    deliveries_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('rfid_delivery.deliveries_id_seq', 1, false);
          rfid_delivery          postgres    false    315            D           0    0    destinations_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('rfid_delivery.destinations_id_seq', 1, false);
          rfid_delivery          postgres    false    317            E           0    0    kanbans_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('rfid_delivery.kanbans_id_seq', 1, false);
          rfid_delivery          postgres    false    319            F           0    0    migrations_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('rfid_delivery.migrations_id_seq', 4, true);
          rfid_delivery          postgres    false    321            G           0    0    personal_access_tokens_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('rfid_delivery.personal_access_tokens_id_seq', 1, false);
          rfid_delivery          postgres    false    323            �           2606    21803    alerts alerts_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY fiola.alerts
    ADD CONSTRAINT alerts_pkey PRIMARY KEY (id);
 ;   ALTER TABLE ONLY fiola.alerts DROP CONSTRAINT alerts_pkey;
       fiola            postgres    false    218            �           2606    22434    apps apps_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY fiola.apps
    ADD CONSTRAINT apps_pkey PRIMARY KEY (id);
 7   ALTER TABLE ONLY fiola.apps DROP CONSTRAINT apps_pkey;
       fiola            postgres    false    330            �           2606    21805    devices devices_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY fiola.devices
    ADD CONSTRAINT devices_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY fiola.devices DROP CONSTRAINT devices_pkey;
       fiola            postgres    false    220            �           2606    21807    folders folders_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY fiola.folders
    ADD CONSTRAINT folders_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY fiola.folders DROP CONSTRAINT folders_pkey;
       fiola            postgres    false    222            �           2606    21809 '   form_account form_account_no_reg_unique 
   CONSTRAINT     c   ALTER TABLE ONLY fiola.form_account
    ADD CONSTRAINT form_account_no_reg_unique UNIQUE (no_reg);
 P   ALTER TABLE ONLY fiola.form_account DROP CONSTRAINT form_account_no_reg_unique;
       fiola            postgres    false    224            �           2606    21811    form_account form_account_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY fiola.form_account
    ADD CONSTRAINT form_account_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY fiola.form_account DROP CONSTRAINT form_account_pkey;
       fiola            postgres    false    224            �           2606    22167 1   form_akses_sistem form_akses_sistem_no_reg_unique 
   CONSTRAINT     m   ALTER TABLE ONLY fiola.form_akses_sistem
    ADD CONSTRAINT form_akses_sistem_no_reg_unique UNIQUE (no_reg);
 Z   ALTER TABLE ONLY fiola.form_akses_sistem DROP CONSTRAINT form_akses_sistem_no_reg_unique;
       fiola            postgres    false    324            �           2606    22165 (   form_akses_sistem form_akses_sistem_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY fiola.form_akses_sistem
    ADD CONSTRAINT form_akses_sistem_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY fiola.form_akses_sistem DROP CONSTRAINT form_akses_sistem_pkey;
       fiola            postgres    false    324            �           2606    21813 #   form_fitur form_fitur_no_reg_unique 
   CONSTRAINT     _   ALTER TABLE ONLY fiola.form_fitur
    ADD CONSTRAINT form_fitur_no_reg_unique UNIQUE (no_reg);
 L   ALTER TABLE ONLY fiola.form_fitur DROP CONSTRAINT form_fitur_no_reg_unique;
       fiola            postgres    false    226            �           2606    21815    form_fitur form_fitur_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY fiola.form_fitur
    ADD CONSTRAINT form_fitur_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY fiola.form_fitur DROP CONSTRAINT form_fitur_pkey;
       fiola            postgres    false    226            �           2606    21817 3   form_folder_access form_folder_access_no_reg_unique 
   CONSTRAINT     o   ALTER TABLE ONLY fiola.form_folder_access
    ADD CONSTRAINT form_folder_access_no_reg_unique UNIQUE (no_reg);
 \   ALTER TABLE ONLY fiola.form_folder_access DROP CONSTRAINT form_folder_access_no_reg_unique;
       fiola            postgres    false    228            �           2606    21819 4   form_folder_access_path form_folder_access_path_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY fiola.form_folder_access_path
    ADD CONSTRAINT form_folder_access_path_pkey PRIMARY KEY (id);
 ]   ALTER TABLE ONLY fiola.form_folder_access_path DROP CONSTRAINT form_folder_access_path_pkey;
       fiola            postgres    false    230            �           2606    21821 *   form_folder_access form_folder_access_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY fiola.form_folder_access
    ADD CONSTRAINT form_folder_access_pkey PRIMARY KEY (id);
 S   ALTER TABLE ONLY fiola.form_folder_access DROP CONSTRAINT form_folder_access_pkey;
       fiola            postgres    false    228            �           2606    21823 4   form_folder_access_user form_folder_access_user_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY fiola.form_folder_access_user
    ADD CONSTRAINT form_folder_access_user_pkey PRIMARY KEY (id);
 ]   ALTER TABLE ONLY fiola.form_folder_access_user DROP CONSTRAINT form_folder_access_user_pkey;
       fiola            postgres    false    232                        2606    21825 )   form_hardware form_hardware_no_reg_unique 
   CONSTRAINT     e   ALTER TABLE ONLY fiola.form_hardware
    ADD CONSTRAINT form_hardware_no_reg_unique UNIQUE (no_reg);
 R   ALTER TABLE ONLY fiola.form_hardware DROP CONSTRAINT form_hardware_no_reg_unique;
       fiola            postgres    false    234                       2606    21827     form_hardware form_hardware_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY fiola.form_hardware
    ADD CONSTRAINT form_hardware_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY fiola.form_hardware DROP CONSTRAINT form_hardware_pkey;
       fiola            postgres    false    234            �           2606    22234 7   form_incident_report form_incident_report_no_reg_unique 
   CONSTRAINT     s   ALTER TABLE ONLY fiola.form_incident_report
    ADD CONSTRAINT form_incident_report_no_reg_unique UNIQUE (no_reg);
 `   ALTER TABLE ONLY fiola.form_incident_report DROP CONSTRAINT form_incident_report_no_reg_unique;
       fiola            postgres    false    328            �           2606    22232 .   form_incident_report form_incident_report_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY fiola.form_incident_report
    ADD CONSTRAINT form_incident_report_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY fiola.form_incident_report DROP CONSTRAINT form_incident_report_pkey;
       fiola            postgres    false    328            �           2606    22505 &   form_izin_barang form_izin_barang_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY fiola.form_izin_barang
    ADD CONSTRAINT form_izin_barang_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY fiola.form_izin_barang DROP CONSTRAINT form_izin_barang_pkey;
       fiola            postgres    false    342            �           2606    22482 !   form_izin form_izin_no_reg_unique 
   CONSTRAINT     ]   ALTER TABLE ONLY fiola.form_izin
    ADD CONSTRAINT form_izin_no_reg_unique UNIQUE (no_reg);
 J   ALTER TABLE ONLY fiola.form_izin DROP CONSTRAINT form_izin_no_reg_unique;
       fiola            postgres    false    338            �           2606    22480    form_izin form_izin_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY fiola.form_izin
    ADD CONSTRAINT form_izin_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY fiola.form_izin DROP CONSTRAINT form_izin_pkey;
       fiola            postgres    false    338            �           2606    22491 "   form_izin_user form_izin_user_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY fiola.form_izin_user
    ADD CONSTRAINT form_izin_user_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY fiola.form_izin_user DROP CONSTRAINT form_izin_user_pkey;
       fiola            postgres    false    340                       2606    21829 '   form_network form_network_no_reg_unique 
   CONSTRAINT     c   ALTER TABLE ONLY fiola.form_network
    ADD CONSTRAINT form_network_no_reg_unique UNIQUE (no_reg);
 P   ALTER TABLE ONLY fiola.form_network DROP CONSTRAINT form_network_no_reg_unique;
       fiola            postgres    false    236                       2606    21831    form_network form_network_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY fiola.form_network
    ADD CONSTRAINT form_network_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY fiola.form_network DROP CONSTRAINT form_network_pkey;
       fiola            postgres    false    236                       2606    21833 -   form_new_folder form_new_folder_no_reg_unique 
   CONSTRAINT     i   ALTER TABLE ONLY fiola.form_new_folder
    ADD CONSTRAINT form_new_folder_no_reg_unique UNIQUE (no_reg);
 V   ALTER TABLE ONLY fiola.form_new_folder DROP CONSTRAINT form_new_folder_no_reg_unique;
       fiola            postgres    false    238                       2606    21835 .   form_new_folder_path form_new_folder_path_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY fiola.form_new_folder_path
    ADD CONSTRAINT form_new_folder_path_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY fiola.form_new_folder_path DROP CONSTRAINT form_new_folder_path_pkey;
       fiola            postgres    false    240            
           2606    21837 $   form_new_folder form_new_folder_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY fiola.form_new_folder
    ADD CONSTRAINT form_new_folder_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY fiola.form_new_folder DROP CONSTRAINT form_new_folder_pkey;
       fiola            postgres    false    238                       2606    21839 .   form_new_folder_user form_new_folder_user_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY fiola.form_new_folder_user
    ADD CONSTRAINT form_new_folder_user_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY fiola.form_new_folder_user DROP CONSTRAINT form_new_folder_user_pkey;
       fiola            postgres    false    242                       2606    21841 '   form_project form_project_no_reg_unique 
   CONSTRAINT     c   ALTER TABLE ONLY fiola.form_project
    ADD CONSTRAINT form_project_no_reg_unique UNIQUE (no_reg);
 P   ALTER TABLE ONLY fiola.form_project DROP CONSTRAINT form_project_no_reg_unique;
       fiola            postgres    false    244                       2606    21843    form_project form_project_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY fiola.form_project
    ADD CONSTRAINT form_project_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY fiola.form_project DROP CONSTRAINT form_project_pkey;
       fiola            postgres    false    244                       2606    21845 )   form_relayout form_relayout_no_reg_unique 
   CONSTRAINT     e   ALTER TABLE ONLY fiola.form_relayout
    ADD CONSTRAINT form_relayout_no_reg_unique UNIQUE (no_reg);
 R   ALTER TABLE ONLY fiola.form_relayout DROP CONSTRAINT form_relayout_no_reg_unique;
       fiola            postgres    false    246                       2606    21847     form_relayout form_relayout_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY fiola.form_relayout
    ADD CONSTRAINT form_relayout_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY fiola.form_relayout DROP CONSTRAINT form_relayout_pkey;
       fiola            postgres    false    246            �           2606    22466 $   form_sistem_app form_sistem_app_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY fiola.form_sistem_app
    ADD CONSTRAINT form_sistem_app_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY fiola.form_sistem_app DROP CONSTRAINT form_sistem_app_pkey;
       fiola            postgres    false    336            �           2606    22445 %   form_sistem form_sistem_no_reg_unique 
   CONSTRAINT     a   ALTER TABLE ONLY fiola.form_sistem
    ADD CONSTRAINT form_sistem_no_reg_unique UNIQUE (no_reg);
 N   ALTER TABLE ONLY fiola.form_sistem DROP CONSTRAINT form_sistem_no_reg_unique;
       fiola            postgres    false    332            �           2606    22443    form_sistem form_sistem_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY fiola.form_sistem
    ADD CONSTRAINT form_sistem_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY fiola.form_sistem DROP CONSTRAINT form_sistem_pkey;
       fiola            postgres    false    332            �           2606    22454 &   form_sistem_user form_sistem_user_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY fiola.form_sistem_user
    ADD CONSTRAINT form_sistem_user_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY fiola.form_sistem_user DROP CONSTRAINT form_sistem_user_pkey;
       fiola            postgres    false    334                       2606    21849 )   form_software form_software_no_reg_unique 
   CONSTRAINT     e   ALTER TABLE ONLY fiola.form_software
    ADD CONSTRAINT form_software_no_reg_unique UNIQUE (no_reg);
 R   ALTER TABLE ONLY fiola.form_software DROP CONSTRAINT form_software_no_reg_unique;
       fiola            postgres    false    247                       2606    21851     form_software form_software_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY fiola.form_software
    ADD CONSTRAINT form_software_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY fiola.form_software DROP CONSTRAINT form_software_pkey;
       fiola            postgres    false    247                       2606    21853    form_vpn form_vpn_no_reg_unique 
   CONSTRAINT     [   ALTER TABLE ONLY fiola.form_vpn
    ADD CONSTRAINT form_vpn_no_reg_unique UNIQUE (no_reg);
 H   ALTER TABLE ONLY fiola.form_vpn DROP CONSTRAINT form_vpn_no_reg_unique;
       fiola            postgres    false    249                       2606    21855    form_vpn form_vpn_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY fiola.form_vpn
    ADD CONSTRAINT form_vpn_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY fiola.form_vpn DROP CONSTRAINT form_vpn_pkey;
       fiola            postgres    false    249            �           2606    22195    guides guides_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY fiola.guides
    ADD CONSTRAINT guides_pkey PRIMARY KEY (id);
 ;   ALTER TABLE ONLY fiola.guides DROP CONSTRAINT guides_pkey;
       fiola            postgres    false    326                        2606    21857    migrations migrations_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY fiola.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY fiola.migrations DROP CONSTRAINT migrations_pkey;
       fiola            postgres    false    251            "           2606    21859    reminders reminders_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY fiola.reminders
    ADD CONSTRAINT reminders_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY fiola.reminders DROP CONSTRAINT reminders_pkey;
       fiola            postgres    false    253            $           2606    21861    subfolders subfolders_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY fiola.subfolders
    ADD CONSTRAINT subfolders_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY fiola.subfolders DROP CONSTRAINT subfolders_pkey;
       fiola            postgres    false    255            &           2606    21863    supports supports_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY fiola.supports
    ADD CONSTRAINT supports_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY fiola.supports DROP CONSTRAINT supports_pkey;
       fiola            postgres    false    257            (           2606    21865     ticket_photos ticket_photos_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY fiola.ticket_photos
    ADD CONSTRAINT ticket_photos_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY fiola.ticket_photos DROP CONSTRAINT ticket_photos_pkey;
       fiola            postgres    false    258            *           2606    21867    tickets tickets_no_reg_unique 
   CONSTRAINT     Y   ALTER TABLE ONLY fiola.tickets
    ADD CONSTRAINT tickets_no_reg_unique UNIQUE (no_reg);
 F   ALTER TABLE ONLY fiola.tickets DROP CONSTRAINT tickets_no_reg_unique;
       fiola            postgres    false    259            ,           2606    21869    tickets tickets_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY fiola.tickets
    ADD CONSTRAINT tickets_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY fiola.tickets DROP CONSTRAINT tickets_pkey;
       fiola            postgres    false    259            .           2606    21871    alert alert_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY preman.alert
    ADD CONSTRAINT alert_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY preman.alert DROP CONSTRAINT alert_pkey;
       preman            postgres    false    260            0           2606    21873    checksheet checksheet_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY preman.checksheet
    ADD CONSTRAINT checksheet_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY preman.checksheet DROP CONSTRAINT checksheet_pkey;
       preman            postgres    false    262            2           2606    21875    dashboard dashboard_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY preman.dashboard
    ADD CONSTRAINT dashboard_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY preman.dashboard DROP CONSTRAINT dashboard_pkey;
       preman            postgres    false    264            4           2606    21877    execution execution_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY preman.execution
    ADD CONSTRAINT execution_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY preman.execution DROP CONSTRAINT execution_pkey;
       preman            postgres    false    266            6           2606    21879    finding finding_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY preman.finding
    ADD CONSTRAINT finding_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY preman.finding DROP CONSTRAINT finding_pkey;
       preman            postgres    false    268            8           2606    21881 "   generation_log generation_log_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY preman.generation_log
    ADD CONSTRAINT generation_log_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY preman.generation_log DROP CONSTRAINT generation_log_pkey;
       preman            postgres    false    270            :           2606    21883    items items_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY preman.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY preman.items DROP CONSTRAINT items_pkey;
       preman            postgres    false    272            <           2606    21885    line line_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY preman.line
    ADD CONSTRAINT line_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY preman.line DROP CONSTRAINT line_pkey;
       preman            postgres    false    274            >           2606    21887    machine machine_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY preman.machine
    ADD CONSTRAINT machine_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY preman.machine DROP CONSTRAINT machine_pkey;
       preman            postgres    false    276            @           2606    21889    photos photos_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY preman.photos
    ADD CONSTRAINT photos_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY preman.photos DROP CONSTRAINT photos_pkey;
       preman            postgres    false    278            B           2606    21891 #   departments departments_name_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_name_unique UNIQUE (name);
 M   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_name_unique;
       public            postgres    false    280            D           2606    21893    departments departments_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_pkey;
       public            postgres    false    280            F           2606    21895 )   departments departments_short_code_unique 
   CONSTRAINT     d   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_short_code_unique UNIQUE (code);
 S   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_short_code_unique;
       public            postgres    false    280            H           2606    21897    divisions divisions_code_unique 
   CONSTRAINT     Z   ALTER TABLE ONLY public.divisions
    ADD CONSTRAINT divisions_code_unique UNIQUE (code);
 I   ALTER TABLE ONLY public.divisions DROP CONSTRAINT divisions_code_unique;
       public            postgres    false    282            J           2606    21899    divisions divisions_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.divisions
    ADD CONSTRAINT divisions_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.divisions DROP CONSTRAINT divisions_pkey;
       public            postgres    false    282            L           2606    21901    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    284            N           2606    21903 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            postgres    false    284            P           2606    21905    job_ranks job_ranks_code_unique 
   CONSTRAINT     Z   ALTER TABLE ONLY public.job_ranks
    ADD CONSTRAINT job_ranks_code_unique UNIQUE (code);
 I   ALTER TABLE ONLY public.job_ranks DROP CONSTRAINT job_ranks_code_unique;
       public            postgres    false    286            R           2606    21907    job_ranks job_ranks_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.job_ranks
    ADD CONSTRAINT job_ranks_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.job_ranks DROP CONSTRAINT job_ranks_pkey;
       public            postgres    false    286            T           2606    21909    lines lines_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.lines
    ADD CONSTRAINT lines_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.lines DROP CONSTRAINT lines_pkey;
       public            postgres    false    288            V           2606    21911    machines machines_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.machines
    ADD CONSTRAINT machines_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.machines DROP CONSTRAINT machines_pkey;
       public            postgres    false    290            X           2606    21913    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    292            Z           2606    21915 ,   model_has_divisions model_has_divisions_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.model_has_divisions
    ADD CONSTRAINT model_has_divisions_pkey PRIMARY KEY (model_id, division_id);
 V   ALTER TABLE ONLY public.model_has_divisions DROP CONSTRAINT model_has_divisions_pkey;
       public            postgres    false    295    295            \           2606    21917 ,   model_has_job_ranks model_has_job_ranks_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.model_has_job_ranks
    ADD CONSTRAINT model_has_job_ranks_pkey PRIMARY KEY (model_id, job_rank_id);
 V   ALTER TABLE ONLY public.model_has_job_ranks DROP CONSTRAINT model_has_job_ranks_pkey;
       public            postgres    false    296    296            _           2606    21919 0   model_has_permissions model_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);
 Z   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_pkey;
       public            postgres    false    297    297    297            b           2606    21921 $   model_has_roles model_has_roles_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);
 N   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_pkey;
       public            postgres    false    298    298    298            d           2606    21923 *   model_has_sections model_has_sections_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.model_has_sections
    ADD CONSTRAINT model_has_sections_pkey PRIMARY KEY (model_id, section_id);
 T   ALTER TABLE ONLY public.model_has_sections DROP CONSTRAINT model_has_sections_pkey;
       public            postgres    false    299    299            f           2606    21925 0   password_reset_tokens password_reset_tokens_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);
 Z   ALTER TABLE ONLY public.password_reset_tokens DROP CONSTRAINT password_reset_tokens_pkey;
       public            postgres    false    300            h           2606    21927 .   permissions permissions_name_guard_name_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_name_guard_name_unique UNIQUE (name, guard_name);
 X   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_name_guard_name_unique;
       public            postgres    false    301    301            j           2606    21929    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public            postgres    false    301            l           2606    21931 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public            postgres    false    303            n           2606    21933 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     v   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 d   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       public            postgres    false    303            q           2606    21935    processes processes_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.processes
    ADD CONSTRAINT processes_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.processes DROP CONSTRAINT processes_pkey;
       public            postgres    false    305            s           2606    21937 .   role_has_permissions role_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);
 X   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_pkey;
       public            postgres    false    307    307            u           2606    21939 "   roles roles_name_guard_name_unique 
   CONSTRAINT     i   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_name_guard_name_unique UNIQUE (name, guard_name);
 L   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_name_guard_name_unique;
       public            postgres    false    308    308            w           2606    21941    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    308            y           2606    21943    sections sections_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sections
    ADD CONSTRAINT sections_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sections DROP CONSTRAINT sections_pkey;
       public            postgres    false    310            {           2606    21945    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    312            }           2606    21947    users users_npk_unique 
   CONSTRAINT     P   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_npk_unique UNIQUE (npk);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_npk_unique;
       public            postgres    false    312                       2606    21949    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    312            �           2606    21975    deliveries deliveries_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY rfid_delivery.deliveries
    ADD CONSTRAINT deliveries_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY rfid_delivery.deliveries DROP CONSTRAINT deliveries_pkey;
       rfid_delivery            postgres    false    314            �           2606    21977    destinations destinations_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY rfid_delivery.destinations
    ADD CONSTRAINT destinations_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY rfid_delivery.destinations DROP CONSTRAINT destinations_pkey;
       rfid_delivery            postgres    false    316            �           2606    21979    kanbans kanbans_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY rfid_delivery.kanbans
    ADD CONSTRAINT kanbans_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY rfid_delivery.kanbans DROP CONSTRAINT kanbans_pkey;
       rfid_delivery            postgres    false    318            �           2606    21981    migrations migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY rfid_delivery.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY rfid_delivery.migrations DROP CONSTRAINT migrations_pkey;
       rfid_delivery            postgres    false    320            �           2606    21983 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY rfid_delivery.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 c   ALTER TABLE ONLY rfid_delivery.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       rfid_delivery            postgres    false    322            �           2606    21985 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     }   ALTER TABLE ONLY rfid_delivery.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 k   ALTER TABLE ONLY rfid_delivery.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       rfid_delivery            postgres    false    322            ]           1259    21986 /   model_has_permissions_model_id_model_type_index    INDEX     �   CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);
 C   DROP INDEX public.model_has_permissions_model_id_model_type_index;
       public            postgres    false    297    297            `           1259    21987 )   model_has_roles_model_id_model_type_index    INDEX     u   CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);
 =   DROP INDEX public.model_has_roles_model_id_model_type_index;
       public            postgres    false    298    298            o           1259    21988 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     �   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 L   DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
       public            postgres    false    303    303            �           1259    21993 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     �   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON rfid_delivery.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 S   DROP INDEX rfid_delivery.personal_access_tokens_tokenable_type_tokenable_id_index;
       rfid_delivery            postgres    false    322    322            �           2606    21994     alerts alerts_department_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY fiola.alerts
    ADD CONSTRAINT alerts_department_foreign FOREIGN KEY (department) REFERENCES public.departments(id) ON DELETE CASCADE;
 I   ALTER TABLE ONLY fiola.alerts DROP CONSTRAINT alerts_department_foreign;
       fiola          postgres    false    280    218    4676            �           2606    21999 H   form_folder_access_path form_folder_access_path_folder_access_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY fiola.form_folder_access_path
    ADD CONSTRAINT form_folder_access_path_folder_access_id_foreign FOREIGN KEY (folder_access_id) REFERENCES fiola.form_folder_access(id) ON DELETE CASCADE;
 q   ALTER TABLE ONLY fiola.form_folder_access_path DROP CONSTRAINT form_folder_access_path_folder_access_id_foreign;
       fiola          postgres    false    4602    230    228            �           2606    22004 H   form_folder_access_user form_folder_access_user_folder_access_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY fiola.form_folder_access_user
    ADD CONSTRAINT form_folder_access_user_folder_access_id_foreign FOREIGN KEY (folder_access_id) REFERENCES fiola.form_folder_access(id) ON DELETE CASCADE;
 q   ALTER TABLE ONLY fiola.form_folder_access_user DROP CONSTRAINT form_folder_access_user_folder_access_id_foreign;
       fiola          postgres    false    4602    232    228            �           2606    22506 1   form_izin_barang form_izin_barang_izin_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY fiola.form_izin_barang
    ADD CONSTRAINT form_izin_barang_izin_id_foreign FOREIGN KEY (izin_id) REFERENCES fiola.form_izin(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY fiola.form_izin_barang DROP CONSTRAINT form_izin_barang_izin_id_foreign;
       fiola          postgres    false    342    4772    338            �           2606    22492 -   form_izin_user form_izin_user_izin_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY fiola.form_izin_user
    ADD CONSTRAINT form_izin_user_izin_id_foreign FOREIGN KEY (izin_id) REFERENCES fiola.form_izin(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY fiola.form_izin_user DROP CONSTRAINT form_izin_user_izin_id_foreign;
       fiola          postgres    false    338    340    4772            �           2606    22009 ?   form_new_folder_path form_new_folder_path_new_folder_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY fiola.form_new_folder_path
    ADD CONSTRAINT form_new_folder_path_new_folder_id_foreign FOREIGN KEY (new_folder_id) REFERENCES fiola.form_new_folder(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY fiola.form_new_folder_path DROP CONSTRAINT form_new_folder_path_new_folder_id_foreign;
       fiola          postgres    false    4618    238    240            �           2606    22014 ?   form_new_folder_user form_new_folder_user_new_folder_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY fiola.form_new_folder_user
    ADD CONSTRAINT form_new_folder_user_new_folder_id_foreign FOREIGN KEY (new_folder_id) REFERENCES fiola.form_new_folder(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY fiola.form_new_folder_user DROP CONSTRAINT form_new_folder_user_new_folder_id_foreign;
       fiola          postgres    false    242    4618    238            �           2606    22467 1   form_sistem_app form_sistem_app_sistem_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY fiola.form_sistem_app
    ADD CONSTRAINT form_sistem_app_sistem_id_foreign FOREIGN KEY (sistem_id) REFERENCES fiola.form_sistem(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY fiola.form_sistem_app DROP CONSTRAINT form_sistem_app_sistem_id_foreign;
       fiola          postgres    false    4764    332    336            �           2606    22455 3   form_sistem_user form_sistem_user_sistem_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY fiola.form_sistem_user
    ADD CONSTRAINT form_sistem_user_sistem_id_foreign FOREIGN KEY (sistem_id) REFERENCES fiola.form_sistem(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY fiola.form_sistem_user DROP CONSTRAINT form_sistem_user_sistem_id_foreign;
       fiola          postgres    false    334    332    4764            �           2606    22019 '   subfolders subfolders_folder_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY fiola.subfolders
    ADD CONSTRAINT subfolders_folder_id_foreign FOREIGN KEY (folder_id) REFERENCES fiola.folders(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY fiola.subfolders DROP CONSTRAINT subfolders_folder_id_foreign;
       fiola          postgres    false    222    255    4590            �           2606    22024 )   photos preman_photos_execution_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY preman.photos
    ADD CONSTRAINT preman_photos_execution_id_foreign FOREIGN KEY (execution_id) REFERENCES preman.execution(id) ON DELETE CASCADE;
 S   ALTER TABLE ONLY preman.photos DROP CONSTRAINT preman_photos_execution_id_foreign;
       preman          postgres    false    266    4660    278            �           2606    22029 +   departments departments_division_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_division_id_foreign FOREIGN KEY (division_id) REFERENCES public.divisions(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_division_id_foreign;
       public          postgres    false    280    282    4682            �           2606    22034    lines lines_process_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.lines
    ADD CONSTRAINT lines_process_id_foreign FOREIGN KEY (process_id) REFERENCES public.processes(id) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.lines DROP CONSTRAINT lines_process_id_foreign;
       public          postgres    false    288    4721    305            �           2606    22039 !   machines machines_line_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.machines
    ADD CONSTRAINT machines_line_id_foreign FOREIGN KEY (line_id) REFERENCES public.lines(id) ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.machines DROP CONSTRAINT machines_line_id_foreign;
       public          postgres    false    290    4692    288            �           2606    22044 A   model_has_departments model_has_departments_department_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_departments
    ADD CONSTRAINT model_has_departments_department_id_foreign FOREIGN KEY (department_id) REFERENCES public.departments(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.model_has_departments DROP CONSTRAINT model_has_departments_department_id_foreign;
       public          postgres    false    280    294    4676            �           2606    22049 <   model_has_departments model_has_departments_model_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_departments
    ADD CONSTRAINT model_has_departments_model_id_foreign FOREIGN KEY (model_id) REFERENCES public.users(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.model_has_departments DROP CONSTRAINT model_has_departments_model_id_foreign;
       public          postgres    false    4735    294    312            �           2606    22054 ;   model_has_job_ranks model_has_job_ranks_job_rank_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_job_ranks
    ADD CONSTRAINT model_has_job_ranks_job_rank_id_foreign FOREIGN KEY (job_rank_id) REFERENCES public.job_ranks(id) ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.model_has_job_ranks DROP CONSTRAINT model_has_job_ranks_job_rank_id_foreign;
       public          postgres    false    286    4690    296            �           2606    22059 8   model_has_job_ranks model_has_job_ranks_model_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_job_ranks
    ADD CONSTRAINT model_has_job_ranks_model_id_foreign FOREIGN KEY (model_id) REFERENCES public.users(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.model_has_job_ranks DROP CONSTRAINT model_has_job_ranks_model_id_foreign;
       public          postgres    false    312    296    4735            �           2606    22064 A   model_has_permissions model_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_permission_id_foreign;
       public          postgres    false    301    297    4714            �           2606    22069 /   model_has_roles model_has_roles_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_role_id_foreign;
       public          postgres    false    308    298    4727            �           2606    22074 6   model_has_sections model_has_sections_model_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_sections
    ADD CONSTRAINT model_has_sections_model_id_foreign FOREIGN KEY (model_id) REFERENCES public.users(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.model_has_sections DROP CONSTRAINT model_has_sections_model_id_foreign;
       public          postgres    false    312    299    4735            �           2606    22079 8   model_has_sections model_has_sections_section_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_sections
    ADD CONSTRAINT model_has_sections_section_id_foreign FOREIGN KEY (section_id) REFERENCES public.sections(id) ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.model_has_sections DROP CONSTRAINT model_has_sections_section_id_foreign;
       public          postgres    false    4729    299    310            �           2606    22084 B   model_has_divisions public_model_has_divisions_division_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_divisions
    ADD CONSTRAINT public_model_has_divisions_division_id_foreign FOREIGN KEY (division_id) REFERENCES public.divisions(id) ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.model_has_divisions DROP CONSTRAINT public_model_has_divisions_division_id_foreign;
       public          postgres    false    282    295    4682            �           2606    22089 ?   model_has_divisions public_model_has_divisions_model_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_divisions
    ADD CONSTRAINT public_model_has_divisions_model_id_foreign FOREIGN KEY (model_id) REFERENCES public.users(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.model_has_divisions DROP CONSTRAINT public_model_has_divisions_model_id_foreign;
       public          postgres    false    312    4735    295            �           2606    22094 ?   role_has_permissions role_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_permission_id_foreign;
       public          postgres    false    4714    301    307            �           2606    22099 9   role_has_permissions role_has_permissions_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_role_id_foreign;
       public          postgres    false    308    4727    307            �           2606    22104 '   sections sections_department_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.sections
    ADD CONSTRAINT sections_department_id_foreign FOREIGN KEY (department_id) REFERENCES public.departments(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.sections DROP CONSTRAINT sections_department_id_foreign;
       public          postgres    false    310    4676    280            S   $  x���mO�0�_۟�_����պ�
�@�i:Hژ�.8�P���iK�HH�*�������9�\u5l�P�3�6��հ�n�R"��@���LIx&�L8τ���A$��㣘��
d4#7�z-��n�ES�q=z)U�u���C�D�xR$y!��B�E�ܞ���,��$ �9��Fq܌�U��MҙTL�Be��!FEL曍y�$9v�k,�?���Th|��^�8&&-�1��5+��J�~:���i<������� �T6��	̉B������%�5�xd��b$��^�Q�gl�{�/l�Ҵ{`s�Z���k�_G�0�5ڮ��	1*r�ug��5�h۹�>MQo4�PT"Ĩ����cA9�� ����f�CZ�&���Mz*�a��?���n��S�e�O���a�Uk�<Q�6S�X.ՆgT&d-w��C��@N;]�4�4��-c~��|tb�Q���,�e��&��:���_E벞j�щ�Ÿ�<�8m�bj����o��_O)˱�(KT�>A +*��''ߠ���{�Օ�M�x QsS.�$��DP�?�2�(���"�(��
X�� �8������7���bJ7k��#�x�-�	�	^�}a��p��cg��VM�����+/�Pq�Q�X[~�����{���v�]:f�x�F�����`����Vϸ*���d�$`��J�+�6�ax�}�k(kSm1w~yr�+�%��:������%%�81�RrKS���q~�yr���<�s-�ކ����R���}�      �   �  x�uT]o�8|�~������SzSU�5�8i�+p@_�����>Y	�t���Ћ� gvv��9�zI`QhP�+p�x��hẪ�X�}�.V��=N��P�@�)�a�+J����*ul3R���6Mo9*�ЖB���(�B2�-z�:=(NT�Ĉ�Y�Jdw���f��~?�g������)����0Ł���6�iL���
�B1�����(R\UY�����>*C�]�6'7B&|gE����1Ʃ\n>�!�\���a�f��Z	!��ҁr> E�A螂D�X�^^�~=���n��~�S|.�w�4�����_ƲI�4�x�R�Z�q+S�U��*/IB��������v��X��[��v+,s�u�I�]Μ��f�d�<��U�����㲅��ۓ�/>؏��Y����}�b��{8>������P�Е�/�oGO.)]=��U�RT��<�o��;PQ.��;������Υ}n~����V���K.[s3�ӆ�5��9��-Z�u�@�\
UE�my
��i|�o/t�bq�����ӑ�q�W�-��~�������
��Cn��XDΨü=YA���Jz��ؗ���,N�}���Z����D��˯�KF7��#V���Fj�h� gՁ\g)1פ�P;�֋vs�j�]ެ�8ϩ@@^��kSK=��Bm0�}��ͣ�o�� ��p�h�O��G��V��*���En�      U   �   x�mMI
�@<ϼ�>��� �D�%hG�aF���׸�<�F��Xww�]J{��',����s$b�j20���P�J���e�W��:��i

�����q+6<��q c"ED�<�*u]#���#�6���S���<
�e-�4⪓ֹ��u쿺����!�"����t6�Z?0r?�      W   �   x�m�A� ��5s
/`3��*5�X4 MM��-�E�Ĕ��-	��]s��Seעj�n�ԖT̀�������*Kh5��*P7�9p:�;x�P��7d���kdve�ۜ���Ú�D����|^��a�TC�@�0��y\y*�m�}��~_O� �y$I�      Y   �  x��[�r�F}��b�e+����>����Vt�$�֦�2"@rD`p����t��*a�6Q�V�$�t��2Ϙ�{�#���#���>d�<H��`��4���B�R.5.��\��O.e��3�W�qG~6ū��P����A]϶]S0WX��%������^�nO�R�'��l$U��ye��4Z�/�>������o>M&���d����fpʭ�0A�56�1�:6��M�Mw,D�&ؘە�S���cF��-d8H�1٨0�#��Wn3_.H��IJ6��!��I��jE��|�\��û,��3}A�T.2�ȗ�*/����$ڛ\�kJ��(^�D����G����teaJ�`�'�*H��%���V�׬��
ɓ
��)!�Kr|QӀ�A8���Z�Ԃ\��1��C����1���_����n����J(��}:&;��O�@���^�$y�b�=Wj���.U��"jGI4K��ll��	�D�E��Ո��7ӟ��~ WY���e�}q��{��O4���kй~l�- �,�����ĩ��,d,7d�=  �Sk���� (XKr�wap�8
�v8��9���?
PR�0{, ��N��H?���)�n���S�4���V�pڤ;炙���$�ONγ8T�Q�f��-�8��n�t��F�rQZ8�S$O����Mб�;��h�:Mr��%�c0����A��?��O��$�8~~A��߰�`�6�m�����-�
]��~~�&�M��NvS���i�Kr#k��/&�&�N��xSS�.Zo�0�H�Mny�`�(H��� �/��\���:z�z�� �န���n���3�wB9a&f@a�lbL�:��Df�Θjf7͐@Mf~/��Q1mWx_ķ�@�q��%j�b�h$SS'bs�!��Ɩ���=(� I sr5 Y�	Y�Y֟�����$�ͳ�t1ĺ>��u�T�Ҽ*�ǁ�����&��U� U�\ĩ$�� ��Yq�WR�M*�� ~�2W3�"-E�k|{]�e˃��x`C��T��n��H�@ҼF�mA�¢`���q��_Cfj��R����W�`��
s a��
�	cc�1����)�;(�� �d�5�Oz$�P�1I~��
��[h2Θ�R��"�y���Ū���9��Ɋ������sn��n�]n�Z������8 ;��_�@No���r�y/��&�E��ݝ���O��'���k;ƹ��m%��e��2&��D1
���˓��(-��"�����[��ܠ�$�7�ksǐ�,��Yx�	}�[�T�*-��>xn9�
��||k���\kz}���g��p<3=�`6�C��h9�
2�'2�Qɰ� YYR��iVY	���*c*ǅL�B�����8�ր�� ��x$�`m�NSh�~� �+2�ͤ��Ը����Nf��~>�pO���|�ZMI���V�\�&���iv\�1q�W;t�|ҌxP�<�.ۍG�nyN���Yv���������SNmH�k��FM)�6�Z�y���]����Y��pg2�z��*���__���Ǐ�A:'��c{��^��9�;U�T�pBj�(��&H�Ѣ�
�_��ch�}�~{`{1�b~�������;M�1���ڮq���'ٯ;ғ5�^H� ����%GǖK�CrX]��d�ɑG��j�p�JB��B�����G{���^ 4�&��!NYƥ\�}��L� MŒ\gi��$G��뙖�D����qIž���j�%���m*g3rvC�b	����H?�8&)f�[ڵ�j"\ۜj�^٠+�5�� �A2s�&�UH6q4�!�c�|�'	|�����l<.�6�I���J���V�p/V(��\s���"xP�:UY�mPE�E�(��Y�j�s!����Zq�~���eCŕk}a��̴]�r�˚�hWy{ �_������^�x{Zw�j�U�B��A8-�V��[u�P�m�<��;"�F�G�ȇh���Z�v���_��v#��DTش�jvԉ�m|O�1y��g��YP�N��V�����$���vp�]ǳ&���GI�>-���5�?�Mk��,�N��c���b"�k��uĬgIL���ES����ػ>.�wc��f�X2Zn_�fB��f���1��� ��;���	*�tܱ�Ǻ�~iS�Y}���-��W�w�1�`nɧ,T2N��k<���/e��c�ۥ3\9z,�.��g�y�Z�Vd[�kE|��2�؁��jajb��[��fc��3A�c�v����`��zǴ�h[��Ԍr�'Eۏ�$�8~%i׏�~i'GSp��y����2�'n��={7YDs��{)
�䃜.�lE��zPƅ�<�s޼L7M�Rׂ�Q
�Y�f��פ��~r���&��ZI�w�X�N�ʹL����*��p���Y��m8.��qh�0����^��(���q�%��MM2�����H�%Z�>$�ڎ_�k���?� D���=MܚCv��g���A���m����M��(ŷ��P��i��sލq�c���R�=`X�,!1$?�.�t��3D�\�6�� 5�w��K�
"�)#����ka��G�c@��CӅ�cãA��	ݜq,�p��Q%@n��M0d#��]q�)/���4?)��"z6VI(GO�QB���v���d�r���%�ð�t z�L,������V>��.G4���S<l��d��!|�E�~_%�x�ۏ-���%�i�E���`s�=���\�DwSW�k�&�(&��b2	e�LXSY��Dt�86��r��a*��@1-��%m�pL�a6/wC�j�EWy���ƣ\eqCK��D�?T*��h��~���|���Q	�ٮ��ʗ�BǫLu��Ľ��<5'�sru񮵦��4�e.ϏG�y[������WJ����C����>rl3̛���|�Lg2T��)�s<ǳ��)���h  �?-������SL"	��-A����Ȏ�bf)�ܖ�B����A�����5bhf��G5��o��_h�}�d7��{��9�f,s�Z2��q��ak���S۴w�0C�|�LY�Lyc:M��N<��d�0���U�[��Z�3J��iq�;��������p�O34�$�e�}h޴qSO��B9;	����4�'ߌ]�3<�3�/Fn��� ��3�
Sê���6>ʒuKy�4m=�C����tI?~�u�y���x,�$��S��*m�����g7y��e�?�����s�}�J1Qˉ�3���r:���am}q+��Ȝ�	w�MP_�mGSh�8��Z���,�:���fdE�i(<ir=d�l���u�K�m$cp_=��p:���U�6,֌2�fV����)u�'��w��1�Y��ӡp�����Ay�2�Z�9�\�N�I�;j���V$��d�"���4�v��BI/��Go޼�����      �   �   x���MN�0���)|S{�'��-"j��LEM��vAܞtH !���{�蛙�uG!lɼ�%SPfKS1�b	��
���
�+�y��<��v�.��<%�����gz���e�������n��<9<=f�_�?˂"B�΀�b�2T�Z��-��\���q]i��,Y�K�zD��w�~=�f�)a��D�v�iO��m�>���`F��B�+F����W���&C�����e0˓����^q�+��y��      [   	  x��Xmo�8�,�
�8���)�op���N������،e�'Q����3�$ˎ���-M�&gș�yf(�]�~!��}�=�y>�#�r�+٣2;ɦ�ɥ7���N�H���t�<����'����d|Ǯ~���=�^x�����U�F�*�Ui��e�=f�X�h��.~���m��Mg�X�',�kƙ���NX�6�|ʟ�/�)�L�if&2]%di2�fF�g3:�k&c��*ֆ�n11��en-om�V�,�d��N�9Y����`E�K�WiX!_�W��mo�:�k�M7����x�~�_����嗋���ݛ��X�T\&��q�l�g��'���\tE�z�p�����YZ��n-%\\�h�z��O�"<���?`<����ca�h,��x^�xkސ	�G�O���*����}ʦy��	�:�7�Z�2gF%�k�UHd �d�)��fk���D��6�kYh�v���6�ٮ�˼l�A�տKU Ij��r�5����-n����O�7*]���.�@n٪�#k�����.�ҙ��F�Op��B�{t؈�w���}���E����g~�8���^Q�﷨+��K�jp6O�M�}.qt�c_Rm@�Hp�C?��ۇ��)�l��-v�.3S��7���� �mi(@ �b̀e��z��d"+�l#�^�M�.����z��=�r+[6�D!�ȷ��R|e�|��5�K��s�)i`������4.��h<h:S�ӊ�^9�9Mf�/��5��C�K�6 Ni�,��rmJ�D��E��<�OE�`NO�6VF��/;�а�ؕr#�<�!QYm��|�n�,��3�	�I�6��L��8����>b4ǔ��z���은����X��?�RMh�������q`�~,"X�>X|4�F���1��+��!:���Q�ݒ�U�"I��R��#$2)�Mw�)t��>9���˶�@��u����=��h*_e�⯬:�Q�1)a��u��T=܎h=�@��'����DRzh��?|��.��ܝ�Q4��������2�_��Jƣy�7L���a���+t,��,�%皦uك�yGU��T�-)~���T�]<ް�����Z)5�Ԫ`B��#ZÎ]&B�5U	��G��)���ں:���<6��m�G��� _���p���qS��-nv^SZ�Kʶހ;�
�3N����s���M>>���wy� z*?�=Jo�!�b0
�f��i^88�x����AQ-�G� 󽑏�����1��Z�:4�TmEE������
fJm���v[���M�Hd��F�	`6�Hi�@>RlVɮ�}�@	ͯ���[~�U��uF+WP��eY�5���/�g�B��{o�Fa�c�uUj6�F��`�\,��m����@�+��q��E�h1`� �9���D7Q�O���騃��a��ǆ;A���?��Ƕ��4��j��<�|��{h��������r0>�d2c��S�g��t�o[�I*8F �ww�M�5�w��11܏�m��#�ǐ�>���7c�'ZbE����0��(r��kK���y�U-(��P@����6�Mx�"�1Ac�"��`Љ�j&j��A��r��@�A��;�\��a8��l2�>z�����ɞ�c��ن�-i�b���	����[{�kU��Z�$�����9B�_�}Zz����D�+�wM@Z�b�H��X��+�ҵE{k��^�����찆��
rsRW�0�85<���jUyB��OY�������h~���!
q�~�u^�Ւ���k}Y5+Y؄�L�K�3�zx�-�s�N��Vv�D���8���d��:Oz�6wu�ɳ��
���|K���S��h�X�q+����X��&U��Ag6�SHq��bզS`�>���ɏ�l^S�5k�,W��)�Ea��]�K�aç��t���[�Y���(k��,)?�������nE^�1��2�L�d��F����P{c(iL�&�#.��9bx��y5�v��h��3����\k�;��J*�z�:�J#W�� yT�z9d�x�����r��d�Jp�j�߆a�?k�����MU���8N{�i#1�r�M�7q���~��}L�C2��t�[Q�����!��Ω��q'���&tq�L���祮�+��%�ʶ!
�]ғ�(x�ZK�ؾ}pE¾���T�Oͬ�v��T��-�a �+]��:�i����Mu6��ͭPs��(��n|���@�u��t��R����>������������� h��Na���w�����m��v��;�� �M��      ]     x��[Ko�H>���O{���/�tX�'�L6#��aa`��vG)���~����D[�vc!b�e�U_W�W_Ws�[���K��D�����ܙZU$��tV�:�� �&�TI���oH�r���H^�#��T^{U��uI>�z]{w��/������.'�-X�������:W�=��N�櫁��T�"�"5w�D����\�E:��0
=.=.�>�&�&<Y1��	�����.�N��,+�Q�t��{grS=�ԫ�?x ��?�	�肅�G[��	|��8�N�kDs���Bē���R��r��UEj��R�LW��ڮ������&���oL֚R����$3�}�J��t�?�K��(R�Tm��T�Y+E2x�����hj������{�
~�5$+�Mn7�������ܾ)��H�MS����.��+�J�#ͪ���b������� �U䃪̃���C�\$`˭�����h���!�#��l��S�]�ZuHڽ�Y3��,��N��-$@�\爳F�$4^�p$�hv�8c��� d�)X��A	�Ϲ�g̅Ux+���Wu$6�0%f��͆�hG����ٚl5z�p>L�OF�͆2,pl������#��8J~�#c�8�`G&�8��#`�qdP:C���5���n�T����wE����c _���lw
��;�i�Z��ڪ��Ї�K6�n6nm����B�l7�Y�M=��5xv�+r�����SU�H*�����������W���{u]Y�^����y�P�� �Em�� ��[��Tv[�٥�ְv�0�?��|\�pA�4�Um���&v`�O�Y&F�U�cL��T,�A( ���_3j������cXOBR��dH�hH�Хh�mG���	(3�������2�������d<��o��*�1��F���?���4G�� ���.2n]����}�V[�����MV�`��n����3�!ez� 3�8A��t��؀KOS�5K�$ɟ	5�ji���Q���Ҥ����=@�O_�$s�����G6�^�@���l�i;ڷAh0*K�j͘Y��O�m?cda�X��w@�($=�n���z��̓�J��MQ����%���fS�X-�mޯ�1�������e�e�3�16��>�m�B-
��Cs� z�J�UC^w�l�45*q��Q�
Q�j�<s�?�F��4�vP�d��=���-Z�[5�]Q�N��+ƕ��G0�
)������|�Ƕw��ٶS��1fr*�����<ȱՑ1���(�`%"�Cdց|Ӂl�|4�g��ux
��d�����˼�9�?�E�kR=����+���ڨ���.����V)��g�ާ����ڽ�Mp�ىm�Z�a��m$b�&?r7�~m��]�F�=�0� b{�.������1+�;#����b���#�:���)w��#߶�i�3��°�����Q���ol��<Uw5,,'��!��
h�jݔ�~<M��\�0
�c�쉤1����N^�
}\��Qˠ#;�lj5,��`>�����V�,Z��ޥ�b�Xj��c���@f�h�g�
[h�4+���uح����'c�\�n����-"n�J�wM��>wO�����݂���$,��Z�{r�8���|fu�N�I�Bo�q��NM�Gn���&{��i��|���Fݲ;D���������|Ӥ�XjԺ6d�7��}���(�B��M�U$��j��zt�ꗼ?�L�� y��`��e���cV�R&{Dq�=G�?���=������6�mHP x�2��y�c8?��<��uεA4�E_R]q(�vٻ����G��m8��6�6�b�Y���^&l�z��8@�g�x�����Z��ys�2ˑ ��P���k@�FFfm\ �r�3�����R2��L9�v/]�	�f��~�W�ޫ��m뵍��K�.�F�����(o��i�&_$����a�n��Э�<B��(<�M/;�-d���b7�Y��`��>�]nN�׍��#ݯ��S[�q�/�gk�C��&'�ì�t��gk/`��l��%Y��ew�8 ��{���?c̎���$lJ7���q(�ur�[��XV�����&?�'-��#�O���߱�H���FT�|�h&]���ۢ$�������l��ͯ3�6؂��-�@G�\6�qb��;CM��a��I�u��en�^�u��*~���)�M�do������&���cH��N?��)�#9�2��}�����3M�mH��<;މ}����li<�"��?�#{O��9p�!�"8W����sn���#r:7@�C�(1L����E���#V��e���t��GK6��\ �N�8c|c���1�:^�s1������r����,{�|Y>{��v�!]<|�ɵ���r��kv�G�@�aƞI��H;���J�}Mq�2�l ��5�����M�`�8�E�`_�A.>O;�����D<��F"Z8ҍ�F_HwF�'T�+� џ���������R*@�$�89� w�`e�<���v�����[x���ԍ��.���Y�j�^�s:o�1� �U��52�"ǩ�����]��pZ;+�S>�a�ɺ�����!N �>#��9��p!�찛�%w%���	)�z���w#&��7�[�s5�M����c��vb=;����9�G�yBuV�yї�E6D���+s�|��1;�����S��/��a)��� Rva���9<y��a�9�����{p}wg ��*�z����9��Gj�}�Mǳ����Y2VYG`l�����6=_v?amp8�_���Kt8��E�=���ӮK O��)_�ͣ}s�����x�r����]���g�E��ƀ3Ҷ���Ya�{rɑ]�D���2t�,���ۙ�����	�'�͙��,߾͗��8��ޝ?�u^���ex�۴n�6��3x6�j�!y�]��?D�#T������d���^���_�[�      _   �  x����o�Hǟw�
?��I������N�6@jC�*UZ����J!Z)���:)	x��}K�j?;���ά��&��8Mc{5��I�焅6�Y�vv����~(v�zE>M�x���<��03��2�a��Q��M��v�8�?��&Β70`��b�1��� ��S�O�7I�``��Ѱw�!�d��~�R�W��f��z��A��˦��p�N'�	���V�����+��-B��:R*R�(�|YZ��ah��W���^OoGpEN��yY����rQn��%	�6���8�,���+��C��V_m�,�w���KV'4���4ʕ�7jM���M�3;�Nf���d^Z�p@����}6�"���V�rU���40��� �(4:����E:���ИFy��͢��m|����v��j��~����e����E�G�Q�px{ow`s���q�G�&���z����Lz�e��'�g�$w/~V����8T|�1����\�?�U�+���S�4y�$�&�Q(0�~�6u�&�H�
���\d�� �G��4*�	u�\x\SD��4
m�@���Fv�~8q+6t�>��F���ф�M��}�E���V�@�]j�-�r0Vڻj�,6}�@B��=+,t��#&0�J�d���0�<D�0�JS#�F] )�m�Z��f������n+Z"t9��I�ϲ'ׅ��d�X|����M��7�w�d�t����,���a��^�����w�Q<�ᯎ��ٴ�~+�Fkg<�C��/1*��-�Ҩ��_�&����1�iT�� ���۫���|m��H�:��A4�@F������H�$�F����b�v��k�ٯC������n��.� �q�.Ȱ�l+�X͚X���O�Y*��G���?.�}�C��|U5��.h����?���b�x�taCé[��q���]ttWnM԰y)L�nC����������4��F5t��1� # ��ӨE��m}�p>`�=�����:Ԩ��	{,8�]�L���C���H�i��Y��,�-�'������C�j�{<p���ԁF}N����8��9wc]���<Ш/�ly� Р��!���C���@M���pؾN�����
��J��&��N����ӯ�#b�}v��YY,֫�P㠗�� 	�R�"���b��9kCƷ��sZ�s�5P�/w�Q��|��؀⋸�4j�1���rN}�r�,L�����t���$��lH��~{�Q#�D��\��K�`�T�Q���>Y����ڜ��F�&�6w��/��
p~g�im0��>�����Ɲ�ާ�qB@�s����U8;U��T�FMX�/��6h��jn>]C�٨��4p���M�^0��|�i�i45���P:��ލ-�}j���y�vk￣=�mj��x�i4�n����x�}<�b���)L��)f�����.h\���觿(��w��      a   �  x��WM��6<��B��,�K��n� �I��
\�����%������N����f����ͼ�d����Y[����چ�:��%_�8�~m���f��7nJ~J�g��F[?��Z�b%���:�j^�0Z��t�������f^Ovp�_�N�ǋ[�r���׊ղ�a�$Ѯ�>���Y}e"~��H"X³Z�Ze1�V�$�m�3�[�MMg֓��S�w��GA>_$��?�:y3�׃C��#�d�ز�"�Q�HE��u�jg7����[�����8����Z1��
*kQ�0�9o�G�Z?�zO̣u+�(_��8L��2Y�,�Q.4�O��O����"����6Y�4��DO�0��77:ݵ����O�.yE-T�<#`��u��0�s�����.E'O��'��Zq�p�@�"�a}?���u���sPͫ	����a�W��d�׭�;x��^ڧ�B���5$fe����6��uJ�Cˡ	?�f�x�_L����f���#?���aTp�dcI��v�q��><#��S۟`T@ѫ�<a�fyͲF�$ �د�M�0�{h/���ԇ�Sᕥ�a48D�i�ù���7;���n�N��"��I��V���V��}�_����1`�y�}�Q�i��H�UȎFT1�������P��)B�dQg"�Q�1Y(�\?�1�����m�����F%2���t��̓�{Kq�b*S����8Ǩ�;���fAS�h:�(�,$??QM��2t�gE�B5��٥{����m B�C$Iv�qgE��
��n�t7x�OO��6��i��Y�n��>~P�l3�8��1*s��F������R�P{�N�9��,��Hcэ��lhVM*�լ�aT��	{�k�?s��:��`��!���ﱷ���sR\�w>�(�Q����@#�<�aU�]���5�#A#BR�LR'�9F'�:�vå�?�b٤x��We��W���y<�h���Ux���2�Q%	^�4fm����z:���^V�0��n�!���c=Z����?b�OH�Mo]�U_"MIY�ŭ#dè�	s�弟w6�{��gʓ*gx�%�����è*�Ƥc�ǈ�z�Y4�Bv�F�)��k���hqS1���@7֭��؛��F�V(�*�ѿSJ�7�      c   �  x��Z�R�X}���<M%U�����''����S]���1��bYr�M?��|�|�̏�ڒ��1N��T%Q��H�����koc�~�|+M��r���xV�wAn\�A��zD�ltnp.lK#?`�t���Q/�I���m&1��Ü�7�+�4���T���<�K���8��Œ-�Y��0΃4r��Lǹ�dkZt���7�M<ZfA��y�{th�'2Z�Ez��{�A���{��w�z���oҭ␝>�PyV��,�c9zOuȎ�s���XG��a�|#/��$��:�٘���5�f�&�PXC�6Ÿ;�PY�Dc6��J-i|ҩ^c�p�\�<E���L�Kz��N�,�QĖ����m���B��^�,��Lå�M�9\j'U�Zi��)H��[��X�"��4\����M<R쌝�,\�u\CZ��H|�pL��q���EG�ؔ 7X֐{QÏ���x
�3�Γ5aOH��F��i��8L��;���<o��d�N� �3�P(!l�ʭޜ{B�ϧ� J�����,�(J\�8,IYg��$��$b�D��V�\|��	`Fn�=�Y����Wr��6d��ޅ{�8$n2���(ֶ�*ѳy%���T�f�J1T���U�Wq�B�����p)`��X��j���1>$���Iu@î���Q�faLއ�Ҙ��� �]��d=��|9�)g�e�-̪�����;�P���2�Kt����I���X��A�q�.�G�Tj��زǶL����8a՞���wE��
W�'�$���A�CX��=�I�Z���P����b��ͥg-��vv���J�>"4�,ȋ5l�R�q����E%"p?�2�K�,����t�?�K�@��x�w}?�|�YBv���an��q=ӏ~E��V�Z(e*�uل���*��&��4X�s��b)e�#�$�rl�c}��2�dǱ�Γ�nv�j]!%��|}���Ֆ$i�}�hȤ,ˌˡ2龆8.b"����! ��q\���Pc;���P�v��r蓛�\0��w�%��g�RBRخ�[��у��b�.Q9P���A�:b��\�i�s�E���%XB�,��aK
�qn�nK#v�_..O��������������a��{�'ލ�A�т~X�}��dI�3��	Ⱒ�|�|�`y�W��B�1����)��z6���
R6MZ�XVU�e��~S=�E�}�I�tS�@��e��Zgd�#~�wa��p�n������	 �<e XJ8���ԥ�ʥvKղ�E�(�rj��<`Nnc���"�-P�$�8������\Wz]@�_
@1,�8�pi����t���~r���[����#Y�$+�]��wI�d�=��S6��I%m��4���]y��b��3���=�"q�6��a����ȵY�`j`��D��}W-��sW4�ӳ/��׭:�C�oX�i�Y�\�w1K�<�\�+��4'�E�,�szQD�\{0���6��K�� ���ڝ��d�[
L%`�f����n����?�)���yB4��a�D�͟�F�*�t�����C� �����5Je�����I�$TwN����舜DP?��A<~V���J��BH�K6TB��r�\�nX��a5�s���GQ8��7�S�& ���T��DZeI!����>��5	��g�TL˴:ʗ7r�b�HE	�k2cș9*�J	�6}����H4"�m��!w�m;|�f�� �(���zb����ڱ,$1�Z틵�d%�>���d3I��n��=�g�;c�E��k�{hc�&wNʦ�e�	�'�u�W:�^��=����]�akjwt��l�rMZd�I�oOML�mKߵQ�cwlnY9plٛ��GtGEx.�IU�ix?VˤG�_㛗�������9Q�۔��@4L-J�~6�.��.b��^<RZ�q��H�ޠ��1C�Q��ia9�t�ݨ9�k�͞����*��3��a�ŝa�(J ���\5� [��$�Q��������,�ڣ˚=�M��̥Y�0�����ȿ=3@��M�a�����ȪO�M����=�����^�$�[��ZN���~H޳	�U�>�Ij��m:�r�q���j-��8	��7l�x���[� */����̇b�iqo��̴��KЖ|+k!Z,{�u��~6iri��5'�'ޒB( FuPۛ<�h%�`|�=��w�Q������}?m�xoLMf�X�t��po�-��#ZN��~�d�^Lj�w)�nWU}����Ł���/�\c��������ڮZݨZ�o�T��-	��u2��E:��ê��yT���rvq�q����F�����E(���F��]m�~Zt�������GT�/�j��d�/=Ox�[���GD�i�t�2��$�)8\|�o�&��F��T!4�=��lC����-H*\Ħj�Lq���#>�q��jZ�kRIp��ێ{'�zs_�Ѳ�dq�F�0f�l����)R��s�V�Qb@l���m�LU�րC��t��I��",;K�0n�@�@E�˾璮�����ʀi�Y޳��u�z^�y�(�+A񧮧<z�Dx�2�#����%�vL�jD��(�&@Q�ʾ�!�!��V�ol�ن>��uH����O��>g�7]�NO3ٲ{��~'�{��0�1.nz�}6J�9�B?&w��hGW���v�I[�Ga��K�>:gg���b®ϧקlry|u|>]������^L/G'�'`�/ף�������;:a�)�
?fG��O���5_L/.٫���5[�w�p+:{�2ѱA�U9����?QbŚ��g�G���C.ޕ�;�ǡқ�MeA�Zf1�Y��4��<3Dal�4{볒�v}l�k67ąey]�����yJ���b�2���������-������p��#j�	���0媞��vZ$���S68��}㢿��5N�Q�2�KVVl]}Pv����%9��0)'� ��тl"��U�V�1塯�J&���o�K���[�.ǆ4YSO	��T}+�%M:x��j�� ۘ}fiA�%/������!�Ow��
�+��-�M��{#)�I�#)\��iu�~�,p\H��_���:H�� ӛ>���Q�y���ժ&ٙ���q2e�5d�}�AR��cK��,c���b�����,u�'��V�Te{����`0�ړw      �      x������ � �      �   1  x��KS�6�����2��@oY�1CH��*+6�%�´��mS5��s�~�������9-_��O�
J-�.J��r��B��d� ��RT+��_�3A�1!*���o��b1OaS��A���k�Q��A��+�ܣ?OOQg煝��M����kt����,4a5�.��L:�ٿ��й�T;�DINe.�xh�i.e�E�w��E;G�?C�.�ܮ�:���[��򏈣�?�r�.�����57���9|W��W~���Yd��#t��-T�[ð�>�}���F�`��`�@�	��/�D�G?CW�_��7f�k�
5��GD��X���}ۅ��̶Ps�},s`a��wͭo�ܢovf	�F'�nV�ޢ������i��$�����0��baU��kf�� (�9����瀨= 7=<�L�E�H�j(�,�
ϩ
&���X���c���,�Js^zA��q��Bc�y����b�,�37j��e&^k'�ݻ�a[P��P� �CU.������~D88}���g&,� gZ�T%�Ԍ+鰧�����g��p��nOC	1�0��g!�u�BgW誅�h�7�.lh:�ئ�hS��ݪOx�8#�|�:�3<��WL]�Me"�6�h�M&KlL�t�If,��q��Ţ	�Ⱙ;E�aS�j#J����|���?Z�eOG7�c\��h�|���\���3���۲\�M�4-Y´�02��z���j�	�D#����'�m�fX�Da!�řW
��*s'Sd�M���.ȆUh���Ö���FA�^C^e�1f�+�+l��?�OV�`����,�r����Tֹ��B%s8+3`���*,|>�HB_�e[z�N���k�>Xp��/mhїE	)u��65nr%�٭{��zm\9P֮�;Oi)�Re81�bX�L�e�3	�5V8ʹ�����;�~��}��P�_w3��ٿ{[mg�7��f����X�@��G�l�,U�2������5��������j���p�����g�ӌ&��2��i�5��Ɓ/L��4�̈p      �   P  x���MN�0���S��N�B+�TTU�ٱq+SB%N��	���BB�{���y� �~�/��u�0�W	��YD	�ĵ�Z���$H0�q�:k>МFV�Y]�w�{���/ֿ�i���6ی<��\�\KҘY�c7��7~7]�CW��j^D�{���!��ó�]UÖ+Ns5���-wm��2w������%�L��!�%=0[��;�ܜ�R� �3���D�
i��N��O �5����i�_;�UqHc$��r=;�����ykk�7x�N���8E<���i@c�%��c�	����\+{����o��W%H�IhJC{�c�}cm�      �   =  x����n�@���S��̲���Zq�DQ����:���6D�4j��v�F���H?��Ͱ3� 1{_��X.R ��!�6�S� %҂��1%-
�
ESY�� ��������]CS��;Y�.�rQ���ꂗe�}��J�Cʝ��lv$S
�W�+���-����A���!� wSYb���8Py��L\�vV�e�k�ȹ�a�7C��1Į����rK�ՠ$f�AMe	*�$r��﹍� �}�Pu�gə,�}^���K_�k�6�o��Qr��S#��@=�%�h. �$n�z�M���]�,�W����y���5d����M�]����Fͬj�=g'#�@
-��95ӼZ�A�B�����.y[�|�;Y.�*����)��
牳�|k3�%hG!Y��j�������g�l�/6�h�d��:'�4�OQ��E��:�0;��)�d�`~ �6|��|�r�5��>�^�p�&�He�3�d0���6���YKռL�Z<�ȇlG"����o�~'/�2,_�
��_�Z�X ��D��R�TP�Ù�mCdj���O.2X�.��'q��%I�(XE�      e   �  x��X�n"I}.�"�Vm�0�YU\J�wo36w�V�4J�4dST���������*�_wf�v;�Kd�'"�;�����/�qgE����=�~Ӟ'�C��8)T���Lxm�k3�0vj��v#������"g��F��F��F�m�r&*��B�72��U��6
r�=��η�(7�u^�b�ex5������*t�N���G���\�؄B�x�=��n���gdn~��Y��.�6P�H�ѳH�Rw�W�� C	�2Y����#ԱJV*+�9�e&��.e��p�c�^�%�*ӱ�K��#�A���Qx�|�񭃸��ßV����Q8�L=���
&����d�`^��K�CyY-�E[0���`Y�z���R�̇ ��4�+լ����,:���%o���>��PnL,�t��c!2�h�[��H�m��^�0ع>���.�i�^3>���~Gt|~F#�����~�pڞ�\_�#|3³F�k8��G�ΐϑܔ��JF�Fk��ے��aߢ,�
�����$�۵���J�h�}� �q7�%l�θ���WW0��b�n��]�Ƹ-6.?�A}���\(\��~�9��3�6�\�QN����8.���NX`��J�W�%yJ�=�q�w(���@<�<~�Hy|<p)��r]��)��x��67b��&Z������̷J��mv8%ҡK�0ē7�Zd�n�;�Э0��Dy��\(�אFj���S'aj$�VE�4(eks �k���i����~\��83��d��X �;b�R����`���UHw��O��b��xH?=��t��Y�ϸI��v=<����P{�Z��2��V�ی�� x�Pc,�?�/�nM�v\v�a>�e��΍Jh.�2��\%��G��:��[~@�v�� ���V���K�_<H�1R����M7��d8�af*��ÊIQK7.&��솯��J�p�\��Y�u�jx��!�����1�:��U��� l`/g�Y%��/dv:{iR�Zǧs�i�\-�L��b�}L���Ve"q�M5��ئ�Sر囵�QMB�PH�&F$�^ v�I�	'2������A�KĒ�oy{����{�f0��2����)�4���?�n5��^�6�!�[k��)�߹/s��9��Y��Q��?~�����5����"`�f��ι��Շ�o �q�S =d�!�eVD�
�O�[�ïOJ�⸄T���?#�����Mp���[��r��,�ƃd�2�ob��D��3��H)�~�k���j߯�S�yՙ<J�"K#�B������Reؗ��]����P[�����!�?�ȎY}QE�3�`��@��J3�!U���7Z��� !Th��b!~*!l𬄸���g�HȠ5��	�g>��}�=�D��}(h�
��MDU���M�A=�W�Q�z�0{��1�c��y��������}6g�V�
ޝZ �~��h�,��/�Ҽil�˾��0�r��mi_�1V>��E�L�7B��p� d����-�]gv3�O�0�|����C�R��j���qZ7P�W���� ���?��Lt����&���n���sy� ���L�Fd*,�
,1hEAm��X{h��@�pyx8t��0\��WO��?d�+�~Hjm��B�6�	�����8���RRd郪8c�m����z�Cc��{u�gl����ī4�o�@����YX��=���oJ�0�j�y�� �UU��>��r1�Y/0��Yφ��i��;��Bf����׋Tf!,tN9K-)�����{�l��a���|������\{>V�x����v�z�F<���xN&�c�?慊�K��ڕ�=���o*<����_�ޕ��DŪ����]�yM|�+���b/Ӣ��Eh[�핑D��oޛ�t\7��x��7?�%����:�V�O���      g   �  x�U�Mo�0��ί�q�DV�ѭ�t+��H��Бfs��@��'{E�BD�_���x8�y��5cYR)�-����H�à\��A��Վ1r����ު�*}�^�__R��������S�Z���4N��裥vh`;�=ꠣ��)2F����
�KG��5x��%N&���&9�!�)��y�����KV.�2&6�`�/Z!�����7��(
���⳼����>��^*��cN��!�f��~U�Ey�I�Ei�jh�'��?�)�WY�+�5Ùk�a
���;G��1��&����ͥ�Џ-��֜��E��6����#8�tI�m���B�6��BGKp�~���,O�K�lA$��ήLx�g6s��/ߊ<��vKƁEa+X��W���T�O      i   Y   x�m���  �7��0�$��S����t�-\�{4!h�AZ��\U����&z�`ٍC%f���,�w㝏�%�iB���#��3 |;S      k   �   x��б
�0�9�
�`R��T���v��H��A|�Q�����I\�p��j�8���A���j
\��%q	��$Le�jK���L���_&M&m���3�Ĉ�x܄2�`����<-iXg�yQ�`ڳ�1�D��1=`ϋ��??����-���]I)���      m      x������ � �      o      x������ � �      �   �  x��T�n�0<�_�P�$E�x��&�k�-"����I[�,Y�#E��]�N�)� I��.w�^r��²x�#�x�f�6�yl7I���&ӱT<s.���n��5V;o������wv�y��^�m���;�$������<�2x�"�*с�OW6�c�t�!��=��/2���q����EH��1:LG�p-0HY�[d*�%B�D�H��<N����I����E�]�ʵ�5�mv��d�O5W�&��V��j���_�NI3�v���:��q0���po�U�9�
jPIߊ~x�cH��>,��LrwX�ڹ��`�7�>�:���� J`��1᰷9|�M�������+H�B�{(����ȱ!ͼ_���ҕ0[~ZUK۸a���=��.����Q'G�f�X�!3��2%T��RfD�%�6DT�>J/���q���ó�ݳ�����dZ�K�L����%T��ِq�x
�Q�����oO��'jv5]~�:9�wUy�խ��9d�}�j,�����9��b��!���M��[��C�U������C����`^b���C��-��ܪ��m������|�m����0wn34���	�Nop@���x{RD��T����BO�$䩔�S�$7,�J2+�P��(Ay����Ӊ�gW���7��-̯n���t��u��� �k��Rs�b-������F�����      �   �   x���=
1��z�{����n��B�bc�b���!"� i_�>��8��Zeĉ4."���Fν�o�P=�'�g&J�g����:M7��[�`����2M����υ貍��4}^�HQ|      �   �  x���Ao�0���S��nX�!!p**]di�Y����8�J�36��~��*�r�!�������'@ �2Jx����\��[�[ꌳ��Uc���NX������H.�/B��_d2���4>��bX�������yj�!�!c�U����e!Cɑ����?� z��P�5�L\Q K�^�~
?�C<�R��5���W3��a���+��	��xw�Ug*�u��ف{9�-�,J�8�����t!�е���������^�\�6g3	Oטצ;�������]Na6�B��4�Fw�1Y�`�6y���R}���M�T�n�*`�]�W�j'��C�B.B�;��L�/e����㡴��'\��-���?��[��x�^߃���E��E�MmNd�Q�)/?��3���%$�      p   
  x��Z�n�H}&���3��a7�қc+YO,Gk)N��-�$FI�b���[ռJl[� ؀��Ŭ>U�NU��f_��f���m�ve9Cm/�g�
��W�%N7��xOfy�����y�`�0'W"V�H�	_�d��d��X�a�?�˒/�_�����`��d�� �E�� �VE��\?��A�"[<$�q�Ɉ�#��$Nsm�
8��n��/sL�Q�g6�50�u�a�{dz*������:��:��^�o�||����v;70�H�)|@�V����.�}���r};�+zq}��������|��NS�2_u�0F�52͑�l:�j�����z��E�Kw��h~��1�5�9y
|�<�A��&i��,�����$I�<�������<!�)�h8�&�ƈ#{��\|Jc8�Ξ��`n��f�Fxwg���4񘋐�I&B���������[�و�#D)�IlxD/�!z���/����ppoS����"Z�4�Ț�<!�ⱈV�[r=�z��"��|�;�5ׁ�w4�e����,&޶Y������Y� �IG��{��T��} ��?%Nn'�(/6$[x�M��__f3I�����sNV<}�4/��+�*� ]@��;�	�,���X��cWFp�R:�(�^6n}&�4b����Fk�1a���LG�Q��6��h������?�������.a+R�g Җ�L��"}��>����Kh�P^��/"Z�b<�{�8�\�&S��G�E&�\�:,@ו�m����t����ʰ8E
8",\�e�w6b��-��.U�~\|̠�\��m�qD����U|8�;t�m.o�4{��FP�������@2��	I�� ��� � ��f!�����K���O��܉e?��Z!$��PQ}8�<��	G��z�)���
�)���=a��$� �����������kr���=F�Ɠʝ�bk~˳�9�_�b-oVj���[��f�3td����Lgd���l�7�	"�)�;fI�Tx����*�2�mR�s�����9(�����@��2��w���� m�������T��{��j��n�zD
���tZk[j���c�-��Z7�l��]����.O�]&;A��`HЬa�T�'p"vO7��U���$:짔�>O�Ð� W��I�U	8SH�`�~�jA�M���HsJ.��Hy^�m���a���Ȳ�JI$���w�ȏ��~�լ'LM��a��Q���p���+�[:�d�W�ߓY��h��{I*��g%� p������b#�ˬ��`V�Ϭ��gV�%�{���ʬ��A��N��2���nB*��Iդ��:�iXd�Ȳ��/�X%�\�|�t����z��@�(��d.S8,�U�ﬞX��&Y�JTx��8?:]ME�Z�te�>�a �^T���*�AUn��Y��C�S�� �	���j&�o�䷏AXΏ�ԻG哋��O�c�3�����4U�'��%xu�aZ
�E�t�vՒ"����]����6�{�䃈�8%s�#'��!km����,w����VG.�=���p��jmj?����
�=��&>=�(u'�T��zn_�(5!����a(��6��8���i;�'	X���g�`�1�$XU`�ce���U����m�-h;|׹���َq3j�m]P����t����lz�]O���v�kOI��nt� ��t��H�[��O�q�E6���Rk.ۅ[v�O]v�����x�X@��N�tu������i��5
�5�R�؆aa`F7d��i�<�V�6���O7W��o�٦m���Y��B4�I'd����w��Ror�K!���(�m��-x
�|���\ՙP�V�hI�A����Y�|y�F�nw��<=MEj�n8T�P~C�l�p���!%9� �3ڍ0�����wb�rY(�W������b��-�� �D�]���6y�pu�F �Ȣ�^��G�gH͜o�=l8��t�bo�}���Z`�b��8*��(�TZ�� ����EN�[�J�Wl�f�[M*�<P`X}9�`6x����T����Ʒ�c�FW�}�[�}�J��$%����h5Я;�ʆEcļ�fW��v�E�-��:Et�~�9���~Jt-Pv`�Y�e�����A.�<��"�"��Bn�S�B���~��j� �oD��s�>D�2�J��N0��	�j-�"����N�|��H`^C�h�좨�v8Q.'���*�NS�(2Y���nyH��1�(���Xq������eV���#�.%~�9�dٞ.�xK�@ހW��՝L1�B��;6�3w�*�����XyY��b�h�"���(�v�l�޾�^Rʳ�iب�f��}.'q@BbN�E��}�kD$A�7K�A%>㌈g,N�"�E��0{`�U�bOP��MgN��]�/�r䮈��M)X�+�A����R����!�@sD~��4�j��oә�uPѨ6�)����CB�w���
�<�#w�"������O�iB�d�z	��ө��6��\����K�b      r   U  x�͕�n�6���S�h���/�O5,�nwl��ŗ��X�%ʠ����Y�dJV�8��e�0�?)z>~��WBqv�'��$NȦ�-�b����G[W�i�%����bW-lvV�S��u�����`B�9�3A9�"�"5IY��X�䅖h�t�FM�}Rj.GmIy���2!ۯ�٣�jS�O�/)�GS@NkS�,��]͂�ZT�hQ���6!zm���̸=.�8Ywl���;(�k�S�[|�=/j�u[��p���u^�6���ں�k�V�_��߭˪������p�� 4�s���և)��������H���E�Ɩt��޺���j�!SIxL$_bģtI��/�ǘ�YQ�I]��fJ�t�Ϙ�d�D�+��Yr㫬�5�r�� �,�nе{4�����^��WaI�c��I螞r�+��ۺ�Н��{���*�v2��`P���R�#�2r�� �ѡxK}[B��LzT�]�^�P@٥��{��;��?����L�b�iD���T�g�X2���f8.ix���h���7������=E��V�v�𞓍�����B8MQ����2MS��1'>�0��S� S8xjm�j�^a��A�Ï�3z�ԛ��"��uV;�T������j,Z��.<?���s<^��f�E�,��^Gj��DL�����ڢ˷x���E��=Ս)�b���i�p�ܸ���a
͠!7���ݴ{��T�z�)Z�d�4=5?4Thq�RE#�&��a��p������tѷ�%���'��6�:�ou�ü��O�������i��u�O^�x5��;��h��F���~9�.f������n      �   d   x�m�9
�0 ��~`5�F}� 9�`a1�W�,�a�d�B�ȡ ��ޑ3�D��d����c�k�X�kZ���w�G�L	e@��E#�h�(�_�S�9�+�"I      t   w  x�}��n� ���Ü����I�lkwWb����h��6iL/�Og�X��pa@��n��lt����ض��ͣ6�~x6G�W�AY8W�\XT7M���WFp#*8�+��%Ih���|9�*Â��+Ì6������\����7�઄������7�6 Լt���n�{�d�� Mሾ��m��G�^�Ȫ`��a��F�@COTX���q�$|�� ��a�����_]��Y�T��mB��z� �2��S\a���̓;��V.kI�s	Sa�=���×�FS2��T?�iY�,6�(%�òw��d 6T�^RC�������m$(�5��w�~��Up3��dj:���E3�����4y2�Хq`Ց�5M�v���S>��Ϗ�D2+:� k�\�櫿�`���-����5&T>���s��&�t�LjU�P{�h˦~����!O�:o E�<�]ZLA���,�$Du���%�:n)n7��>�z�!%�j�"��1�r����e.�o�1�(�L��4�f�=e�$�� �;a9f+�ϼ��T֊W^������~8TS�qU���Z������Xڵ煗۬閣)pHW�:���AY^�r�|?���a��eb*�      v      x������ � �      x      x��XMo�8=g~�N�%I}X���⪱%UR�(��@k�����N���;�$m-2ٽ�����0�B\��oߺ]�pӶ�������.]�R���r6���z��X���9�V`��c��Ÿ���wX}oF�\�6|����
C��۷��v`�=e� � �U�ue2|�~}BV�X��+,��s���-��C��|�+�e�0��)5������&O�W\��{��9uCo҅�ƀ`q!\��*��cZ��qb��,��Z\4G�	��ס�7�R�0�cH\<��������ђ�0l;���ba��<�'<��Ƌ:ݦ�W��Y��Q��n���qgI�XHƁ3�m&\.����oI�O�b��������3TX��u\NHʝ��Z���YH�dM�.�ib�8=��Ԏ�(�7K*ŧn/,D�Sɞ�d�*��S��Y�J,7�1�l')HG���3sz8�6��q�gu��ߊ�,�S
$K�o�5y�I6I�J�ř�$�vZ�Hv����\'�`f�@��q���	�&�.^1�l4�c�m�2�㞰a �u2�rҸ�v>8�Q�"�D������d����)ʤ�˸N�̹�7��+������ȯ(������:/7:���0P\r|c{�7
5��ݝ���;�%u��n���@r�W�ٍ���S;h�Y�a��6��������8<>�電�"��Ǩ1P���Ct�S_w}��Z��O+Gc�fZ(1���~:��D�]#������������:J���M�0>�P8�Gn��.���0c�	�	p��+c���'�&Ĵ�u{w>㼰/24��r�U��S3�0i�o���4��>ҌҜ�ˇ��-�fYk(4_I�ݗ6��hY�O��z{3�m�LS��e<m'�2�bڃ�`�1�h���C{������l�Ai;��"6��a���v�0�T�G�([ƀ��$O�]߾BIc|�C(�7�����-�,^����5��*�
�]�[�:��µ�֣�zZ`^�`S�i/5�-'�@��!�;��ЌF�<�C����S�oGL����q�3+_TF�bh��HVŖ	���z�xsa�Y�s<��^br�V?v;�)�c|�:�k��R�<�_�@[.������}���s��a���cۑ{(��¶���q���Y�۾;�lϒ>~�)AQ���Sk�?�h\��A�i��_�Iٚt���A��>���E`Y�O�tz���)���Ɨ� Ԣ�F�U�%I�f+{��'��W��1#�T�{�Gʢ��m8�1"!:;��\�[\��sp�[�@&�	�M��ס���p؛Ço11c�7D���*'�$:y�LJ�gѴt~��>����>о��_���i���&ɜɋ�7�O[�a�B	]�N��Y�<?��ɾ��X׆A�O%���7�C-;/kg�TU��Hf6B~h(I�:�e~sK��I�_O����f�x0�l���P��4���=pv�!��)����]��<����0��
 �7��      z     x�u�=N1��{
_`V���V)�H
hi�����"l��8AJ�FOS|z1{ʶ �8z0�p�
�K�#�f+��W���3�,��&~�����x���Z��K_�x��~�$�e����>
B2��Jeϝ$P^
T]l�����M{H�d@Δ|�����_��!�����}��F1��$���#�dAS(`rq�v�]�%x+�rSUn>�ܝ��<�I��b�9�S{v�,/&qm��h�Y�4�}�u��p�      {   �  x�m�K�%GE�Y�xP!)��1<44�m����G�QU��M�)/O'u����ʵOj!L�Ƀ��J�-[I�������,x��ӌUY��Z����|S���9���c~?�Ո3��T��(W�7�Ǥ���	J\�rW���T]Ǘh�IɊ%*a	�}[5�
�wC~����I���4?ٮj@P���rY��K�:�,y���:���Ё���Z�󊖿��P^� L�~~J:Y�j�a5�FM0 �9`J��*x-��!�s�ae�Ҽ���U����+��oN�Ԯj`��35Nf+�78=�kX�s�r<E
F+���M�-O�5��� �b�+����rU�!�yj��Aat
�Zn�ra��.��Z��"��g]^���?{���3��tUB�b1P��^[#߁�
��G̼�wQ,F��`idP�$"�
�� h��	-��`�U��*֑?�АȾ�Vn)�4b�v<D�0!�;2�,M��٢<��!��A��6>�����S�Ӫca�W!�vX�.��lk��.r��"�%�Yt$�!�W�=��vn§◮j@h�������*�fƿ#��x��b��$Sd!��8K��;��5����؀rU��{\��)�F�5hF�X�Z��x�"�:�9�҅R2�O�e%�W���� ��} �!!_8�q۬[Y�E�Y��x�x�˪k��ޒ���+B�a_���W5 ���âFT܄���⤉C��x�l���j64$V9���?"�,<�~3b�n��쪶z�Wf���T�o�JjsX�m�]�3��J=cW<���~F��������eJ�b��,� ��\�KN�S$#&�i����%������g�q,^�6�-��:���^�[lC<�>w�g0������6k"�����[����b;Ůjo>�B�:|F��34^aD���|��m��'�kfv7k뎠cx:�_��خjo��������H      |      x��}�r�<��o�U��V�J��>	�?N�l)��_K>٩�� I�f,K}$㹚�����H��,G��sf����	��@��4�!�)��Qb(�d���j��LäN�ugt~�g.i�gJy�%i��d6/'�Ι��?�ܑ�v��Ύ���3;����]^~��E��Ε���S'/��-�v����ǲCθ�4a1�O����.�鄌\�0����Ϥ�~��t������I�xpyg��v?��\F4�8%�SsL5~�R�32]����e���������1J;Wv���?�Lg�(鼈#i��LAET�,��d���Zz��:�2��A�v6�O�1�Vi�u��b$ٟϧsҝ��G�(�H�|x~}r>�V��D0�Z����xL�^�䇛/P|�$�N�0�eZ.�j�ۥˉ�܏A�dl'�+{�:��|-��gx�)���$V�j�;��4_e^w�㪻W�:b���?�r#���Z����^_I	���>�r�� s�e&���tJFI�TTd�ȅ�RW$M�'�0Sݜ�N�ҋ?�3�$yy���G;9h�JGN�bYN�Iw�l笼�!usG>�0i'�g�����'|G|��W�'��d�,i���|�n��Y�����<°'����~V�ij�+��{J�y�mAN���k¯�_���v:�qČ00�5L�<W����9/��5��e�����p=9����_V9��n�n~�˿7�9OmN&�'��%Lw6�dS�+�	����j��Ĺ|�^����t\��Ҙ`B�Lt�V�K����[4��w����`�v����끁��1[�a�<��8�o�������X�}���q�Gi��H�\�E�E����1�m*H4-��Te�ܛ��`�4#���S��?j�����In�����s�,M�f\P'��ו��g��~�y,x�;���0��(����௒��"�(YM��ǖ��/�&�9=��g(�Qc��l�d$�eQ�+�N1��&�I�T��ų(�aU��[�`�9��}\�\ȇ�Sw���¿��>ُ-������L�����M��=���x�L���`Wvn��C�a�f��%�Kմ��������|��Ο}W����&R���5��y~v���"��oXF�����*��h H*����2�ik��>���-�a����e��;T\Ջ�Ԧ�%̽�E���p+��f�,������ރ��:��_$	��0�)}��W�	ǔ���Z&���W\�1T����:Vl_ϵ�RG��`�D�Ei��H���iG��5�,w�Se�ȇ^Y0�cz���+�{q?�F�J������Q�*��t=��X¸��y�gB&TrC�C��?S�RM���/�����-�%�&��� ��TdmG"��1R:��g��z	6�Մ<N�f+��ˆ��8�bly�x<���f�kKw�t<�����=���fd�~��C�����+t�*�<QF%I�Ͻ�6KPJRӆ�n7�y7�@�
݄��~\��_� �t����Hl�y�4�繎l$#7�HcM��沈;�����ç�ը_�ލl�h�Y6G��j�W��W:[�A00�RD���N��Wf�&����nQ�F��ū�V{�PH{:��-W�S�j U�H�`��"��Qc�2@�_��:hp��N��)�,��As�?�93��mY{ˡ[z� �������xܷ @�@�g���O�q���Z����w�Fq`�`<��_�H��K�3���� ?M��M��T /T*ٚ���G�\�\ ���j_	�E�}�����KS錧�6]�ZQ&�"�i��IҌ��o��q��3����l��ًll<.�N����)�`�����t�9N4�l���潘�� 5���{7b@!��4�$���:�r턍�L��4������,us�N�������L9�95(0yf�G��i�� <p��������7�AO}7�3�����.�_@��k���N�f����?����1�Ǭ��7��1^��� �S`z����Ua��<�\�H&�~Q�``ZX�v�aUt��-�=�L��3�8��v|}\�s��M��n2]������%��O@�s��-yfg��x>[�c��t����=��ڪ!5���m�m��;��v3h�=y�0��K\��o�"�T�A�yz��*a�e��N�K��+�4Q��_���\�M�b���1He�(�D��,�i�DJQ�<�ȍl�PԎppJ>�p��?�+,Ď�('���G�|4���RٰZB���g0�C/�OdX��O��H�8%�AN�z��'~��&�A���DF+�+�10V$�=��Grk�
�r\�HX���a�ږQ�i~Ϳ�u���{+�IQ; �F)u<2u�e�Rek��Zo����qE�W���ɢv.O0�&A��������n��V@���.xe��i�v�T��v��V=�s5���2<w�����T�/�44�J��E���z��T����+�K\��"�������N�{pM ]?zS��,;�em�����b�C��[�:�c�@�G�����0 ��[�0y�r@���9x-�єF��1F0��0�#'up8��Ӧ��5d�Tf��7�6���ۄ����	��=P����;�0��:��G$�>�΍��20�=�c��h$XBm��/����x]��^	���M/�[,,�:� �r�s:�k�V��G�����7�C0�G�f����0H�9n�4mQ�s��d	��S���Tb���k��P�������?�Me�Z��&�#y2_��j��F���U5�%u�m�(�a��`�-�������K~>l�ΌN7��f�~��>
K1�%�4|(p;���3k6�E�yS���Z�B§���E,��t4�JH��f��M͚������=��w���O����N�u9��E��H�����ȇJ8��L&�����:8r��K��0�Qd}P'�M_ ��V0d�}q�cp!{('�d�E���Ubh>\�f����+��qe��&N�֕%i�h�e�z��@|m:vK�O迉�k\ٍk�3�H>����Q�'��Me������)nn���3M���=�V�7��l��Sb�6�NJ�;`�'��2�¤�o�<�0�qJ����Vs��[rs���S�>#MZ|"A´��o - �����6�[	B�@�^���d�kP�}��ScD���~��"�tA�,<$�M����i�$<r��G075K�F�������F��\�����s��	�h����z����(E�>��c�ZJn4oа~��>��>��y\M2丵� ��]�!z� �U����ոod�~%U*Jt�]'�4u�Jɤ0LŢ�_չ�9�n��sr��J>_v�g�w>�8H]����!�����6�;�ؼ�Z&@PR�����;�~�ۿݐ����9���J'	`T��U��jI�j[au��(�v�f����y�Zs�*N���}#�� b���L4��S�6��X+t�Pc�n���q�؏�G��)F,��h�D�$�d<M�g�Z��;Dͧ`��������m^�%�׸��{zv{wIκ'�'�T�
ܕr�Jd��>��xzM�	n��m�6�����,FL"�}=Wk(�Mq�a)QD&�IT$9�U�2�Msŝ���.�^�Crw=��ج$\HU[����Oa�����߸����S������J�?�t�=�Ndp{��{�=_v����K֯��e��b����1��~44���8�jXYϏA�_,GP��1sd��k?�$�	�1$�W�]䬤�6����\�ԍ�Y��|� q�tC�n�OAO�;���(�����^q،B�G?����E�X���׬e*ŋ*��K� �˅űN`O� ��"5���i_���^�.�~�tt�l�+�;�5��,�5RO�Z���E:1y&�����m9F���&�6����������*�|�Ah�7��� _U�=Y���������~C���� 03��A_:c��47"�Lv��P�ŰX�<��/��a��^�^R�B>Upp    �C���K�oaY�P (?�3~�_�OG�����OBc�����|���B&��_ ��A����ʎᬛ���U��*;K�}R7
i���IQ�X/*7�Nh��nJ=�{�Ć��>	dR«�`r��&i��"�$h���x�:]T�U�����%��*V�{9��k�y�%פm�.���r�j���v�]�����@� �$5)�m��,7��TS�����Ӟ����7���Oo��m�׌!Sv�mR4�A�ƫ1��\�p�Ó��!.�ZN���S���%���-�5�����X�:{�g�����(΅�(�}w&Ҍp��d�iv|�r3����m�An]�;*>���ȃ.�\��4�/@�s�z �cs��,�˂���h��G)q�Q�>V-�o5�"z�
��#׀�;w#K`p�HŊ76�,~�8*CK˒��E��Ո;ձ	��8^����`XO��]O�����bW~	�~����r��%���'���h|-��AA��V�V�!+��ݫ��
�=u��'Y�"�U�B�HaN���7ա:͠��"�k�Ze��|.����`c���>j*Xg^N	&!<�Od�#�B�D��7d邀��ԢER���>\����2΢T|oG�#�9�6
�e�)z�� �Z 1��jH�9��h�I����|2�ȗ��I�g�|>��"�d�h#��_��˶4)O���f{
�f�y]%^�W�`3�f�]��� �at�k���6:.R�m��U7��>ܲoS+��n��/�h�28� R�$I 3!����4�&���Mm�nD!z���!� �z���M�i;��V�lS=����IkH�Yg��.J
����Q�u���n,���v�����0Tƞd��Y���`�Y�N4��m&S�?�v��k�;�x�9�����H\.�q$�f�qi��(�$,q�0*�;O~���@�U�o������̚Y2M��Cw�}ȯ�Y�7mg#W����]�=�EH�4��	{/*`
��𴻩�F�!�_��qS��k���4�b�" i�f̂��익"��\�F��jGCЏI�zs{1<��a�����?���������!�w~��v���.�����~>��A����.�::�u/:*�|���>鎺w����i��Ͱ��X�{zv~�9�3�?+�$�3��>'�7q��f��(�#��'ǌ�x]��#bC�&3�d.s�ϐM����n_4_����$�>�2��_�3i��&��p^�c�^��6;�E��a�g"J
�DNh��Mي���xS��\W���ȼ����=% �*$�~���&��Y��Lml�V�4q�l�ۭ�_����ד���ш�D�.R,�Ja1�
k���sS$e-���hX��'ں��ݼ��8,`z6]���������r8�����8�;�U�1�>> /ڊ�J�L���/L�^b���rC{B]K0���j�9t�Btp�1��*}�`�nq ����R(�*X��<GzE��UD�Y+�h@9�0[_2��Y�sl���O����\�擲*��
 	�5/W�>��*O�j�
/�����.K���y���bib0�c@@a��$<���4JS7e�;5"�6ܛ��]���՗�*@�ś`��̍%�UAM�- E_����Q�
M�Gj-���_3[�s����2U�:��4.24�Q!tN�dyL���ĺ����Po@��_ pì��o�T
�פATS�5ˈ��ò)�y�O����_]HA?
��<�������$	��c�S�Tl��n�5
6l:�j�q;4�O�r��`pۿ��+�N��[*�6�
��r}�w�����.%�ף�����dY$��Zq ��1'���4xBG{Y���cl�� ���_i��^g��>'h�h��H���@(�����Ŷȁ(�@(���M]�b@��r~��?:4l������5��
����QÃ� o�6��n{{e�9�1!@�5��*�&�ܹĨu!c���`�$2&Oj'�]�Y�68��5�yl�߫�|�}z������HDe��B�S��7�|#��]	ƶ�e���i�j�zu�}�u�e��j:&R�H��Kq����� ��d�;���w�8��i�$�	+�p��(���L�bX5��H���_�\�Z��t���?7���3��؞���לb��Kk�o����8��<v� ��E�L�|�a���at�`q?(P������7S��cj޿�
b�u��t{���땓��j���Se�:�v�^�1�����`	��$���:��2׼ =4%�78����P�;_�I�Y�>��� X��d$���aV��(�O:�M7����	_��3����%�ؘbֲ��"�*�ƈn���v� ��/1y��D XM$�cy���[�6��M~a;�׊�m�{���e����E��s�i�Ϳ�՗#U�z��_D���0Q
��������|�y���F��&��yȲ�������MNQo/Uql���Z�b�^L�U[{�_�=\Ye���w{��0�(���J��)/2�(�r	b+�7e��}W�RUU_ ��Xth�M{�.�(����>�'���l�,o�*��],�?������e���`�`\�y�`C�M�.6����Z�+w��i�������sPZ�8�#S���<JiQD� �}M�����pԽ$Ûϣ���>���ۻ���-�~>�J7��u��[r��İT���1���f�d͕)zj���r�!��� ��Tc���E!��$+\d��9�6p��̳��͆��O/n0\�e8�^�tG�m�Odx׃�n�%#��hM�����I��8����^��ߒ�\qG��)�a|�������m�ߠ�u���S�n�9  ��ǧo�aU�W��~�\T�����|_������c��U�~>�*�����[�x(�r���}"W��Յ��|�z�5b#k��{�0�.U� 	ζ�E�0*f�2K��MuF�	#r�t����Q�m���qY�e��U����U�Ưٌ�� :(0���}}��2jT�
�M�.��+b��S�USjI�n���K��Y��}9�6Ve������tdG���P��~�^V�[Z�,
�V�,\t����y�=B�xr����a��ᤘ�Ϻ�S���gGx����>�z����<T8����F�U���,JV��X����D���b�3ل�u>�Ю�\ޜV��=?� :g��ޭ�Mќ��h�^<� ;��|�p̍ie���=������]�qK���8�>�D��:�y���`;o
�n��ǐ��P�K[�#Xƈ�o{k��i]W�L���,�.��2�¤Ᏸiʼ�\���;�m
�|M��I<�yZ0�檉
CVڱO숸ӌ籴T��28+�H�~n�2$��$a�M�ui좜<Χ�OX��[_;����<9�!/�y(m��#�o�N>�#N���h��!���3 ��G�ᓣ�}O"�n������%����.<
��o������ql��;�<!r���N�t;��|��3��+]m[��A+�l�b�sG�1�U4N[I�c���ŪI�i��<�T"�����7�>�G`����b5�R��S�6T"`,x��j�u�y�h�j���T@�XW�\0�<��
,0V����L�)&wn�X@��;�G;�т7Bt������W-�d�^E��&p@`�y�Q{�����L�z�x��(�Թ��²�X�����ȴ� ޹p����a��ƿ�
�v�c�߻-��|+�!�-�F�:{&/��)T���z ����{Ø�/����J���i�(�F�j��HKk%��5��6��U�2�6�+U���({��Y9�������m����zHE�����`�;_�X��^�#��
 ���=.�;������VÅ����]xω'�!�q9h�g�(c���ƨ���Ͱ�|���d���G��AD��Mg�U���-@,*yT$EF����ꦦU�q��`�O��V������ϐ�P9-������r�k6t�1EU�S��� x  �M%gu�r�:j��ON�����6��>Ϳ`��}���p�gT���^X9-��),��	XL`�laE^s�h@��Ԇ�z�7���~�zں�
[����$�@E9�벥����+oۊ���t�����,�x2������=|�����ܹI3�����{����!$���|L��i��W��a��`�' ���Se~������R��a}%�-���k��<�e����j�Fi�-�Bʳ�D`:.EOί�������i�<���7,����
���h�#�1��U�.��dL�!+��߃�c�6)��lN�؜DgW�l�ჯ�C�P'v�Y��>U�L�K0��8�p���Ȧ�����E���q�@ИߨØx{4�k#�=�p��>�S*���:h�`r��,y^D^�'�Ҙ'6N�Z�PҴ6[Ǎx֭��o�]Tg{{$ZoYU�,�+����K���ӂx}2e8��(��7��5L��p�6���Oě2<߆if�d׾����}A�>}��5�/k�xr�|��ù?W��V�0�C�����(�f��s6�PH��Uls� s%N��j�EOv��&���d����Sғ�O��z��0��x�Y�!���8�����z[oK9!|stl �l��'��Z���o忧����e��*Y<�Œ��R���~�Vt}��z ">n�5�A���"�~��C�k9 �ylxRhjET%3��̋[��CJ��"d�o���.�^��A���﷠�
�TI�U�X#����^�� +	|}Y�����8��K��^���|\�RLo���Vǣa���-x6~�Cu:�?rT����yX���*���`]c���|��~�?�	g������Ļ69�&5�w.d�5�������/�����j��\������1v���P�}�o8��JfM8˥�B:�2���zs�A���}�@��\�>"��K.�n�ϻ_��<=ط?qkYS���������{��WOb�{DԜ�{�G�B���6�SS�f���.`�2��`j}l�N�Š�G'Ӣ�S@
����(�M�9"��3_9�� �U���"�����X�]�����T�-��^j�Uy��$D"{�F�
n��N?Lr�>����TF�2��P�wF��<�x����FG�Wv���ǯ:�E݂+���H��_���3���&��@���_@�3�y1ˇp��_[�a ��&�5<،�� }�(G<�Ĕ��-�F���;�+�%x`��S�J�@0h6��։jjMtn���pnL~� D�"|I����	Ћ�B���Q�ק���j<P��!@����|;���OCP�����j��s�I����
&���aYS��2i��5V��o�~f�e�L�EmFӧt:&���y쿪 �X<�WwD��Qxm�9���})����e�I'�i~=R_� �WAȗz����cS�H��2�0Yƪ�1vc�*kch���zN�&�A�w�7`�* ˜�J*����T	���h��8�� 
� ���9��28���:8pPE�ď\�N>{���f=~�"*���jDHi�p9�����`n�C���P���p��|�JƟʪ�l�m� iD�" 	x`y�D	5@jDa��h��V�J��ue0_���v�`�U߇MЩU�疙f��"U[�Z7��G^ƒ�z��D�j�奮��qyly���S��u�����IY���N���59j���}�k��iew�Roq�\�u�K�`�|����
q�\�|[n���i>� �/O�ն�K=hɳP� �I�a���+53��E��)�#������bi �ĶZB����!n�Ŋx�W��7�î����6,�ږ�B�����D��ӟ������,�      }      x������ � �         6   x�3�q�t��500��?N##]C]CCS+#K+S3lb\1z\\\ ��z      �   4   x�3�4�4 BC,�!����	��50�54T00�26�26D3�25����� ��?      �   �   x�3�4C�Բ��T�����bTN����������!H���p������B@�k��_�g�+��7�S+cc+�J3((A�P�Z���]�����$ahh�e����晀l��E$"�)@�pr�9]�bt�	���)�@���qqq E��      �      x������ � �      �   '   x�3�4�4202�R�����
�V��V�XŸb���� �	�      �   �   x�]��
�0@盯��B*I�.�� .�S�4Im��C�ߋ.J�L�p8p�)p���.v���p�RT9y�O��D���S��6P�j����>,a�}pP���bV\OV����բb��������@�ʆI��NȖ�~EyǾ34      �   P   x�3�t�00�4202�50�54T00�22�2��&�e���E����	61.c��0�,��q� 58�a�`h�M�+F��� �%�      �   S   x�3�4�t�wrQ��wt��sW�ut���s����
p:;z��r���*�Z�[�`31��CC\1z\\\ -��      �   =   x�3�4�,��/�/�77��4�0617�+�K�4202�50�54T00�26�25�&����� Q��      �   �  x����n�0���Sx�#_�B�H�
#U����*	������I�)������J��V'�֐��ߌ-��B��K�~ҦA�6Aqʃ#6!4�4�|�Ӹ�a��@��rG�1Y�:o������`�h�^̿i��M��g��0���uU�#����!a*�اav;S4@��"�i�Eh��7@��*L��2�F�U<�T�~"���u��_�
�����:j��r�}B��W"�>s�����y�鶎��̞�W���|��Ҷ����A��d��0�ȬTƸ>)�'�� ��.p�i*[�,K=l.�N�\�?۟��MGH��V�<����*0í�������yxt�K�y[��S�u�V؟�V�`�>����V �`&��y��gU��:M�x�J8	���0,���֑�x�H8)Evf=�Oʐ�����u�)��&A��r�R��tD���s4�A]��ć�*�������i q���z\�*�C|�n�h�aT��Ϗ$�`Xq�۳i`�P<��^�M%\�Ѱ�辸n���i8��H��
�jwi���bOl ��HU55�!��͡[�B�+�$���j�:���P���
djG�7�$��0�kfU�'������g�18��~����_��x��      �   �   x�mͽ�0���)���Ҋ�)1
qpr!���mR��5�������>��y]|П�r�3hҦ .�Y�,L9��0�0Mɇ��.�6�3\C=�}��%���~ʂ7�*!-��[)�XA�4�O�u�	��}��>���h-z�3���w�:s      �      x������ � �      �   4  x����n�0D������1	�!�B4�r�%%��T��	��Z���@%��f<���7�mM7��z���j{���-p�ӄa�HS�c�Cmw�F~���?���Ov
��i���xXln�N�b�,�ʓ��#����ۇ����"9�12��iڐ�.Fi\!��0wη�kN�����*�(�ϕ�#lJ��ʽ�����{��VՕT0�,�H�zh�{���j�&��������D#nT<�Ӝ��2��<jy�T���Aό`RwC��.ÆAϗ�u�JL��b���Y�u�Yq�e�pICM��P)���!�zӷ�      �      x������ � �      �      x������ � �      �   R  x�m��n� E���i@W��ɄUڥU� mӿ�ت��f�pG�����d�+�1��lO�D	B�L�?>Ll�	����!�,j��ߌ���r���"��^���ь���-ԑ)ȁ�$.����}��|�,h�n��̈́��5���{z�!�S��P� ��`q1w�#����:��m8�����ނoh������XlACK�ѳ[KR�$],f�ְ:`Z{�Ԟ��';����qq���N����D���]��?{4����|��3QL�FӒ?km��m	����\$�i��/7��������-�]�AIwc61�_s�ճ����f      �   0  x�=�ەe9C��3˼Υ�c$Q�?w/?�������zYZ�9Z^���3=?^_�%<ߏ�`����7�:{������qDM�q��Y$��N���y��e m��O���ȉ/pV�w �Av�򐥴�����(a��E���3Ɯ/-��x[y��n��n>y�����׎�ƨ"
��H_�`6W��g�E�cOB���B�]̿�����Ȝf-���'��4��=�$G��6��.=9�\�9G�y�jYqU�A���N��a!���2
M}{[���f�k�+�E.-]Kߡ;�� ��⻟,�4�^����7X=v"i2[�m�ә��@E4wi�@U�]���Ľ~�������w�d]*�er�xh��ۈI�>�֠������{m�{c*�GC }��*���y��Z�@���'I��n�����3ƾ�kϫ~�_�$������`�@�I�~����c��2���ԚIP��)L��,�04�yd�f��+vr�����{��5p���_<Z�\)������ӷ|��}�������85ө      �   �  x�5Sɵ�0;O������_ǷD�c0� ����i���"Pʠ(�����]��8�Tm�>ɰs�qE��cc��)�+T=��y�->VP��!�7y�%�Ē�	�*ai�������{ O�_��2P�}��3�%mL5A�v�QΨ#��������΂����)��g@�	l6];����=H�|qg;7�-�H�ͦz}X^�&L�f	.��IM����;w��<8˂-�l�ޠ�f߭�Sy§u;��غ��[g7=��!�����B)}�b��X�4�ǻ��I�D�k��e�h�|�NRJ�c���-��:�?�h-�T宆S��O2f�ł��肐�B�h��\f5A�Tё��"Y5s�kE����.�b�H�}E�[��m}{��42÷Y���YI����<�%�y      �   �  x�5S�q 1{���p�{I�u��Af�V�c=�7�}�H�|ux"\Yʌ���y'�}LGJ�P	���#&_&���K��v%������D鼶f���;֩��VP1|�����)7�Ut��3VR��G����K�F}�2��r�I'�yܷ`5��	s�If��%���]c�͵&C`�h���^ۖ�j�PH��bg�r�8��z�HTWN��Qa��4yf�t>2���|���Z,{ik�M�4�#�v+>$>�0�\�WY������'��j�t�j���=�<W঎�Lop�-��E���5�����V��%��-��J9me��ww���Lݓ��R�%���:o��:1B�RC01@�C���]o�{� ����3O��G�Z�鯾�!Φ�)0w��g�Gds�z��ŋ����s� �9�      �   B  x���;�V1�빋Aq��N�(��:$F��%�Оo$ڜk_�9~��}}������������矷�k�sn�I=���x�:^N�̞p��,eTL����@���|��ؔ3�X�����\���;�4xt���Qb�.���u�^i��u�ev_Z� �+��Nn�E��1��L�D�t�AT � &��� ��$s&qm�0��[3p�7���^�Mi�� @�0�6�	FV,��z	F��Sv �����H�����X<D� �SǓS<!0B�,1]l]R/ ��2)zlWD�Ҳ)K)qε@�|�s�Cq�:��Tk=(ɇ��ôQ�\P�5��y�$A��9���6�Kޝ�$H�� �R$(-���!6��ߤ�lb�q��/�t�ۤ���_���*ݟ.SP�mxRk�('�F]��:i1�.n�۹S㦏���m*i#�$%���6o�]��=R=<)C�Ҩ-phi��+��B�##R����H$$�/ ��>1t�\-�q���1[|�����$6R&	��/:jk$�D��4:`�L2�"��wjԻn�����"H0�[��f��
b*yUX�O�����-�:V�0��a�~�E�biUn̸�D��\Ve;}?Ȃ+5�'Qq�]N�1C��&UrFq��X6�&`�L��g��RK?]PGb����J�cjo r �CԐ�W8�/���Q�vJ��s�~s:w��!`}�G� %C�T�B��Z�r
��:��
4���w�h�U9���;��R^Dm�/��-j�(U������F�����Щ�#��}5߿�<��+u:      �      x������ � �      �   C   x��� 1ߡ��1j/鿎S_�2@�^��1��1hGˎ�F�d��l/�e��r�����Z      �      x������ � �      �   �   x���Q
�0��gs
/Б�Vg�2�Neź���	UY_
y��KH���./oo���2F.� ��ob��Ÿ$Z:�IP8�K�,�t�'I�<��$ܨk��kj�R�DZ�&�5 ��ۙ�I)H�Tid�k�ǟ�x�J0n������������Q���,c��鼚ntg[V9ֺ(�W/7 �ͅ��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   e   x�3���K+J,.)*M.)-JU�,.I��44�4202�50�5�P00�22�26�&�e2"�(7�$3?�~#C+3+cs�������!P�����+F��� �� �      �      x��}�r�J���
,��u/����5�RRSJ�̪�"H@I�������{f��
^�u� q�>?nپv�?D�߇�M��B���s!��-��f3-�n���1�_�c>��������z�~/��/�8�Gq�Ns�����q�\|��������4L�c�L_g�>���_���nϴL�(��<���:�&p��ax}��p~���ؾ�������`m�k}n�>�'����οS���i���nkX����T�G<Z�x�M������'�1�a*����&���� +�v�E��lxwAkX����3���(+?u�cTñ��&i��~r~{5�B�8��<���{��b	�Zi�\H�1mg����>#v�d�����</��y���`|ž�x�ƫ3z��?��U= �i��ٷ��=��f�&3��kT�u=K{��D,�<���cg�lX�}*
��t�,�7m�,���3�*��.@O{If�C�SX{���A�����ԟrv`L�3�6�~�gy���t-���8*>v*�q��_�������[0	��'�LӶ�z��O�<Y�vZU�!�[N�C3M���Air��gy������.�t�ڴ@�p������.6����_�i�@3�����8�����Ox�+�}�îLG�N".��i>q)3�K�uez�u���R,+QD��H,�~��z�T�:�:MN���8NJaD����,�g�XD�׍7ח�
��Ι�T��׹~�j�D�5�=P��IeF_VTW��%�K�!���IT�$څ��]������4�DT"��6
Ac�k!U�hN.#z����=#ڋ`���q�';o�7�-�Nm���p+�,��h��<Fi^*�v4u`p�9�i+$2M}�"Y$��Z�E_��y� .Юy��ST|�@��i�:_�l�\�&��D�L<����/��,6��$�h����y���D��3�#�K���Xp�2�i�ӆъO��(	�J��}Y�]q�v��U��M�������ꈴ��|�����-ū�T]�l��>x�f醱�X���^Z�&�+8e}�������Ύ����/cE�Ѐ��|B��n2��}Vu+��xjϴ\�^��Z�栲Ѧ*bxs'�ӗ�����8��o���_�t��x[���48\rn�
�,�Zw+y�;d�W�	G�0g���Zh���n���*,��Џ�/�q�q>�8�l��4��\�r,��έ�P���#�����O�1���r��p˫�(c�p޼�ٓ��i�lo���o����}�L���s��?�w�M0z������%�wÉ3�aVX�{�`�ܙ�0�O홨�ѩ�Ԭ~�U��`]���bҍ�-�����sbܲ�u��?��EΟ����{�q���DGo���z}{s����>N*�l�}�)W��Fc�(3[{�a�O�8�S1��Ki��▗;!���*5��k��]�mZ���9ۭ��о:+��*�s��a3&��2u՝k�_�g�qW��H���㠏�\捧@�1�4�s�c��`������7��2\��̭N���ݞ��}�2<���|��������A3�r�}ӑ��d�����}��@�!���]�W`�a(i�fc\RO����}'7��g�딹��f4���0:h7b��k�}��k��p��O%m��}��Z&������8�o���n�sO��ek�+���]�%�lQ�[T&���`8P��,_���k�]�YL�I��\�$�#��[޹K��P���1\�s�r0+_�%2�0�|��;��E�#=�	�1�<��:�.X�U�X��ȶᡭ%tQ�4�s>͋��P9
'!F:6�,����m�ܤ�p؞nU�/+I4��|m�Med#[�:��[�vG`�]��cP��,M�U��7�+����`���%��k���7^	�Z7`^�_a `�ŗ[�#9�������:\�K9S��T�4������[A��S���K�
L�I,���s��Ӥ�� �*�X��!(�f�ե���<[;O��H���N��6�4��$�{D�5�v��Ŋoq�ѐƼ�F�
�^<�%���*��Ͳk4TÈ�&���d�����S~�v*�c�P� �z[�|�S��E%�H���U����e#lߛ�#�x]�QZɣZB`U
�OE�eRmp��r!�e�j{����Ht�s'<�q�U'D�v��Gx�ԇ&R ��	�*O��x~�k�DF����X�o��.�՘�*/ 2�\��1��l�J*�R�JSF�Vb��6r�~��E�^�S�b����;�\���N��w{��iy�{�S`&��6}����Jy��RR�A��m0�X�wy�>�I �-�W�U+na����
��yi8�&Qڶ�YF�8�\.DYh���\�4���%���snp�5(&��kc�4��E�7��l)긖�[��+*P���<n.�藹L."e����V򈖉�"�����kL���LW���Q�.�C<j��(x�">j�g����6�'M���$B`��x�,jID�3�h\�8_s�]��Vc6M�������&���$�R�C�X58@=*�����m.÷u*�:�%�7�Y���%f���2+m2��=�u36�)�c���FS�&/L�ɗ��^o�v9#�|���@�2ϱ��=��)g߱�����I�g��`\o�T`��Z��O��h�,��κ�;>�nN��O׶&�Ь��Q)��&������� p��q���G��M%Q�qـ�+*�T.�+�4�X] ��=rY#%�\j	��E�K@:U@�5e�\�DN�z��ⶮkiw��VM`>���_��������(��9�L^O,�nq[��鲚��J�v$��*��i��D��g�P��ȇ�	�^��[��Eھ����:e�.�lځ��7.7F�2L��U�=�T��StdzD���O�ѽ��8#y����8m���3��`��9�i�)!
�:���_��D���Os�9˝��~�@zD��x�DA]��^za�:�$��:`��.��}%�hNMЁ<��S���e��2h �LKnS	RUL:p(��)N��s��2��jw��,��2�KYD��)e���� �(G&�U����k�m"'䂺O�Me΂��g<�U-�	Ϸ�!Beт��?�D?���k&l� �4�y Ku*�U���&
 �X��U/y��W�lY�V���q}ân*i�{���PoX��e%�`[�Q,dz�*��+�T;��	���,	1kI�l��(�7|�I�w|&#>�k�ǡ���Y��3ć�@��C���2<�̢|�.IE	l�"D����d<ި��,��/<��R���X�z�9�u�����1�I���&BD�D,y_'y�ey����{X�$����:��Rm� Lr��c�în�&~�L�#�H�'b�����iS��<��P�f�mqU�]h�Av��y��!��=:&�G�<�.�4�C�
M��s���f� &<��`*L��P���}h�Y�>*\�g �WL+��|�}K��C��������Sz�TPq���"�s�T�f�1b�of�<�{�� 9X�fx�������-<�$������0_����&��X�^��ls_����G/\!|�6x�3Q�'�,�2�f=.�0(G�[�Ūb��L����h��#,��$��p5�W��Yo��*bh���g�VdX���?�N�u��{��L�cNĲ ���U�WVC��~�
�7Nk�A�Tdƾ��G7�X~���|����)woӈBZD޳G��@e�������Xƣ�(��ih,";��� U�Bt���]���d����F�+�2_�<[dz��=_�
4&L�D���`�ƕ�XYoT8o����J`Oƹ4 +�T&"��*|�E��$������6ǩ�ޞd��~8���I�@*?G��'a3 B���LC1?�����H�+L����0����>�
<l"H7�4c1'6�j��8�)L�LL,�rb�����}�Lć~���W��6X���    k�A �1a�ȸN8;�Y�"�?���-����b�A6ն�Zp�)h�6��!��d�Ύcp��GǊ��*	 �T�ǲ�!�i�a�t���<��1�DZ��"��,WSE�7ɧL ��\I����ߤ|g⁕Ojx�C�ɘ�/v�u�!(��I�$�e=�+%*�?�6�吴��*�?��Di,�e� ա�w{6� IPӪdv�X=�*��{N[�go��;"A�(�Q�)%v��A&�Nb�|�U�B)ҤR�����'_�d�CE�فv>�s��K��Fơ���C���W͌�����:�%w���RmI���7�VNg���	aG�.�b-J��VB�(�bI�R�b���S���]�U��N�F�AU��|٥�������n�Ĉ��.�#d?�p^3�e�
�
�+�E5i`�A*�Nr��G�{� ��Df�k)�
XK�$��J��0	�Q���*@@�(���2:I��\0\�X���ĭ �@&�uj;��)j�Ch��9���N���x5#��+x�}��c�
}蹁l��*"K��pz�U�ߡ�#z��o�ܪ��$_DRMMR�+Wm�:�TR��Y�*��]D�C��<O{cE�_�f��ʀ�B�y�_Pbɗ
��^)���M���Km}S��<L]�儘�����ZPD,��T�L�+��*d��[�u8�0�z�L%�j	�veL	���b+0������;�h.c)^�;7*t�绊'����H�<"�gQ	'�n���},[>�i��ɦI�K����y�&�(���jQ��y��&��4B�$Q��q��e�ب}���D��!�S�y��5 ���AA���^��=2�+Xq��$�z,�S����*\�*��P$}�;y���������$߰
B���cR/�m%�h��)�@��G]X�$:\|�*��Q��u�c���r���|,k���ZȨ�nEa�JM�H]�5U)�D�Ӆ
��K*>�R���
��2-a��8�]�۩���o��Q_*�?��E'Y8�%P��H�K��l��%��KqT���i���2�^c@slb���xYyJ��r�Ә���~9�V7�A��<7�p���,��"�gv{�Xm�]�o�$��R�%զx{';�P�+�*#&C���B���M���-������N��(A-0���׵�T�GXzt�OU�B����/�hҪ��R,��w�6��+a4�!wGxT>bcT^I�y��l6�H3�$��a[�����6Q�N�^�9�d�A�l�A��@T���
<���Q�'CE���c��4%�kE��P
}�k9����
M�c��=ה���Bw��; �+��{�y�oq�ph��k�$���|��4~'�#�T�:h���%{\�^*���d��u-u�RY���YŬ�����]uN��x�<�g�<��=�4ڗ��k`���[�ڷ[��B[��%��Y�����ૼ�1����+���fg�0��o�
�Պ��u,S��p>�L�cr����ei�XףރT���g\ꚛ��"�r�@��lڛm���,Q�� ��%��/A��D*un��q��ɳZ���"�NAyW�h�H*�m��f��T��@Ҥ~�T�Ҷ���k�X��^G�~�5x-l�K��m[��1&�����L�Mc�Nע�Y��@������ �^�'�<�������A���c�Q9�]�+�Zӥ���"[��vIC�P��|D�%S�� УGub������gi^�w�D�� ��^aNBl�#Z���2�"��|���:iy����d.AӬĲT4�CԂ	q�eE�U��|�qt�s�$E��e*�q���!"��\� �� ]^T���f=�Һ�D�k�Ny*���7"�U���L~���T�"ϳ�=^�l�F�`r�"��Eו�Ҧ:����;lZ��,N{3@[=eY�6��+jU�<��������i��7�b޿_�_���NL��o�~1|��;8�<�
>N�"~�n�����e����s��Uk���#�e���`n���u�=�T��;��^�Q+��;�py�;����˰�byQEq��ŴWc୧�,��Z��(d�pW�\|7Hw�m3h��2��W^�ϼ����%�:���-��8�/�?l��]���/�Ms��7�3�F�9NA���_���:��O�!
I����]6�����v#
�#�%����N�L�P�ι��<cdd%�Ģҟ0��9>�ީ�؎
(.�>��fе�¶��4�c� ϲ�ե"��Ὡ_ѥH�+#����w���Dn�ʸ�"��%��"�b+jC�g��-�FE��O����%.A̗`^TN��w�s+��&�Υ�w�]W�`6���P���V��M�G��tZ��ڧ.W�w�|�J70�?*�T�<
ſbeԦC�R��}�@;\F�HW�
�{L�ֈ:`x���ׯ�r�< �j�bO�tl]*�\�kVG�4�+_��\�O*���K�_�jS�/
�J��6��P'�?wM��:AW����-g�,Lb�
f{�H�N�[��o8��Z�i���|���R�۹��+�<E4II%�jP�z�Nio1�v��p��V~���"�;j��D��e����P���(HSIubhy��X�%���B���`Q^�����/�ՙ�oʪ4�{��^�v�O�a�z���=��P%�}8��xV�˺D��s/�׷J!��;F�ř�(Q�1��A�!=�+_py��m	6�Ņs�F�Z��q]��s�����s���&涇TVl2���P9^�ok�|9���a�D�.6���	}���2P�T�O<��ÌS�u���B�O�b�8�;p�ێ�;��E[]2�78Dd��!^V�u�y�e���:��n>QeÖѲ�j.I�'צ�y��s�����H"USF����d���9n`T�F��=�G��*�XX�U�W�P-,��7�O��\,��M�Z���=��J���0���|ؘ�%���t�Hu�Y������
�9�˝���^����o�¯��o�'��Ԟ�����>H���h0�Н�1��p��������ٝ(h���8G�{fm(a����e���he���i��%
�"~\������D����:_Mk�6�"B�b�x؈g5hh��;؁���x��M!����P!/�&�t3J��{pj�˝�O�Ț��/�O��x1=x:^��1�� ^[�j`��=����6��N\+����^���^��ȴ,l\�p�{�cʼO�X6r^"?v��h<��@I$9��d����|����^�x���c���$��0n�����ӮV��y>�j�1�(h�,�
�� �����V�YԨmƈP��
X�g�Y�:s��a���j��)=C�3���ɹ�D�-��4r������_�T/�9F��^�k����&�֜.QQr V.���Ū�q�J�VBF��Ӱ>�]2l�њ����1*P#�p�����rg��Q�T�S�<0]O�&��R��
��7D��
p)�,�C�K���|�T��(U��D�i���r�ʼ�$�f0U����b��6���y�ه�zɷ��/� ��>i�_k���I���"�`��ȝ�){H�/�3��w�!�~��A�;��Bm��o��ݧ���ZǒnHq��+����NYLo6��w�h-3&)�f����W��魢��˚�o�Վ����]&��A(?w����Gv���+k���A?�����p������(>v�Fugo�}��7L�*���>�͒F*X���5�E��y��.��/�}�l�:U;ФE�װ:.�TD�>�	��'��Mi�D�K֊6=�K��� o ��*�P�b~5�H="�Lx�x*65�#bA?.P���$j��|�vͳ	��\��Z�5�����d%jMa��a�����-�UM򵸽���7כ������������l��������ۏ�����������}n�-�)!��o`��	���s`������`�l�ho�����ʣ���u�i8ӂ P���    �n��0|T�F�-��O��u#"�S{5ъ~��siH�Խ��f�f=��%f�AY��Q��� CڭT�):�IO�$�vL�ZTE$�'���/3�*љi�Sʣ� ����Y^�-��2zc�g`jh�y�D�z:�Af5�'�]/�+�EQ�v�Jn��U�`�t�J$YK�@�k<zO80�7�
W�T^vS~�T���
\�Yv-��m�T?��6������83F��Z�Q�DC�E҄_࿋�N1�_�$Fr�X���'+D��w|���6�sW�4�N ��^���uN��S{�6|M�
P���XNm�MOEX�j�(��4ᰔ��p�I�6˰`In���l�� ��h��6��<�0��"RG���[�V����SuųL�>����I>j0i����l��=x��Sj��q
�"���u;`3�rgl�Ͷ��M2����D����T �� 0h�hk��`&ow�U�[5{���7e��Řkyإa�Z-��c�Ut
W9M�v�}��H8��m�'�	0�h&�ډ��)x�>Ƒa�*5P�M*�����a�"�wgZ�>�q���n�c��v��2�oåZO��N����&=����rzŢ"y�aq�Y~o����ĕe2�U�`�����m��z�@.F��iX�uڹ�J=ؠN�u���'�1�I�L�� m1�2�������1��Ox��֤*����J���ѝ\4H'Jv�H����T�P��dU�%:�1�1��i���  ٶ6S[�(m�E�\"g�4�D+Z���A�p=H��`i��'F��R�:�N*���h��O���|vy�:{���� R��f�X����M+P4�+�����$9D���g�-D\N�!5�m+j�}}����4VO�0�̃oc��3�d|���1|U��5�[�^9���*�+2������6�2�2Vg9�V\,��Buθu���OA�_�q�ئDE�62l�� )߈u�\¤�;�1�]0�Gi��z���M��c�6ʩ(�O-��h�zc�ͧ���&U���5W-��/��CD�\���UtJ'`���V��h�M.�j�f��(�k"[�!�$2��^�yezRu���@��&a���IՆ����[���Fk�����|�&��IՔ	Cd��"r+5(U;&����L�e,E���Q���W�r���p̤j�d���8Ej�`'�<���oظ���w�cf�|(P�2�{��iiw�\誯�@�6UC(;��5���T?]���o%�h�`y�96�V��2�5��ʦ_va�feeI&f�-0D�F�V��+�m�sHr���i�jɂ2�������cv��9�=.��Z Tݻ��(�	�^HD�ESAF������A&���jh�L�<:�/��O+C�o�1�*.F�]N��f�p�e�y�����>����v���&$M�I��	{G���Q9��Y2��]&�t�Y6�k��L��KX0Z��
����fRu^rXU�(qݏ�EƤj��`D:���X���1jRB`nPA��g줱c�r����",���
]?Yæ�j���`�4���!��-�J�=M��e���#��֓I�U�"�u`�z�fI�iQ��a�R	�TD�h5'�]��j�٢�<9`��(K&��Er�@>��dJj^�Z����SW�+�T�L.��:�g���a�zӢ��8�E�,Z6~ ����3�D�H�iQ�b�eiqf�rVo�Z;J��[~U��*���JɍL��Fɖ/k�d;$�>�_ɣ��!�������E���������E��>��췓Դ���D��"����({��θ��H�I���
�!M\����uL5:�)8E~S n���.��[���.�_n?/����������>���g{:����^��7�-%
�a"i�m)(*��{�c��Z�����<�c/���|�6/nvP�Fo�B�ȓ,�E�M���?�jtpF�SXm��8��Th�\]�[6���������$��A����0{���}W������5|������?�����O +�}GA���6l�U��~jO�� +uħ�����q��dU�,��q��t��U����E|�M�� j��$_Jo�F�vfcfY���f��y�R=eZ{�y�(���肢!&��/ɦj��Ep�p&T rV�;�r6UI �c�X<_��ۇ�����GS5�Bz��|��1�:�aSq`���Sē~$��IxfSuVB�ߣ�9�d��J������&$/(���`6U�#d"S��=mm*�����Fu@�&�{ip�Ĳl*+�)mT�M�<rp#	g�
�V�զ��X��xI1G;%����T�"7h���^��H��p�N	I^
]�7jH�ҸX��
9��5DT���@���N&���p.kk��v^�X5E���VA���Q�����2�TB�έ08����j�2[�P�Z='(z�V^��m�P���.\%��l>|�O�&�T��L��u���Z*�D�b��p���<jM2A�[��bn0S�8Γ�'�r��L&�����u;B�6a ו�{7\�¬H�5ah�|��p���D�L>��3S7!��r��V�؁ x�N;ǎ�8��#�%z^��L�|u����(o֑e�j��v��t��5�S8n��q �!]5�+Q����J5���]b8��XH����Ss5��;���@^�{��>_`�[�wD������]��\d�F�0���n��"��+�ub�ы�6��(LEQRg-L��b�v��A�"Z�u� ;�/T(D$w�@��'�[g��8ް�U���لrQſ1����� �
��؛bfiR�f�(��$*�V�Y�-$ZT}����H�-6:ֻ!�4戚�����t� ���K�Ƣ�&j�g���]"IQ�����m ⸔�����@*���8L��V#��^uy!zc7�4ۑ�������Ԓ���I8�ʫ���D,mƾ�"�3�h�K؉��U�V��m���{���~��z����>Xe�'v)���#��;o�lD&�.�OųH��'�T��ע��3.��i���I&6�y�9��8���`k�mvx(��,"l�<� �Q��`T!�����3��P%D|Z��r]�Ӑ6V�$D��7K�T�D�[c�|Fp�Dii�L��Ŵ�2��Dx�>)7M�!Y;F"�sZ�%E��Y��EV���" ѦU��qKh5�T�b�8^�&�Q��b���7���)ײ����[��qS�0l��4!9?�����zp�w{1d�������N����g����}�z0������i�6��i�l�X�Y�s���@8��{h>������<�T���*?�´���z�w'm-�ec��\M�s��I��N��g`݋��o�&�$�rQ@R�(��l�t�f������2�b�M_Q\��kamVeԀk�,$�E��Yq|�����[~/ܒ�]CF䲰�D�����kS;2�^d*ѪSyc��0�LĿ0{�Y�7�N+	��n�������?�̎^'���d���g�W��U䙫�h��糫��sZOr�+J���ٸp�������~�O�ɼ�52��KUo���Z����;ߧ��駵�>���K�9s�ï����;���}Y|���߳g#��6}��_AE� '�Z&�>|�v)G��|R��1S�\"GJ�w���0��C|�&�)	n� �d!k�O�����tX0_<E��b������u�_p�=w�Y�.N�WO�����i�ay_�W�|0������I6������������^[ΣYu���S\��18�Wh��A�]�$���E�����¬���ق�Q��
]!�$2 o�R^"��(ֻS�^2�j嚁�N`��3�~
6�c��%��<����ʛ��k6��W����*=<>��lsu�޿��>���W<������W�/��O���^}^v7��T�ت�C"õ-���O�Y`�8�,x@V�"X:H1/u�+���דē�>+������=���4��#���g�>���ۉ��E�i�ᄀ)Ke�X�ߓ
%#��A$��Ӟg�݂T����.    ��݄}���>����'����-��Ϗ���}�������q򝏞���eg��{��g��k�[�?`f{��K�a�׵��C��c�Cup�����_��Ŧ�=�zjYZv��1�iꖉy��<|�o3vcO����'�o���Q�l�//������xr�y{���|�rцM*)��m(^^�O�|w;A�Ԟg��Z���4��Xڛ�1Ȋ݄H����m����M2y;}INOs�?�����W��|�W�`f#gt|e}:/p"|�]`K��E��r����Bq�����ߖ����Uq����7��*��\I��{຾�0�k�7��c��Cf'"]1C��M�����_��ņ�����6,���*��=D݂&+�&a\��������2�Z�L&�b뙾�Èwt�v��n9kX��9����@|���O�[��4��a~��<P_^�����i!6�~�b����S�������t���K�q�P0��G���Z��S{��'�#���;#��2�i�%9v.	`wL���=,�.��C"p�����B�xs:�{�;V�-S�7=�΀�`������%�/���쳡i���W>��چ�h|�]?�8�I���S(m�X,ч^#�P�_��C�Y-.̓����ʈ.�t��������6�?%ˇ���s}��^�~��-�q4m3��l6�f��Κ��j�⇯�P��1�Ta�I���S��C�/����4�?q�����(��ƓO������^���hy3�~<�3��6:���E21���f���O�ڦ����4��<�a��u��qT��K�������?�je���'ͷ���}�Ln���-z�|��� <�?�OE#�Ű�����ν���x<[�5&��(Jα�;+����t�pZ��Ī�3���tTi�7�6��NL���զS�p�[������v�n��U��z<G�L�PT������tǻ0Xg	�X�ED�X��D�).rPV��)~5��;;���7�W�	�8��G_�k����>����rzؓɝ��՘͞��u6~N�������Tڎv �	�JNL�W<I�A�7v��~��{
�P�Q�Htش⩍��#��7�����6��}w�u#h�+�����<>]E�0z��?ï��o���qt9OKGl�<�y�˜}�G�q8��%o��lZH��0���~j�!��Ie�F��d]����-�c�X*`͂ ������`�oO|�k0��"�VI0g٧�N��O}��-b2���[�2��؃}mm�S=eX�e�y���U��%�@���M�����,��
��՛�X��IV���,��f.Q�)�dm=g%���Y���t�,�a���?�. �%*C���Pbo�e%��b�a_Tq�չ�I�~��v.?�_A��vN�%b��68T�i��V�|���`y �ю*���I��e�A�'X�*q�k&y@*�TÂ�S�F�^�t;2��%� �w�~%�LI�Y�q�V���fH��i*�
��ԬK�[*�o*)��(���-�3�`�"0��3��&�¦�W�6����2�l*�T�ʶ�2�nKJ"�;�hñSZT۶0�noEW;R��Ȧ����I����MmL�.�/�{�ˉJO�#]���/��J*����j�*�
�^̲T����T�8`�V�r.ɡ�}�0*ky���+�!H�f��Gyٌ�Q�#ǔ�Ơ�"[7���P*��Xڥ�d<�E��[�;T~���d=��C��Ӈ��KMlm��T�����.����<*������[$�QE�X�4C��T�h
��c�Lm5k]"�HːAQ�=,9��ӌ� 2�j-aT�3b��pՂ��D�� �¶�X�+�T
�m��O#1m�D��@��]�B�M�x���/�,_�v5Qm����å�3���=/CUЃ2��&;����V���5�H�u%�GT�hac�Z F;`��+*�����5%��y�A�G��da7jU=�P��N��,L�_��Sv׵AV����QdX6�jc�t�WFہ+�7�Î@��%�3��;��<�J!�+2
�˦�-V�T�!����@*��D�&a{g�Z�h=�r#ʴ�^Dy�_F�4M�geoq�K����8�3LV�����2��UIB�k(_6Zwx�5��9�lt�b�D�D�"��R"��Q7D�W�N��q�OpU�5%l��̍�7|�S�m��cT�<���Nx���A��1 �\���h��m��K�j?e{�z�S)K쏣���"�6r�p�#j�R������s0���R�M�T��:�h�@ ���C.�Uh�#"�q���H�A�F����ڞD�| ;�H�I��`�N�sK�9��*��v
 Ht���o�G¼�T[T���uXw[�O��ȶ'K���uY5��L���H���KE����@T�l!��@`���2�ٵ����,�W_D�p�t���W_o�b���ړ$j0R-�$����T"��3�FA@�פּ�$�&��.�I�~$�<"���8_Z4����s0�3�~��,�I��5� �`��@+�g��o��H����$�CT|�{,xDTv�MR����0�'�����mƘ&[��D��g�l*�����ی�
H�
տ~*V��b#�J0�fb�,G~����7�K�M���8��}�;��u��7Y�����Q�Y69>He�f��4o�1��b~��0�[*�Tz
|�2\!��+֥E�[���X��Q(�%K�y#*��>D]h@.+���M<�N4 �;q���P�xDmh@d�G+�0 ��u	F_N��~�T�
��.}I��5��Gf�0V���Y\O5����(�eg��O�&�ңB3�=�w�Q!����<[
�4j:�,Q_h�4@�����(�x�&��$3po�)w@�$�K�B��$��l���j���Si(��d,��q���,4�YV���y$&�<*mޢ�4絃� ��jq�K�e\�Q�x���(��X�#���|�{N�p����tQA����~A�n��E�Ժ�
����<�0��V�U*�
���}T-.a/jd�G�e�7">[��;�
��lO��J��3K�Y�]|H։���IR�f�и��Y֝T��	�ҁ5�[)�j_�n���9R�p���QRt҃�+i��r���F�!�O���2WUA�G[e�!��2Z)Y�*�T�1n�"Z�6(h���8�L�b+�(e��J6�f/�4O�H�e�`=�� �̩{�k������ޒa���ְyT�����Z�
u��c���ՙ�PQT�K��%d-���"|z٨���s���s�e`Oć��cT�O�9�7	殪]��ǎ8������:�L.e�-�-�^P6�V��n*`)C�0R��L��Kj.f���'�`\�9�kI�_j+�
h���
��Ћ���iX�#����\��d��w��eENB4eH`-��F?˳���T�	rfa<k'�|*l)g�Y��ú���q-��h�J'MӘ��D[���X��2��V�Q�/2�0%�>�F�-�����z�^A��_�K��x�6Ɋ��LDN���~>>~�'�q�88^o����rM��>�__���׆`�ߋ˳ϻ���(���!�iװ;ɚd�����&I�~zh��Y �X?I�x�y���6W�3u����FA�l��r�-E���;�L�i��=tvOR8��X�����T����u�T�/H�e���g8�ޣ�3E���]]v�j�;�l-���|�c�C�@�h$�ůu�y�F�y4o�9ͫM�b,NOO��l��������h�̾o�����~>/�׷�p�����g?�k+x�Xb�5���G����joy,�,�^oUdߌW�o:���x�D ���Ii=�+���7�(�0��A\\�����Vm�џk;Zn����a�|^_��'�����/_7��y�<�~<l��̧�l���E��F�"#\I0��W����o�r)b�o0�3L�������+n$��,���_� �  ��� ��>�����x;��`7w1�{��o����xr����8��O[���o�s;���ƛh=�o��.�"p˾�+,V�����?PӶ�������k�����[3�}����C�x�9
/�>Ėŏ���iu����`��5���^�2��� ;	`�$�-V���������]y{l�Y�����z~6�<�f�����6�Ń'������~Z���x��:�G��h�FCRT,v�Տ���r��Q�zhϴ\Lm�U����.6�,���R�A'�$^�|���g��"�s�6�٦k�jmm��S�:`0�!{G�R�<���;��i�N�^/��������8]_�o���X�_7_����1���hz��_����ߟ���K����O��R������iڎm�v�0����ڮ����KX�d��bH��AZ���DQ(��pv�(W{HRp\�6�Y�_;�Rso>=.������$��ߧo�v�����6�s��8��_��ۗ8�st{��l�?K��{�ޑ���~~bJ%��(�o&p�?�]7m���[�Og��7�<.���<yZ����ļx�����h�N�ݗSq6}��aUH6͟�4�/5JM��=2u�T`S�||ľ	���}�,n�Ng�Z�|�}����W��~{�F����C�m/R��%�t���Z�v�ת�6�~&��A���A*��]��n} G!c�mW�0;�i��a�m<��G�zG?���5�W���ڱ�i:qY�8��VX��Vt�1x-�r���k!���v6�����{=}\n>�4��H�w����z�l|�dWOǧ�G�]��� ՅC����o�1��2RQ�!��o�ȅؚ��S�Sii�2���)����uϸ������lcEb�Jk�W~F��E[�6��������%t��      �      x������ � �      �      x������ � �      �      x������ � �      �   |   x�M��
� ���1#Q۲���A*:T���Ю�ý/�Bp��OBK�	�!�*܅>R[ɜ�C�֨�]�oI&4V�V7H#g��?�oi=f�ܼ��<�bo>ů�(���ֿ@��S�7��zc~D=C      �      x������ � �     