<?php defined('BASEPATH') or exit('No direct script access allowed');

class Crud_model extends CI_Model
{
    protected $table;

    /**
     * @param string|array create new data
     * @return bool
     * 
     * example :
     * create('user', [
     * 'username' => 'Agung Pangestu',
     * 'img'      => 'img.png'
     * ]) 
     */
    public function create(String $table, array $table_data)
    {
        $this->db->trans_start();
        $this->db->insert($table,  $table_data);
        $this->db->trans_complete();
        if ($this->db->trans_status() === FALSE) {
            return $this->db->trans_rollback();
        } else {
            return $this->db->trans_commit();
        }
    }

    /**
     * @param string ['table name']
     * @return object
     * 
     * example :
     * get_all('produk') 
     */
    public function get_all(String $table, array $order_by = ['id', 'ASC'])
    {

        $this->db->select('*');
        $this->db->from($table);
        $query = $this->db->order_by($order_by[0], $order_by[1]);
        $query = $this->db->get();
        return $query->result();
    }

    /**
     * @param String|Array ['table name'], ['where => ], [id=>asc]
     * @return object
     * 
     * example :
     * get_where('user', ['id'=> 1], ['id' => ASC]) 
     */
    public function get_where($table, $table_data)
    {
        $query = $this->db->get_where($table, $table_data)->result();
        return $query;
    }

    /**
     * @param String|Array
     * @return bool
     * 
     * example delete('user', ['id'=>1])
     */
    public function delete($table, $table_data)
    {
        $this->db->trans_start();
        $this->db->where($table_data);
        $this->db->delete($table);
        $this->db->trans_complete();
        if ($this->db->trans_status() === FALSE) {
            return $this->db->trans_rollback();
        } else {
            return $this->db->trans_commit();
        }
    }

    /**
     * @param String|String|Array
     * @return bool
     * example:
     * update('user', 'id=1', [
     *                  'id'    => 1,
     *                  'img'   => 'picture.jpg',
     *                  'email' => 'new@mail.com'
     *                ])
     */

    public function update($table, $where, $table_data)
    {
        $this->db->trans_start();
        $this->db->set($table_data);
        $this->db->where($where);
        $this->db->update($table);
        $this->db->trans_complete();
        if ($this->db->trans_status() === FALSE) {
            return $this->db->trans_rollback();
        } else {
            return $this->db->trans_commit();
        }
    }
}
