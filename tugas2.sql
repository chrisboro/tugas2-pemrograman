select b.nama_barang ,sum(a.qty) as jumlah from transaksi as a,barang as b where a.Id_barang=b.Id_barang
group by a.Id_barang order by jumlah desc limit 1

select nama_barang ,max(harga) as jumlah from barang group by Id_barang order by jumlah desc limit 1

select b.nama_user,sum(a.qty) as jumlah from transaksi as a,user as b where a.Id_user=b.Id_user
group by a.Id_user order by jumlah desc limit 1

select nama_user from user where Id_user not in (select Id_user from transaksi)

select count(Id_transaksi) from transaksi 

select sum(qty) from transaksi

select a.Id_transaksi,a.tanggal,b.nama_user from transaksi as a,user as b where a.Id_user=b.Id_user
order by b.nama_user asc

select a.Id_transaksi,a.tanggal,b.nama_user from transaksi as a,user as b where a.Id_user=b.Id_user
order by a.tanggal asc

select tanggal, count(Id_transaksi) from transaksi group by tanggal order by tanggal asc