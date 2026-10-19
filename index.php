<!DOCTYPE html>
<html>
<head>
    <title>Form Login</title>

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background: linear-gradient(-45deg, #f2cd7e, #ffd98f, #f8d67d, #ffe7a5);
            background-size: 400% 400%;
            animation: bg 10s ease infinite;
        }

        @keyframes bg {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        h1 {
            text-align: center;
            margin-top: 30px;
            color: #222;
        }

        .login-box {
            width: 380px;
            background: white;
            margin: 70px auto;
            padding: 75px 30px 35px;
            border-radius: 12px;
            position: relative;
            text-align: center;
            animation: muncul .8s ease;
            box-shadow: 0 10px 30px rgba(0,0,0,.15);
        }

        @keyframes muncul {
            from {
                opacity: 0;
                transform: translateY(-50px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .profile {
            width: 90px;
            height: 90px;
            border-radius: 50%;
            object-fit: cover;
            background: white;
            position: absolute;
            top: -45px;
            left: 50%;
            transform: translateX(-50%);
            border: 4px solid white;
        }

        #jam {
            font-size: 22px;
            color: #666;
            font-weight: bold;
            margin-bottom: 15px;
        }

        h2 {
            margin-bottom: 25px;
        }

        .input-box {
            display: flex;
            align-items: center;
            background: #c6cfc7;
            border-radius: 10px;
            margin: 15px 0;
            padding: 0 15px;
            transition: .3s;
        }

        .input-box:focus-within {
            box-shadow: 0 0 12px #428df5;
            transform: scale(1.02);
        }

        .input-box i {
            color: #666;
        }

        .input-box input {
            width: 100%;
            height: 45px;
            border: none;
            outline: none;
            background: transparent;
            padding-left: 10px;
            font-size: 15px;
        }

        #eye {
            cursor: pointer;
        }

        #submit {
            width: 100%;
            height: 45px;
            margin-top: 15px;
            border: none;
            border-radius: 10px;
            background: #428df5;
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: .3s;
        }

        #submit:hover {
            background: #2d78e6;
            transform: translateY(-3px);
            box-shadow: 0 8px 18px rgba(0,0,0,.2);
        }

        #submit:active {
            transform: scale(.96);
        }

        .alert {
            color: red;
            margin-bottom: 15px;
        }

        /* --- CSS Baru untuk Link Cek Pembayaran --- */
        .link-pembayaran {
            display: inline-block;
            margin-top: 20px;
            color: #428df5;
            text-decoration: none;
            font-weight: bold;
            font-size: 14px;
            transition: 0.3s;
        }

        .link-pembayaran:hover {
            color: #2d78e6;
            text-decoration: underline;
        }

    </style>
</head>

<body>

    <h1>SPP ONLINE</h1>

    <form action="login_validasi.php" method="post">
        <div class="login-box">
            
            <img src="src/foto_profil.jpg" class="profile">
            
            <div id="jam"></div>
            
            <h2>LOGIN</h2>

            <?php
            if(isset($_GET['pesan'])){
                if($_GET['pesan']=="gagal"){
                    echo "<div class='alert'>Username dan Password tidak sesuai!</div>";
                }
            }
            ?>

            <div class="input-box">
                <i class="fa-solid fa-user"></i>
                <input type="text" name="username" placeholder="Username" required>
            </div>

            <div class="input-box">
                <i class="fa-solid fa-lock"></i>
                <input type="password" id="password" name="password" placeholder="Password" required>
                <i class="fa-solid fa-eye" id="eye" onclick="lihatPassword()"></i>
            </div>

            <input type="submit" name="login" value="LOGIN" id="submit">

            <!-- --- Skrip Tambahan Cek Pembayaran --- -->
            <div>
                <a href="bayar.php" class="link-pembayaran">CEK PEMBAYARAN</a>
            </div>

        </div>
    </form>

    <script>
        function tampilJam() {
            let waktu = new Date();
            let jam = String(waktu.getHours()).padStart(2, '0');
            let menit = String(waktu.getMinutes()).padStart(2, '0');
            let detik = String(waktu.getSeconds()).padStart(2, '0');
            document.getElementById("jam").innerHTML = jam + ":" + menit + ":" + detik;
        }

        setInterval(tampilJam, 1000);
        tampilJam();

        function lihatPassword() {
            let pass = document.getElementById("password");
            let eye = document.getElementById("eye");

            if(pass.type == "password") {
                pass.type = "text";
                eye.classList.remove("fa-eye");
                eye.classList.add("fa-eye-slash");
            } else {
                pass.type = "password";
                eye.classList.remove("fa-eye-slash");
                eye.classList.add("fa-eye");
            }
        }
    </script>

</body>
</html>