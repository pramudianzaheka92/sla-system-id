<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Beranda extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->helper('form', 'security');
		$this->load->library('form_validation');
		$this->load->model('crud_models');
		$this->load->model('security_models');
		$this->security_models->get_security();

	}
	
	public function index()
	{
		$jumlahDokumenDiproses = $this->crud_models->totalDokumenDiproses();
		$jumlahDokumenSelesai = $this->crud_models->totalDokumenSelesai();
		

		$data = array(
			'jumDokumenDiproses' => $jumlahDokumenDiproses,
			'jumDokumenSelesai' => $jumlahDokumenSelesai
			
		);

		// Mengalihkan ke fungsi read
		$data['content'] = $this->load->view('layouts/dashboard',$data,TRUE);
		
		$this->load->view('layouts/html', $data);
	}

}
