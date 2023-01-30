<section>
    <div id="container">
        <p id="back-top" style="display: block;"> <a href="#top"><span></span></a> </p>
        <div class="container">
            <div id="notification"> </div>
            <div class="row">
                <div class="span9">
                    <div class="row">
                        <div class="span9  " id="content">
                            <div class="breadcrumb">
                                <a href="/home.php">Trang Chủ</a> » <a href="/account.php">Tài Khoản</a> »
                                <?php if(customer_logged_in()){ ?>
                                <a href="/account-edit.php?cid=<?php echo $_GET['cid'];?>" class="last">Sửa Tài Khoản</a>
                                <?php } else {?> 
                                <a href="/register.php" class="last">Đăng Kí</a>
                                <?php }?>
                            </div>
                            <!-- <h1><?php echo $form_title;?></h1> -->
						      <?php if ($_SESSION['ERROR_TEXT']) {?>
						      	<div class="alert alert-danger">
						        	<i class="fa fa-exclamation-circle"></i>&nbsp;<?php echo $_SESSION['ERROR_TEXT']?>
						            <button type="button" class="close" data-dismiss="alert">&times;</button>
						        </div>
						      <?php }?>
						      <?php unset($_SESSION['ERROR_TEXT']);?>
						      <div class="box-container">
						      <form id="register" action="<?php echo $url_action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
						        <fieldset id="account">
						          <legend>Chi Tiết Cá Nhân</legend>
						          <div class="control-group required">
						            <label class="col-sm-2 control-label" for="input-firstname">Họ và Tên</label>
						            <div class="col-sm-10">
						              <input name="fullname" value="<?php echo $fullname; ?>" placeholder="Tên" id="input-fullname" class="form-control" type="text">
						            </div>
						          </div>
						          
						          <div class="control-group required">
						            <label class="col-sm-2 control-label" for="input-address-1">Địa chỉ</label>
						            <div class="col-sm-10">
						              <input name="address" value="<?php echo $address; ?>" placeholder="Địa chỉ" id="input-address-1" class="form-control" type="text">
						                          </div>
						          </div>
						          
						          <div class="control-group required">
						            <label class="col-sm-2 control-label" for="input-email">E-Mail</label>
						            <div class="col-sm-10">
						              <input name="email" value="<?php echo $email; ?>" placeholder="E-Mail" id="input-email" class="form-control" type="email">
						                          </div>
						          </div>
						          <div class="control-group required">
						            <label class="col-sm-2 control-label" for="input-telephone">Điện thoại</label>
						            <div class="col-sm-10">
						              <input name="telephone" value="<?php echo $telephone; ?>" placeholder="Điện thoại" id="input-telephone" class="form-control" type="tel">
						                          </div>
						          </div>
						       </fieldset>
						       
						        <fieldset>
						          <legend>Mật Khẩu</legend>
						          <div class="control-group required">
						            <label class="col-sm-2 control-label" for="input-password">Mật khẩu</label>
						            <div class="col-sm-10">
						              <input name="password" value="<?php echo $password;?>" placeholder="Password" id="input-password" class="form-control" type="password">
						                          </div>
						          </div>
						          <div class="control-group required">
						            <label class="col-sm-2 control-label" for="input-confirm">Xác nhận</label>
						            <div class="col-sm-10">
						              <input name="confirm_password" value="<?php echo $confirm_password;?>" placeholder="Xác nhận mật khẩu" id="input-confirm" class="form-control" type="password">
						                          </div>
						          </div>
						        </fieldset>
						       
						                <div class="buttons">
						          <div class="pull-right">                        
						            <input class="button" value="Tiếp Tục" class="button" type="submit">
						          </div>
						        </div>
						        <input type="hidden" name="status" value="<?php echo $customer_status;?>" />
						       </form>
						      </div>
						      </div>
						      <div class="buttons clearfix">
						       <div class="pull-right"><a class="button" href="/home.php"><span>Tiếp Tục</span></a></div>
						      </div>
                        </div>
                    </div>
                </div>
                <aside class="span3" id="column-right">
                    <?php //include_once "view-account-box.php";?>
                </aside>
                <div class="clear"></div>
            </div>
        </div>
    </div>
    <div class="clear"></div>
</section>
