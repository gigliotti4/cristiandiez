<?php
namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class ValidateImage
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        if ($request->hasFile('imagen')) {
            $request->validate([
                'imagen' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048'
            ]);
        }

        return $next($request);
    }
}
