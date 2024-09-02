<?php

declare(strict_types=1);

namespace App\Models;

use CodeIgniter\Shield\Models\UserModel as ShieldUserModel;

class UserModel extends ShieldUserModel
{
    protected function initialize(): void
    {
        parent::initialize();

        $this->allowedFields = [
            ...$this->allowedFields,
            'name', // added
            'phone', // added
            'passport', // added
            'address', // added
            'dob', // added
            // 'first_name',
        ];
    }
}
