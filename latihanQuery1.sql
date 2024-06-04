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

