<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/
//登录
Route::get('',"View\BookController@toCategory");
Route::get('pay',function(){
	return view('pay');
});
Route::get('/category',"View\BookController@toCategory");
Route::get('/product/category_id/{category_id}',"View\BookController@toProduct");
Route::get('/product/{product_id}',"View\BookController@toPdtContent");
Route::get('/login',"View\MemberController@toLogin");

//注册
Route::get('/register',"View\MemberController@toRegister");

Route::group(['prefix' => 'service'], function(){
	//验证码
	Route::get('validate_code/create','Service\ValidateCodeController@create');
	//手机验证码
	Route::post('validate_phone/send', 'Service\ValidateCodeController@sendSMS');
	Route::get('validate_email', 'Service\ValidateCodeController@validateEmail');
	Route::post('register', 'Service\MemberController@register');
	Route::post('login', 'Service\MemberController@login');
	Route::get('loginout', 'Service\MemberController@loginout');
	Route::get('category/parent_id/{parent_id}', 'Service\BookController@getCategoryByParentId');
	Route::get('cart/add/{product_id}', 'Service\CartController@addCart');
	Route::get('cart/delete', 'Service\CartController@deleteCart');
  Route::post('upload/{type}', 'Service\UploadController@uploadFile');
});

Route::group(['middleware' => 'check.login'], function(){
	Route::get('/cart',"View\CartController@toCart");
	Route::post('/order_commit','View\OrderController@toOrderCommit');
	Route::get('/order_list','View\OrderController@toOrderList');
	Route::post('/alipay', 'View\PayController@aliPay');
});

//admin
Route::group(['prefix' => 'admin'], function () {

  Route::get('login', 'Admin\IndexController@toLogin');
  Route::get('exit', 'Admin\IndexController@toExit');
  Route::post('service/login', 'Admin\IndexController@login');

  Route::group(['middleware' => 'check.admin.login'], function () {

    Route::group(['prefix' => 'service'], function () {
      Route::post('category/add', 'Admin\CategoryController@categoryAdd');
      Route::post('category/del', 'Admin\CategoryController@categoryDel');
      Route::post('category/edit', 'Admin\CategoryController@categoryEdit');

      Route::post('product/add', 'Admin\ProductController@productAdd');
      Route::post('product/del', 'Admin\ProductController@productDel');
      Route::post('product/edit', 'Admin\ProductController@productEdit');

      Route::post('member/edit', 'Admin\MemberController@memberEdit');

      Route::post('order/edit', 'Admin\OrderController@orderEdit');
    });

    Route::get('index', 'Admin\IndexController@toIndex');

    Route::get('category', 'Admin\CategoryController@toCategory');
    Route::get('category_add', 'Admin\CategoryController@toCategoryAdd');
    Route::get('category_edit', 'Admin\CategoryController@toCategoryEdit');

    Route::get('product', 'Admin\ProductController@toProduct');
    Route::get('product_info', 'Admin\ProductController@toProductInfo');
    Route::get('product_add', 'Admin\ProductController@toProductAdd');
    Route::get('product_edit', 'Admin\ProductController@toProductEdit');

    Route::get('member', 'Admin\MemberController@toMember');
    Route::get('member_edit', 'Admin\MemberController@toMemberEdit');

    Route::get('order', 'Admin\OrderController@toOrder');
    Route::get('order_edit', 'Admin\OrderController@toOrderEdit');
  });
});

