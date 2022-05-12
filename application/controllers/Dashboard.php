<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dashboard extends CI_Controller
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
        $this->load->model('Dashboard_model', 'model');
    }
    /**
     *   View Login Page
     *  @param null
     *  @return view
     */
    public function index()
    {
        $table = 'user';
        $table_data = [
            'id' => 4
        ];

        $data['report'] = $this->model->get_all('transaksi');
        $this->load->view('layouts/header', $data);
        $this->load->view('dashboard/index');
        $this->load->view('layouts/footer', $data);
    }

    /**
     *   Chek Login
     *  @param null
     *  @return boolean
     */
    public function login()
    {
    }
}
