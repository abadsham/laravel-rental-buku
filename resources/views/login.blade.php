<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login || Rental Buku</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
     .main{
      height: 100vh;
      box-sizing: border-box;
     }  
     .login-box{
      width: 500px;
      border: 1px solid;
      padding: 30px;
     }
    </style>  
  </head>
  <body>   
      <div class="main d-flex justify-content-center align-items-center">
        @if (session('status'))
          <div class="alert alert-danger position-absolute" style="margin-bottom: 350px;">
              {{ session('massage') }}
          </div>
        @endif
        <div class="login-box">
          <form action="" method="post">
            @csrf
            <div>
              <label for="username" class="form-label">Username</label>
              <input type="text" name="username" id="username" class="form-control" required>
            </div>
            <div>
              <label for="password" class="form-label">Password</label>
              <input type="password" name="password" id="password" class="form-control mb-3" required>
            </div>
            <div>
              <button type="submit" class="btn btn-primary form-control mb-1">Login</button>
            </div>
            <div class="text-center"><small>
              Don't have account? <a href="/register">Sign up</a></small>
            </div>
            </div>
          </form>
        </div>
      </div>
    
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  </body>
</html>