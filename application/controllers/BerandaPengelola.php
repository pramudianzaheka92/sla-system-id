<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class BerandaPengelola extends CI_Controller {
	
	public function index()
	{
		// Mengalihkan ke fungsi read
		$data['content'] = $this->load->view('Pengelola/beranda_pengelola','',TRUE);
		$this->load->view('layouts/html', $data);
	}
	public function ubah_dokumen()
	{
		// Mengalihkan ke fungsi read
		$data['content'] = $this->load->view('Pengelola/ubah_dokumen_pengelola','',TRUE);
		$this->load->view('layouts/html', $data);
	}
}
