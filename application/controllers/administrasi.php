<?php
defined("BASEPATH") OR exit ("No direct script access allowed");

class Administrasi extends CI_Controller {
    public function __construct(){
		parent::__construct();
		$this->load->helper('form', 'security');
		$this->load->library('form_validation');
		$this->load->model('crud_models');
		$this->load->model('security_models');
		$this->security_models->get_security();

	}


    public function user(){
        // Memanggil view user administrasi
      
        $data['table']   = $this->crud_models->get_data_user()->result();  
        $data['level']   = $this->crud_models->get_all_data('tb_level_user')->result();  
        $data['content'] = $this->load->view('role-admin/administrasi_user', $data, TRUE);
		$this->load->view('layouts/html', $data);
    }

    public function add_user(){

        $npp = $this->input->post('npp');
        $nama = $this->input->post('nama');
        $posisi = $this->input->post('posisi');
        $password = $this->input->post('password');

        //setting library upload
		$config['upload_path']          = './assets/upload_foto/';
        $config['allowed_types']        = 'gif|jpg|png|jpeg';
	    $config['max_size']             = 40000;
        $config['file_name']            = $_FILES['foto']['name'];
                        $this->upload->initialize($config);

	    $this->load->library('upload', $config);

        if ( ! $this->upload->do_upload('foto')) {
			$this->session->set_flashdata('danger', 'Foto Harus Di Upload !');				
            redirect('Administrasi/user');
		}else{
            $upload_data = $this->upload->data();
            $file_name = $upload_data['file_name'];

            $data = array(
                "npp"	        => $this->input->post('npp'),
                "nama"          => $this->input->post('nama'),
                "posisi"        => $this->input->post('posisi'),
                "foto"          => $file_name,
                "password"      => md5($this->input->post('password'))
            );

            if($this->crud_models->add_data($data,'tb_pengguna')){
                $this->session->set_flashdata('info', 'Data berhasil di tambah!');				
                redirect('Administrasi/user');
    
            }else{
                $this->session->set_flashdata('danger', 'Kesalahan menginput data');				
                redirect('Administrasi/user');
            }
        }

    }

    public function edit_user(){

        $npp = $this->input->post('npp');
        $nama = $this->input->post('nama');
        $posisi = $this->input->post('posisi');
        $password = $this->input->post('password');

        if ($_FILES['foto']['name']!=""){

            //setting library upload
            $config['upload_path']          = './assets/upload_foto/';
            $config['allowed_types']        = 'gif|jpg|png|jpeg';
            $config['max_size']             = 40000;
            $config['file_name']            = $_FILES['foto']['name'];
                            $this->upload->initialize($config);

            $this->load->library('upload', $config);
            
            if ( ! $this->upload->do_upload('foto')) {
                $this->session->set_flashdata('danger', 'Foto Harus Di Upload !');				
                redirect('Administrasi/user');
            }else{

                $upload_data = $this->upload->data();
                $file_name = $upload_data['file_name'];

                $id 		= $this->input->post('id');
                $data       = array(
                                "npp"	        => $this->input->post('npp'),
                                "nama"          => $this->input->post('nama'),
                                "posisi"        => $this->input->post('posisi'),
                                "foto"          => $file_name,
                                "password"      => md5($this->input->post('password'))
                            );
        
                if($this->crud_models->edit_data($data,$id,'tb_pengguna')){
                    $this->session->set_flashdata('info', 'Data berhasil di update!');				
                    redirect('Administrasi/user');
        
                }else{
                    $this->session->set_flashdata('danger', 'Kesalahan menginput data');				
                    redirect('Administrasi/user');
                }
            }
        }else{
            $file_name = $this->input->post('old');

            redirect('Administrasi/user');
        }
    }

    public function delete_user(){
        $id 		= $this->input->post('id');
        if($this->crud_models->delete_data($id,'tb_pengguna')){
            $this->session->set_flashdata('info', 'data berhasil di update!');				
            redirect('Administrasi/user');

        }else{
            $this->session->set_flashdata('danger', 'kesalahan menginput data');				
            redirect('Administrasi/user');
        }

    }

    function converPassword($getDate){
        $arrDate    = explode("-", $getDate);
        if(is_array($arrDate)){
            $date = $arrDate[2].$arrDate[1].$arrDate[0];
        }      
        return md5($date);
    }
}