@extends('master')

@include('component.loading')

@section('title', $product->name)

@section('content')
<link rel="stylesheet" href="/css/swiper.min.css">  

<div class="page bk_content">
  <!-- Swiper -->
  <div class="swiper-container swiper1">
    <div class="swiper-wrapper">
      @foreach($pdt_images as $pdt_image)
        <img class="swiper-slide" src="{{$pdt_image->image_path}}">
      @endforeach
    </div>
    <!-- Add Pagination -->
    <div class="swiper-pagination swiper-pagination1"></div>
  </div>

<div class="weui_cells_title">
	<span class="bk_title">{{$product->name}}</span>
	<span class="bk_price">¥ {{$product->price}}</span>      	
</div>
<div class="weui_cells">
    <div class="weui_cell">
        <p class="bk_summary">{{$product->summary}}</p>
    </div>        
</div>

<div class="weui_cells_title">详细介绍</div>
<div class="weui_cells">
    <div class="weui_cell">
        <p>{!! $pdt_content->content !!}</p>
    </div>        
</div>

<div class="bk_fix_bottom">
    <div class="bk_half_area">
        <button class="weui_btn weui_btn_primary" onclick="_addCart();">加入购物车</button>
    </div>
     <div class="bk_half_area">
        <button class="weui_btn weui_btn_default" onclick="_toCart();">查看购物车(<span id="cart_num" class="m3_price">{{$count}}</span>)</button>
    </div>
</div>
</div>
@endsection

@section('my-js')
<script type="text/javascript" src="/js/swiper.min.js"></script>  
<script type="text/javascript">  
     var swiper1 = new Swiper('.swiper1', {
      spaceBetween: 30,
      pagination: {
        el: '.swiper-pagination1',
        clickable: true,
      },
    });
    function _addCart(){
      var product_id = "{{$product->id}}";
        $.ajax({
          type: "GET",
          url: '/service/cart/add/'+product_id,
          dataType: 'json',
          cache: false,
          success: function(data) {
            if(data == null) {
              $('.bk_toptips').show();
              $('.bk_toptips span').html('服务端错误');
              setTimeout(function() {$('.bk_toptips').hide();}, 2000);
              return;
            }
            if(data.status != 0) {
              $('.bk_toptips').show();
              $('.bk_toptips span').html(data.message);
              setTimeout(function() {$('.bk_toptips').hide();}, 2000);
              return;
            }

           var num =  $('#cart_num').html();
           if(num == "") num =0;
           $('#cart_num').html(Number(num) +1);
          },
          error: function(xhr, status, error) {
            console.log(xhr);
            console.log(status);
            console.log(error);
          }
    });
  }
  function _toCart(){
    window.location="/cart"
  }
</script>

@endsection
