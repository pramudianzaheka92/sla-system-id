<?php
defined("BASEPATH") OR exit ("No direct script access allowed");

class Administrasi extends CI_Controller {


    public function user(){
        // Memanggil view user administrasi
        $data['content'] = $this->load->view('role-admin/administrasi_user', '', TRUE);
		$this->load->view('layouts/html', $data);
    }
}