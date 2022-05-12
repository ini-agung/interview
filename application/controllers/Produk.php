<?php
defined('BASEPATH') or exit('No direct script access allowed');

//example faker
// $faker = Faker\Factory::create();
// for ($a = 0; $a < 100; $a++) {
//     // generate data nama, alamat
//     $qr = $faker->numerify('Q$######'); //QR barang
//     $kode_barang = $faker->numerify('KD####'); //kode barang
//     $nama_barang = $faker->sentence(2); //nama
//     $deskripsi = $faker->sentence(50); //deskripsi
//     $stok = $faker->randomDigit(); //stok
//     $satuan = $faker->randomElement($array = array('biji', 'pack', 'dus')); //satuan
//     $harga_beli = $faker->numerify('##000'); //harga beli
//     $harga_jual = $faker->numerify('##000'); //harga jual
//     $kategori_id = $faker->randomElement($array = array('1', '2', '3')); //kategori_id
//     $supplier_id = $faker->randomElement($array = array('1', '2', '3')); //supplier_id
//     $img = $faker->numerify('img####.jpg'); //kode barang
//     $table_data = [
//         'qr'          => $qr,
//         'kode_barang' => $kode_barang,
//         'nama_barang' => $nama_barang,
//         'deskripsi'   => $deskripsi,
//         'stok'        => $stok,
//         'satuan'      => $satuan,
//         'harga_beli'  => $harga_beli,
//         'harga_jual'  => $harga_jual,
//         'kategori_id' => $kategori_id,
//         'supplier_id' => $supplier_id,
//         'img'         => $img
//     ];
//     $this->db->insert('barang', $table_data);
// }


