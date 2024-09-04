<?php 
namespace App\Controllers;

use App\Libraries\Numbers;

class Hello extends BaseController{
	public function index(){
		$sum = New Numbers();
		echo $sum->sum(3,2);
		return view("welcome_message");
	}
}