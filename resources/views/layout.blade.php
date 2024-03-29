<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Rental Buku | @yield('title')</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" >
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
</head>
<body>
    <div class="main d-flex flex-column justify-content-between">
        <nav class="navbar navbar-dark navbar-expand-lg" style="background-color: rgb(2, 0, 28)">
            <div class="container-fluid">
                <a class="navbar-brand fw-semibold" href="#">Aplikasi Rental Buku.</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
        </nav>
        
        <div class="body-content h-100">
            <div class="row g-0 h-100">
                <div class="sidebar col-lg-2 d-lg-block collapse pt-3" id="navbarSupportedContent">
                    @if (Auth::user())
                        @if (Auth::user()->role_id == 1)
                        <a href="dashboard" @if (request()->route()->uri == 'dashboard') class="active" @endif >Dashboard</a>
                        <a href="books" @if (request()->route()->uri == 'books' || request()->route()->uri == 'book-add' || request()->route()->uri == 'book-edit/{slug}') class="active" @endif>Books</a>
                        <a href="categories" @if (request()->route()->uri == 'categories' || request()->route()->uri == 'category-add' || request()->route()->uri == 'category-deleted' || request()->route()->uri == 'category-edit/{slug}' || request()->route()->uri == 'category-delete/{slug}') class="active" @endif>Category</a>
                        <a href="users" @if (request()->route()->uri == 'users' || request()->route()->uri == 'registered-user' || request()->route()->uri == 'user-detail/{slug}' || request()->route()->uri == 'user-banned' || request()->route()->uri == 'user-ban/{slug}') class="active" @endif>Users</a>
                        {{-- <a href="rent-logs" @if (request()->route()->uri == 'rent-logs') class="active" @endif>Rental Log</a> --}}
                        <a href="/" @if (request()->route()->uri == '/') class="active" @endif >Book List</a>
                        <a href="logout">Logout</a>
                        @else
                        <a href="profile" @if (request()->route()->uri == 'profile') class="active" @endif>Profile</a>
                        <a href="/" @if (request()->route()->uri == '/') class="active" @endif >Book List</a>
                        <a href="logout">Logout</a>
                        @endif
                    
                    @else
                        <a href="/book-list" @if (request()->route()->uri == '/') class="active" @endif >Book List</a>
                        <a href="login">Login</a>
                    @endif   
                </div>
                <div class="content col-lg-10 p-4">
                    @yield('content1')
                </div>
                
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

    @yield('content')
</body>
</html>