@extends('master')

@include('component.loading')

@section('title', '支付成功')

@section('content')


<div style="color:gray;">
    <span class="title">由于个人开发者没有办法开通支付,所以假装你已经支付成功的样子</span>
    <br/>
    <a href="order_list">点击进入订单列表</a>
</div>
	
@endsection

@section('my-js')


@endsection