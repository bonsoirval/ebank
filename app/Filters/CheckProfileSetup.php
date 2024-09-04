<?php namespace App\Filters;

use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use CodeIgniter\Filters\FilterInterface;
use App\Models\DashboardModel;

class CheckProfileSetup implements FilterInterface
{
    public function before(RequestInterface $request, $arguments = null)
    {
        $userId = auth()->id(); //$session->get('user_id');
        
        if (!$userId) {
            // If no user is logged in, redirect to login page
            return redirect()->to('/login');
        }

        $model = new DashboardModel();
        $checkProfileSetup = $model->checkProfileSetup($userId);

        if ($checkProfileSetup == false) {
            // Redirect to profile update page
            // exit(var_dump(redirect()->to(base_url())));
            return redirect()->to('/profile_setup');
        }
        // if profile is update
        /** This is redirecting but the page is just blank, i mean the index page redirected to */
        return redirect()->to('dashboard/index');
        
        
        
    }

    public function after(RequestInterface $request, ResponseInterface $response, $arguments = null)
    {
        // Do something after the request
        // exit("Paused in CheckProfileSetup line 32");
        return redirect()->to(base_url());
    }
}