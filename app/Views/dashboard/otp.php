<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>One Time Password Form</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">OTP Form</li>
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
            <h3 class="card-title">Enter OTP</h3>
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
                <div class="col-12 col-sm-6">
                  <div class="form-group">
                    <label>Enter OTP</label>
                    <input name = "amount" class="form-control filter" type="text" placeholder="Enter OTP to complete withdrawal">
                    If you not get the OTP email in 60 second, contact support : 
                    <br/><button type="submit" class="btn btn-primary">Submit</button>
                  </div>
                  <!-- /.form-group -->
                </div>
                <!-- /.col -->
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