class Produk extends CI_Controller
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
        $this->load->model('Produk_model', 'model');
        echo (count($this->session->userdata('user')) <= 0) ? redirect(site_url()) : '';
    }

    /**
     *   View Login Page
     *  @param null
     *  @return void
     */
    public function index()
    {
        $data['title']  = 'Produk';
        $data['js']     = 'produk/js';
        $data['breadcrump'] = ' <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                                    <li class="breadcrumb-item"><a href=' . site_url('dashboard') . '><i class="fas fa-home"></i></a></li>
                                    <li class="breadcrumb-item"><a href=' . site_url('produk') . '>Produk</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Index</li>
                                </ol>';
        $this->load->view('layouts/header', $data);
        $this->load->view('produk/index', $data);
        $this->load->view('layouts/footer', $data);
    }

    /**
     *   View Login Page
     *  @param array where condition
     *  @return object
     *  example:
     * view([
     *      'id' => 1,     
     *      ])
     */
    public function view($where)
    {
        $table = 'produk';
        $table_data = $where;
        $order_by = [
            'created_date' => 'DESC'
        ];
        $data['products'] = $this->model->get_where($table, $table_data, $order_by);
        $this->load->view('produk/view', $data);
    }

    /**
     *   Edit Produk
     *  @param null
     *  @return void
     */
    public function edit()
    {
        $id = $_POST['id'];
        $data = $this->model->get_where('barang', ['id' => $id]);

        echo json_encode($data, TRUE);

        // $this->form_validation->set_rules('qr', 'Qr', 'required|trim');
        // $this->form_validation->set_rules('kode_barang', 'Kode Barang', 'required|trim');
        // $this->form_validation->set_rules('nama_barang', 'Nama Barang', 'required|trim');
        // $this->form_validation->set_rules('deskripsi', 'Deskripsi', 'required|trim');
        // $this->form_validation->set_rules('stok', 'Stok', 'required|trim');
        // $this->form_validation->set_rules('satuan', 'Satuan', 'required|trim');
        // $this->form_validation->set_rules('harga_beli', 'Harga Beli', 'required|trim');
        // $this->form_validation->set_rules('harga_jual', 'Harga Jual', 'required|trim');
        // $this->form_validation->set_rules('kategori_id', 'Kategori Id', 'required|trim');
        // $this->form_validation->set_rules('supplier_id', 'Supplier Id', 'required|trim');
        // $this->form_validation->set_rules('img', 'Image', 'required|trim');
        // if ($this->form_validation->run() == TRUE) {
        //     /**
        //      * Condition is true, edit data
        //      */
        //     $qr          = $this->post->input('qr');
        //     $kode_barang = $this->post->input('kode_barang');
        //     $nama_barang = $this->post->input('nama_barang');
        //     $deskripsi   = $this->post->input('deskripsi');
        //     $stok        = $this->post->input('stok');
        //     $satuan      = $this->post->input('satuan');
        //     $harga_beli  = $this->post->input('harga_beli');
        //     $harga_jual  = $this->post->input('harga_jual');
        //     $kategori_id = $this->post->input('kategori_id');
        //     $supplier_id = $this->post->input('supplier_id');
        //     $img         = $this->post->input('img');

        //     $table = 'barang';
        //     $table_data = [
        //         'qr'          => $qr,
        //         'kode_barang' => $kode_barang,
        //         'nama_barang' => $nama_barang,
        //         'deskripsi'   => $deskripsi,
        //         'stok'        => $stok,
        //         'satuan'      => $satuan,
        //         'harga_beli'  => $harga_beli,
        //         'harga_jual'  => $harga_jual,
        //         'kategori_id' => $kategori_id,
        //         'supplier_id' => $supplier_id,
        //         'img'         => $img
        //     ];

        //     $this->model->update($table, $table_data);
        // } else {
        //     /**
        //      * Condition is false, edit data
        //      */
        //     $this->load->view('produk/edit_produk');
        // }
    }

    /**
     *   Edit Produk
     *  @param null
     *  @return void
     */
    public function add()
    {
        $this->load->helper(array('form', 'url'));
        $this->load->library('form_validation');
        $data['title']  = 'Produk';
        // $data['js']     = 'produk/js-add';
        $data['kategori']     = $this->db->select('*')->from('kategori')->get()->result();
        $data['breadcrump'] = ' <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                                    <li class="breadcrumb-item"><a href=' . site_url('dashboard') . '><i class="fas fa-home"></i></a></li>
                                    <li class="breadcrumb-item"><a href=' . site_url('produk') . '>Produk</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Tambah Produk</li>
                                </ol>';
        $data['headers'] = [
            "https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css",
            "https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css"
        ];
        $this->form_validation->set_rules('qr', 'Qr', 'required|trim');
        $this->form_validation->set_rules('kode_barang', 'Kode Barang', 'required|trim');
        $this->form_validation->set_rules('nama_barang', 'Nama Barang', 'required|trim');
        $this->form_validation->set_rules('deskripsi', 'Deskripsi', 'required|trim');
        $this->form_validation->set_rules('stok', 'Stok', 'required|trim');
        $this->form_validation->set_rules('satuan', 'Satuan', 'required|trim');
        $this->form_validation->set_rules('harga_beli', 'Harga Beli', 'required|trim');
        $this->form_validation->set_rules('harga_jual', 'Harga Jual', 'required|trim');
        $this->form_validation->set_rules('kategori_id', 'Kategori Id', 'required|trim');
        $this->form_validation->set_rules('supplier_id', 'Supplier Id', 'required|trim');
        $this->form_validation->set_rules('img', 'Image', 'required|trim');
        if ($this->form_validation->run() == TRUE) {
            /**
             * Condition is true, edit data
             */
            $qr          = $this->post->input('qr');
            $kode_barang = $this->post->input('kode_barang');
            $nama_barang = $this->post->input('nama_barang');
            $deskripsi   = $this->post->input('deskripsi');
            $stok        = $this->post->input('stok');
            $satuan      = $this->post->input('satuan');
            $harga_beli  = $this->post->input('harga_beli');
            $harga_jual  = $this->post->input('harga_jual');
            $kategori_id = $this->post->input('kategori_id');
            $supplier_id = $this->post->input('supplier_id');
            $img         = $this->post->input('img');

            $table = 'barang';
            $table_data = [
                'qr'          => $qr,
                'kode_barang' => $kode_barang,
                'nama_barang' => $nama_barang,
                'deskripsi'   => $deskripsi,
                'stok'        => $stok,
                'satuan'      => $satuan,
                'harga_beli'  => $harga_beli,
                'harga_jual'  => $harga_jual,
                'kategori_id' => $kategori_id,
                'supplier_id' => $supplier_id,
                'img'         => $img
            ];

            $this->model->create($table, $table_data);
        } else {
            /**
             * Condition is false, edit data
             */
            $this->load->view('layouts/header', $data);
            $this->load->view('produk/add', $data);
            $this->load->view('layouts/footer', $data);
        }
    }

    public function delete($id)
    {

        $user_login = $this->session->userdata('user');
        $table = 'barang';
        $table_data = ['id' => $id];
        if ($user_login['level' == 1]) {
            $this->model->delete($table, $table_data);
        } else {
            /**
             * You Dont Have Permission
             */
        }
        redirect(site_url('produk'));
    }

    var $column_order = array(
        NULL,
        'kode_barang',
        'nama_barang',
        'stok_awal',
        'sisa_stok',
        'satuan',
        'harga_beli',
        'harga_jual',
        'barang.kategori',
        'created_date',
        NULL
    );

    var $column_search = array('nama_barang', 'kode_barang');
    public function get_all(String $table = "barang", array $order_by = ['barang.id', 'ASC'])
    {

        $this->db->select('*')->from($table)->join('kategori', 'barang.kategori = kategori.id')->limit(10, $_POST['start']);
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

        $list2 = $this->db->select('*')->from($table)->join('kategori', 'barang.kategori = kategori.id')->get()->result();

        $recordsFiltered = count($list);
        $recordsTotal = count($list2);
        $data = array();
        $no = $_POST['start'];
        foreach ($list as $item) {
            $no++;
            $row = array();
            $row[] = $no;
            $row[] = $item->kode_barang;
            $row[] = $item->nama_barang;
            $row[] = $item->stok_awal;
            $row[] = $item->sisa_stok;
            $row[] = $item->satuan;
            $row[] = 'Rp. ' . $item->harga_beli;
            $row[] = 'Rp. ' . $item->harga_jual;
            $row[] = $item->kategori;
            $row[] = $item->created_date;

            $edit_url   = 'produk/edit/' . $item->id;
            $delete_url = 'produk/delete/' . $item->id;
            $row[] = '
            <div class="row">
            
                <a href="javascript:void(0)"  class="btn-edit" ><i class="fas fa-edit" id=' . $item->id . '></i></a>
                |
                <a href="' . $delete_url . '"><i class="fas fa-times"></i></a>
            </div>
            ';

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

    public function detail()
    {
        $id = $_POST['id'];
        $table = "barang";
        $where = ['id' => $id];
        $query = $this->model->get_where($table, $where);
        echo json_encode($query);
    }

    public function update(){
        $data=[
            'id' => $this->input->post('modal-id'),
            'kode_barang' => $this->input->post('modal-kode'),
            'nama_barang' => $this->input->post('modal-nama'),
            'stok_awal' => $this->input->post('modal-stok'),
            'deskripsi' => $this->input->post('modal-deskripsi'),
        ];
        $this->db->where('id', $this->input->post('modal-id'));
        $this->db->update('barang', $data);
        redirect(site_url('produk'));
    }
}
