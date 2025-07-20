<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>User Registration</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
  <style>
    body {
      margin: 0;
      padding: 0;
      min-height: 100vh;
      background: linear-gradient(135deg, #89f7fe, #66a6ff);
      display: flex;
      justify-content: center;
      align-items: center;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    .glass-container {
      background: rgba(255, 255, 255, 0.15);
      box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.37);
      backdrop-filter: blur(10px);
      -webkit-backdrop-filter: blur(10px);
      border-radius: 20px;
      border: 1px solid rgba(255, 255, 255, 0.18);
      padding: 30px;
      width: 100%;
      max-width: 500px;
      color: #fff;
    }

    h2 {
      text-align: center;
      color: #ffffff;
      font-weight: bold;
      margin-bottom: 30px;
    }

    label {
      color: #ffffff;
      font-weight: 500;
    }

    .form-control {
      background-color: rgba(255, 255, 255, 0.2);
      border: none;
      border-radius: 12px;
      color: #fff;
    }

    .form-control::placeholder {
      color: #eee;
    }

    .form-control:focus {
      background-color: rgba(255, 255, 255, 0.3);
      color: #fff;
    }

    .btn-primary {
      background-color: #6a11cb;
      background-image: linear-gradient(315deg, #6a11cb 0%, #2575fc 74%);
      border: none;
      border-radius: 12px;
      padding: 10px 20px;
      font-weight: bold;
      transition: 0.3s ease;
    }

    .btn-primary:hover {
      transform: scale(1.05);
    }
  </style>
</head>
<body>
  <div class="glass-container">
    <h2>User Registration</h2>
    <form action="registeruser" method="POST" class="form-group">

      <div class="form-group">
        <label for="fname">First Name</label>
        <input type="text" id="fname" name="fname" class="form-control" required />
      </div>

      <div class="form-group">
        <label for="lname">Last Name</label>
        <input type="text" id="lname" name="lname" class="form-control" required />
      </div>

      <div class="form-group">
        <label for="mobile">Mobile</label>
        <input type="text" id="mobile" name="mobile" class="form-control" required />
      </div>

      <div class="form-group">
        <label for="email">Email</label>
        <input type="email" id="email" name="email" class="form-control" required />
      </div>

      <div class="form-group">
        <label for="location">Location</label>
        <input type="text" id="location" name="location" class="form-control" />
      </div>

      <div class="form-group">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" class="form-control" required />
      </div>

      <div class="form-group">
        <label for="password">Password</label>
        <input type="password" id="password" name="password" class="form-control" required minlength="8" />
      </div>

      <button type="submit" class="btn btn-primary btn-block">Register</button>
    </form>
  </div>
</body>
</html>
