<%@ page contentType="text/html; charset=UTF-8" %>

<section class="h-100 gradient-form" style="background-color: #eee;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-xl-10">
        <div class="card rounded-3 text-black">
          <div class="row g-0">
            <div class="col-lg-6">
              <div class="card-body p-md-5 mx-md-4">

                <div class="text-center mb-5">
                  <img src="./assets/img/flowerLogo2.png"
                    style="width: 120px;" alt="logo">  
                </div>

                  <form action="" method="POST">
                   
                    <div class="link-danger" style="text-align: left; padding-bottom: 5px; color: red">${error_login}</div>
                    
                    <div class="form-outline mb-4">
                      <label class="form-label" for="form2Example11">Email</label>
                      <input type="text" id="form2Example11" name="emailphone" class="form-control"
                        placeholder="Email hoặc số điện thoại" />
                    </div>

                    <div class="form-outline mb-4">
                      <label class="form-label" for="form2Example22">Password</label>
                      <input type="password" id="form2Example22" name="password" class="form-control" />
                    </div>

                    <div class="text-center pt-1 mb-5 pb-1">
                      <button class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3" type="submit">Đăng nhập</button>
                      
                    </div>

                    <div class="d-flex align-items-center justify-content-center pb-4 gap-2">
                      <p class="mb-0 me-2">Bạn chưa có tài khoản?  </p>
                      <button type="button" class="btn btn-outline-danger">
                          <a href="register" class="text-decoration-none">
                          Đăng ký</a></button>
                    </div>

                    
                    
                </form>

              </div>
            </div>
            <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
              <div class="text-white px-3 py-4 p-md-5 mx-md-4">
                <h4 class="mb-4">We are more than just a store</h4>
                <p class="small mb-0"></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>