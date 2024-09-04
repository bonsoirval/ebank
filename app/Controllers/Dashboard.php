<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Libraries\Profile;
use CodeIgniter\HTTP\ResponseInterface;
use CodeIgniter\Files\File;

class Dashboard extends BaseController
{
    protected $helpers = ['form'];

    // public function __construct()
    // {
    //     $sum = New Profile();
	// 	$sum->sum();
    // }
    
    public function profile_setup()
    {
        $request = \Config\Services::request();
        $model = model('DashboardModel');

        $data['title'] = 'Profile Update';
        $data['name'] = 'you and you'; // auth()->user()->name;
        $data['firstname'] = array('placeholder' => 'Enter first name', 'type' => "text", 'name' => "firstname", 'id' => "firstname", 'class' => "form-control", 'required' => 'required');
        $data['lastname'] = array('placehoder' => 'Enter last name', 'type' => "text", 'name' => "lastname", 'id' => "lastname", 'class' => "form-control", 'required' => 'required');
        $data['date_of_birth'] = array('placeholder' => 'Enter date of birth', 'type'=>"date", 'name'=>"date_of_birth", 'id' => "date_of_birth",'class' =>"form-control", 'required' => "required");
        $data['image'] = $model->get_image();
        $data['balance'] = 0;
        $data['last_withdrawal'] = 0;
        $data['last_deposit'] = 0;

        if($request->getPost()){
            if (!$this->validateData($request->getPost(), 'profile_setup')) {
                // exit("No validation");
                return view('dashboard/partials/header', $data)
                        .view('dashboard/profile_setup', $data)
                        .view('dashboard/partials/footer', $data);
            }else{
                $db = \Config\Database::connect();

                $profile =  array(
                    'user_id' => auth()->id(),
                    'title'  => $request->getPost('title'),
                    'firstname' => $request->getPost('firstname'),
                    'lastname' => 	$request->getPost('lastname'),
                    'gender'  => $request->getPost('gender'),
                    'date_of_birth' => $request->getPost('date_of_birth'),
                    'marital_status' => $request->getPost('marital_status'),
                    'address' => $request->getPost('address'),
                    'city' => $request->getPost('city'),	
                    'state' => $request->getPost('state'),
                    'zip_code' => $request->getPost('zipcode'),
                    'country' => $request->getPost('country'),
                    'account_type' => $request->getPost('account_type'),
                    'phone' => $request->getPost('phone'),
                    'account_type' => $request->getPost('account_type'),
                    'next_kin_first_name' => $request->getPost('next_kin_first_name'),	
                    'next_kin_middle_name' => $request->getPost('next_kin_middle_name'),
                    'next_kin_last_name' => $request->getPost('next_kin_last_name'),
                    'next_kin_phone' => $request->getPost('next_kin_phone'),	
                    'next_kin_relationship' => $request->getPost('next_kin_relationship'),
                );

                $validationRule = [
                    'userfile' => [
                        'label' => 'Image File',
                        'rules' => [
                            'uploaded[passport_image]',
                            'mime_in[passport_image,image/jpg,image/jpeg,image/png]',
                            'max_size[profile_pix,100]',
                            'max_dims[profile_pix,1024,768]',
                        ],
                    ],
                ];

                $passport_image = $this->request->getFile('passport_image');
        
        
                if (! $passport_image->hasMoved()) {
                    // $filepath = WRITEPATH . 'uploads/' . $img->store();
                    $ext = $passport_image->getClientExtension();
                    $passport_image->move(APPPATH . '../public/dashboard/img/users/', auth()->id() . "." .$ext);
        
                    // $data = ['uploaded_fileinfo' => new File($filepath)];
        
                    $profile['passport_image'] = auth()->id() . "." .$ext;
                }
        
                $builder = $db->table('profile');
                $builder->select('user_id', auth()->id()); // confirm the user is not existing already
                if($builder->get()->getResultArray() == true){
                    return redirect()->to('dashboard/index'); // the user profile already update. Redirect to homepage

                }else{
                    $builder->insert($profile);
                    return redirect()->to('dashboard/index'); // redirect to homepage
                }
            }
        }else{


        return view('dashboard/partials/header', $data)
                .view('dashboard/profile_setup', $data)
                .view('dashboard/partials/footer', $data);
        }

    }
    public function index()
    {
        $model = model('DashboardModel');

        $data = array(
            'title' => "Client Dashboard",
            'balance'  => $model->get_balance(),
            'last_withdrawal' => 0, //$model->get_last_withdrawal(),
            'last_deposit' => 0, //$model->get_last_deposit()
        );
        $data['image'] = $model->get_image();

        return view('dashboard/partials/header', $data)
                .view('dashboard/index', $data)
                .view('dashboard/partials/footer');
    }

    public function settings()
    {
        echo "welcome to settings";
    }

    public function profile_update(){
        $request = \Config\Services::request();
        $data = array(
            'name'  => $request->getPost('name'),
            'email' => $request->getPost('email'),
            'profile_pix' => $request->getFile('profile_pix')
        );

        $validationRule = [
            'userfile' => [
                'label' => 'Image File',
                'rules' => [
                    'uploaded[profile_pix]',
                    'mime_in[profile_pix,image/jpg,image/jpeg,image/png]',
                    'max_size[profile_pix,100]',
                    'max_dims[profile_pix,1024,768]',
                ],
            ],
        ];
        if (! $this->validateData([], $validationRule)) {
            $data = ['errors' => $this->validator->getErrors()];

            return view('upload_form', $data);
        }

        $profile_pix = $this->request->getFile('profile_pix');


        if (! $profile_pix->hasMoved()) {
            // $filepath = WRITEPATH . 'uploads/' . $img->store();
            $ext = $profile_pix->getClientExtension();
            $profile_pix->move(APPPATH . 'dashboard/img/users/', auth()->id() . "." .$ext);

            // $data = ['uploaded_fileinfo' => new File($filepath)];

            return view('upload_success', $data);
        }

        $data = ['errors' => 'The file has already been moved.'];

        return view('upload_form', $data);
    

        // $data = ['upload_file_path' => $path];

        // return view('upload_success', $data);
    }

