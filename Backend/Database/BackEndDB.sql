/*Primero seleccionamos y ejecutamos esta linea*/
CREATE DATABASE BackEndDB;

/*Usar la base de datos*/
USE BackEndDB

/*Despues seleccionamos la base de datos donde trabajaremos y
	ejecutamos las siguientes lineas	*/
CREATE TABLE Imagen (
	id int IDENTITY(1,1) PRIMARY KEY,
	Titulo varchar(20),
	Descripcion varchar(100),
	URL varchar(max)
);

/*Para activar el id auto incrementable*/
set identity_insert "Imagen" on

/*Registro de prueba*/
INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('Situacion actual', 'Imagen que describe nuestra situacion actual', 
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2Fcd123fb3-9e3e-4361-fdc5-874bbc9388af.jpg?alt=media&token=188f27fe-4bdb-419a-ad60-952f76dd0d76')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('Die for cringe', 'Imagen que describe mi situacion',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F190705589_2400206216790963_3898765723866628462_n.jpg?alt=media&token=faa72a9b-c795-4de4-b3f0-d7d285b8a29d')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('Yo opino', 'Imagen random',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F186495081_111383857701324_4397477205800437707_n.jpg?alt=media&token=c70da93c-daf7-4cc7-818b-b9a76b462f3e')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('Corrido tumbado', 'Imagen random2',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F186486348_1784161385090765_3158163928768457437_n.jpg?alt=media&token=5d84e2bc-2715-4f03-9f07-fbd54b72eafa')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('Kronk', 'Imagen random3',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F118139928_646911629264289_9117848486156396401_n.jpg?alt=media&token=b1d49280-f68f-4cb5-a2ed-35fba90ccef4')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('Tas bien?', 'Imagen random4',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F123749047_655767605056413_3711127346204857031_n.jpg?alt=media&token=94f04ca0-3862-4e97-b536-930717697bf0')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('Toi desanimado', 'bobesponja',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F126169494_671512083557640_6366901721360156645_n.jpg?alt=media&token=21d98f55-2b45-4b98-8839-a03241838d2e')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('gatoraro', 'what',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F129058561_2948122945509130_7463341943212478014_n.jpg?alt=media&token=317bfa52-1416-489f-8fd1-312cda36ca26')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('maik&olaf', 'javier',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F129068040_706894783272031_4953444685503070215_n.jpg?alt=media&token=93c45ce2-b5ca-43e9-85d5-4b83c6384126')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('gatitotiste', 'catcry',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F130298085_692422528124799_4588116113406937256_n.jpg?alt=media&token=68abcd97-9350-4a60-888d-761bf1d463f6')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('uu ya ba ayorar', 'elfo',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F132490937_395654848330083_4525819113279959877_n.jpg?alt=media&token=89e5c2c8-3b82-4d51-b3e8-29850ef1a82c')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('que dia esoy', 'teletubi',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F132842643_392277305336248_5496903329545732156_n.jpg?alt=media&token=31f6dde0-36ee-4b44-93d3-d4c81b35e0c1')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('gatito', 'bomnito',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F133622548_183293573541931_8938708948459693092_n.jpg?alt=media&token=02b65ebb-5737-4adb-ac18-4f0e914c1436')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('mona china', 'owo',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F133705651_307416380662163_6511470091943636904_n.jpg?alt=media&token=e7293573-5753-4589-bd90-d5077381f7ce')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('mona china jugando lol', 'cringe',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F133830110_321472422363689_8624300305950358667_n.jpg?alt=media&token=f9a3cd81-949b-4280-8fd4-0b6a29c1a125')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('ase frio', 'becerro con pijama',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F133872714_2032120686922180_4581832513326192582_n.jpg?alt=media&token=cbe28dfe-11f9-4bcf-8b2c-9dee47319f1d')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('ola yoexisto', 'gatito',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F134016056_515551016018608_5369255945327060144_n.jpg?alt=media&token=c1163ec6-ada9-4ebc-a17d-47c7a36e73c3')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('a', 'cerezita',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F134090801_688710015342812_5115180501407228086_n.jpg?alt=media&token=11c63116-3730-447a-921b-395f15361427')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('gracias', 'patito',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F134113259_2183237768474920_2292188509146416941_n.jpg?alt=media&token=8391eca8-e2cb-40f8-8653-f7bc9c2b3993')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('apenadito', 'perrito',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F134956023_1141665216283010_7732027440034000718_n.jpg?alt=media&token=aca07095-908a-46ee-9bca-d4aac61455e9')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('a desayunar', 'cheems',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F135284681_3715962981783528_2384975502416332320_n.jpg?alt=media&token=f1044e2e-6e12-48ec-bafe-8e905f27da17')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('como sabes', 'gatito',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F135487709_4916681428372857_4620290957594043062_n.jpg?alt=media&token=463d8183-2722-4335-a98a-169d9e9d9cd4')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('Hoy no llore', 'patito',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F135590414_1786550208166418_6144768608818959874_n.jpg?alt=media&token=1f5ab746-445e-41d7-bdef-7b5518ee9ffb')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('wtf ojeras', 'monita china',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F135916689_858517791635076_1120429844031371514_n.jpg?alt=media&token=fd231d67-87c0-429a-9bc6-8b1cadb11da8')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('bueno vamo a jugar', 'monito que sale en death note',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F136207255_3138289132938275_3287504564663962407_n.jpg?alt=media&token=7759c161-24b8-4998-9af9-0edb43863278')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('chismesito incompleto', 'webito que sale en el gato con botas',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F136948628_316357539705863_326758927980275827_n.jpg?alt=media&token=1eee4eff-7ed0-40e7-a692-3d5ad756e8ee')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('llorando', 'gatito',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F137266353_1070205563483289_7840173043344175260_n.jpg?alt=media&token=a7689637-8efe-486e-9982-3b5fe675bdf9')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('mentiraa', 'oso pardo',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F138648969_731533697784333_5336477859471111137_n.jpg?alt=media&token=39445854-756f-4423-a5e5-73caa139f5e7')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('imagen random de perrito', 'perrito con cara de wtf',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F138680592_410333393416240_6153751352225772986_n.jpg?alt=media&token=7bd6e00e-42bc-476b-a54b-8c6f8de4161f')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('dos gatitos riendose', 'papa gatito e hijo gatito',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F139558383_708970246351589_3854376963255094516_n.jpg?alt=media&token=0a3272dd-462d-4c3c-b89e-2116d02cf6ef')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('no', 'oso polar cocinando',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F139611544_775081053096139_236910188907529451_n.jpg?alt=media&token=b4d211ab-b5e4-4db6-988e-c34863c9df8f')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('pepa pig pelona', 'wtf pepa pelona',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F140380302_1602915053236159_5009336930284154610_n.jpg?alt=media&token=f33b1c3b-09ad-4c5c-9054-7c9986ffac32')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('triste unu', 'monita china',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F141103386_418704826042763_6292530484065073470_n.jpg?alt=media&token=8c27a44b-0a79-4f91-a181-440eec9eaafb')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('pero q te hice', 'osito llorando',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F148777425_127329199267001_6426271590457255529_n.jpg?alt=media&token=658edd66-ff74-420d-8f1a-bd78400e22cd')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('Timmy vestido de gatito', 'flow',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F149041314_2488247611480137_2342267587389833984_n.jpg?alt=media&token=bae25aca-7e23-4194-a3ec-af1a776f0bf3')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('asustada monita china', 'aaaa',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F151122733_711545789430964_6023334879295053053_n.jpg?alt=media&token=eb9853e0-ab5d-4d75-87a5-8e1451c90272')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('me da muchisimo coraje', 'Anaya',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F156904938_2864642230467183_5887038256924027632_n.jpg?alt=media&token=9737b54c-25fc-43bf-8554-241377b0479f')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('ya callate', 'gatito tratando de dormir',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F161599124_255764759557751_3186283834840333223_n.jpg?alt=media&token=c1815a36-7b10-444b-91f0-b5a3cf4fcec0')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('Esteban carita fachera', 'perrito con lentes',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F164748767_536816027716667_6640236370962551922_n.jpg?alt=media&token=d22f669b-ccf7-40a5-b390-fb81a655599e')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('dormido', 'stickers del gatito azul',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F168481925_1427506000936149_771139443503002100_n.jpg?alt=media&token=9a556a35-a9ef-46c7-b540-5e7ac4345aa2')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('cuchau', 'carro con llanta por un lado',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F174746890_2902690126716097_7410785500104450099_n.jpg?alt=media&token=a22450dd-2d2f-452c-b38c-b3784559742f')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('como', 'monita china con duda',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F182575724_494330855216739_4845518505378214783_n.jpg?alt=media&token=d0896675-e1dc-497c-9dae-012ea97b97e7')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('muak besito', 'monitas chinas',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F182685807_292266725815221_893647948644351001_n.jpg?alt=media&token=119ed8b6-5cbf-438b-a142-b588a1e4c1a1')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('XD', 'monito chino con cara de XD',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F183234277_2892697417636789_3161625652815139236_n.jpg?alt=media&token=93c2cbdc-e3a5-4b06-a96d-f73bf49f9a32')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('llorando', 'monita china',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F186481062_1437620166582067_6340898494843736813_n.jpg?alt=media&token=fd7676c1-56a3-4ed7-85a5-5bec9ef8a71d')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('Neji', 'chikito',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F105407215_1005621443169400_8652850967157849953_n.jpg?alt=media&token=82558a5b-9e51-4f2a-bb05-01547e078dc4')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('enrabiao', 'raton enojadisimo',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F186491486_234460111774329_5113757736492265616_n.jpg?alt=media&token=3ced89ee-13ee-4724-8bfe-fa2011cf7d95')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('levi', 'levi norte�o',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F171862615_517536469409967_5870243138643673941_n.jpg?alt=media&token=0367e594-c92e-4245-bcb1-61fc08be42ba')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('ayudame chavito me persine al reves', 'kiko y chavo',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F185888743_747852755908773_8164977573412366821_n.jpg?alt=media&token=ddc97fb2-902b-468a-860d-4ec9d3a3dc42')

INSERT INTO Imagen (Titulo, Descripcion, URL) 
	VALUES ('monita con cara de uwu', 'monita china',
		'https://firebasestorage.googleapis.com/v0/b/base-labam.appspot.com/o/images%2F186513792_138684981581949_2265731739806325668_n.jpg?alt=media&token=839c2fa1-7fa8-446e-b829-4f559992c946')

