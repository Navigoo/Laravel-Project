@extends('layout')



@section('content')

  
<section class="pizza">

<main class="login-form">
<h1 class="pizza-header">Hej och välkommen!</h1>

<div class="btn-center">                   
<?php
                if (Auth::check()){
                    echo( "<button class='btn btn-primary'onclick= \"location.href='./pizzor'\">Menyn</button>");
                }
                else {
                     echo( "<button class='btn btn-primary'onclick= \"location.href='./login'\">Logga in</button>nl2br");
                     
                     echo( "<button class='btn btn-primary'onclick= \"location.href='./registration'\">Inget konto?</button>");

                }
            ?>
            
</div>                     
               
   
</main>
        </section>
      

 

@endsection