<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;
use CodeIgniter\Database\MySQLi\Forge;

class AddColumnsToUsers extends Migration
{
    /**
     * @var string[]
     */
    private array $tables;
    private $fields = [
        'name' => ['type' => 'varchar', 'constraint' => '50', 'null' => false],
        'phone' => ['type' => 'varchar', 'constraint' => '15', 'null' => false],
        'passport' => ['type' => 'varchar', 'constraint' => '11', 'null' => false],
        'address' => ['type' => 'varchar', 'constraint' => '100', 'null' => false],
        'dob datetime not null default current_time' 
    ];

    public function __construct(?Forge $forge = null){
        parent::__construct($forge);

        /**@var \Config\Auth $authConfig  */
        $authConfig = config('Auth');
        $this->tables = $authConfig->tables;
    }

    public function up()
    {
        //  name, date of birth, phone number, passport number, address
        $this->forge->addColumn($this->tables['users'],$this->fields);
    }

    public function down()
    {
        // drop the columns
        $this->forge->dropColumn($this->tables['users'], $this->fields);
    }
}
