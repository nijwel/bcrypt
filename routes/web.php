<?php

use Illuminate\Support\Facades\Route;

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

// Route::get('/', function () {
//     // return view('welcome');
// });


// Route::post('/payment','HomeController@payment')->name('payment');

Route::get('/', 'SiteController@index')->name('index');
Route::post('check/bill','SiteController@checkBill')->name('checkBill');


Route::post('encrypt/generat','SiteController@encryptGenerate')->name('generat.encrypt');
Route::post('password/check','SiteController@passwordCheck')->name('passowrd.check');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::group(['namespace'=>'Admin', 'middleware' =>'auth'], function(){

	Route::get('edit/tarrif','TarrifController@edit')->name('edit.tarrif');
	Route::post('edit/tarrif/{id}','TarrifController@update')->name('update.tarrif');


});
