<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Add Money Form</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Withdrawal Form</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- SELECT2 EXAMPLE -->
        <div class="card card-default">
          <div class="card-header">
            <h3 class="card-title">Withdrawal Details</h3>
            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse">
                <i class="fas fa-minus"></i>
              </button>
            </div>
          </div>
          <form action = "<?= base_url('add_money'); ?>" method="post">
          <!-- /.card-header -->
          <div class="card-body">
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label>Select User</label>
                  <! -- ?= form_input($receiver_email); ?-->
                  <select class="form-control" name = "user_id" >
                  <?php for($index = 0; $index <= count($users) - 1; $index++){?>
                    <option value=""> -- Select User To Credit -- </option>
                    <option value="<?= $users[$index]->id; ?>"><?= $users[$index]->username; ?></option>
                    <?php } ?>
                    <?= validation_show_error('users'); ?>
                  </select>
                </div>
                <!-- /.form-group -->
                <div class="form-group">
                  <label>Add Money</label>
                  <?= form_input($amount); ?>
                  <?= validation_show_error('receiver_phone'); ?>
                </div>
                <?= form_submit($data = array('class' => "btn btn-primary", 'value' => 'Add Money', 'type' => 'submit', 'name' => 'add_money_submit')); ?>
                <!-- /.form-group -->
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->
            </form>
            <!-- /.row -->
          </div>
          <!-- /.card-body -->
        </div>
        <!-- /.card -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->