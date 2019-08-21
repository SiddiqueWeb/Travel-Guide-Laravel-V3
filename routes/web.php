<?php

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

Route::get('/', function () {
    return view('welcome');
});


//Login Controller
Route::get('/login','LoginController@index')->name('Home.login');
Route::post('/login','LoginController@loginVerification');

Route::get('/Registration','HomeController@index')->name('Home.Registration');
Route::post('/Registration','HomeController@Store');


//Admin
Route::get('/Admin','AdminController@index')->name('Admin.Admin');
Route::get('/Admin/ScoutUserList','AdminController@ScoutList')->name('Admin.SList');
Route::get('/Admin/GUserList','AdminController@GUserList')->name('Admin.GUserList');
Route::get('/Admin/AddUser','AdminController@AddUser')->name('Admin.AddUser');
Route::post('/Admin/AddUser','AdminController@StoreUser');

Route::get('/Admin/AddUser/Notice','AdminController@Notice')->name('Admin.AddUserNotice');
Route::get('/Admin/User/Status/Active/{Email}','AdminController@UserActive')->name('Admin.UserActive');
Route::get('/Admin/User/Status/DeActive/{Email}','AdminController@UserDeactive')->name('Admin.UserDeactive');
Route::get('/Admin/User/delete/{Email}','AdminController@UserDelete')->name('Admin.UserDelete');
Route::post('/Admin/User/delete/{Email}','AdminController@UserDestroy');
Route::get('/Admin/Scout/reqviewPost','AdminController@ViewPost')->name('Admin.ViewPost');

Route::get('/Admin/ScoutPost/Status/Active/{no}','AdminController@ViewPostActive')->name('Admin.PostActive');
Route::get('/Admin/ScoutPost/Status/Remove/{no}','AdminController@ViewPostRemove')->name('Admin.PostRemove');

Route::get('/Admin/ChangePassword','AdminController@ChangePasswordForm')->name('Admin.ChangePassword');
Route::post('/Admin/ChangePassword','AdminController@ChangePassword');

Route::get('/Admin/ChangePassword/Notice','AdminController@ChangePassword_Notice')->name('Admin.ChangePassword_Notice');



//Scout
Route::get('/Scout','ScoutController@index')->name('Scout.Scout');
Route::get('/Scout/postdata','ScoutController@PostData')->name('Scout.PostData');
Route::post('/Scout/postdata','ScoutController@StorePostData');



//General User
Route::get('/GeneralUser','GUserController@index')->name('GUser.GUser');



//Logout Controllers
Route::get('/logout', 'LogoutController@index')->name('logout.logout');

