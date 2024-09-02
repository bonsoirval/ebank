<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
*/

// admin start
$routes->get('/admin', 'Admin::index');
$routes->get('/admin/index', 'Admin::index');
$routes->post('/admin', 'Admin::index');

// add money
$routes->post('/add_money', 'Admin::add_money');
$routes->get('/add_money', 'Admin::add_money');
// admin end

$routes->get('/', 'Home::index');
$routes->get('/dashboard', 'Dashboard::index');

// withdrawals
$routes->get('/withdrawals', 'Dashboard::withdrawals');
$routes->post('/withdrawals', 'Dashboard::withdrawals');

// password update
$routes->post('/change_password', 'Dashboard::change_password', ['as' => 'change_password']);
$routes->get('/change_password', 'Dashboard::change_password');


// profile
$routes->get('/profile', 'Dashboard::profile');
$routes->post('/profile', 'Dashboard::profile');

// deposits
$routes->get('/deposits', 'Dashboard::deposits');
$routes->post('/deposits', 'Dashboard::deposits');

// settings
$routes->get('/settings', 'Dashboard::settings');
$routes->post('/settings', 'Dashboard::settings');

$routes->post('/dashboard/', 'Dashboard::index');
$routes->get('/dashboard/index', "Dashboard::index");

service('auth')->routes($routes);
