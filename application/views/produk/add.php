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
                </div>
            </div>
        </div>
    </div>
    <!-- Page content -->
    <div class="container-fluid mt--6">
        <div class="row">
            <div class="col-lg-12">
                <div class="card-wrapper">
                    <!-- Input groups -->
                    <div class="card">
                        <!-- Card header -->
                        <div class="card-header">
                            <h3 class="mb-0">Input groups</h3>
                        </div>
                        <!-- Card body -->
                        <?php if ($this->session->flashdata('message') != '') { ?>
                            <div class="card-body">
                                <span class="text-danger text-sm form-control"><?= $this->session->flashdata('message'); ?></span>
                            </div>
                        <?php } ?>
                        <div class="card-body">
                            <form method="post" action="<?= site_url('transaksi/add') ?>">
                                <!-- Input groups with icon -->
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <div class="input-group input-group-merge">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fas fa-phone"></i></span>
                                                </div>
                                                <input class="form-control" placeholder="Kode Barang" type="text" id="kode_barang" name="kode_barang">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <div class="input-group input-group-merge">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fas fa-phone"></i></span>
                                                </div>
                                                <input class="form-control" placeholder="Nama Barang" type="text" id="total-barang" name="total-barang">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <div class="input-group input-group-merge">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fas fa-phone"></i></span>
                                                </div>
                                                <input class="form-control" placeholder="Deskripsi" type="text" id="deskripsi" name="deskripsi">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <div class="input-group input-group-merge">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fas fa-phone"></i></span>
                                                </div>
                                                <input class="form-control" placeholder="Stok" type="number" id="stok_awal" name="stok_awal">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <div class="input-group input-group-merge">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fas fa-phone"></i></span>
                                                </div>
                                                <input class="form-control" placeholder="Stok" type="number" id="harga_beli" name="harga_beli">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <div class="input-group input-group-merge">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fas fa-phone"></i></span>
                                                </div>
                                                <input class="form-control" placeholder="Harga Jual" type="number" id="harga_jual" name="harga_jual">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <div class="input-group input-group-merge">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fas fa-phone"></i></span>
                                                </div>
                                                <select class="form-control" aria-label="Default select example" name="satuan" id="satuan">
                                                    <option value="pcs">Pcs</option>
                                                    <option value="dus">Dus</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <div class="input-group input-group-merge">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fas fa-phone"></i></span>
                                                </div>
                                                <select class="form-control" aria-label="Default select example" name="kategori" id="kategori">
                                                    <?php foreach ($kategori as $kategori) { ?>
                                                        <option value="<?= $kategori->id ?>"><?= $kategori->kategori ?></option>
                                                    <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2 m-auto">
                                        <div class="form-group">
                                            <label class="custom-toggle" style="width: 80px;">
                                                <input type="checkbox" checked name="status" id="status">
                                                <span class="custom-toggle-slider rounded-circle" data-label-off="Non Aktif" data-label-on="Aktif"></span>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-md-2 m-auto">
                                        <div class="form-group">
                                            <div class="custom-file">
                                                <input type="file" class="custom-file-input" id="customFileLang" lang="en">
                                                <label class="custom-file-label" for="customFileLang">Select file</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <div class="input-group input-group-merge">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fas fa-phone"></i></span>
                                                </div>
                                                <input class="form-control" placeholder="Jumlah Beli" type="number" id="total-barang" name="total-barang" value="1" min="1">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2 my-auto">
                                        <div class="form-group">
                                            <button class="btn btn-sm btn-success" id="submit">Submit</button>
                                        </div>
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>