@extends('layout')
@section('content')

  
<section class="pizza">

<main>
<br>
<br>
<br>
<br>
<br>
<br>
@if(session('cart'))
    <h1 class="pizza-header">Tack för din order, ditt ordernummer är:  {{ $cart->id}}</h1>
    <div class="btn-center">   
@endif   
    <a href="{{ url('/order') }}" class="button">Håll utik efter din order här</a>
    </div>
      

   



            
             
                       
                   
              
</main> 
</section>     
           
    
 @endsection

 
 <script>
     //Skapar en funktion för att kunna ändra färg när knappen "klar" har tryckts

function func(_this) {
    if (_this.clicked) {
        _this.parentElement.style.backgroundColor = 'white';
    } else  {
        _this.parentElement.style.backgroundColor = 'green';
    }
}

</script>