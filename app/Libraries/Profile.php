<?php 
namespace App\Libraries;

class Profile{
	static public function sum(){
		helper("form");
		$model = model('DashboardModel');
        $check_profile_setup = $model->check_profile_setup();
        if(!$check_profile_setup){

		$data['title'] = 'Profile Update';
        $data['name'] = auth()->user()->name;
        $data['firstname'] = array('placeholder' => 'Enter first name', 'type' => "text", 'name' => "firstname", 'id' => "firstname", 'class' => "form-control", 'required' => 'required');
        $data['lastname'] = array('placehoder' => 'Enter last name', 'type' => "text", 'name' => "lastname", 'id' => "lastname", 'class' => "form-control", 'required' => 'required');
        $data['date_of_birth'] = array('placeholder' => 'Enter date of birth', 'type'=>"date", 'name'=>"date_of_birth", 'id' => "date_of_birth",'class' =>"form-control", 'required' => "required");
		$data['image'] = '';
		return base_url('profile_setup');
			return view('dashboard/partials/header', $data)
					.view('dashboard/profile_setup', $data)
					.view('dashboard/partials/footer', $data);
            
        }
		exit();
		return "Total : ". 1 + 3;
	}	
}
?>