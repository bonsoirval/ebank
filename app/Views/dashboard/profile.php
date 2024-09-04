  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Profile</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">User Profile</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-5">
            <!-- Profile Image -->
            <div class="card card-primary card-outline">
              <div class="card-body box-profile">
                <div class="text-center">
                  <img class="profile-user-img img-fluid img-circle"
                       src="<?= base_url(); ?>/dashboard/img/users/<?= $image; ?>"
                       alt="User profile picture">
                </div>
                <h3 class="profile-username text-center"><?= ucfirst(auth()->user()->name); ?></h3>
                <p class="text-muted text-center">3043449021</p>
                <ul class="list-group list-group-unbordered mb-3">
                  <li class="list-group-item">
                    <b>Balance</b> <a class="float-right">$<?php if($balance){echo $balance; }else{echo "0.00";} ?></a>
                  </li>
                  <li class="list-group-item">
                    <b>Last Deposit</b> <a class="float-right">543</a>
                  </li>
                  <li class="list-group-item">
                    <b>Last Transfer</b> <a class="float-right">13,287</a>
                  </li>
                  <li class="list-group-item">
                    <b>Last Withdrawal</b> <a class="float-right">13,287</a>
                  </li>
                </ul>
                <!-- <a href="#" class="btn btn-primary btn-block"><b>Follow</b></a> -->
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
            <!-- About Me Box -->
            <!-- <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">About Me</h3>
              </div>
              <!-- /.card-header -- >
              <div class="card-body">
                <strong><i class="fas fa-book mr-1"></i> Education</strong>
                <p class="text-muted">
                  B.S. in Computer Science from the University of Tennessee at Knoxville
                </p>
                <hr>
                <strong><i class="fas fa-map-marker-alt mr-1"></i> Location</strong>
                <p class="text-muted">Malibu, California</p>
                <hr>
                <strong><i class="fas fa-pencil-alt mr-1"></i> Skills</strong>
                <p class="text-muted">
                  <span class="tag tag-danger">UI Design</span>
                  <span class="tag tag-success">Coding</span>
                  <span class="tag tag-info">Javascript</span>
                  <span class="tag tag-warning">PHP</span>
                  <span class="tag tag-primary">Node.js</span>
                </p>
                <hr>
                <strong><i class="far fa-file-alt mr-1"></i> Notes</strong>
                <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam fermentum enim neque.</p>
              </div>
              < !-- /.card-body -- >
            </div> -->
            <!-- /.card -->
          </div>
          <!-- /.col -->
          <div class="col-md-7">
            <div class="card">
              <div class="card-header p-2">
                <ul class="nav nav-pills">
                  <li class="nav-item"><a class="nav-link active" href="#activity" data-toggle="tab">Profile Update</a></li>
                  <!-- <li class="nav-item"><a class="nav-link" href="#timeline" data-toggle="tab">Timeline</a></li> -->
                  <li class="nav-item"><a class="nav-link" href="#settings" data-toggle="tab">Update Password</a></li>
                </ul>
              </div><!-- /.card-header -->
              <div class="card-body">
                <div class="tab-content">
                <div class="active tab-pane" id="activity">
                    <form method = 'post' action = "<?= url_to('profile_update'); ?>" class = "form-horizontal" enctype="multipart/form-data">
                    <div class="form-group row">
                        <label for="profile_pix" class="col-sm-2 col-form-label">Profile Picture</label>
                        <div class="col-sm-10">
                          <input type="file" name="profile_pix" class="form-control" id="profile_pix" placeholder="Choose Profile Picture">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="name" class="col-sm-2 col-form-label">Name</label>
                        <div class="col-sm-10">
                          <input type="text" name = "name" class="form-control" id="name" placeholder="Name update">
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="email" class="col-sm-2 col-form-label">Email</label>
                        <div class="col-sm-10">
                          <input type="email" name = "email" class="form-control" id="email" placeholder="Enter your email">
                        </div>
                      </div>
                      <!-- <div class="form-group row">
                        <label for="inputName2" class="col-sm-2 col-form-label">Name</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="inputName2" placeholder="Name">
                        </div>
                      </div> -->
                      <!-- <div class="form-group row">
                        <label for="inputExperience" class="col-sm-2 col-form-label">Experience</label>
                        <div class="col-sm-10">
                          <textarea class="form-control" id="inputExperience" placeholder="Experience"></textarea>
                        </div>
                      </div> -->
                      <!-- <div class="form-group row">
                        <label for="inputSkills" class="col-sm-2 col-form-label">Skills</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="inputSkills" placeholder="Skills">
                        </div>
                      </div> -->
                      <!-- <div class="form-group row">
                        <div class="offset-sm-2 col-sm-10">
                          <div class="checkbox">
                            < !-- <label>
                              <input type="checkbox"> I agree to the <a href="#">terms and conditions</a>
                            </label> -- >
                          </div>
                          <br/>
                        </div>
                      </div> -->
                      <div class="form-group row">
                        <div class="offset-sm-2 col-sm-10">
                          <button type="submit" class="btn btn-danger">Submit</button>
                        </div>
                      </div>
                    </form>
                  </div>
                  <!-- /.tab-pane -->
                  <!-- <div class="tab-pane" id="timeline">
                    < !-- The timeline -- >
                    <div class="timeline timeline-inverse">
                      < !-- timeline time label -- >
                      <div class="time-label">
                        <span class="bg-danger">
                          10 Feb. 2014
                        </span>
                      </div>
                      < !-- /.timeline-label -->
                      <!-- timeline item -- >
                      <div>
                        <i class="fas fa-envelope bg-primary"></i>
                        <div class="timeline-item">
                          <span class="time"><i class="far fa-clock"></i> 12:05</span>
                          <h3 class="timeline-header"><a href="#">Support Team</a> sent you an email</h3>
                          <div class="timeline-body">
                            Etsy doostang zoodles disqus groupon greplin oooj voxy zoodles,
                            weebly ning heekya handango imeem plugg dopplr jibjab, movity
                            jajah plickers sifteo edmodo ifttt zimbra. Babblely odeo kaboodle
                            quora plaxo ideeli hulu weebly balihoo...
                          </div>
                          <div class="timeline-footer">
                            <a href="#" class="btn btn-primary btn-sm">Read more</a>
                            <a href="#" class="btn btn-danger btn-sm">Delete</a>
                          </div>
                        </div>
                      </div>
                      < !-- END timeline item -- >
                      < !-- timeline item -- >
                      <div>
                        <i class="fas fa-user bg-info"></i>
                        <div class="timeline-item">
                          <span class="time"><i class="far fa-clock"></i> 5 mins ago</span>
                          <h3 class="timeline-header border-0"><a href="#">Sarah Young</a> accepted your friend request
                          </h3>
                        </div>
                      </div>
                      < !-- END timeline item -- >
                      < !-- timeline item -- >
                      <div>
                        <i class="fas fa-comments bg-warning"></i>
                        <div class="timeline-item">
                          <span class="time"><i class="far fa-clock"></i> 27 mins ago</span>
                          <h3 class="timeline-header"><a href="#">Jay White</a> commented on your post</h3>
                          <div class="timeline-body">
                            Take me to your leader!
                            Switzerland is small and neutral!
                            We are more like Germany, ambitious and misunderstood!
                          </div>
                          <div class="timeline-footer">
                            <a href="#" class="btn btn-warning btn-flat btn-sm">View comment</a>
                          </div>
                        </div>
                      </div>
                      <!-- END timeline item -->
                      <!-- timeline time label -- >
                      <div class="time-label">
                        <span class="bg-success">
                          3 Jan. 2014
                        </span>
                      </div>
                      < !-- /.timeline-label -- >
                      < !-- timeline item -- >
                      <div>
                        <i class="fas fa-camera bg-purple"></i>
                        <div class="timeline-item">
                          <span class="time"><i class="far fa-clock"></i> 2 days ago</span>
                          <h3 class="timeline-header"><a href="#">Mina Lee</a> uploaded new photos</h3>
                          <div class="timeline-body">
                            <img src="https://placehold.it/150x100" alt="...">
                            <img src="https://placehold.it/150x100" alt="...">
                            <img src="https://placehold.it/150x100" alt="...">
                            <img src="https://placehold.it/150x100" alt="...">
                          </div>
                        </div>
                      </div>
                      < !-- END timeline item -- >
                      <div>
                        <i class="far fa-clock bg-gray"></i>
                      </div>
                    </div>
                  </div> -->
                  <!-- /.tab-pane -->
                  <div class="tab-pane" id="settings">
                  <?php if (session()->getFlashdata('message') !== NULL) : ?>
                      <div class="alert alert-success alert-dismissible fade show" role="alert">
                          <?php echo session()->getFlashdata('message'); ?>
                          <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                      </div>
                  <?php endif; ?>
                    <form action = "<?= base_url('change_password'); ?>" method = 'post' class="form-horizontal">
                    <!-- <input type="hidden" name="{csrf_token}" value="{csrf_hash}"> -->
                    <?= csrf_field() ?>
                      <div class="form-group row">
                        <label for="inputName" class="col-sm-2 col-form-label">Current</label>
                        <div class="col-sm-10">
                          <input name = 'password' type = 'password' class="form-control" id="inputName" placeholder="Enter current password" required>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputEmail" class="col-sm-2 col-form-label">New</label>
                        <div class="col-sm-10">
                          <input name = 'new_password' type="password" class="form-control" id="inputEmail" placeholder="Enter new password" required>
                        </div>
                      </div>
                      <div class="form-group row">
                        <label for="inputName2" class="col-sm-2 col-form-label">Confirm</label>
                        <div class="col-sm-10">
                          <input name = 'confirm_new_password' type="password" class="form-control" id="inputName2" placeholder="Confirm new password" required>
                        </div>
                      </div>
                      <!-- <div class="form-group row">
                        <label for="inputExperience" class="col-sm-2 col-form-label">Experience</label>
                        <div class="col-sm-10">
                          <textarea class="form-control" id="inputExperience" placeholder="Experience"></textarea>
                        </div>
                      </div> -->
                      <div class="form-group row">
                        <!-- <label for="inputSkills" class="col-sm-2 col-form-label">Skills</label> -->
                        <div class="col-sm-10">
                          <!-- <input type="text" class="form-control" id="inputSkills" placeholder="Skills"> -->
                        </div>
                      </div>
                      <!-- <div class="form-group row">
                        <div class="offset-sm-2 col-sm-10">
                          <div class="checkbox">
                            <label>
                              <input type="checkbox"> I agree to the <a href="#">terms and conditions</a>
                            </label> 
                          </div>
                        </div>
                      </div> -->
                      <div class="form-group row">
                        <div class="offset-sm-2 col-sm-10">
                          <button type="submit" class="btn btn-danger">Submit</button>
                        </div>
                      </div><br/><br/>
                    </form> 
                  </div>
                  <!-- /.tab-pane -->
                </div>
                <!-- /.tab-content -->
              </div><!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>