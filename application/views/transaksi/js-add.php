<script type="text/javascript">
    $('#confirm-delete').on('show.bs.modal', function(e) {
        $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
    });
    $('body').delegate('.btn-edit', 'click', (e) => {
        let id = e.target.id;
        edit(id);
    });

    $(document).on("change", "#barang", function() {
        let id_barang = $("#barang").val();
        $.ajax({
            type: "POST",
            url: "<?= site_url('produk/detail/') ?>",
            data: {
                id: id_barang
            },
            success: (data) => {
                let total_beli = $("#total-barang").val();
                const obj = JSON.parse(data);
                let harga_barang = obj[0].harga_jual;
                let total_bayar = harga_barang;
                if (total_beli != '') {
                    total_bayar = harga_barang * total_beli;
                }
                $("#harga-barang").val(total_bayar);
                $("#informasi-stok").text("Stok " + obj[0].sisa_stok);
            }
        });
    });

    $(document).on("change", "#total-barang", function() {
        $("#harga-barang").val('');
        let id_barang = $("#barang").val();
        let total_beli = $("#total-barang").val();
        $.ajax({
            type: "POST",
            url: "<?= site_url('produk/detail/') ?>",
            data: {
                id: id_barang
            },
            success: (data) => {
                let total_beli = $("#total-barang").val();
                const obj = JSON.parse(data);
                let harga_barang = obj[0].harga_jual;
                let total_bayar = harga_barang;
                if (total_beli != '') {
                    total_bayar = harga_barang * total_beli;
                }
                $("#harga-barang").val(total_bayar);
            }
        });
    });


    function edit(id) {
        $.ajax({
            type: "POST",
            url: "<?= site_url('transaksi/edit/') ?>",
            data: {
                id: id
            },
            success: (data) => {
                value(data);
                $("#exampleModal").modal('show');
            }
        });
    }

    function value(data) {
        const obj = JSON.parse(data);
        $('#modal-id').val(obj[0].id);
        $('#modal-kode').val(obj[0].kode_barang);
        $('#modal-nama').val(obj[0].nama_barang);
        $('#modal-deskripsi').val(obj[0].deskripsi);
        $('#modal-stok').val(obj[0].stok);
        $('#modal-satuan').val(obj[0].satuan);
        $('#modal-harga-beli').val(obj[0].harga_beli);
        $('#modal-harga-jual').val(obj[0].harga_jual);
        $('#modal-kategori-id').val(obj[0].kategori_id);
        $('#modal-img').val(obj[0].img);
        $('#modal-suplier').val(obj[0].suplier_);
    }
</script>