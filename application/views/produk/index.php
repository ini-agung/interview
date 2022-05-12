<div class="main-content" id="panel">
    <div class="header bg-primary pb-6">
        <div class="container-fluid">
            <div class="header-body">
                <div class="row align-items-center py-4">
                    <div class="col-lg-8 col-7">
                        <h6 class="h2 text-white d-inline-block mb-0"><?= (isset($title)) ? $title : ''; ?></h6>
                        <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
                            <?= $breadcrump; ?>
                        </nav>
                    </div>
                    <div class="col-lg-4 col-5 text-right">
                        <a href="<?= site_url('produk/add') ?>" class="btn btn-sm btn-neutral">Tambah Produk</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Page content -->
    <div class="container-fluid mt--6">
        <!-- Table -->
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-header">
                        <h3 class="mb-0">Daftar Produk dan Detail</h3>
                    </div>
                    <div class="table-responsive py-4">
                        <table class="table table-striped" id="datatable-produk">
                            <thead class="thead">
                                <tr>
                                    <th class="font-weight-bold">No</th>
                                    <th class="font-weight-bold">Kode Barang</th>
                                    <th class="font-weight-bold">Nama Barang</th>
                                    <th class="font-weight-bold">Stok Awal</th>
                                    <th class="font-weight-bold">Stok Sisa</th>
                                    <th class="font-weight-bold">Satua</th>
                                    <th class="font-weight-bold">Harga Beli</th>
                                    <th class="font-weight-bold">Harga Jual</th>
                                    <th class="font-weight-bold">Kategori</th>
                                    <th class="font-weight-bold">Tanggal</th>
                                    <th class="font-weight-bold">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Modal Edit -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Edit Produk</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form role="form" method="post" action="<?php echo site_url('produk/update') ?>">
                    <div class="card-body px-lg-5 py-lg-5 px-md-4 py-md-4 px-sm-3 py-sm-3 px-xs-2 py-xs-2">
                        <div class="text-center text-muted mb-4">
                            Detail Barang
                        </div>
                        <div class="form-group mb-3">
                            <input type="hidden" id="modal-id" name="modal-id" class="form-control">
                            <div class="input-group input-group-merge input-group-alternative">
                                <div class="input-group-prepend">
                                    <span class="input-group-text font-weight-bold">Kode</span>
                                </div>
                                <input type="text" id="modal-kode" name="modal-kode" class="form-control">
                                <div class="input-group-prepend">
                                    <span class="input-group-text font-weight-bold">Nama</span>
                                </div>
                                <input type="text" class="form-control" id="modal-nama" name="modal-nama">
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <div class="input-group input-group-merge input-group-alternative">
                                <div class="input-group-prepend">
                                    <span class="input-group-text font-weight-bold">Harga Beli</span>
                                </div>
                                <input type="text" class="form-control" id="modal-harga- name="modal-harga-beli">
                                <div class="input-group-prepend">
                                    <span class="input-group-text font-weight-bold">Harga Jual</span>
                                </div>
                                <input type="text" class="form-control" id="modal-harga- name="modal-harga-jual">
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <div class="input-group input-group-merge input-group-alternative">
                                <div class="input-group-prepend">
                                    <span class="input-group-text font-weight-bold">Stok</span>
                                </div>
                                <input type="text" class="form-control" id="modal-stok" name="modal-stok">
                            </div>
                        </div>
                        
                        <div class="form-group mb-3">
                            <div class="input-group input-group-merge input-group-alternative">
                                <div class="input-group-prepend">
                                    <span class="input-group-text font-weight-bold">Deskripsi</span>
                                </div>
                                <input type="text" class="form-control" id="modal-deskripsi" name="modal-deskripsi">
                            </div>
                        </div>
                    </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save changes</button>
            </div>
            </form>

        </div>
    </div>
</div>