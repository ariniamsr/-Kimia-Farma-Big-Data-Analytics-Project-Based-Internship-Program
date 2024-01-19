					   
CREATE TABLE agg_table AS
SELECT tanggal,
       date_part('month', tanggal) AS bulan,
       id_invoice,
       cabang_sales,
       nama_cabang AS pelanggan,
       produk,
       lini AS merek,
       jumlah_unit AS jumlah_produk_terjual,
       harga_per_unit AS harga_satuan,
       (jumlah_unit * harga_per_unit) AS pendapatan
  FROM base_table
 ORDER BY 1, 4, 5, 6, 7, 8, 9, 10;
 