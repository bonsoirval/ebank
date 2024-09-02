<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use CodeIgniter\HTTP\ResponseInterface;

class Dashboard extends BaseController
{
    protected $helpers = ['form'];
    
    public function index()
    {
        $model = model('DashboardModel');


        $data = array(
            'title' => "Client Dashboard",
            'balance'  => $model->get_balance(),
            'last_withdrawal' => 0, //$model->get_last_withdrawal(),
            'last_deposit' => 0, //$model->get_last_deposit()
        );

        return view('dashboard/partials/header', $data)
                .view('dashboard/index', $data)
                .view('dashboard/partials/footer');
    }

    public function settings()
    {
        echo "welcome to settings";
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
        );

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
        
                return view('dashboard/partials/header', $data)
                        .view('dashboard/deposit2', $data)
                        .view('dashboard/partials/footer');
            }
        }else{
            $data = array(
                'title' => "Client Deposit",
            );
            $data['deposit_amount'] = array('name' => 'deposit_amount', 'class' => "form-control filter",  "type" => "text", "placeholder" => "Enter deposit amountt");
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
    
            return view('dashboard/partials/header', $data)
                    .view('dashboard/withdrawal', $data)
                    .view('dashboard/partials/footer');
        }
    }
}
