# Host: localhost  (Version 5.5.5-10.1.38-MariaDB)
# Date: 2020-01-26 15:30:23
# Generator: MySQL-Front 6.1  (Build 1.21)


#
# Structure for table "barang"
#

CREATE TABLE `barang` (
  `Id_barang` varchar(20) NOT NULL DEFAULT '',
  `Id_kategori` varchar(40) NOT NULL DEFAULT '',
  `nama_barang` varchar(30) NOT NULL DEFAULT '',
  `harga` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id_barang`,`Id_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "barang"
#

INSERT INTO `barang` VALUES ('b1','k3','jeruk',5000),('b10','k2','beras',20000),('b11','k2','mie',10000),('b12','k5','air mineral',1000),('b13','k5','jus jeruk',2000),('b14','k6','boots',8000),('b15','k7','kacamata',1400),('b16','k4','sepeda',90000),('b17','k3','pisang',1500),('b18','k3','kelapa',2000),('b19','k3','mangga',1000),('b2','k4','motor',2000000),('b3','k4','mobil',5000000),('b4','k1','jeans',10000),('b5','k1','kemeja',10000),('b6','k8','handphone',100000),('b7','k8','tv',200000),('b8','k3','apel',4000),('b9','k3','anggur',6000);

#
# Structure for table "kategori"
#

CREATE TABLE `kategori` (
  `Id_kategori` varchar(20) NOT NULL DEFAULT '0',
  `nama` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "kategori"
#

INSERT INTO `kategori` VALUES ('k1','pakaian'),('k2','makanan'),('k3','buah'),('k4','kendaraan'),('k5','minuman'),('k6','sepatu'),('k7','aksesoris'),('k8','elektronik');

#
# Structure for table "transaksi"
#

CREATE TABLE `transaksi` (
  `Id_transaksi` varchar(20) NOT NULL DEFAULT '',
  `Id_barang` varchar(20) NOT NULL DEFAULT '',
  `Id_user` varchar(30) NOT NULL DEFAULT '',
  `no_transaksi` varchar(30) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL DEFAULT '0000-00-00',
  `qty` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id_transaksi`,`Id_barang`,`Id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "transaksi"
#

INSERT INTO `transaksi` VALUES ('t1','b1','u10','1.0','2020-01-01',1),('t10','b10','u18','10.0','2020-01-07',2),('t11','b11','u19','11.0','2020-01-07',5),('t12','b12','u2','12.0','2020-01-07',6),('t13','b13','u20','13.0','2020-01-03',1),('t14','b14','u21','14.0','2020-01-03',1),('t15','b15','u22','15.0','2020-01-03',1),('t16','b16','u23','16.0','2020-01-03',1),('t17','b17','u24','17.0','2020-01-05',1),('t18','b18','u25','18.0','2020-01-05',1),('t19','b19','u26','19.0','2020-01-05',5),('t2','b2','u10','2.0','2020-01-01',1),('t20','b2','u27','20.0','2020-01-05',5),('t21','b3','u28','21.0','2020-01-21',5),('t22','b4','u29','22.0','2020-01-22',1),('t23','b4','u3','23.0','2020-01-22',2),('t24','b1','u30','24.0','2020-01-22',3),('t25','b10','u4','25.0','2020-01-22',4),('t26','b8','u5','26.0','2020-01-19',4),('t27','b9','u6','27.0','2020-01-19',4),('t28','b4','u7','28.0','2020-01-19',3),('t29','b5','u8','29.0','2020-01-19',3),('t3','b3','u11','3.0','2020-01-20',1),('t30','b5','u9','30.0','2020-01-19',2),('t4','b4','u12','4.0','2020-01-15',1),('t5','b5','u13','5.0','2020-01-12',3),('t6','b6','u14','6.0','2020-01-06',4),('t7','b7','u15','7.0','2020-01-05',2),('t8','b8','u16','8.0','2020-01-10',2),('t9','b9','u17','9.0','2020-01-03',2);

#
# Structure for table "user"
#

CREATE TABLE `user` (
  `Id_user` varchar(20) NOT NULL DEFAULT '',
  `nama_user` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "user"
#

INSERT INTO `user` VALUES ('u1','agus'),('u10','ayu'),('u11','itoh'),('u12','rina'),('u13','yusron'),('u14','dimas'),('u15','fahrudin'),('u16','fahmi'),('u17','asep'),('u18','ade'),('u19','ummu'),('u2','deden'),('u20','zainal'),('u21','hariri'),('u22','anwar'),('u23','chris'),('u24','riana'),('u25','arum'),('u26','andi'),('u27','reza'),('u28','joko'),('u29','sinta'),('u3','heni'),('u30','budi'),('u4','hani'),('u5','hana'),('u6','lia'),('u7','nia'),('u8','mia'),('u9','putri');
