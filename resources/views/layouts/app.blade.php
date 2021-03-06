<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
    <!-- Extra-js -->
    @yield('extra-js')
    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body>
    <!--barre de navigation-->
<div id="app">
    <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
        <div class="container">
            <a class="navbar-brand" href="{{ url('/') }}">
                <img src="{{asset('img/logo.png')}}" width="100px" class="pr-3" style="border-right: solid 1px #333;">
                <span class="pl-3">ALUMNI</span>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNavAltMarkup" style="right: 15px;">
                <div class="navbar-nav">
                    <a class="nav-item nav-link active" href="http://localhost:4200/">Home <span class="sr-only">(current)</span></a>
                    <a class="nav-item nav-link" href="http://localhost:8000/">Forum</a>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="http://localhost:4200/" id="navbardrop" data-toggle="dropdown">
                            Carrières
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="">Déposer offre </a>
                            <a class="dropdown-item" href="#">Consulter offre</a>
                            <a class="dropdown-item" href="https://www.cci.univ-tours.fr/temoignages">Témoignages</a>

                        </div>
                    </li>

                    <a class="nav-item nav-link" href="http://localhost:8040/laravel-master/stats/index.php">Statistique</a>
                </div>
            </div>

            <!-- Right Side Of Navbar -->
            <ul class="navbar-nav ml-auto">
                <!-- Authentication Links -->
                @guest
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                    </li>
                    @if (Route::has('register'))
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                        </li>
                    @endif
                @else
                    <li class="nav-item dropdown">

                        <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                            {{ Auth::user()->name }} <span class="caret"></span>
                        </a>

                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                            <a href="{{route('topics.create')}}" class="dropdown-item">Créer un topic</a>
                            <a class="dropdown-item" href="{{ route('logout') }}"
                               onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                {{ __('Logout') }}
                            </a>

                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                @csrf
                            </form>
                            
                        </div>
                    </li>
                @endguest
            </ul>

        </div>
    </nav>

    <main class="py-4">
        @yield('content')
    </main>
</div>

</body>
</html>
