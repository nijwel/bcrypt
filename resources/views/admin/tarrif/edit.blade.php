@extends('layouts.app')

@section('content')
   <div class="content-wrapper">
   	  <!-- Content Header (Page header) -->
   	  <section class="content-header">
   	    <div class="container-fluid">
   	      <div class="row mb-2">
   	        <div class="col-sm-6">
   	          <h1>Tarrif Set</h1>
   	        </div>
   	        <div class="col-sm-6">
   	          <ol class="breadcrumb float-sm-right">
   	            <li class="breadcrumb-item"><a href="#">Home</a></li>
   	            <li class="breadcrumb-item active">Tarrif Set</li>
   	          </ol>
   	        </div>
   	      </div>
   	    </div><!-- /.container-fluid -->
   	  </section>

   	  <section class="content">
   	    <div class="container-fluid">
   	    	<div class="card card-primary">
   	    	  <div class="card-header">
   	    	    <h3 class="card-title">Quick Example</h3>
   	    	  </div>
   	    	  <!-- /.card-header -->
   	    	  <!-- form start -->
   	    	  <form action="{{ route('update.tarrif',$data->id) }}" method="post" id="addForm">
   	    	  	@csrf
   	    	    <div class="card-body">
   	    	      <div class="row">
   	    	      	<div class="col-sm-6">
   	    	      		<h3 class="text-center"><u>Rasidantial</u></h3>
   	    	      		<div class="form-group">
   	    	      		  <label for="exampleInputEmail1">Demand Charge</label>
   	    	      		  <input type="number" name="demand_charge" class="form-control" value="{{ $data->demand_charge }}" id="exampleInputEmail1" placeholder="Enter Demand Charge">
   	    	      		</div>
   	    	      		<div class="form-group">
   	    	      		  <label for="exampleInputEmail1">Meter Charge</label>
   	    	      		  <input type="number" name="meter_charge" class="form-control" value="{{ $data->meter_charge }}" id="exampleInputEmail1" placeholder="Enter Meter Charge">
   	    	      		</div>
   	    	      		<div class="form-group">
   	    	      		  <label for="exampleInputEmail1">Service Charge</label>
   	    	      		  <input type="number" name="service_charge" class="form-control" value="{{ $data->service_charge }}" id="exampleInputEmail1" placeholder="Enter Service Charge">
   	    	      		</div>
   	    	      		<div class="form-group">
   	    	      		  <label for="exampleInputEmail1">Vat (%)</label>
   	    	      		  <input type="number" name="vat" in="0" value="{{ $data->vat }}" step="0.01" class="form-control" id="exampleInputEmail1" placeholder="Enter Vat">
   	    	      		</div>
   	    	      		<div class="form-group">
   	    	      		  <label for="exampleInputEmail1">Other's Charge</label>
   	    	      		  <input type="number" name="others" in="0" value="{{ $data->others }}" step="0.01" class="form-control" id="exampleInputEmail1" placeholder="Enter others">
   	    	      		</div>
   	    	      		<hr>
   	    	      		<h3 class="text-center"><u>Commercial & Office</u></h3>
   	    	      		<div class="form-group">
   	    	      		  <label for="exampleInputEmail1">Demand Charge</label>
   	    	      		  <input type="number" name="c_demand_charge" class="form-control" value="{{ $data->c_demand_charge }}" id="exampleInputEmail1" placeholder="Enter Demand Charge">
   	    	      		</div>
   	    	      		<div class="form-group">
   	    	      		  <label for="exampleInputEmail1">Meter Charge</label>
   	    	      		  <input type="number" name="c_meter_charge" class="form-control" value="{{ $data->c_meter_charge }}" id="exampleInputEmail1" placeholder="Enter Meter Charge">
   	    	      		</div>
   	    	      		<div class="form-group">
   	    	      		  <label for="exampleInputEmail1">Service Charge</label>
   	    	      		  <input type="number" name="c_service_charge" class="form-control" value="{{ $data->c_service_charge }}" id="exampleInputEmail1" placeholder="Enter Service Charge">
   	    	      		</div>
   	    	      		<div class="form-group">
   	    	      		  <label for="exampleInputEmail1">Vat (%)</label>
   	    	      		  <input type="number" name="c_vat" in="0" value="{{ $data->c_vat }}" step="0.01" class="form-control" id="exampleInputEmail1" placeholder="Enter Vat">
   	    	      		</div>
   	    	      		<div class="form-group">
   	    	      		  <label for="exampleInputEmail1">Other's Charge</label>
   	    	      		  <input type="c_number" name="c_others" in="0" value="{{ $data->others }}" step="0.01" class="form-control" id="exampleInputEmail1" placeholder="Enter others">
   	    	      		</div>
   	    	      	</div>
   	    	      	<div class="col-sm-6 border-left">
   	    	      		<label for="exampleInputEmail1">Unit Price</label>
   	    	      		<hr>
   	    	      		<p class="text-center text-underline"><u>Rasidantial</u></p>
   	    	      		<table id="example2" class="table table-borderless table-hover table-responsive">
   	    	      		  <tbody>
   	    	      		  <tr>
   	    	      		    <td><input type="number" value="{{ $data->price_one_start }}" name="price_one_start"> - <input type="number" value="{{ $data->price_one_end }}" name="price_one_end"> Unit</td>
   	    	      		    <td>= <input type="number" value="{{ $data->price_one }}" name="price_one" min="1" step="0.01" in="0" placeholder="Enter amount"> Tk</td>
   	    	      		  </tr>
   	    	      		  <tr>
   	    	      		    <td><input type="number" value="{{ $data->price_two_start }}" name="price_two_start"> - <input type="number" value="{{ $data->price_two_end }}" name="price_two_end"> Unit</td>
   	    	      		    <td>= <input type="number" value="{{ $data->price_two }}" name="price_two" min="1" step="0.01" in="0" placeholder="Enter amount"> Tk</td>
   	    	      		  </tr>
   	    	      		  <tr>
   	    	      		    <td><input type="number" value="{{ $data->price_three_start }}" name="price_three_start"> - <input type="number" value="{{ $data->price_three_end }}" name="price_three_end"> Unit</td>
   	    	      		    <td>= <input type="number" value="{{ $data->price_three }}" name="price_three" min="1" step="0.01" in="0" placeholder="Enter amount"> Tk</td>
   	    	      		  </tr>
   	    	      		  <tr>
   	    	      		    <td><input type="number" value="{{ $data->price_four_start }}" name="price_four_start"> - <input type="number" value="{{ $data->price_four_end }}" name="price_four_end"> Unit</td>
   	    	      		    <td>= <input type="number" value="{{ $data->price_four }}" name="price_four" min="1" step="0.01" in="0" placeholder="Enter amount"> Tk</td>
   	    	      		  </tr>
   	    	      		  <tr>
   	    	      		    <td><input type="number" value="{{ $data->price_five_start }}" name="price_five_start"> - <input type="number" value="{{ $data->price_five_end }}" name="price_five_end"> Unit</td>
   	    	      		    <td>= <input type="number" value="{{ $data->price_five }}" name="price_five" min="1" step="0.01" in="0" placeholder="Enter amount"> Tk</td>
   	    	      		  </tr>
   	    	      		  <tr>
   	    	      		    <td><input type="number" value="{{ $data->price_six_start }}" name="price_six_start"> - <input type="number" value="{{ $data->price_six_end }}" name="price_six_end"> Unit</td>
   	    	      		    <td>= <input type="number" value="{{ $data->price_six }}" name="price_six" min="1" step="0.01" in="0" placeholder="Enter amount"> Tk</td>
   	    	      		  </tr>
   	    	      		  <tr>
   	    	      		    <td><input type="number" value="{{ $data->price_seven_start }}" name="price_seven_start"> - <input type="number" value="{{ $data->price_seven_end }}" name="price_seven_end" pattern="/^-?\d+\.?\d*$/" onKeyPress="if(this.value.length==9) return false;"> Unit</td>
   	    	      		    <td>= <input type="number" value="{{ $data->price_seven }}" name="price_seven" min="1" step="0.01" in="0" placeholder="Enter amount"> Tk</td>
   	    	      		  </tr>
   	    	      		</table>
   	    	      		<p class="text-center text-underline"><u>Commercial & Office</u></p>
   	    	      		<table id="example2" class="table table-borderless table-hover table-responsive">
   	    	      		  <tbody>
   	    	      		  <tr>
   	    	      		    <td>Flat Rate</td>
   	    	      		    <td>= <input type="number" value="{{ $data->flat_rate }}" name="flat_rate" min="1" step="0.01" in="0" placeholder="Enter amount"> Tk</td>
   	    	      		  </tr>
   	    	      		  <tr>
   	    	      		    <td>Pick Rate</td>
   	    	      		    <td>= <input type="number" value="{{ $data->pick_rate }}" name="pick_rate" min="1" step="0.01" in="0" placeholder="Enter amount"> Tk</td>
   	    	      		  </tr>
   	    	      		  <tr>
   	    	      		    <td>Off-Pick Rate</td>
   	    	      		    <td>= <input type="number" value="{{ $data->offpick_rate }}" name="offpick_rate" min="1" step="0.01" in="0" placeholder="Enter amount"> Tk</td>
   	    	      		  </tr>

   	    	      		</table>
   	    	      	</div>
   	    	      </div>
   	    	    </div>
   	    	    <!-- /.card-body -->

   	    	    <div class="card-footer">
   	    	      <button type="submit" class="btn btn-primary">Submit</button>
   	    	    </div>
   	    	  </form>
   	    	</div>
   	    </div>
   	  </section>
   </div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$('#addForm').submit(function(e){
	  e.preventDefault();
	  $('.loading').removeClass('d-none');
	  var url = $(this).attr('action');
	  var request =$(this).serialize();
	  $.ajax({
	    url:url,
	    type:'post',
	    async:false,
	    data:request,
	    success:function(data){  
	     toastr.success(data);
	      
	    }
	  });
	});
</script>

@endsection