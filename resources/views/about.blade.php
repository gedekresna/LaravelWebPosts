@extends('layout.mainlayout')

@section('title','About')

@section('content')
    
    <h1>Ini adalah halaman about</h1>
    <h3>{{ $name }}</h3>
    <p>{{ $email }}</p>
    <img src="img/{{ $image }}" alt="{{ $name }}" width="200">
@endsection
