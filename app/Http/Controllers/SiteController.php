<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\Admin\Tarrif;
use Hash;

class SiteController extends Controller
{
    public function index(){

        $data = Tarrif::first();
        return view('front.layout',compact('data'));
    }

    public function checkBill(Request $request)
    {
        $tarrif = Tarrif::first();

        $total_unit = $request->unit;

        if($request->category == 1){
            if($total_unit >= $tarrif->price_one_start && $total_unit <= $tarrif->price_one_end){
                $unit_price = $tarrif->price_one;
            }elseif($total_unit >= $tarrif->price_two_start && $total_unit <= $tarrif->price_two_end ){
                $unit_price = $tarrif->price_two;
            }elseif($total_unit >= $tarrif->price_three_start && $total_unit <= $tarrif->price_three_end){
                $unit_price = $tarrif->price_three;
            }elseif($total_unit >= $tarrif->price_four_start && $total_unit <= $tarrif->price_four_end){
                $unit_price = $tarrif->price_four;
            }elseif($total_unit >= $tarrif->price_five_start && $total_unit <= $tarrif->price_five_end){
                $unit_price = $tarrif->price_five;
            }elseif($total_unit >= $tarrif->price_six_start && $total_unit <= $tarrif->price_six_end){
                $unit_price = $tarrif->price_six;
            }elseif($total_unit >= $tarrif->price_seven_start && $total_unit <= $tarrif->price_seven_end){
                $unit_price = $tarrif->price_seven;
            }
            
            $net_charge = $total_unit * $unit_price ;
            $net_charge = number_format($net_charge, 2, ".", "");
            $demand_charge = $tarrif->demand_charge;
            $vat = $net_charge /100 * $tarrif->vat ;
            $vat = number_format($vat, 2, ".", "");
            $service_charge = $tarrif->service_charge ;
            $meter_charge = $tarrif->meter_charge ;
            $others = $tarrif->others ;
            $category = 1;

            $total_charge = $net_charge + $demand_charge + $vat + $meter_charge + $service_charge + $others;
            $total_charge = number_format($total_charge, 2, ".", "");
            return response()->json([$total_unit , $unit_price , $net_charge , $demand_charge ,$vat ,$meter_charge, $service_charge,$others, $total_charge, $category] );
        }elseif($request->category == 2){

            $unit_price = $tarrif->flat_rate;

            $net_charge = $total_unit * $unit_price ;
            $net_charge = number_format($net_charge, 2, ".", "");
            $demand_charge = $tarrif->c_demand_charge;
            $vat = $net_charge /100 * $tarrif->c_vat ;
            $vat = number_format($vat, 2, ".", "");
            $service_charge = $tarrif->c_service_charge ;
            $meter_charge = $tarrif->c_meter_charge ;
            $others = $tarrif->c_others ;
            $category = 2;

            $total_charge = $net_charge + $demand_charge + $vat + $meter_charge + $service_charge + $others;
            $total_charge = number_format($total_charge, 2, ".", "");
            return response()->json([$total_unit , $unit_price , $net_charge , $demand_charge ,$vat ,$meter_charge, $service_charge,$others, $total_charge, $category] );

        }
        

    }

    public function encryptGenerate(Request $request)
    {
        $data = $request->encrypt;
        $result = Hash::make($data);

        return response()->json($result);
    }

    public function passwordCheck(Request $request)
    {
        $encrypt = $request->encrypt_password;
        $password = $request->password;

        if(Hash::check($password,$encrypt)){
            
           return response()->json(['success'=>'Password Matches']);
        }else{
           return response()->json(['error'=>'Password Not Matches']); 
        }
        

    }
}
