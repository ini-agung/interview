<script type="text/javascript">
    $('#datatable-transaksi').DataTable({
        pagingType: "numbers",
        dom: '<"#id-row.row"<"#btn-report.col-md-3 col-sm-4"B><".col-md-3 col-sm-4"l><"col-md-6 col-sm-4"f>>rti<"bottom"p>',
        responsive: true,
        lengthChange: true,
        autoWidth: false,
        pageLength: 10,
        info: true,
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
            "url": "<?php echo site_url('transaksi/get_all/transaksi') ?>",
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
            url: "<?= site_url('transaksi/edit/') ?>",
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

    
    
    
</script>