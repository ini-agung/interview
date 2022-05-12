<?php defined('BASEPATH') or exit('No direct script access allowed');
class Api extends CI_Controller
{
    var $column_search = array('qr', 'kode_barang', 'nama_barang');
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }

    /**
     * @param string|array ['table name']
     * @return object
     * 
     * example :
     * get_all('produk', ['id', DESC]) 
     */
    // public function get_all(String $table = "barang", array $order_by = ['id', 'ASC'])
    // {

    //     $this->db->select('*')->from($table)->limit(10, $_POST['start'])->order_by($order_by[0], $order_by[1]);
    //     $this->db->limit($_POST['length'], $_POST['start']);
    //     $i = 0;

    //     foreach ($this->column_search as $item) {
    //         if ($_POST['search']['value']) {
    //             if ($i === 0) {
    //                 $this->db->group_start();
    //                 $this->db->like($item, $_POST['search']['value']);
    //             } else {
    //                 $this->db->or_like($item, $_POST['search']['value']);
    //             }

    //             if (count($this->column_search) - 1 == $i)
    //                 $this->db->group_end();
    //         }
    //         $i++;
    //     }
    //     $list = $this->db->get()->result();

    //     $list2 = $this->db->select('*')->from($table)->order_by($order_by[0], $order_by[1])->get()->result();

    //     $recordsFiltered = count($list);
    //     $recordsTotal = count($list2);
    //     $data = array();
    //     $no = $_POST['start'];
    //     foreach ($list as $item) {
    //         $no++;
    //         $row = array();
    //         $row[] = $no;
    //         $row[] = $item->qr;
    //         $row[] = $item->kode_barang;
    //         $row[] = $item->nama_barang;
    //         $row[] = $item->deskripsi;
    //         $row[] = $item->stok;
    //         $row[] = $item->satuan;
    //         $row[] = $item->harga_beli;
    //         $row[] = $item->harga_jual;
    //         $row[] = $item->kategori_id;
    //         $row[] = $item->supplier_id;
    //         $row[] = $item->img;
    //         $row[] = $item->created_date;

    //         $data[] = $row;
    //     }

    //     $output = [
    //         "draw" => $_POST['draw'],
    //         "recordsTotal" => $recordsTotal,
    //         "recordsFiltered" => $recordsTotal,
    //         "data" => $data
    //     ];
    //     echo json_encode($output);
    // }

    public function list_kabkot()
    {
        $id_provinsi = $_POST['id'];
        $this->db->select('id, kabupaten_kota');
        $this->db->from('kabkot');
        $this->db->where(['provinsi_id' => $id_provinsi]);
        $data[] = $this->db->get()->result();
        echo json_encode($data);
    }
}
