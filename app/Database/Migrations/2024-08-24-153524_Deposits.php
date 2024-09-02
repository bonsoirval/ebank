<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Deposits extends Migration
{
    private $table_name = 'deposits';
    public function up()
    {
        //
        $this->forge->addField([
            'id' => [
                'type' => 'INT', 
                'constraint' => 4,
                'auto_increment' => true,
                'null' => false
            ],
            'user_id' => [
                'type' => 'INT',
                'constraint' => 4,
                'null' => false
            ],
            'depositor' => [
                'type' => 'VARCHAR',
                'constraint' => 30,
                'null' => false
            ],
            'amount' => [
                'type' => 'FLOAT',
                'constraint' => 7,
                'null' => false,
            ],
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
