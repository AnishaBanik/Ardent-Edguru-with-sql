<!DOCTYPE html>
<html lang="en">
<head>
  <title>{!!@$title!!}</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href='https://fonts.googleapis.com/css?family={{$font[0]->mainheading_fontfamily}}' rel='stylesheet'>
  <link href='https://fonts.googleapis.com/css?family={{$font[0]->subheading_fontfamily}}' rel='stylesheet'>
  <link href='https://fonts.googleapis.com/css?family={{$font[0]->desc_fontfamily}}' rel='stylesheet'>

  <link href='https://fonts.googleapis.com/css?family=Gayathri' rel='stylesheet'>
  <link href='https://fonts.googleapis.com/css?family=Happy Monkey' rel='stylesheet'>
  <link href='https://fonts.googleapis.com/css?family=La Belle Aurore' rel='stylesheet'>
  <link href='https://fonts.googleapis.com/css?family=Amita' rel='stylesheet'>
  <link href='https://fonts.googleapis.com/css?family=Charm' rel='stylesheet'>
  <link href='https://fonts.googleapis.com/css?family=Architects Daughter' rel='stylesheet'>
  <link href='https://fonts.googleapis.com/css?family=Average Sans' rel='stylesheet'>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/styles.css">
  <link rel="stylesheet" href="./css/login-page.css">
  <link rel="stylesheet" href="./css/privacy_policy_styles.css">
  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body class="container-fluid">

  <header class="nav-header">
    <a href="/" class="logo">
      <img src="https://edguruindia.com/images/Edguru%20India%20logo%20jpeg%20png/Edguru%20India%20Logo%20PNG/Edguru%20India%20H.png" alt="main-heading" class="main-heading" style="width: 200px;">
    </a>
    <input class="menu-btn" type="checkbox" id="menu-btn" />
    <label class="menu-icon" for="menu-btn"><span class="navicon"></span></label>
    <ul class="menu">
      
      <li><a href="/#home">{{$navbar[0]->heading}}</a></li>
      <li><a href="/about">{{$navbar[1]->heading}}</a></li>
      <li><a href="/#offer">{{$navbar[2]->heading}}</a></li>
      <li><a href="/#register">{{$navbar[3]->heading}}</a></li>
      <li><a href="/#contact">{{$navbar[4]->heading}}</a></li>
    </ul>
  </header>
@yield("content");
</body>
<hr>
<footer class="footer">
  <a href="#">© 2021 Edguru India</a>
  <a href="/terms">Terms of use</a> 
  <a href="/privacy_policy">Privacy Policy</a>
</footer>
</html>
