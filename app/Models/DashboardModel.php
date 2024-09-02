<?php

namespace App\Models;

use CodeIgniter\Model;

class DashboardModel extends Model
{
    protected $table            = 'dashboards';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $returnType       = 'array';
    protected $useSoftDeletes   = false;
    protected $protectFields    = true;
    protected $allowedFields    = [];

    protected bool $allowEmptyInserts = false;
    protected bool $updateOnlyChanged = true;

    protected array $casts = [];
    protected array $castHandlers = [];

    // Dates
    protected $useTimestamps = false;
    protected $dateFormat    = 'datetime';
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';
    protected $deletedField  = 'deleted_at';

    // Validation
    protected $validationRules      = [];
    protected $validationMessages   = [];
    protected $skipValidation       = false;
    protected $cleanValidationRules = true;

    // Callbacks
    protected $allowCallbacks = true;
    protected $beforeInsert   = [];
    protected $afterInsert    = [];
    protected $beforeUpdate   = [];
    protected $afterUpdate    = [];
    protected $beforeFind     = [];
    protected $afterFind      = [];
    protected $beforeDelete   = [];
    protected $afterDelete    = [];


    public function add_withdrawal($withdrawal_data){
        $db = \Config\Database::connect();

        $data = $withdrawal_data;
        $data['user_id'] = auth()->id();
        
        $builder = $db->table('withdrawals');
        if($builder->insert($data)){
            return true;
        }
        return false;
    }

    // return a list of all the users
    public function get_users()
    {
        $db = \Config\Database::connect();
        
        $builder = $db->table('users AS u');
        $builder->select('u.id AS id, u.username');
        $builder->join('auth_groups_users AS a', 'u.id = a.user_id');
        $builder->where("a.group = 'user'");
        // exit(var_dump($builder->get()->getResult()));
        return $builder->get()->getResult();
    }

    public function add_deposit($deposit)
    {
        $db = \Config\Database::connect();

        $data['amount'] = (float)$deposit['deposit_amount'];
        $data['user_id'] = auth()->id();
        $data['depositor'] = auth()->user()->name;
        
        $builder = $db->table('deposits');
        if($builder->insert($data))
        {
            return true;
        }
        return false;
    }

    public function get_balance(){
        $db = \Config\Database::connect();

        $builder = $db->table('deposits');
        $builder->select('SUM(amount) as amount');
        return $builder->get()->getResult()[0]->amount;
    }
}
