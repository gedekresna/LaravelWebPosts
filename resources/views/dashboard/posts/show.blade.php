@extends('dashboard.layouts.main')

@section('container')
<div class="container">
    <div class="row my-3">
         <div class="col-lg-8">
              <h1 class="mb-3">{{ $post->title }}</a></h1>
             <a href="/dashboard/posts" class="btn btn-success"><i class="bi bi-arrow-left"></i></span> Back to all my post</a>
             <a href="" class="btn btn-warning"><i class="bi bi-edit"></i></span> Edit</a>
             <a href="" class="btn btn-danger"><i class="bi bi-trash"></i></span> Delete</a>
              <img src="https://source.unsplash.com/800x400?{{$post->category}}" class="card-img-top mt-3" alt="{{$post->category->name}}">
              <article class="my-3 fs-5">
                   {!! $post->body !!}
                   
              </article>
              <a href="/posts" class="text-decoration-none">Back to post</a>
         </div>
    </div> 
</div>   
@endsection