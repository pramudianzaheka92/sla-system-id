<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {
	
	public function reset_password()
	{
		// Mengalihkan ke fungsi read
		$data['content'] = $this->load->view('User/reset_password','',TRUE);
		$this->load->view('layouts/html', $data);
	}
}