<?= $this->extend(config('Auth')->views['layout']) ?>

<?= $this->section('title') ?><?= lang('Auth.register') ?> <?= $this->endSection() ?>

<?= $this->section('main') ?>

    <div class="container d-flex justify-content-center p-5">
        <div class="card col-12 col-md-5 shadow-sm">
            <div class="card-body">
                <h5 class="card-title mb-5"><?= lang('Auth.register') ?></h5>

                <?php if (session('error') !== null) : ?>
                    <div class="alert alert-danger" role="alert"><?= session('error') ?></div>
                <?php elseif (session('errors') !== null) : ?>
                    <div class="alert alert-danger" role="alert">
                        <?php if (is_array(session('errors'))) : ?>
                            <?php foreach (session('errors') as $error) : ?>
                                <?= $error ?>
                                <br>
                            <?php endforeach ?>
                        <?php else : ?>
                            <?= session('errors') ?>
                        <?php endif ?>
                    </div>
                <?php endif ?>

                <form action="<?= url_to('register') ?>" method="post">
                    <?= csrf_field() ?>
                    <!-- Email -->
                    <div class="form-floating mb-2">
                        <input type="email" class="form-control" id="floatingEmailInput" name="email" inputmode="email" autocomplete="email" placeholder="<?= lang('Auth.email') ?>" value="<?= old('email') ?>" required>
                        <label for="floatingEmailInput"><?= lang('Auth.email') ?></label>
                    </div>

                    <!-- Username -->
                    <div class="form-floating mb-4">
                        <input type="text" class="form-control" id="floatingUsernameInput" name="username" inputmode="text" autocomplete="username" placeholder="<?= lang('Auth.username') ?>" value="<?= old('username') ?>" required>
                        <label for="floatingUsernameInput"><?= lang('Auth.username') ?></label>
                    </div>
                    
                    <!-- Name -- >
                    <div class="form-floating mb-4">
                        <input type="text" class="form-control" id="floatingNameInput" name="name" inputmode="text" autocomplete="name" placeholder="<?= lang('Auth.phone') ?>" value="<?= old('name') ?>" required>
                        <label for="floatingPhoneInput">< ?= lang('Auth.name') ?></label>
                    </div -->

                    <!-- Phone -- >
                    <div class="form-floating mb-4">
                        <input type="text" class="form-control" id="floatingPhoneInput" name="phone" inputmode="text" autocomplete="phone" placeholder="<?= lang('Auth.phone') ?>" value="<?= old('phone') ?>" required>
                        <label for="floatingPhoneInput">< ?= lang('Auth.phone') ?></label>
                    </div --> 

                    <!-- Passport -- >
                    <div class="form-floating mb-4">
                        <input type="text" class="form-control" id="floatingPassportInput" name="passport" inputmode="text" autocomplete="passport" placeholder="<?= lang('Auth.username') ?>" value="<?= old('passport') ?>" required>
                        <label for="floatingPassportInput">< ?= lang('Auth.passport') ?></label>
                    </div-->
                    <!-- Address -- >
                    <div class="form-floating mb-4">
                        <input type="text" class="form-control" id="floatingAddressInput" name="address" inputmode="text" autocomplete="address" placeholder="<?= lang('Auth.address') ?>" value="<?= old('address') ?>" required>
                        <label for="floatingAddressInput">< ?= lang('Auth.address') ?></label>
                    </div-->
                    <!-- DOB -- >
                    <div class="form-floating mb-4">
                        <input type="text" class="form-control" id="floatingDobInput" name="dob" inputmode="text" autocomplete="dob" placeholder="<?= lang('Auth.dob') ?>" value="<?= old('dob') ?>" required>
                        <label for="floatingDobInput">< ?= lang('Auth.dob') ?></label>
                    </div -->
                    <!-- Password -->
                    <div class="form-floating mb-2">
                        <input type="password" class="form-control" id="floatingPasswordInput" name="password" inputmode="text" autocomplete="new-password" placeholder="<?= lang('Auth.password') ?>" required>
                        <label for="floatingPasswordInput"><?= lang('Auth.password') ?></label>
                    </div>
                    <!-- Password (Again) -->
                    <div class="form-floating mb-5">
                        <input type="password" class="form-control" id="floatingPasswordConfirmInput" name="password_confirm" inputmode="text" autocomplete="new-password" placeholder="<?= lang('Auth.passwordConfirm') ?>" required>
                        <label for="floatingPasswordConfirmInput"><?= lang('Auth.passwordConfirm') ?></label>
                    </div>
                    <div class="d-grid col-12 col-md-8 mx-auto m-3">
                        <button type="submit" class="btn btn-primary btn-block"><?= lang('Auth.register') ?></button>
                    </div>
                    <p class="text-center"><?= lang('Auth.haveAccount') ?> <a href="<?= url_to('login') ?>"><?= lang('Auth.login') ?></a></p>

                </form>
            </div>
        </div>
    </div>

<?= $this->endSection() ?>
