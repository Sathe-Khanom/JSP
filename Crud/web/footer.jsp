<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Colorful Footer</title>
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

  <style>
    .footer-custom {
      background: linear-gradient(to right, #36D1DC, #5B86E5); /* Blue gradient */
      color: white;
      padding: 40px 0;
    }

    .footer-custom a {
      color: #f1f1f1;
      text-decoration: none;
    }

    .footer-custom a:hover {
      text-decoration: underline;
      color: #fff;
    }

    .footer-bottom {
      background-color: rgba(0, 0, 0, 0.1);
      padding: 10px 0;
      text-align: center;
    }
  </style>
</head>
<body>

  <!-- Footer -->
  <footer class="footer-custom text-center text-lg-start">
    <div class="container p-4">
      <div class="row">
        <!-- Column 1 -->
        

        <!-- Column 2 -->
        <div class="col-lg-4 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase">Quick Links</h5>
          <ul class="list-unstyled mb-0">
            <li><a href="#!" class="text-white">Home</a></li>
            <li><a href="#!" class="text-white">Services</a></li>
            <li><a href="#!" class="text-white">Contact</a></li>
            <li><a href="#!" class="text-white">Support</a></li>
          </ul>
        </div>

        <!-- Column 3 -->
        <div class="col-lg-4 col-md-12 mb-4 mb-md-0">
          <h5 class="text-uppercase">Contact</h5>
          <p>Email: info@example.com</p>
          <p>Phone: +880-1234-567890</p>
          <p>Address: Dhaka, Bangladesh</p>
        </div>
      </div>
    </div>

    <!-- Footer Bottom -->
    <div class="footer-bottom text-white">
      &copy; 2025 MyBrand. All rights reserved.
    </div>
  </footer>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>


