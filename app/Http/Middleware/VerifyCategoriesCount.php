<?php

namespace App\Http\Middleware;

use Closure;
use App\Category;

class VerifyCategoriesCount
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(Category::all()->count() === 0) {
            session()->flash('error', 'You need at least one category before create post.');
            return redirect(route('categories.index'));
        }
        return $next($request);
    }
}
