@extends('layout.mainlayout')

@section('title','Login')

@section('content')
<div class="row justify-content-center">
    <div class="col-md-4">
            <main class="form-signin w-100 m-auto">
                <h1 class="h3 mb-3 fw-normal">Please Login</h1>
                <form>
                <div class="form-floating">
                    <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
                    <label for="floatingInput">Email address</label>
                </div>
                <div class="form-floating">
                    <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
                    <label for="floatingPassword">Password</label>
                </div>           
                <button class="w-100 btn btn-lg btn-primary" type="submit">Log in</button>
                <small class="d-block text-center mt-3">Not registered yet?<a href="/register">Register now!</a></small>
                </form>
            </main>
    </div>
</div>



@endsection