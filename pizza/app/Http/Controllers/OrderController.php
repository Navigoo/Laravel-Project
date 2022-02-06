<?php
namespace App\Http\Controllers;


use App\Models\Carts;
use Session;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
class OrderController extends Controller

{

    
    public function index()
    {
        $orders = DB::table('carts')->select('id', 'name', 'quantity')->get();
        return view('order')->with('orders', $orders);
      
    }


}

?>

