<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
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
        $this->load->model('Auth_model', 'model');
    }
    /**
     *   View Login Page
     *  @param null
     *  @return view
     */
    public function index()
    {
        $this->form_validation->set_rules('identity', '', 'required|trim');
        $this->form_validation->set_rules('password', '', 'required|trim');
        if ($this->form_validation->run() === TRUE) { //jika semua input benar
            $identity = $this->input->post('identity');
            $password = $this->input->post('password');
            $userby_username = $this->model->get_where('user', [
                'username' => $identity
            ]);
            $userby_email = $this->model->get_where('user', [
                'email' => $identity
            ]);

            if (count($userby_username) > 0) { //login sukses by username
                if (password_verify($password, $userby_username[0]->password)) {
                    $user_data = [
                        $userby_username[0]->nik,
                        $userby_username[0]->username,
                        $userby_username[0]->fullname,
                        $userby_username[0]->email,
                        $userby_username[0]->img,
                    ];
                    $this->session->set_userdata('user', $userby_username);
                    redirect(site_url('produk'));
                } else {
                    $this->session->set_flashdata('message', '<div class="text-center text-danger"><small class="text-danger text-center">Username / Password Salah</small></div>');
                    redirect(site_url('auth/index'));
                }
            } else if (count($userby_email) > 0) { //login sukses by email
                if (password_verify($password, $userby_email[0]->password)) {
                    $user_data = [
                        $userby_email[0]->nik,
                        $userby_email[0]->username,
                        $userby_email[0]->fullname,
                        $userby_email[0]->email,
                        $userby_email[0]->img,
                        $userby_email[0]->level,
                    ];
                    $this->session->set_userdata('user', $user_data);
                    redirect(site_url('produk'));
                } else {
                    $this->session->set_flashdata('message', '<div class="text-center text-danger"><small class="text-danger text-center">Email / Password Salah</small></div>');
                    redirect(site_url('auth/index'));
                }
            } else {
                // login gagal
                $this->session->set_flashdata('message', '<div class="text-center text-danger"><small class="text-danger text-center">Login Gagal</small></div>');
                redirect(site_url('auth/index'));
            }
        } else {
            $this->load->view('auth/login');
        }
    }

    /**
     *   Chek Login
     *  @param null
     *  @return boolean
     */
    public function login()
    {
        $this->form_validation->set_rules('identity', '', 'required|trim');
        $this->form_validation->set_rules('password', '', 'required|trim');
        if ($this->form_validation->run() === TRUE) { //jika semua input benar
            $identity = $this->input->post('identity');
            $password = sha1($this->input->post('password'));
            $userby_username = $this->model->get_where('user', [
                'username' => $identity,
                'password' => $password
            ]);
            $userby_email = $this->model->get_where('user', [
                'email' => $identity,
                'password' => $password
            ]);
            if (mysqli_num_rows($userby_username) > 0) { //login sukses by username
                $this->session->set_userdata('user', $userby_username);
                $this->session->set_flashdata('message', 'sukses');
                redirect(site_url('produk'));
            } else if (mysqli_num_rows($userby_email) > 0) { //login sukses by email
                $this->session->set_flashdata('message', 'sukses');
                $this->session->set_userdata($userby_email);
                redirect(site_url('dashboard'));
            } else {
                // login gagal
                $this->session->set_flashdata('message', 'gagal');
                redirect(site_url('login'));
            }
        } else {
            $this->load->view('auth/login');
        }
    }

    public function logout()
    {
        $this->session->sess_destroy();
        redirect(site_url(''));
    }
}
