 <?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Parsing extends CI_Controller {

	public function index()
	{
		$parsing="http://192.168.43.90/project/api/users";
		$url=file_get_contents($parsing);
		$data['json']=json_decode($url,true);
		$row=count($json);
		$data['row']=$row;
		$this->load->view('admin/parsing.php',$data);	
	}
}