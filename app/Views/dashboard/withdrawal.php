<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Withdrawal Form</h1>
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
          <form action = "<?= base_url('withdrawals'); ?>" method="post">
          <!-- /.card-header -->
          <div class="card-body">
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label>Receiver Email</label>
                  <?= form_input($receiver_email); ?>
                  <?= validation_show_error('receiver_email'); ?>
                </div>
                <!-- /.form-group -->
                <div class="form-group">
                  <label>Receiver Phone</label>
                  <?= form_input($receiver_phone); ?>
                  <?= validation_show_error('receiver_phone'); ?>
                </div>
                <!-- /.form-group -->
              </div>
              <!-- /.col -->
              <div class="col-md-6">
                <div class="form-group">
                  <label>Receiver Account Name</label>
                  <?= form_input($account_name); ?>
                  <?= validation_show_error('account_name'); ?>
                  <!-- <input name = "account_name" class="form-control filter" type="text" placeholder="Enter receiver's account name"> -->
                </div>
                <!-- /.form-group -->
                <div class="form-group">
                  <label>Receiver Account Number</label>
                  <?= form_input($account_number); ?>
                  <?= validation_show_error('account_number'); ?>
                </div>
                <!-- /.form-group -->
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->
            
              <div class="row">
                <div class="col-12 col-sm-6">
                  <div class="form-group">
                    <label>Withdrawal Amount</label>
                    <?= form_input($amount); ?>
                    <?= validation_show_error('amount'); ?>
                  </div>
                  <!-- /.form-group -->
                </div>
                <!-- /.col -->
                <div class="col-12 col-sm-6">
                  <div class="form-group">
                    <div class="select2-purple">
                    <label>Receiving Bank Name</label>
                    <?= form_input($bank_name); ?>
                    <?= validation_show_error('bank_name'); ?>
                    </div>
                  </div>
                  <!-- /.form-group -->
                  <button class="btn btn-primary" onclick="stepper.previous()">Previous</button>
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
                  <!-- /.col -->
              </div>
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