    public function change_password(){
        $request = \Config\Services::request();
        $session = \Config\Services::session();
        $model = model('DashboardModel');
   
        if (! $this->validateData($request->getPost(), 'password_update')) {
            $data = array(
                'title' => 'Client Profile',
                'balance' => $model->get_balance(),
            );
            $session->setFlashdata('message', 'Incorrect values. Try again!');
            return view('dashboard/partials/header', $data)
                            .view('dashboard/profile', $data)
                            .view('dashboard/partials/footer');
        }

        $result = auth()->check([
            'email'    => auth()->user()->email,
            'password' => $request->getPost('password'),
        ]);
    
        if( !$result->isOK() ) {
            // Send back the error message
            $error = lang('Auth.errorOldPassword');
    
            // return false;
            $data = array(
                'title' => 'Client Profile',
                'balance' => $model->get_balance(),
            );
            $session->setFlashdata('message', 'Incorrect values. Try again!');
            $data['image'] = $model->get_image();

            return view('dashboard/partials/header', $data)
                            .view('dashboard/profile', $data)
                            .view('dashboard/partials/footer');
    
        }
        
        // Get the User Provider (UserModel by default)
        $users = auth()->getProvider();

        $user = $users->findById(auth()->id());
        $user->fill([
            'username'  => auth()->user()->username,
            'email'     => auth()->user()->email,
            'password'  => $request->getPost('new_password')
        ]);
        $users->save($user);
        $session->setFlashdata('message', 'Password successfully changed');

        $data = array(
            'title' => 'Client Profile',
            'balance' => $model->get_balance(),
        );
        $data['image'] = $model->get_image();

        return view('dashboard/partials/header', $data)
                        .view('dashboard/profile', $data)
                        .view('dashboard/partials/footer');
    }

    public function profile()
    {
        $model = model('DashboardModel');
        $data = array(
            'title' => "Client Deposit",
            'balance'  => $model->get_balance(),
            'image' => $model->get_image()
        );
        $data['image'] = $model->get_image();

        return view('dashboard/partials/header', $data)
                        .view('dashboard/profile', $data)
                        .view('dashboard/partials/footer');
    }

    public function deposits()
    {
        $session = \Config\Services::session();
        $request = \Config\Services::request();
        $model   = model('DashboardModel');

        $data = array(
            'input' => $request->getPost()
        );
        // exit(var_dump($request->getPost())); 
        if($request->getPost() && $this->validateData($data['input'], 'deposits')){
            echo 'data validated';
            if($model->add_deposit($request->getPost()) === true){
                // redirect to otp
                $data = array(
                    'title' => "Enter OTP",
                );
                $data['image'] = $model->get_image();
        
                return view('dashboard/partials/header', $data)
                        .view('dashboard/deposit2', $data)
                        .view('dashboard/partials/footer');
            }
        }else{
            $data = array(
                'title' => "Client Deposit",
            );
            $data['deposit_amount'] = array('name' => 'deposit_amount', 'class' => "form-control filter",  "type" => "text", "placeholder" => "Enter deposit amountt");
            $data['image'] = $model->get_image();
            return view('dashboard/partials/header', $data)
                    .view('dashboard/deposits', $data)
                    .view('dashboard/partials/footer');
        }

    }

    public function withdrawals()
    {
        $session = \Config\Services::session();
        $request = \Config\Services::request();
        $model = model('DashboardModel');
        helper('form');
        
        // exit(var_dump($request->getPost()));
        $data = array(
            'input' => $request->getPost()
        );
        if($request->getPost() && $this->validateData($data['input'], 'withdrawal')){
            echo 'data validated';
            if($model->add_withdrawal($request->getPost()) === true){
                // redirect to otp
                $data = array(
                    'title' => "Enter OTP",
                );
                $data['image'] = $model->get_image();
                return view('dashboard/partials/header', $data)
                        .view('dashboard/otp', $data)
                        .view('dashboard/partials/footer');
            }
        }else{
            $data = array(
                'title' => "Client Withdrawal",
            );
            $data['amount'] = array('name' => "amount", 'class' => "form-control filter", 'type' => "text", 'placeholder' => "Enter Withdrawal Amount");
            $data['account_name'] = array('name' => 'account_name', 'class' => 'form-control', 'type' => 'text', 'placeholder' => "Enter receiver's account number");
            $data['bank_name']      = array('name' => "bank_name", 'class' => "form-control filter", "type" => "text", 'placeholder' => "Enter receiving bank");
            $data['account_number'] = array('name' => 'account_number', 'class' => 'form-control', 'type' => 'text', 'placeholder' => "Enter receiver's account number");
            $data['receiver_email'] = array('name' => 'receiver_email', 'class' => 'form-control filter', 'type' => 'text', 'placeholder' => "Enter receiver's email");
            $data['receiver_phone'] = array('name' => 'receiver_phone', 'class' => 'form-control filter', 'type' => 'text', 'placeholder' => "Enter receiver's phone number");
            $data['image'] = $model->get_image();
            return view('dashboard/partials/header', $data)
                    .view('dashboard/withdrawal', $data)
                    .view('dashboard/partials/footer');
        }
    }
}
