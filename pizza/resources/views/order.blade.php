@extends('layout')
@section('content')

  
<section class="pizza">

<main>
<br>
<br>
<br>
<br>

    <h1 class="pizza-header">Beställningar</h1>

      

 <!--inhämtar från OrderController-->  
<div class="container">

     <div class="row">
     @foreach($orders as $row)  
        <div class="col-sm-3">
      
            <div class="card" id="klar" style="width: 12rem;">
                <img class="card-img-top img-fluid" src="https://cdn.pixabay.com/photo/2017/12/05/20/10/pizza-3000285__340.png" alt="Card image cap">
                <div class="card-block">
                    <h4 class="card-title">Ordernummer: {{ $row->id }}</h4>
                    
                    <p class="card-text">Maträtt: {{ $row->name }} </p>
                    <p class="card-text">Antal: {{ $row->quantity }} </p>
                   
                
                  
                  
                    <button onclick="this.disabled=true; status(this)" id="order"  class="btn btn-primary ">Tillagas just nu</button>
                    


                    

                 
                </div>
            </div>
            </div>
            @endforeach    
    </div>
</div>


            
             
                       
                   
              
</main> 
</section>     
           
    
 @endsection

 
 <script>
     //Skapar en funktion för att kunna ändra text när order är klar


    function status(el)
{
    $(el).html('Klar att hämtas');
    

}


</script>