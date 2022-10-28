@extends('layout.mainlayout')

@section('title','blog')

@section('content')
<h1 class="mb-5">{{$title}}</h1>

    @foreach ($posts as $post)
        <article class="mb-5 border-bottom pb-3">
            <h1><a href="/posts/{{$post->slug}}" class="text-decoration-none">{{ $post->title }}</a></h1>
            <h5>By. <a href="/authors/{{$post->author->username}}" class="text-decoration-none">{{ $post->author->name }}</a> in <a href="/categories/{{$post->category->slug}}" class="text-decoration-none">{{$post->category->name}}</a> </h5>
            <p>{{ $post->excerpt }}</p>
            <a href="/posts/{{$post->slug}}" class="text-decoration-none">Read more..</a>
        </article>
    @endforeach

@endsection