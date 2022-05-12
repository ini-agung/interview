<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Transaksi extends CI_Controller
{

    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     * 		http://example.com/index.php/welcome
     *	- or -
     * 		http://example.com/index.php/welcome/index
     *	- or -
     * Since this controller is set as the default controller in
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /index.php/welcome/<method_name>
     * @see https://codeigniter.com/userguide3/general/urls.html
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->model('Transaksi_model', 'model');
        echo (count($this->session->userdata('user')) <= 0) ? redirect(site_url()) : '';
    }
    public function index()
    {
        $data['title'] = 'Transaksi';
        $data['js'] = 'transaksi/js';
        $data['breadcrump'] = ' <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                                    <li class="breadcrumb-item"><a href=' . site_url('dashboard') . '><i class="fas fa-home"></i></a></li>
                                    <li class="breadcrumb-item"><a href=' . site_url('transaksi') . '>Transaksi</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Index</li>
                                </ol>';
        $this->load->view('layouts/header', $data);
        $this->load->view('transaksi/index', $data);
        $this->load->view('layouts/footer', $data);
    }
    var $column_search = array('kode_barang');
    var $column_order = array(NULL, 'kode_barang', 'username', 'stok_awal', 'jumlah', 'total', 'created_date', NULL);

    public function get_all(String $table = "transaksi", array $order_by = ['transaksi.id', 'ASC'])
    {
        $this->db->select('transaksi.id, transaksi.kode_barang,transaksi.stok_awal,transaksi.user_id,transaksi.jumlah,transaksi.total,transaksi.created_date')
            ->select('user.nik, user.username')
            ->from($table)->join('user', 'user.nik = transaksi.user_id')->limit(10, $_POST['start']);
        $this->db->limit($_POST['length'], $_POST['start']);
        $i = 0;
        foreach ($this->column_search as $item) {
            if ($_POST['search']['value']) {
                if ($i === 0) {
                    $this->db->group_start();
                    $this->db->like($item, $_POST['search']['value']);
                } else {
                    $this->db->or_like($item, $_POST['search']['value']);
                }

                if (count($this->column_search) - 1 == $i)
                    $this->db->group_end();
            }
            $i++;
        }
        if (isset($_POST['order'])) {
            $this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
        }

        $list = $this->db->get()->result();
        $list2 = $this->db->select('transaksi.id, transaksi.kode_barang,transaksi.stok_awal,transaksi.user_id,transaksi.jumlah,transaksi.total,transaksi.created_date')
            ->select('user.nik, user.username')->from($table)->join('user', 'user.nik = transaksi.user_id')->get()->result();

        $recordsFiltered = count($list);
        $recordsTotal = count($list2);
        $data = array();
        $no = $_POST['start'];
        foreach ($list as $item) {
            $no++;
            $row = array();
            $row[] = $no;
            $row[] = $item->kode_barang;
            $row[] = $item->username;
            $row[] = $item->stok_awal;
            $row[] = $item->jumlah;
            $row[] = 'Rp. ' . $item->total;
            $row[] = $item->created_date;
            $data[] = $row;
        }

        $output = [
            "draw" => $_POST['draw'],
            "recordsTotal" => $recordsTotal,
            "recordsFiltered" => $recordsTotal,
            "data" => $data
        ];
        echo json_encode($output);
    }

    public function add()
    {
        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');
        $data['title']  = 'Transaksi';
        $data['js']     = 'transaksi/js-add';
        $data['users']  = $this->model->get_all('user');
        $data['barangs']  = $this->model->get_where('barang', 'sisa_stok>0');
        $data['breadcrump'] = ' <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                                    <li class="breadcrumb-item"><a href=' . site_url('dashboard') . '><i class="fas fa-home"></i></a></li>
                                    <li class="breadcrumb-item"><a href=' . site_url('transaksi') . '>Transaksi</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Tambah Transaksi</li>
                                </ol>';
        $data['headers'] = [
            "https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css",
            "https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css"
        ];
        $data['footers'] = [
            "assets/argon/assets/vendor/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js",
            "assets/argon/assets/vendor/jquery/dist/jquery.min.js",
            "assets/argon/assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js",
            "assets/argon/assets/vendor/js-cookie/js.cookie.js",
            "assets/argon/assets/vendor/jquery.scrollbar/jquery.scrollbar.min.js",
            "assets/argon/assets/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js",
            "assets/argon/assets/vendor/select2/dist/js/select2.min.js",
            "assets/argon/assets/vendor/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js",
            "assets/argon/assets/vendor/nouislider/distribute/nouislider.min.js",
            "assets/argon/assets/vendor/quill/dist/quill.min.js",
            "assets/argon/assets/vendor/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js",
        ];

        $this->form_validation->set_rules(
            'barang',
            'barang',
            'required',
            array(
                'required'      => 'Silahkan Pilih Barang',
            )
        );
        $this->form_validation->set_rules(
            'harga-barang',
            'harga-barang',
            'required',
            array(
                'required'      => 'Harga Tidak Valid',
            )
        );
        $this->form_validation->set_rules(
            'total-barang',
            'total-barang',
            'required',
            array(
                'required'      => 'Masukkan Total Beli',
            )
        );
        if ($this->form_validation->run() == FALSE) {
            $this->load->view('layouts/header', $data);
            $this->load->view('transaksi/add', $data);
            $this->load->view('layouts/footer', $data);
        } else {
            $barang       = $this->input->post('barang');
            $total_bayar  = $this->input->post('harga-barang');
            $total_barang = $this->input->post('total-barang');
            $created_date = $this->input->post('created_date');
            $user         = $this->session->userdata('user');
            $user_id      = $user[0];
            $query        = $this->model->get_where('barang', 'id=' . $barang);
            $kode_barang  = $query[0]->kode_barang;
            $stok         = $query[0]->sisa_stok;
            if ($stok >= $total_barang) {
                $insert = [
                    'kode_barang' => $kode_barang,
                    'stok_awal'   => $stok,
                    'user_id'     => $user_id,
                    'jumlah'      => $total_barang,
                    'total'       => $total_bayar,
                    'created_date' => $created_date
                ];
                $this->model->create('transaksi', $insert);
                $stok_sisa        = $stok - $total_barang;
                $update = [
                    'sisa_stok' => $stok_sisa,
                    'update_at' => date('Y-m-d H:i:s')
                ];
                $this->model->update('barang', 'id=' . $barang, $update);
                redirect(site_url('transaksi'));
            } else {
                $this->session->set_flashdata('message', '<span class="text-danger">Jumlah Pembelian Melebihi Stok</span>');
                redirect(site_url('transaksi/add'));
            }
        }
    }
}
