<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Profile Setup</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Profile Setup</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- SELECT2 EXAMPLE -->
        <form action="<?= base_url();?>profile_setup" method="post" enctype="multipart/form-data">
          <?= csrf_field(); ?>
        <div class="card card-default">
          <div class="card-header">
            <h3 class="card-title">Profile Setup Form</h3>
            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse">
                <i class="fas fa-minus"></i>
              </button>
              <button type="button" class="btn btn-tool" data-card-widget="remove">
                <i class="fas fa-times"></i>
              </button>
            </div>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label>Title</label>
                  <select name = 'title' class="form-control select2" style="width: 100%;" required>
                    <option value=''>Select Title</option>
                    <option value="mr">Mr.</option>
                    <option value="mrs">Mrs.</option>
                    <option value="ms">Ms</option>
                  </select>
                  <?php //validation_show_error('title'); ?>
                </div>
                <div class="form-group">
                  <label>Last Name</label>
                  <?= form_input($lastname); ?>
                  <?php //validation_show_error('lastname'); ?>
                </div>
                <div class="form-group">
                  <label>Date of Birth</label>
                  <?= form_input($date_of_birth); ?>
                  <?php //validation_show_error('date_of_birth'); ?>
                </div>

                <div class="form-group">
                  <label>Address</label>
                  <div class="select2-purple">
                    <input type="text" name="address" id="address" class="form-control" required>
                    <?php //validation_show_error('address'); ?>
                  </div>
                </div>

                <div class="form-group">
                  <label>Phone</label>
                  <div class="select2-purple">
                    <input type="text" name="phone" id="phone" class="form-control" required>
                    <?php //validation_show_error('phone'); ?>
                  </div>
                </div>


              </div>
              <!-- /.col -->
              <div class="col-md-6">
                
                <!-- /.form-group -->
                <div class="form-group">
                  <label>First name</label>
                  <?= form_input($firstname); ?>
                  <?php //validation_show_error('firstname'); ?>
                </div>
                <!-- /.form-group -->
                <!-- /.form-group -->
                <div class="form-group">
                  <label>Last name</label>
                  <?= form_input($firstname); ?>
                  <?php //validation_show_error('firstname'); ?>
                </div>
                <!-- /.form-group -->
                <!-- /.form-group -->
                <div class="form-group">
                  <label>Gender</label>
                  <select name = 'gender' class="form-control select2" style="width: 100%;" required>
                    <option value="">--Selct Gender--</option>
                    <option value="f">Female</option>
                    <option value="m">Male</option>
                    <option value="g">Gay</option>
                    <option value="l">Lesbian</option>
                    <option value="t">Transgender</option>
                    <option value="not saying">Prefer not to mention</option>
                  </select>
                  <?php //validation_show_error('gender'); ?>
                </div>

                <div class="form-group">
                  <label>Marital Status</label>
                  <div class="select2-purple">
                    <select name="marital_status" class="form-control" data-placeholder="Select a State" data-dropdown-css-class="select2-purple" style="width: 100%;" required>
                      <option value="">--Select Marital Status--</option>
                      <option value="married">Married</option>
                      <option value="single">Single</option>
                      <option value="divorced">Divorced</option>
                    </select>
                    <?php //validation_show_error('marital_status'); ?>
                  </div>
                </div>


                <div class="form-group">
                  <label>City</label>
                  <div class="select2-purple">
                    <input type="text" name="city" id="city" class="form-control" required>
                    <?php //validation_show_error('city'); ?>
                  </div>
                </div>

                
                <!-- /.form-group -->
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->
            <div class="row">
              <div class="col-12 col-sm-6">
                <!-- <div class="form-group">
                  <label>Date of Birth</label>
                  < ?= form_input($date_of_birth); ?>
                  < ?php validation_show_error('date_of_birth'); ?>
                </div> -->
                <!-- /.form-group -->
              </div>
              <!-- /.col -->
              <div class="col-12 col-sm-6">
      
                <!-- /.form-group -->
              </div>
              <!-- /.col -->
                             <!-- /.col -->
              <div class="col-12 col-sm-6">
                <!-- <div class="form-group">
                  <label>Address</label>
                  <div class="select2-purple">
                    <input type="text" name="address" id="address" class="form-control" required>
                    < ?php validation_show_error('address'); ?>
                  </div>
                </div> -->
                <!-- /.form-group -->
              </div>
              <!-- /.col -->
                             <!-- /.col -->
              <div class="col-12 col-sm-6">
                <!-- <div class="form-group">
                  <label>City</label>
                  <div class="select2-purple">
                    <input type="text" name="city" id="city" class="form-control" required>
                    < ?php validation_show_error('city'); ?>
                  </div>
                </div> -->
                <!-- /.form-group -->
              </div>
              <!-- /.col -->
                             <!-- /.col -->
              <div class="col-12 col-sm-6">
                <div class="form-group">
                  <label>State</label>
                  <div class="select2-purple">
                    <input type="text" name="state" id="state" class="form-control" required>
                    <?php validation_show_error('state'); ?>
                  </div>
                </div>
                <!-- /.form-group -->
                
                

                <div class="form-group">
                  <label>Country</label>
                  <div class="select2-purple">
                  <input type="text" name="country" id="country" class="form-control" required>
                  <?php //validation_show_error('country'); ?>
                  </div>
                </div>


                <div class="form-group">
                  <label>Account Type</label>
                  <div class="select2-purple">
                  <select name="account_type" id="account_type" class="form-control" required>
                    <option value=""> -- Select Account Type -- </option>
                    <option value="saving">Savings</option>
                  </select>
                  
                  <?php //validation_show_error('account_type'); ?>
                  </div>
                </div>


              </div>
              <!-- /.col -->
                             <!-- /.col -->
              <div class="col-12 col-sm-6">
                <div class="form-group">
                  <label>Zip Code</label>
                  <div class="select2-purple">
                  <input type="text" name="zipcode" id="zipcode" class="form-control" required>
                  <?php //validation_show_error('zipcode'); ?>
                  </div>
                </div>
                <!-- /.form-group -->


                <div class="form-group">
                  <label>Passprt</label>
                  <input type="file" name="passport_image" id="passport_image" class="form-control" required>
                  <?php //validation_show_error('passport_image'); ?>
                </div>


              </div>
              <!-- /.col -->
                             <!-- /.col -->
              <div class="col-12 col-sm-6">
                <!-- <div class="form-group">
                  <label>Country</label>
                  <div class="select2-purple">
                  <input type="text" name="country" id="country" class="form-control" required>
                  < ?php validation_show_error('country'); ?>
                  </div>
                </div> -->
                <!-- /.form-group -->
              </div>
              <!-- /.col -->
              <!-- /.col -->
              <div class="col-12 col-sm-6">
                <!-- <div class="form-group">
                  <label>Phone</label>
                  <div class="select2-purple">
                    <input type="text" name="phone" id="phone" class="form-control" required>
                    <?php //validation_show_error('phone'); ?>
                  </div>
                </div> -->
                <!-- /.form-group -->
              </div>
            </div>
            <!-- /.row -->
          </div>
          <!-- /.card-header -->
          <div class="card-body">
          <h5>Next of Kin</h5>
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label>Title</label>
                  <select name = 'next_kin_title' class="form-control select2bs4" style="width: 100%;" required>
                    <option>--Next of Kin Title--</option>
                    <option value="mr">Mr.</option>
                    <option value="mrs">Mrs.</option>
                    <option value="ms">Ms</option>
                  </select>
                  <?php //validation_show_error('next_kin_title'); ?>
                </div>
                <!-- /.form-group -->
                <div class="form-group">
                  <label>First name</label>
                  <input type="text" name="next_kin_first_name" id="next_of_kin_first_name" class="form-control" required>                
                  <?php //validation_show_error('next_of_kin_first_name'); ?>
                </div>
                <!-- /.form-group -->
                <div class="form-group">
                  <label>Phone</label>
                  <input type="text" name="next_kin_phone" id="next_of_kin_phone" class="form-control" required>
                  <?php //validation_show_error('next_of_kin_phone'); ?>
                </div>
                <!-- /.form-group -->
                <!-- /.form-group -->
                <div class="form-group">
                  <label>Relationship</label>
                  <input type="text" name="next_kin_relationship" id="next_of_kin_relationship" class="form-control" required>
                  <?php //validation_show_error('next_kin_relationship'); ?>
                </div>
                <!-- /.form-group -->
              </div>
              <!-- /.col -->
              <div class="col-md-6">
                <div class="form-group">
                  <label>Middle name</label>
                  <input type="text" name="next_kin_middle_name" id="next_kin_middle_name" class="form-control" required>
                  <?php //validation_show_error('next_kin_middle_name'); ?>
                </div>
                <!-- /.form-group -->
                <div class="form-group">
                  <label>Last name</label>
                  <input type="text" name="next_kin_last_name" id="next_of_kin_last_name" class="form-control" required>
                  <?php //validation_show_error('next_kin_last_name'); ?>
                </div>
                <!-- /.form-group -->
                <div class="form-group">
                  <label>Address</label>
                  <input type="text" name="next_kin_address" id="next_of_kin_address" class="form-control" required>
                  <?php //validation_show_error('next_kin_address'); ?>
                </div>
              </div>
              <!-- /.col -->
            </div>
            <div class="form-group">
                  <label><br/></label>
                <button class="form-control btn btn-primary">Submit</button>
                </div>
            <!-- /.row -->
          </div>
          <!-- /.card-body -->
          <!-- /.card-body -->
        </div>
        <!-- /.card -->
</form>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>