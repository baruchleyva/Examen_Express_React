
#USUARIO 1 Administrador
INSERT INTO public.usuarios(
	first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
	VALUES ('Administrador', 'Admin', 'admin@gmail.com', '9510000000', 'Administrador', 'Activo', '{
    "calle": "Av. Independencia",
    "numero": "123",
    "ciudad": "Oaxaca de Juárez",
    "codigo_postal": "68000"
   }','https://cdn-icons-png.flaticon.com/512/6326/6326055.png', '$2b$10$.1Tyy08/mV2/K07yhwc7o.0Y9/gPrWD1B/JfF4ObjtQ9DbqYjCmVq');
   -- password 012456

#50 usuarios extras
INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Lucía', 'Reyes', 'lucía01@gmail.com', '9510000001', 'Administrador', 'Activo', '{"calle": "Ju\u00e1rez", "numero": "127", "ciudad": "Toluca", "codigo_postal": "44838", "latitude": 20.811901, "longitude": -98.145562}', 'https://cdn-icons-png.flaticon.com/512/6326/6326055.png', 'clave001');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Andrés', 'Morales', 'andrés02@gmail.com', '9510000002', 'Usuario', 'Activo', '{"calle": "Av. Independencia", "numero": "953", "ciudad": "Guadalajara", "codigo_postal": "13617", "latitude": 15.320109, "longitude": -95.318847}', 'https://cdn-icons-png.flaticon.com/512/4140/4140048.png', 'clave002');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Luis', 'Ramírez', 'luis03@gmail.com', '9510000003', 'Administrador', 'Inactivo', '{"calle": "Av. Independencia", "numero": "457", "ciudad": "Monterrey", "codigo_postal": "30660", "latitude": 19.218886, "longitude": -103.002206}', 'https://cdn-icons-png.flaticon.com/512/4140/4140037.png', 'clave003');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Carlos', 'López', 'carlos04@gmail.com', '9510000004', 'Usuario', 'Activo', '{"calle": "Reforma", "numero": "682", "ciudad": "Puebla", "codigo_postal": "30830", "latitude": 15.955175, "longitude": -91.882015}', 'https://cdn-icons-png.flaticon.com/512/4140/4140048.png', 'clave004');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Carlos', 'Jiménez', 'carlos05@gmail.com', '9510000005', 'Administrador', 'Inactivo', '{"calle": "Niza", "numero": "543", "ciudad": "Guadalajara", "codigo_postal": "39652", "latitude": 19.106136, "longitude": -103.68514}', 'https://cdn-icons-png.flaticon.com/512/4139/4139981.png', 'clave005');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Luis', 'Martínez', 'luis06@gmail.com', '9510000006', 'Administrador', 'Inactivo', '{"calle": "Av. Universidad", "numero": "126", "ciudad": "M\u00e9rida", "codigo_postal": "28412", "latitude": 20.614926, "longitude": -93.8528}', 'https://cdn-icons-png.flaticon.com/512/4140/4140037.png', 'clave006');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Ana', 'Morales', 'ana07@gmail.com', '9510000007', 'Usuario', 'Inactivo', '{"calle": "Av. Independencia", "numero": "293", "ciudad": "M\u00e9rida", "codigo_postal": "47135", "latitude": 18.451433, "longitude": -90.553469}', 'https://cdn-icons-png.flaticon.com/512/6326/6326055.png', 'clave007');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Sofía', 'Jiménez', 'sofía08@gmail.com', '9510000008', 'Administrador', 'Activo', '{"calle": "Niza", "numero": "235", "ciudad": "Monterrey", "codigo_postal": "10495", "latitude": 16.807545, "longitude": -100.187223}', 'https://cdn-icons-png.flaticon.com/512/4140/4140048.png', 'clave008');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Andrés', 'Ramírez', 'andrés09@gmail.com', '9510000009', 'Usuario', 'Activo', '{"calle": "Morelos", "numero": "355", "ciudad": "CDMX", "codigo_postal": "89314", "latitude": 20.690514, "longitude": -99.122579}', 'https://cdn-icons-png.flaticon.com/512/4139/4139981.png', 'clave009');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Sofía', 'Jiménez', 'sofía10@gmail.com', '9510000010', 'Usuario', 'Activo', '{"calle": "Av. Universidad", "numero": "912", "ciudad": "Monterrey", "codigo_postal": "31420", "latitude": 18.41189, "longitude": -87.254779}', 'https://cdn-icons-png.flaticon.com/512/4140/4140037.png', 'clave010');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Sofía', 'Sanchez', 'sofía11@gmail.com', '9510000011', 'Usuario', 'Inactivo', '{"calle": "Av. Independencia", "numero": "190", "ciudad": "M\u00e9rida", "codigo_postal": "43427", "latitude": 20.140871, "longitude": -99.371266}', 'https://cdn-icons-png.flaticon.com/512/4139/4139981.png', 'clave011');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Andrés', 'Reyes', 'andrés12@gmail.com', '9510000012', 'Administrador', 'Activo', '{"calle": "Av. Independencia", "numero": "632", "ciudad": "Guadalajara", "codigo_postal": "31365", "latitude": 14.155659, "longitude": -94.446276}', 'https://cdn-icons-png.flaticon.com/512/2922/2922506.png', 'clave012');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Fernanda', 'Sanchez', 'fernanda13@gmail.com', '9510000013', 'Usuario', 'Inactivo', '{"calle": "Niza", "numero": "882", "ciudad": "Quer\u00e9taro", "codigo_postal": "73664", "latitude": 18.926859, "longitude": -89.819331}', 'https://cdn-icons-png.flaticon.com/512/4140/4140048.png', 'clave013');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Marco', 'Martínez', 'marco14@gmail.com', '9510000014', 'Administrador', 'Activo', '{"calle": "Av. Independencia", "numero": "36", "ciudad": "Quer\u00e9taro", "codigo_postal": "80155", "latitude": 16.241786, "longitude": -87.989721}', 'https://cdn-icons-png.flaticon.com/512/4140/4140048.png', 'clave014');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Marco', 'García', 'marco15@gmail.com', '9510000015', 'Administrador', 'Activo', '{"calle": "Ju\u00e1rez", "numero": "456", "ciudad": "Quer\u00e9taro", "codigo_postal": "29877", "latitude": 17.210557, "longitude": -90.904468}', 'https://cdn-icons-png.flaticon.com/512/4140/4140048.png', 'clave015');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Sofía', 'Jiménez', 'sofía16@gmail.com', '9510000016', 'Usuario', 'Inactivo', '{"calle": "Niza", "numero": "338", "ciudad": "M\u00e9rida", "codigo_postal": "84532", "latitude": 16.743634, "longitude": -91.70866}', 'https://cdn-icons-png.flaticon.com/512/2922/2922506.png', 'clave016');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Ana', 'Torres', 'ana17@gmail.com', '9510000017', 'Usuario', 'Inactivo', '{"calle": "Ju\u00e1rez", "numero": "331", "ciudad": "Puebla", "codigo_postal": "71723", "latitude": 16.75347, "longitude": -89.845537}', 'https://cdn-icons-png.flaticon.com/512/6326/6326055.png', 'clave017');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Marco', 'Reyes', 'marco18@gmail.com', '9510000018', 'Usuario', 'Inactivo', '{"calle": "Reforma", "numero": "511", "ciudad": "CDMX", "codigo_postal": "73609", "latitude": 18.710998, "longitude": -88.130625}', 'https://cdn-icons-png.flaticon.com/512/6326/6326055.png', 'clave018');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Andrés', 'García', 'andrés19@gmail.com', '9510000019', 'Administrador', 'Activo', '{"calle": "Morelos", "numero": "681", "ciudad": "Monterrey", "codigo_postal": "57060", "latitude": 20.582894, "longitude": -105.847728}', 'https://cdn-icons-png.flaticon.com/512/2922/2922561.png', 'clave019');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Sofía', 'García', 'sofía20@gmail.com', '9510000020', 'Administrador', 'Inactivo', '{"calle": "Reforma", "numero": "984", "ciudad": "Toluca", "codigo_postal": "27660", "latitude": 14.432264, "longitude": -88.896739}', 'https://cdn-icons-png.flaticon.com/512/2922/2922506.png', 'clave020');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Carlos', 'Ramírez', 'carlos21@gmail.com', '9510000021', 'Usuario', 'Activo', '{"calle": "Reforma", "numero": "87", "ciudad": "Monterrey", "codigo_postal": "25443", "latitude": 16.679853, "longitude": -105.509534}', 'https://cdn-icons-png.flaticon.com/512/4139/4139981.png', 'clave021');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Ana', 'Morales', 'ana22@gmail.com', '9510000022', 'Usuario', 'Activo', '{"calle": "Av. Independencia", "numero": "775", "ciudad": "Guadalajara", "codigo_postal": "83327", "latitude": 18.909637, "longitude": -91.864033}', 'https://cdn-icons-png.flaticon.com/512/6326/6326055.png', 'clave022');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Fernanda', 'Martínez', 'fernanda23@gmail.com', '9510000023', 'Administrador', 'Inactivo', '{"calle": "5 de Mayo", "numero": "728", "ciudad": "Oaxaca de Ju\u00e1rez", "codigo_postal": "90301", "latitude": 20.461786, "longitude": -89.389055}', 'https://cdn-icons-png.flaticon.com/512/6326/6326055.png', 'clave023');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Ana', 'López', 'ana24@gmail.com', '9510000024', 'Usuario', 'Inactivo', '{"calle": "Morelos", "numero": "222", "ciudad": "Quer\u00e9taro", "codigo_postal": "13118", "latitude": 16.281864, "longitude": -103.208184}', 'https://cdn-icons-png.flaticon.com/512/2922/2922561.png', 'clave024');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Luis', 'Torres', 'luis25@gmail.com', '9510000025', 'Administrador', 'Inactivo', '{"calle": "Morelos", "numero": "575", "ciudad": "M\u00e9rida", "codigo_postal": "57327", "latitude": 19.697817, "longitude": -97.548347}', 'https://cdn-icons-png.flaticon.com/512/4140/4140037.png', 'clave025');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Lucía', 'Sanchez', 'lucía26@gmail.com', '9510000026', 'Administrador', 'Inactivo', '{"calle": "Av. Universidad", "numero": "329", "ciudad": "Monterrey", "codigo_postal": "51426", "latitude": 17.224538, "longitude": -100.520268}', 'https://cdn-icons-png.flaticon.com/512/2922/2922561.png', 'clave026');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Daniel', 'Torres', 'daniel27@gmail.com', '9510000027', 'Usuario', 'Activo', '{"calle": "Niza", "numero": "955", "ciudad": "Monterrey", "codigo_postal": "29664", "latitude": 20.140013, "longitude": -95.581689}', 'https://cdn-icons-png.flaticon.com/512/4140/4140048.png', 'clave027');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Andrés', 'Martínez', 'andrés28@gmail.com', '9510000028', 'Usuario', 'Activo', '{"calle": "Calle Hidalgo", "numero": "647", "ciudad": "CDMX", "codigo_postal": "97904", "latitude": 15.672568, "longitude": -94.900477}', 'https://cdn-icons-png.flaticon.com/512/2922/2922561.png', 'clave028');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Luis', 'Sanchez', 'luis29@gmail.com', '9510000029', 'Administrador', 'Activo', '{"calle": "Av. Universidad", "numero": "161", "ciudad": "Quer\u00e9taro", "codigo_postal": "35549", "latitude": 14.085662, "longitude": -90.774043}', 'https://cdn-icons-png.flaticon.com/512/6326/6326055.png', 'clave029');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Carlos', 'Torres', 'carlos30@gmail.com', '9510000030', 'Administrador', 'Inactivo', '{"calle": "Av. Universidad", "numero": "289", "ciudad": "Puebla", "codigo_postal": "98513", "latitude": 15.957679, "longitude": -97.667036}', 'https://cdn-icons-png.flaticon.com/512/4139/4139981.png', 'clave030');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Carlos', 'Jiménez', 'carlos31@gmail.com', '9510000031', 'Usuario', 'Inactivo', '{"calle": "Av. Independencia", "numero": "946", "ciudad": "CDMX", "codigo_postal": "40917", "latitude": 16.27341, "longitude": -88.156119}', 'https://cdn-icons-png.flaticon.com/512/2922/2922561.png', 'clave031');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Andrés', 'Ramírez', 'andrés32@gmail.com', '9510000032', 'Usuario', 'Inactivo', '{"calle": "Reforma", "numero": "558", "ciudad": "Oaxaca de Ju\u00e1rez", "codigo_postal": "69997", "latitude": 15.255159, "longitude": -96.50034}', 'https://cdn-icons-png.flaticon.com/512/4139/4139981.png', 'clave032');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Carlos', 'García', 'carlos33@gmail.com', '9510000033', 'Administrador', 'Inactivo', '{"calle": "Morelos", "numero": "286", "ciudad": "Oaxaca de Ju\u00e1rez", "codigo_postal": "96006", "latitude": 17.122508, "longitude": -95.07503}', 'https://cdn-icons-png.flaticon.com/512/6326/6326055.png', 'clave033');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Lucía', 'Martínez', 'lucía34@gmail.com', '9510000034', 'Usuario', 'Inactivo', '{"calle": "Av. Universidad", "numero": "326", "ciudad": "Guadalajara", "codigo_postal": "86066", "latitude": 18.85843, "longitude": -94.286987}', 'https://cdn-icons-png.flaticon.com/512/2922/2922506.png', 'clave034');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Luis', 'López', 'luis35@gmail.com', '9510000035', 'Usuario', 'Activo', '{"calle": "Morelos", "numero": "712", "ciudad": "CDMX", "codigo_postal": "57525", "latitude": 14.158586, "longitude": -96.520717}', 'https://cdn-icons-png.flaticon.com/512/4139/4139981.png', 'clave035');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Daniel', 'Martínez', 'daniel36@gmail.com', '9510000036', 'Usuario', 'Activo', '{"calle": "Morelos", "numero": "375", "ciudad": "Oaxaca de Ju\u00e1rez", "codigo_postal": "82566", "latitude": 20.749565, "longitude": -88.010273}', 'https://cdn-icons-png.flaticon.com/512/2922/2922506.png', 'clave036');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Marco', 'Morales', 'marco37@gmail.com', '9510000037', 'Administrador', 'Activo', '{"calle": "Calle Hidalgo", "numero": "562", "ciudad": "Oaxaca de Ju\u00e1rez", "codigo_postal": "73623", "latitude": 14.626659, "longitude": -104.596068}', 'https://cdn-icons-png.flaticon.com/512/4139/4139981.png', 'clave037');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Luis', 'Torres', 'luis38@gmail.com', '9510000038', 'Administrador', 'Activo', '{"calle": "Ju\u00e1rez", "numero": "868", "ciudad": "Guadalajara", "codigo_postal": "73310", "latitude": 17.981308, "longitude": -99.020261}', 'https://cdn-icons-png.flaticon.com/512/6326/6326055.png', 'clave038');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Ana', 'Torres', 'ana39@gmail.com', '9510000039', 'Administrador', 'Activo', '{"calle": "Morelos", "numero": "845", "ciudad": "M\u00e9rida", "codigo_postal": "80513", "latitude": 14.593406, "longitude": -92.557752}', 'https://cdn-icons-png.flaticon.com/512/2922/2922561.png', 'clave039');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Ana', 'Vargas', 'ana40@gmail.com', '9510000040', 'Usuario', 'Activo', '{"calle": "Av. Independencia", "numero": "870", "ciudad": "Oaxaca de Ju\u00e1rez", "codigo_postal": "50441", "latitude": 17.410303, "longitude": -97.704802}', 'https://cdn-icons-png.flaticon.com/512/4140/4140037.png', 'clave040');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('María', 'Martínez', 'maría41@gmail.com', '9510000041', 'Administrador', 'Inactivo', '{"calle": "Reforma", "numero": "159", "ciudad": "Monterrey", "codigo_postal": "65693", "latitude": 16.545938, "longitude": -99.907822}', 'https://cdn-icons-png.flaticon.com/512/4140/4140048.png', 'clave041');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Carlos', 'Torres', 'carlos42@gmail.com', '9510000042', 'Usuario', 'Activo', '{"calle": "Niza", "numero": "839", "ciudad": "Guadalajara", "codigo_postal": "16345", "latitude": 19.402317, "longitude": -97.603301}', 'https://cdn-icons-png.flaticon.com/512/4140/4140048.png', 'clave042');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Sofía', 'Martínez', 'sofía43@gmail.com', '9510000043', 'Administrador', 'Inactivo', '{"calle": "5 de Mayo", "numero": "919", "ciudad": "CDMX", "codigo_postal": "31467", "latitude": 14.746032, "longitude": -91.396007}', 'https://cdn-icons-png.flaticon.com/512/4140/4140037.png', 'clave043');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Andrés', 'Vargas', 'andrés44@gmail.com', '9510000044', 'Administrador', 'Activo', '{"calle": "Av. Universidad", "numero": "543", "ciudad": "Oaxaca de Ju\u00e1rez", "codigo_postal": "49382", "latitude": 16.2922, "longitude": -99.014639}', 'https://cdn-icons-png.flaticon.com/512/6326/6326055.png', 'clave044');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Carlos', 'Morales', 'carlos45@gmail.com', '9510000045', 'Usuario', 'Activo', '{"calle": "Morelos", "numero": "249", "ciudad": "Monterrey", "codigo_postal": "46400", "latitude": 14.083208, "longitude": -89.815374}', 'https://cdn-icons-png.flaticon.com/512/4140/4140037.png', 'clave045');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Marco', 'Jiménez', 'marco46@gmail.com', '9510000046', 'Usuario', 'Inactivo', '{"calle": "Av. Independencia", "numero": "112", "ciudad": "CDMX", "codigo_postal": "34470", "latitude": 18.154507, "longitude": -97.446291}', 'https://cdn-icons-png.flaticon.com/512/4139/4139981.png', 'clave046');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Marco', 'Sanchez', 'marco47@gmail.com', '9510000047', 'Usuario', 'Activo', '{"calle": "Reforma", "numero": "900", "ciudad": "Monterrey", "codigo_postal": "62779", "latitude": 17.566277, "longitude": -96.777003}', 'https://cdn-icons-png.flaticon.com/512/4140/4140048.png', 'clave047');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Ana', 'Vargas', 'ana48@gmail.com', '9510000048', 'Usuario', 'Activo', '{"calle": "Ju\u00e1rez", "numero": "662", "ciudad": "Quer\u00e9taro", "codigo_postal": "97684", "latitude": 15.635445, "longitude": -101.660067}', 'https://cdn-icons-png.flaticon.com/512/2922/2922561.png', 'clave048');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Daniel', 'Vargas', 'daniel49@gmail.com', '9510000049', 'Usuario', 'Activo', '{"calle": "Av. Universidad", "numero": "817", "ciudad": "CDMX", "codigo_postal": "76592", "latitude": 18.123492, "longitude": -94.889028}', 'https://cdn-icons-png.flaticon.com/512/2922/2922506.png', 'clave049');

INSERT INTO public.usuarios (first_name, last_name, email, phone_number, role, status, address, profile_picture, password)
VALUES ('Sofía', 'Vargas', 'sofía50@gmail.com', '9510000050', 'Administrador', 'Activo', '{"calle": "5 de Mayo", "numero": "431", "ciudad": "Toluca", "codigo_postal": "31292", "latitude": 15.866598, "longitude": -92.771324}', 'https://cdn-icons-png.flaticon.com/512/4139/4139981.png', 'clave050');