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
    public array $profile_setup_errors = [
        'title' => [
            'required' => 'Title must be provided', 
            'max_length' => 'Title length cannot be more than 3 characters',
            'min_length' => 'Title cannot be less than 2 characters'],
        
        'firstname' => [
            'required' => 'First name is required', 
            'min_length' => 'First name cannot be less than 3 characters', 
            'max_length' => 'First name cannot be more than 20 characters'],

        'lastname' => [
            'required' => 'Last name is required', 
            'min_length' => 'Last name cannot be less than 3 characters', 
            'max_length' => 'Last name cannot be more than 20 characters'],
        
        'gender' => [
            'required' => 'Gender is required', 
            'max_length' => 'Gender cannot be more than 1 character'],

        'date_of_birth' => [
            'required' => 'Date of birth is required', 
            'max_length' => 'Date of birth cannot be more than 12 characters'],

        'address' => [
            'required' => 'Address is required', 
            'max_length' => 'Address cannot be more than 150 characters'],
        
        'city' => [
            'required' => 'City is required.',
            'max_length' => 'City cannot be more than 15 characters'],

        // 'passport_image' => [
        //     'required' => 'Passport is required',
        // ],
        
        'state' => [
            'required' => 'State is required', 
            'max_length' => 'State cannot be more than 15 characters'],
        
        'zipcode' => [
            'required' => 'Zipcode is required', 
            'numeric' => 'Zipcode must be numbers', 
            'max_length' => 'Zipcode cannot be more than 7 characters'],
            
        'country' => [
            'required' => 'Country is required.', 
            'max_length' => 'Country cannot be more than 20 characters'],
        
        'account_type' => [
            'required' => 'Account type is required'
        ],

        'phone' => [
            'required' => 'Phone number is required',
            'numeric' => 'Only numbers are accepted', 
            'max_length' => 'Phone number cannot be more than 15 characters'],
        
        'next_kin_title' => [
            'required' => 'Next of kin title is required', 
            'max_length' => 'Next of kin title cannot be more than 3 characters',
            'min_length' => 'Next of kin title cannot be less than 2 characters'],
        
        'next_kin_firstname' => [
            'required' => 'Next of kin first name is required', 
            'min_length' => 'Next of kin first name cannot be less than 3 characters', 
            'max_length' => 'Next of kin first name cannot be more than 20 characters'],
        
        'next_kin_phone' => [
            'required' => 'Next of kin phone is required', 
            'min_length' => 'Next of kin phone cannot less than 10 characters', 
            'max_length' => 'Next of kin phone cannot be more than 20 characters'],
        
        'next_kin_relationship' => [
            'required' => 'Next of kin relationship is required', 
            'max_length' => 'Next of kin relationship cannot be more than 30'],

        'next_kin_middle_name' => [
            'required' => 'Next of kin middle name is required', 
            'min_length' => 'Next of kin middle name cannot be less than 3', 
            'max_length' => 'Next of kin middle name cannot be more than 20'],
        
        'next_kin_last_name' => [
            'required' => 'Next of kin last name is required', 
            'min_length' => 'Next of kin last name cannot be less than 3 characters', 
            'max_length' => 'Next of kin last name cannot be more than 20 characters'],

        'next_kin_address' => [
            'required' => 'Next of kin address is required', 
            'max_length' => 'Next of kin address cannot be more than 150 characters',
            'min_length' => 'Next of kin address cannot be less than 4 characters'],
    ];

    public array $profile_setup = [
        'title' => 'required|min_length[2]|max_length[3]',
        'firstname' => 'required|min_length[3]|max_length[20]',
        'lastname' => 'required|min_length[3]|max_length[20]',
        'gender' => 'required|max_length[1]',
        'date_of_birth' => 'required|max_length[12]',
        'address' => 'required|max_length[150]',
        'city' => 'required|max_length[15]',
        'state' => 'required|max_length[15]',
        // 'passport_image' => 'required',
        'zipcode' => 'required|numeric|max_length[7]',
        'country' => 'required|max_length[15]',
        'account_type' => 'required',
        'phone' => 'required|numeric|max_length[15]',
        'next_kin_title' => 'required|min_length[2]|max_length[3]',
        'next_kin_first_name' => 'required|min_length[3]|max_length[20]',
        'next_kin_phone' => 'required|min_length[3]|max_length[20]',
        'next_kin_relationship' => 'required|max_length[8]',
        'next_kin_middle_name' => 'required|min_length[3]|max_length[20]',
        'next_kin_last_name' => 'required|min_length[3]|max_length[20]',
        'next_kin_address' => 'required|min_length[4]|max_length[150]',
    ];

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
?>