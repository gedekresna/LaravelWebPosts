@extends('layout.mainlayout')

@section('title','Register')

@section('content')
<div class="row justify-content-center">
    <div class="col-lg-5">
            <main class="form-registration w-100 m-auto">
                <h1 class="h3 mb-3 fw-normal">Registration Form</h1>
                <form action="/register" method="post">
                    @csrf
                    <div class="form-floating">
                        <input type="text" name="name" class="form-control rounded-top" id="name" placeholder="Name">
                        <label for="name">Name</label>
                    </div>
                    <div class="form-floating">
                        <input type="text" name="username" class="form-control" id="username" placeholder="Username">
                        <label for="username">Username</label>
                    </div>
                    <div class="form-floating">
                        <input type="email" name="email" class="form-control" id="email" placeholder="email@example.com">
                        <label for="email">Email</label>
                    </div>
                    <div class="form-floating">
                        <input type="password" name="password" class="form-control rounded-bottom" id="password" placeholder="Password">
                        <label for="password">Password</label>
                    </div>           
                    <button class="w-100 btn btn-lg btn-primary mt-4" type="submit">Register</button>
                    <small class="d-block text-center mt-3">Already register?<a href="/login">Login now!</a></small>
                </form>
            </main>
    </div>
</div>



@endsection