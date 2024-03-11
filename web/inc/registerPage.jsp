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

            <form action="" method="post">
                   <h4 class="text-center">Đăng ký</h4>
                   <div class="link-danger " 
                        style="text-align: left; padding-bottom: 5px; color: red">
                                ${exist_user}
                   </div>

                <div class="form-outline mb-4">
                    <input type="text" id="form3Example1cg" class="form-control form-control-lg" 
                           name="name" placeholder="Tên của bạn" required/>
                  
                </div>

                <div class="form-outline mb-4">
                  <input type="email" id="form3Example3cg" class="form-control form-control-lg" 
                           name="email"  placeholder="Email của bạn " required/>
                  <span style="color: red">${err_email}</span>
                </div>

                <div class="form-outline mb-4">
                  <input type="tel" id="form3Example4cg" class="form-control form-control-lg" 
                        name="phone" placeholder="SĐT của bạn " required/>
                 <span style="color: red">${err_phone}</span>
                </div>

                <div class="form-outline mb-4">
                  <input type="password" id="form3Example4cdg" class="form-control form-control-lg" 
                       name="password"  placeholder="Mật khẩu" required/>            
                </div>
                   
                <div class="form-outline mb-4">
                  <input type="password" id="form3Example4cdg" class="form-control form-control-lg" 
                        name="repassword" placeholder="Nhập lại mật khẩu" required/>       
                  <span style="color: red">${err_repassword}</span>
                </div>

                <div class="d-flex justify-content-center">
                  <button type="submit"
                    class="btn btn-success btn-block btn-lg gradient-custom-2 text-body">Đăng ký</button>
                </div>

                <p class="text-center text-muted mt-5 mb-0">Bạn đã có tài khoản? <a href="login"
                    class="fw-bold text-body"><u>Đăng nhập </u></a></p>          
           </form>

              </div>
            </div>
            <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
              <div class="text-white px-3 py-4 p-md-5 mx-md-4">
                <h4 class="mb-4">We are more than just a company</h4>
                
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>