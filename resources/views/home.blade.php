@extends('layouts.app')

@section('content')
<div class="container text-center">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header"style="font-size: 30px;color: #4c110f;text-decoration-line: underline;font-style: italic">Bienvenue</div>
<div class="card-body" style="font-size: 30px;color: #4c110f;text-decoration-line: underline;font-style: italic">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    Vous etes connecté!
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
