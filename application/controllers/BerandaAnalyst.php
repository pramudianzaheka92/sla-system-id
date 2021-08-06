<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class BerandaAnalyst extends CI_Controller {
	
	public function index()
	{
		// Mengalihkan ke fungsi read
		$data['content'] = $this->load->view('Analyst/beranda_analyst','',TRUE);
		$this->load->view('layouts/html', $data);
	}
	public function ubah_dokumen()
	{
		// Mengalihkan ke fungsi read
		$data['content'] = $this->load->view('Analyst/ubah_dokumen_analyst','',TRUE);
		$this->load->view('layouts/html', $data);
	}
	
	public function updatepk()
	{
		// Mengalihkan ke fungsi read
		$data['content'] = $this->load->view('Analyst/updatepk','',TRUE);
		$this->load->view('layouts/html', $data);
	}
	
	public function updatepencairan()
	{
		// Mengalihkan ke fungsi read
		$data['content'] = $this->load->view('Analyst/updatepencairan','',TRUE);
		$this->load->view('layouts/html', $data);
	}
}
