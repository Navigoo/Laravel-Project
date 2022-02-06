@extends('layout')

@section('title', 'Products')
@section('title', 'Cart')

@section('content')

  
<section class="pizza">

<main class="login-form">
<h1 class="pizza-header">VAD FÅR DET LOV ATT VARA IDAG?</h1>
    <div class="container">
    
  
        <div class="row justify-content-center">

            @foreach($products as $product)
                <div class="col">
                    <div class="thumbnail">
                        <img src="{{ $product->photo }}" >
                        <div class="caption">
                            <h4>{{ $product->name }}</h4>
                    
                            <p><strong>Pris: </strong> {{ $product->price }}Kr</p>
                            <p class="btn-holder"><a href="{{ url('add-to-cart/'.$product->id) }}" class="btn btn-success btn-block text-center" role="button">Beställ</a> </p>
                        </div>
                    </div>
                </div>
            @endforeach
</div>
</main>
        </section>
      

 

@endsection