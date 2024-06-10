create table penjualan(
IDbarang int not null auto_increment,
NamaBarang varchar(50) not null,
HargaBarang float not null,
StokBarang int not null,
DeskripsiBarang varchar(100),
primary key (IDbarang)
);


insert into penjualan (NamaBarang, HargaBarang, StokBarang, DeskripsiBarang)
values
("Hardisk", 150000, 2, "penyimpanan 150 GB dan kondisi baru"),
("Hardisk", 250000, 3, "penyimpanan 320 GB dan kondisi baru"),
("RAM", 300000, 1, "penyimpanan 4 GB dan kondisi baru"),
("RAM", 500000, 1, "penyimpanan 8 GB dan kondisi baru"),
("PowerSupply", 200000, 4, "500 watt dan kondisi bekas"),
("Keyboard", 100000, 2, "Merk Logitech dan kondisi baru"),
("Mouse", 80000, 5, "Merk Logitech dan kondisi baru");


select * from penjualan

select p.NamaBarang, p.HargaBarang, p.DeskripsiBarang from penjualan p;

select * from penjualan
where StokBarang <4;

select * from penjualan 
where NamaBarang ="RAM";

update penjualan 
set NamaBarang ="Headset"
where IDbarang = 7;

delete from penjualan 
where IDbarang = 7

select * from penjualan p
where p.NamaBarang like "%board%";



create table penjualan1(
idJual int not null auto_increment,
IDbarang int not null,
Quantity int,
Subtotal FLOAT,
PRIMARY KEY (idJual),
FOREIGN KEY (IDbarang) REFERENCES penjualan(IDbarang)
);

alter table penjualan1 
add column tanggal DATE after Subtotal;

select * from penjualan p 
where p.StokBarang < 4
order by HargaBarang desc
limit 2;


select * from penjualan
where NamaBarang like '%disk%'

select * from penjualan


insert into penjualan1 (IDbarang, Quantity, Subtotal)
values 
(1, 1, 150000),
(3, 1, 300000),
(5, 2, 400000),
(6, 2, 200000)
;


select * from penjualan1 p

select AVG(Subtotal) as "Rata2 Penjualan" from penjualan1

select IDbarang, Quantity , SUM(Quantity) , SUM(Subtotal), COUNT(IDbarang)
from penjualan1 p 
where p.tanggal = '2024-02-04' or p.tanggal = '2024-02-07' 
group by IDbarang 

select * from penjualan1 p
where IDbarang = 3 or IDbarang = 5

select * from penjualan p 
where p.StokBarang <= 4 and HargaBarang <= 250000

select p.IDbarang,count(IDbarang)
from penjualan1 p 
group by IDbarang 
having count(IDbarang) = 1




