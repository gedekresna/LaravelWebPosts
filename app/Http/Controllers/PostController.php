<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\User;
use App\Models\Category;

class PostController extends Controller
{
    public function index(){

        // $posts = Post::latest();
        $title = '';

        if(request('category')){
            $category = Category::firstWhere('slug', request('category'));
            $title = ' in ' . $category->name;
        }

        if(request('author')){
            $author = User::firstWhere('username', request('author'));
            $title = ' by ' . $author->name;
        }

        return view('posts',[
            "title" => "All Posts". $title,
            "active" => "blog",
            "posts" => Post::latest()->filter(request(['search', 'category', 'author']))
            ->paginate(7) 
            ->withQueryString()//menampilkan yg plg baru
        ]);
    }

    public function show(Post $post){
        return view('post',[
            "title" => "single post",
            "active" => "blog",
            "post" => $post,
        ]);
    }
}
