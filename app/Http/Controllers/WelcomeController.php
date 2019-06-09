<?php

namespace App\Http\Controllers;

use App\Category;
use App\Post;
use App\Tag;
use Illuminate\Http\Request;

class WelcomeController extends Controller
{
    public function index()
    {
        $search = request()->query('search');

        if($search) {
            $posts = Post::orderBy('created_at', 'desc')->where('title', 'LIKE', "%{$search}%")                                                     ->paginate(6);
        } else {
            $posts = Post::orderBy('created_at', 'desc')->paginate(6);
        }

        return view('welcome')->with('categories', Category::all())
                             ->with('tags', Tag::all())
                             ->with('posts', $posts);
    }
}
