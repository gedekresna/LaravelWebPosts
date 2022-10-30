@extends('layout.mainlayout')

@section('title','single post')



@section('content')
     <div class="container">
          <div class="row justify-content-center mb-5">
               <div class="col-md-8">
                    <h1 class="mb-3">{{ $post->title }}</a></h1>
                    <h5>By. <a href="/posts?author={{$post->author->username}}" class="text-decoration-none">{{$post->author->name}}</a> in <a href="/posts?category={{$post->category->slug}}" class="text-decoration-none">{{$post->category->name}}</a> </h5>
                    <img src="https://source.unsplash.com/800x400?{{$post->category}}" class="card-img-top" alt="{{$post->category->name}}">
                    <article class="my-3 fs-5">
                         {!! $post->body !!}
                         
                    </article>
                    <a href="/posts" class="text-decoration-none">Back to post</a>
               </div>
          </div>
     </div>   
@endsection