<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class BerandaSekkom extends CI_Controller {
	
	public function index()
	{
		// Mengalihkan ke fungsi read
		$data['content'] = $this->load->view('Sekkom/beranda_sekkom','',TRUE);
		$this->load->view('layouts/html', $data);
	}
}
