<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class Withdrawals extends Migration
{
    private $table_name = 'withdrawals';
    public function up()
    {
        //
        /**
         *         // '' => string 'bonsoirval@gmail.com' (length=20)
        // '' => string '07038616871' (length=11)
        // '' => string 'NJOKU' (length=5)
        // '' => string '0004190924' (length=10)
        // 'amount' => string '200' (length=3)
        // '' => string 'Access' (length=6)
         */
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
            'receiver_email' => [
                'type' => 'varchar',
                'constraint' => 50,
                'null' => false
            ],
            'receiver_phone' => [
                'type' => 'varchar',
                'constraint' => 15,
                'null' => false
            ],
            'account_number' => [
                'type' => 'VARCHAR',
                'constraint' => 20,
                'null' => false,
            ],
            'bank_name' => [
                'type' => 'varchar',
                'constraint' => 20,
                'null' => false
            ],
            'account_name' => [
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
