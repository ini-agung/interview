<script type="text/javascript">
    $('#datatable-produk').DataTable({
        pagingType: "numbers",
        dom: '<"#id-row.row"<"#btn-report.col-md-3 col-sm-4"B><".col-md-3 col-sm-4"l><"col-md-6 col-sm-4"f>>rti<"bottom"p>',
        responsive: true,
        lengthChange: true,
        autoWidth: false,
        pageLength: 10,
        info: false,
        buttons: [{
            "extend": 'print',
            "text": '<button type="button" class="btn" data-toggle="tooltip" data-placement="right" title="Print"><i class="fas fa-solid fa-print fa-2x"></i></button>',
            exportOptions: {
                columns: [0, 1, 2, 3, 4],
            }
        }, {
            "extend": 'csv',
            "text": '<button type="button" class="btn" data-toggle="tooltip" data-placement="right" title="Excel"><i class="fas fa-solid fa-file-csv fa-2x"></i></button>',
            exportOptions: {
                columns: [0, 1, 2, 3, 4],
            }
        }],
        language: {
            lengthMenu: "_MENU_",
            search: "_INPUT_",
            searchPlaceholder: "Cari..",
            paginate: {
                next: "<i class = 'fas fa-angle-right'> </i>",
                previous: "<i class = 'fas fa-angle-left'> </i>"
            }
        },

        processing: true,
        serverSide: true,
        order: [],
        ajax: {
            "url": "<?php echo site_url('produk/get_all/barang') ?>",
            "type": "POST"
        },
    });

    $('#confirm-delete').on('show.bs.modal', function(e) {
        $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
    });
    $('body').delegate('.btn-edit', 'click', (e) => {
        let id = e.target.id;
        edit(id);
    });

    function edit(id) {
        $.ajax({
            type: "POST",
            url: "<?= site_url('produk/edit/') ?>",
            data: {
                id: id
            },
            success: (data) => {
                console.log(data);
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
        $('#modal-stok').val(obj[0].sisa_stok);
        $('#modal-satuan').val(obj[0].satuan);
        $('#modal-harga-beli').val(obj[0].harga_beli);
        $('#modal-harga-jual').val(obj[0].harga_jual);
        $('#modal-kategori-id').val(obj[0].kategori_id);
        $('#modal-img').val(obj[0].img);
        $('#modal-suplier').val(obj[0].suplier_);
    }
</script>