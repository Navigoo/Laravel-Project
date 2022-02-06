<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ProductsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('products')->insert([
            'name' => 'Bianco',
            'photo' => 'https://cdn.pixabay.com/photo/2017/12/05/20/10/pizza-3000285__340.png',
            'price' => 99
         ]);
 
         DB::table('products')->insert([
            'name' => 'Napoletana',
            'photo' => 'https://cdn.pixabay.com/photo/2017/12/05/20/10/pizza-3000285__340.png',
            'price' => 99
         ]);
 
         DB::table('products')->insert([
            'name' => 'Margeritha',
            'photo' => 'https://cdn.pixabay.com/photo/2017/12/05/20/10/pizza-3000285__340.png',
            'price' => 99
         ]);
 
         DB::table('products')->insert([
            'name' => 'Tuna',
            'photo' => 'https://cdn.pixabay.com/photo/2017/12/05/20/10/pizza-3000285__340.png',
            'price' => 99
         ]);
 
         DB::table('products')->insert([
            'name' => 'Funghi',
            'photo' => 'https://cdn.pixabay.com/photo/2017/12/05/20/10/pizza-3000285__340.png',
            'price' => 99
         ]);
 
       
         
    }
}
