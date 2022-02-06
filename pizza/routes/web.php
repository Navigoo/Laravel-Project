<?php



use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CustomAuthController;
use App\Http\Controllers\ProductsController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\OrderhistoryController;
use App\Http\Controllers\AddOrder;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Lägger till route för "landningssidan"
Route::get('/', function () {
    return view('welcome');
});


//Lägger till routes för min varukorg
Route::get('/pizzor', 'ProductsController@index');

Route::get('cart', 'ProductsController@cart');

Route::get('add-to-cart/{id}', 'ProductsController@addToCart');

Route::patch('update-cart', 'ProductsController@update');

Route::delete('remove-from-cart', 'ProductsController@remove');

Route::delete('remove-all', 'ProductsController@removeall');


//Lägger till routes för login
Route::get('dashboard', [CustomAuthController::class, 'dashboard']); 
Route::get('login', [CustomAuthController::class, 'index'])->name('login');
Route::post('custom-login', [CustomAuthController::class, 'customLogin'])->name('login.custom'); 
Route::get('registration', [CustomAuthController::class, 'registration'])->name('register-user');
Route::post('custom-registration', [CustomAuthController::class, 'customRegistration'])->name('register.custom'); 
Route::get('signout', [CustomAuthController::class, 'signOut'])->name('signout');

//Lägger till routes för att hämta info från databas
Route::post('/order', [OrderController::class, 'index']); 
Route::get('/order', [OrderController::class, 'index']); 



//Lägger till en post route för att kunna lagra order i databasen
Route::post('cart', [ProductsController::class, 'store']);

//Lägger till en route till en tack sida
Route::get('ordertack', [ProductsController::class, 'store']);


//Lägger till en route till beställninsinformation för butiken
Route::get('orderhistory', [OrderhistoryController::class, 'index']);








