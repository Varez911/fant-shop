<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Fant Online Shop</title>
       <!-- Google Font -->
    <link
      href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet"
    />
    <!-- Css Styles -->
    <link rel="stylesheet" href="{{URL::asset('css/bootstrap.min.css')}}" type="text/css" />
    <link rel="stylesheet" href="{{URL::asset('css/font-awesome.min.css')}}" type="text/css" />
    <link rel="stylesheet" href="{{URL::asset('css/themify-icons.css')}}" type="text/css" />
    <link rel="stylesheet" href="{{URL::asset('css/elegant-icons.css')}}" type="text/css" />
    <link rel="stylesheet" href="{{URL::asset('css/owl.carousel.min.css')}}" type="text/css" />
    <link rel="stylesheet" href="{{URL::asset('css/nice-select.css')}}" type="text/css" />
    <link rel="stylesheet" href="{{URL::asset('css/jquery-ui.min.css')}}" type="text/css" />
    <link rel="stylesheet" href="{{URL::asset('css/slicknav.min.css')}}" type="text/css" />
    <link rel="stylesheet" href="{{URL::asset('css/style.css')}}" type="text/css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" 
    integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" 
    crossorigin="anonymous">
</head>
<body>
    <div id="app">
        {{-- <h1 v-text="'Welcome to ' + title"></h1>
        <example-component></example-component> --}}
        <router-view></router-view>
    </div>
    <script src="{{asset('js/app.js')}}"></script>
</body>
</html>