@extends('layout.mainlayout')

@section('title','Login')

@section('content')
<div class="row justify-content-center">
    <div class="col-md-4">

        @if (session()->has('success'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            {{ session('success')}}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
          </div>
        @endif

        @if (session()->has('loginError'))
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            {{ session('loginError')}}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
          </div>
        @endif
       

            <main class="form-signin w-100 m-auto">
                <h1 class="h3 mb-3 fw-normal">Please Login</h1>
                <form method="POST" action="/login">
                    @csrf

                <div class="form-floating">
                    <input type="email"  name="email" class="form-control  @error('email') is-invalid @enderror" id="email" placeholder="name@example.com" autofocus required value="{{ old('email')}}">
                    <label for="floatingInput">Email address</label>
                    @error('email')
                        <div class="invalid-feedback">
                            {{$message}}
                        </div>
                    @enderror
                </div>

                <div class="form-floating">
                    <input type="password" name="password" class="form-control" id="password" placeholder="Password" required>
                    <label for="floatingPassword">Password</label>
                </div>           
                <button class="w-100 btn btn-lg btn-primary" type="submit">Log in</button>
                <small class="d-block text-center mt-3">Not registered yet?<a href="/register">Register now!</a></small>
                </form>
            </main>
    </div>
</div>



@endsection