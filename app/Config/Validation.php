<?php

namespace Config;

use CodeIgniter\Config\BaseConfig;
use CodeIgniter\Validation\StrictRules\CreditCardRules;
use CodeIgniter\Validation\StrictRules\FileRules;
use CodeIgniter\Validation\StrictRules\FormatRules;
use CodeIgniter\Validation\StrictRules\Rules;

class Validation extends BaseConfig
{
    // --------------------------------------------------------------------
    // Setup
    // --------------------------------------------------------------------

    /**
     * Stores the classes that contain the
     * rules that are available.
     *
     * @var list<string>
     */
    public array $ruleSets = [
        Rules::class,
        FormatRules::class,
        FileRules::class,
        CreditCardRules::class,
    ];

    /**
     * Specifies the views that are used to display the
     * errors.
     *
     * @var array<string, string>
     */
    public array $templates = [
        'list'   => 'CodeIgniter\Validation\Views\list',
        'single' => 'CodeIgniter\Validation\Views\single',
    ];

    // --------------------------------------------------------------------
    // Rules
    // --------------------------------------------------------------------
    
    public array $password_update = [
        'password' => 'required|max_byte[72]|strong_password[]',
        'new_password' => 'required|max_byte[72]|strong_password[]',
        'confirm_new_password' => 'required|max_byte[72]|strong_password[]|matches[new_password]',
    ];

    public array $deposits = [
        'deposit_amount' => 'required|numeric'
    ];

    public array $deposits_errors = [
        'deposit_amount' => ['numeric' => 'Deposit amount must be numbers only.', 'required' => 'You must enter deposit amount']
    ];

// $data['receiver_email'] = array('name' => 'receiver_email', 'class' => 'form-control filter', 'type' => 'text', 'placeholder' => "Enter receiver's email");
    public array $withdrawal = [
        'receiver_email' => 'required|valid_email',
        'receiver_phone' => 'required|min_length[10]|max_length[15]',
        'amount' => 'required|numeric|greater_than[0]',
        'account_name' => 'required',
        'account_number' => 'required|numeric',
        'bank_name' => 'required'
    ];

    public array $withdrawal_errors = [
        'receiver_email' => ['required' => "Please enter receiver's email address", 'valid_email' => 'Enter a valid email address'],
        'receiver_phone' => ['required' => "Please enter receiver's phone number", 'max_length' => "Receiver's phone number cannot be more than 15 digits", 'min_length' => "Receiver's phone number can not be less than 10 digits"],
        'amount' => ['required' => "Please enter withdrawal amount", 'greater_than' => "Deposit amount must be more than 0"],
        'account_name' => ['required' => "Please enter receiver's account name"],
        'account_number' => ['required' => "Please enter receiver's account number", 'numeric' => 'Account number must be numbers only.'],
        'bank_name' => ['required' => "Please enter the receiver's bank name"]
    ];

    public array $registration = [
        'username' => ['label' => 'Auth.username','rules' => ['required','max_length[30]','min_length[3]','regex_match[/\A[a-zA-Z0-9\.]+\z/]','is_unique[users.username]',],],

        'email' => ['label' => 'Auth.email','rules' => ['required', 'max_length[254]', 'valid_email','is_unique[auth_identities.secret]',],],
        'name'  => ['label' => 'Auth.email', 'rules' => ['required']],
        'phone' => ['label' => 'Auth.phone', 'rules' => ['required', 'min_length[11]', 'max_length[13]']],
        'passport' => ['label' => 'Auth.passport', 'rules' => ['required']], // added
        'address' => ['label' => 'Auth.address', 'rules' => ['required']],
        'dob' => ['label' => 'Auth.address', 'rules' => ['required']],
        'password' => ['label' => 'Auth.password','rules' => 'required|max_byte[72]|strong_password[]',
        'errors' => ['max_byte' => 'Auth.errorPasswordTooLongBytes']],

        'password_confirm' => ['label' => 'Auth.passwordConfirm','rules' => 'required|matches[password]',],
    ];

}
