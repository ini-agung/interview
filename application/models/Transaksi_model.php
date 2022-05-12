<?php defined('BASEPATH') or exit('No direct script access allowed');
include(APPPATH . 'models/Crud_model.php');
class Transaksi_model extends CI_Model
{
    protected $crud;
    public function __construct()
    {
        $this->crud = new Crud_model();
    }

    /**
     * @param string|array create new data
     * @return bool
     */
    public function create($table, $table_data)
    {
        return $this->crud->create($table, $table_data);
    }

    /**
     * @param string get list transaksi
     * @return object
     */
    public function get_all($table)
    {
        return $this->crud->get_all($table);
    }

    /**
     * @param string|array delete tabel
     * @return bool
     */
    public function delete($table, $table_data)
    {
        return $this->crud->delete($table, $table_data);
    }

    /**
     * @param string|array|array update tabel
     * @return bool
     */
    public function update($table, $where, $table_data)
    {
        return $this->crud->update($table, $where, $table_data);
    }

    /**
     * @param string|array get table where
     * @return object
     */
    public function get_where($table, $where)
    {
        return $this->crud->get_where($table, $where);
    }
}
