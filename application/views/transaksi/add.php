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
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <div class="input-group input-group-merge">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text"><i class="fa fa-book" aria-hidden="true"></i></span>
                                                </div>
                                                <select class="form-control" aria-label="Default select example" name="barang" id="barang">
                                                    <option selected>Pilih Barang</option>
                                                    <?php if (!empty($barangs)) : ?>
                                                        <?php foreach ($barangs as $barang) : ?>
                                                            <option value="<?= $barang->id ?>"><?= $barang->nama_barang ?></option>
                                                        <?php endforeach; ?>
                                                    <?php endif; ?>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <div class="input-group input-group-merge">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">Rp. </span>
                                                </div>
                                                <input class="form-control" placeholder="Harga" type="text" id="harga-barang" name="harga-barang" readonly>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <span class="text-danger text-sm form-control" id="informasi-stok">Stok -</span>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <div class="input-group input-group-merge">
                                                <input class="form-control" placeholder="Jumlah Beli" type="number" id="total-barang" name="total-barang" value="1" min="1">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group">
                                            <div class="input-group input-group-merge">
                                                <input class="form-control" placeholder="Tanggal" type="datetime-local" id="created_date" name="created_date">
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