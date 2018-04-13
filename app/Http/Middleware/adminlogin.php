<?php

namespace App\Http\Middleware;

use Closure;

class adminlogin
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
        //判断session是否存在用户数据
        if(session('adminUserInfo')){
            return $next($request);
        }else{
            return redirect('login');
        }
    }
}
