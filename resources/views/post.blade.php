@extends('layout.mainlayout')

@section('title','single post')

@section('content')
       <article>
            <h1 class="mb-5">{{ $post["title"] }}</a></h1>
            <h5>By. <a href="" class="text-decoration-none">{{$post->author->name}}</a> in <a href="/categories/{{$post->category->slug}}" class="text-decoration-none">{{$post->category->name}}</a> </h5>
            <p>{{ $post["body"] }}</p>
       </article>
    <a href="/blog" class="text-decoration-none">Back to post</a>
@endsection