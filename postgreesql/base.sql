--- Create Base Table
create table base_table as(
select p1.tanggal,
       p1.id_invoice,
       p1.id_customer,
       p1.id_barang,
       p2.nama as nama_cabang,
       p2.cabang_sales,
       b1.kode_barang,
       b1.nama_barang as produk,
       b1.lini,
       p1.jumlah_barang as jumlah_unit,
       p1.unit,
       p1.harga as harga_per_unit
from penjualan as p1
join pelanggan as p2 on p1.id_customer = p2.id_customer
join barang  as b1 on p1.id_barang = b1.kode_barang
);

 COPY (SELECT *
     FROM agg_table
	 ) TO 'E:\Rakamin\PBI\kimia farma\ aggregate_table.csv' with DELIMITER ',' CSV HEADER;
	 
	 

 COPY (SELECT *
     FROM base_table
	 ) TO 'E:\Rakamin\PBI\kimia farma\ base_table.csv' with DELIMITER ',' CSV HEADER;