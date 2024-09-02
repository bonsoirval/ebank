<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use CodeIgniter\HTTP\ResponseInterface;

class Admin extends BaseController
{
    public function index()
    {
        $model = model('DashboardModel');
        helper('form');

        $data['title'] = 'Admin Dashboard';
        $data['amount'] = array('name' => "deposit_amount", 'class' => "form-control filter", 'type' => "text", 'placeholder' => "Enter Withdrawal Amount");
        $data['users'] = $model->get_users();
        
        return view('admin/partials/header', $data) // same header with dashboard
                .view('admin/index', $data)
                .view('dashboard/partials/footer'); // same footer with dashboard
    }


    public function add_money()
    {   
        $request = \Config\Services::request();
        $model = model('DashboardModel');
        helper('form');

        // exit(var_dump($request->getPost()));

        $data = array(
            'user_id'   => $request->getPost('user_id'),
            'deposit_amount'    => $request->getPost('deposit_amount')
        );

        $model->add_deposit($data);
        $data['title'] = 'Admin Dashboard';
        $data['amount'] = array('name' => "deposit_amount", 'class' => "form-control filter", 'type' => "text", 'placeholder' => "Enter Withdrawal Amount");
        $data['users'] = $model->get_users();
        
        return view('admin/partials/header', $data) // same header with dashboard
                .view('admin/index', $data)
                .view('dashboard/partials/footer'); // same footer with dashboard

    }
}
