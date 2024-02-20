
--Foreign Key
ALTER TABLE penjualan ADD CONSTRAINT fk_id_customer FOREIGN KEY (id_customer) REFERENCES pelanggan(id_customer);
ALTER TABLE penjualan ADD CONSTRAINT fk_barang FOREIGN KEY (id_barang) REFERENCES barang(kode_barang);