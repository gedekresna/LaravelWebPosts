@extends('layout.mainlayout')

@section('title','blog')

@section('content')
<h1 class="mb-5 text-center">{{$title}}</h1>

<div class="row justify-content-center mb-3">
    <div class="col-md-6">
        <form action="/posts" method="get">
            @if (request('category'))
               <input type="hidden" name="category" value="{{request('category')}}">
            @elseif (request('author'))
                <input type="hidden" name="category" value="{{request('author')}}">
            @endif
            <div class="input-group mb-3">
                <input type="text" class="form-control" placeholder="Search.." name="search" value="{{request('search')}}">
                <button class="btn btn-danger" type="submit" id="">Search</button>
              </div>
        </form>
    </div>
</div>

    @if ($posts->count())
        <div class="card mb-3">
            <img src="https://source.unsplash.com/1200x400?{{$posts[0]->category}}" class="card-img-top" alt="...">
            <div class="card-body text-center">
            <h5 class="card-title"><a href="/posts/{{$posts[0]->slug}}" class="text-decoration-none text-dark">{{$posts[0]->title}}</a></h5>
            <p>
                <small>
                    By. <a href="/posts?author={{$posts[0]->author->username}}" class="text-decoration-none">{{ $posts[0]->author->name }}</a> in <a href="/posts?category={{$posts[0]->category->slug}}" class="text-decoration-none">{{$posts[0]->category->name}}</a> {{$posts[0]->created_at->diffForHumans()}}
                </small>
            </p>        
            <p class="card-text">{{$posts[0]->excerpt}}</p>
            <a href="/posts/{{$posts[0]->slug}}" class="text-decoration-none btn btn-primary">Read more</a>
            </div>
        </div>
   
   
    <div class="container">
            <div class="row">
                @foreach ($posts->skip(1) as $post)
                    <div class="col-md-4 mb-3">
                        <div class="card">
                            <div class="position-absolute bg-dark p-3 py-2 text-white" style="background-color: rgba(0, 0, 0, 0.7)">
                               <a href="/posts?category={{$post->category->slug}}" class="text-decoration-none text-white"> {{$post->category->name}}</a>
                            </div>
                            <img src="https://source.unsplash.com/800x400?{{$post->category}}" class="card-img-top" alt="{{$post->category->name}}">
                            <div class="card-body">
                            <h5><a href="/posts/{{$post->slug}}" class="text-decoration-none text-dark">{{ $post->title }}</a></h5>
                            <p>
                                <small>
                                    By. <a href="/posts?author={{$post->author->username}}" class="text-decoration-none">{{ $post->author->name }}</a> {{$posts[0]->created_at->diffForHumans()}}
                                </small>
                            </p>
                            <p class="card-text">{{ $post->excerpt }}</p>
                            <a href="/posts/{{$post->slug}}" class="text-decoration-none btn btn-primary">Read more</a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div> 
    </div>

    {{-- @foreach ($posts->skip(1) as $post)
        <article class="mb-5 border-bottom pb-3">
            <h1><a href="/posts/{{$post->slug}}" class="text-decoration-none">{{ $post->title }}</a></h1>
            <h5>By. <a href="/authors/{{$post->author->username}}" class="text-decoration-none">{{ $post->author->name }}</a> in <a href="/categories/{{$post->category->slug}}" class="text-decoration-none">{{$post->category->name}}</a> </h5>
            <p>{{ $post->excerpt }}</p>
            <a href="/posts/{{$post->slug}}" class="text-decoration-none">Read more..</a>
        </article>
    @endforeach --}}

    @else
        <p class="text-center fs-4">No posts found.</p>
    @endif

    {{$posts->links()}}

@endsection