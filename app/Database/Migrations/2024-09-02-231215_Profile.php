<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Profile extends Migration
{
    private $table_name = 'profile';
    public function up()
    {
        $this->forge->addField([
            'id'                    => ['type' => 'INT','constraint' => 4,'auto_increment' => true,'null' => false],
            'user_id'               => ['type' => 'INT','unique' => true, 'constraint' => 4,'null' => false],
            'title'                 => ['type' => 'VARCHAR', 'constraint' => 3,'null' => false],
            'firstname'             => ['type' => 'VARCHAR', 'constraint' => 30, 'null' => false],
            'lastname'              => ['type' => 'VARCHAR', 'constraint' => 30, 'null' => false],
            'gender'                => ['type' => 'VARCHAR', 'constraint' => 6, 'null' => false],
            'date_of_birth'         => ['type' => 'VARCHAR', 'constraint' => 10, 'null' => false],
            'marital_status'        => ['type' => 'VARCHAR', 'constraint' => 7, 'null' => false],
            'address'               => ['type' => 'TEXT','null' => false],
            'city'                  => ['type' => 'VARCHAR', 'constraint' => 20, 'null' => false],
            'state'                 => ['type' => 'VARCHAR', 'constraint' => 20, 'null' => false],
            'zip_code'              => ['type' => 'VARCHAR', 'constraint' => 7, 'null' => false],
            'country'               => ['type' => 'VARCHAR', 'constraint' => 20, 'null' => false],
            'phone'                 => ['type' => 'VARCHAR', 'constraint' => 15, 'null' => false],
            'account_type'          => ['type' => 'VARCHAR', 'constraint' => 20, 'null' => false],
            'passport_image'        => ['type' => 'VARCHAR', 'constraint' => 7, 'null' => false],
            'next_kin_first_name'   => ['type' => 'VARCHAR', 'constraint' => 30, 'null' => false],
            'next_kin_middle_name'  => ['type' => 'VARCHAR', 'constraint' => 30, 'null' => false],
            'next_kin_last_name'    => ['type' => 'VARCHAR', 'constraint' => 30, 'null' => false],
            'next_kin_phone'        => ['type' => 'VARCHAR', 'constraint' => 15, 'null' => false],
            'next_kin_relationship' => ['type' => 'VARCHAR', 'constraint' => 8, 'null' => false],
            'created_at datetime default current_timestamp'
        ]);

        $this->forge->addPrimaryKey('id');
        $this->forge->createTable($this->table_name);
    }

    public function down()
    {
        // drop the table
        $this->forge->dropTable($this->table_name);
    }
}
