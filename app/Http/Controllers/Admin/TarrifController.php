<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Admin\Tarrif;

class TarrifController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit()
    {   
        $data = Tarrif::first();
        return view('admin.tarrif.edit',compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data = Tarrif::find($id);
        $data->demand_charge = $request->demand_charge;
        $data->service_charge = $request->service_charge;
        $data->meter_charge = $request->meter_charge;
        $data->vat = $request->vat;
        $data->others = $request->others;

        //---Rasidantial

        $data->price_one = $request->price_one;
        $data->price_one_start = $request->price_one_start;
        $data->price_one_end = $request->price_one_end;

        $data->price_two = $request->price_two;
        $data->price_two_start = $request->price_two_start;
        $data->price_two_end = $request->price_two_end;

        $data->price_three = $request->price_three;
        $data->price_three_start = $request->price_three_start;
        $data->price_three_end = $request->price_three_end;

        $data->price_four = $request->price_four;
        $data->price_four_start = $request->price_four_start;
        $data->price_four_end = $request->price_four_end;

        $data->price_five = $request->price_five;
        $data->price_five_start = $request->price_five_start;
        $data->price_five_end = $request->price_five_end;

        $data->price_six = $request->price_six;
        $data->price_six_start = $request->price_six_start;
        $data->price_six_end = $request->price_six_end;
        
        $data->price_seven = $request->price_seven;
        $data->price_seven_start = $request->price_seven_start;
        $data->price_seven_end = $request->price_seven_end;

        //---Commercial & Office----

        $data->c_demand_charge = $request->c_demand_charge;
        $data->c_service_charge = $request->c_service_charge;
        $data->c_meter_charge = $request->c_meter_charge;
        $data->c_vat = $request->c_vat;
        $data->c_others = $request->c_others;

        $data->flat_rate = $request->flat_rate;
        $data->pick_rate = $request->pick_rate;
        $data->offpick_rate = $request->offpick_rate;
        $data->save();
        return response()->json('Tarrif Update Successfully ! ');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
