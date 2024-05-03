<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Electricity bill check</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="{{ asset('public/asset/front/css/calculator.css') }}">
    <style>
      .bg-success-custom{
        background: rgba(0,255,0,0.3);
      }
      .bg-danger-custom{
        background:rgba(255,0,0,0.3);
      }
    </style>
</head>
<body>
    <div class="container mt-4 card" style="border: solid .1rem #000;">

      <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item" role="presentation">
          <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">Electricity Bill</button>
        </li>
        <li class="nav-item" role="presentation">
          <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">Bcrypt</button>
        </li>
        <li class="nav-item" role="presentation">
          <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Contact</button>
        </li>
      </ul>
      <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
          <h2 class="text-center mt-2">Electricity Bill Calculator</h2>
          <hr>
          <div class="row">
            <div class="col-sm-12 col-lg-8 border-end pb-3">
              <h5>Unit Calculate :</h5>
              <hr>
              <div class="mb-3 border-bottom pb-3">
                <form id="unit_calculate">
                  <div class="row">
                    <div class="col-sm-5">
                      <label>Current Unit</label>
                      <input type="number" min="1" class="form-control form-control-sm" id="curr_unit" placeholder="Enter Current Unit" aria-label="Last name">
                    </div>
                    <div class="col-sm-5">
                      <label>Previous Unit</label>
                      <input type="number" min="1" class="form-control form-control-sm" id="pre_unit" placeholder="Enter Previous Unit" aria-label="First name">
                      <small class="text-danger error"></small>
                    </div>
                    <div class="col-auto">
                      <button type="button" id="calculate" class="btn btn-sm btn-outline-info mt-4">Calculate</button>
                    </div>
                  </div>
                </form>
              </div>
              <h5 class="border-bottom">Bill Check :</h5>
              <div class="">
                <form action="{{ route('checkBill') }}" method="post" id="addForm">
                  @csrf
                  <div class="row">
                    <div class="col-sm-10">
                      <label>Bill Category</label>
                      <select class="form-select form-select-sm mb-2" required="required" id="category" name="category" aria-label=".form-select-sm example">
                        <option value="" selected>--Select bill category--</option>
                        <option value="1">Residential</option>
                        <option value="2">Commercial & Office</option>
                      </select>
                    </div>
                    <div class="col-sm-10">
                      <label>Enter Unit</label>
                      <input type="number" name="unit" required min="1" class="form-control form-control-sm" id="unit" placeholder="Enter Unit" pattern="/^-?\d+\.?\d*$/" onKeyPress="if(this.value.length==9) return false;">
                    </div>
                    <div class="col-auto">
                      <button type="submit" class="btn btn-sm btn-outline-primary mt-4">Bill Check</button>
                    </div>
                  </div>
                </form>
              </div>
              <br>
              <div>
                @php
                  $tarrif = App\Model\Admin\Tarrif::first();
                @endphp
                <div class="row">
                  <div class="col-sm-6">
                    <table class="table table-sm table-borderless text-danger" style="font-size: .8rem">
                      <tbody>
                        <th class="text-decoration-underline residential">Residential : </th>
                        <tr class="first">
                          <td>{{ $tarrif->price_one_start }} - {{ $tarrif->price_one_end }} Unit</td>
                          <td>-</td>
                          <td>{{ $tarrif->price_one }} tk</td>
                        </tr>
                        <tr class="second">
                          <td>{{ $tarrif->price_two_start }} - {{ $tarrif->price_two_end }} Unit</td>
                          <td>-</td>
                          <td>{{ $tarrif->price_two }} Tk</td>
                        </tr>
                        <tr class="third">
                          <td>{{ $tarrif->price_three_start }} - {{ $tarrif->price_three_end }} Unit</td>
                          <td>-</td>
                          <td>{{ $tarrif->price_three }} Tk</td>
                        </tr>
                        <tr class="fourth">
                          <td>{{ $tarrif->price_four_start }} - {{ $tarrif->price_four_end }} Unit</td>
                          <td>-</td>
                          <td>{{ $tarrif->price_four }} Tk</td>
                        </tr>
                        <tr class="fifth">
                          <td>{{ $tarrif->price_five_start }} - {{ $tarrif->price_five_end }} Unit</td>
                          <td>-</td>
                          <td>{{ $tarrif->price_five }} Tk</td>
                        </tr>
                        <tr class="sixth">
                          <td>{{ $tarrif->price_six_start }} - {{ $tarrif->price_six_end }} Unit</td>
                          <td>-</td>
                          <td>{{ $tarrif->price_six }} Tk</td>
                        </tr>
                        <tr class="seventh">
                          <td>{{ $tarrif->price_seven_start }} - @if($tarrif->price_seven_start >= 600)more @endif Unit</td>
                          <td>-</td>
                          <td>{{ $tarrif->price_seven }} Tk</td>
                        </tr>
                        <tr>
                          <th class="text-danger">
                            ** Unit price may vary depending on usage .
                          </th>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                  <div class="col-sm-6 border-start">
                    <table class="table table-sm table-borderless text-danger" style="font-size: .8rem">
                      <tbody>
                        <th class="text-decoration-underline industrial">Commercial & Office : </th>
                        <tr class="flat">
                          <td>Flat Rate</td>
                          <td>-</td>
                          <td>{{ $tarrif->flat_rate }} tk</td>
                        </tr>
                        <tr class="pick">
                          <td>Pick Rate</td>
                          <td>-</td>
                          <td>{{ $tarrif->pick_rate }} Tk</td>
                        </tr>
                        <tr class="Off-pick">
                          <td>Off-pick Rate</td>
                          <td>-</td>
                          <td>{{ $tarrif->offpick_rate }} Tk</td>
                        </tr>
                        <tr>
                          <th>* Commercial & Office result base on flat rate</th>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
              
            </div>
            <div class="col-sm-12 col-lg-4">
              <table class="table table-borderless" id="result">
                <tbody>
                  <tr>
                  <th>Total Unit</th>
                  <td>:</td>
                  <td class="t_unit">0 Unt</td>
                </tr>
                <tr>
                  <th>Unit Price</th>
                  <td>:</td>
                  <td class="unit_price">0.00 Tk</td>
                </tr>
                <tr>
                  <th>Net Charge</th>
                  <td>:</td>
                  <td class="net_charge">0.00 Tk</td>
                </tr>
                <tr>
                  <th>Demand Charge</th>
                  <td>:</td>
                  <td class="demand_charge">0.00 Tk</td>
                </tr>
                <tr>
                  <th>Vat (<span id="vat"> 0 % </span> )</th>
                  <td>:</td>
                  <td class="vat">0.00 Tk</td>
                </tr>
                <tr>
                  <th>Meter Charge</th>
                  <td>:</td>
                  <td class="meter_charge">0.00 Tk</td>
                </tr>
                <tr>
                  <th>Service Charge</th>
                  <td>:</td>
                  <td class="service_charge">0.00 Tk</td>
                </tr>
                <tr>
                  <th>Other's Charge</th>
                  <td>:</td>
                  <td class="others_charge">0.00 Tk</td>
                </tr>
                </tbody>
                <tfoot class="border-top text-primary">
                  <tr>
                    <th>Total Charge</th>
                    <td>=</td>
                    <th class="total_charge">0.00 Tk</th>
                  </tr>
                </tfoot>
              </table>
              <h1 class="text-center mt-5" id="total_charge"> 0.00 Tk  </h1>
            </div>
          </div>
        </div>
        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
          <h2 class="text-center mt-2">Bcrypt Generator</h2>
          <hr>
          <div class="row">
            <div class="col-sm-6">
              <div class="mb-3 border-bottom pb-3">
                <h3>Encrypt</h3>
                <form method="POST" action="{{ route('generat.encrypt') }}" id="addForm_encrypt">
                  @csrf
                  <div class="row">
                    <div class="col-sm-10">
                      <label>Encrypt some text. The result shown will be a Bcrypt encrypted hash.</label>
                      <input type="text" name="encrypt" class="form-control form-control-sm" placeholder="String" aria-label="Last name" autocomplete="off">
                    </div>
                    <div class="col-auto">
                      <button type="submit" id="calculate" class="btn btn-sm btn-outline-info mt-4">Encrypt</button>
                    </div>
                    <br>
                  </div>
                </form>
                <br>
                <div class="row encrypt_sec" style="display: none;">
                  <div class="col-sm-10">
                    <label>Encrypt Result</label>
                    {{-- <a href="#">
                      <p class="encrypt_result p-4" id="encrypt_result" style="background: rgba(255, 199, 19, 0.2);"></p>
                    </a> --}}
                    <input class="encrypt_result form-control form-control-sm" readonly style="background: rgba(255, 199, 19, 0.2);" id="myInput">
                  </div>
                  <div class="col-auto">
                    <button class="btn btn-sm btn-outline-info mt-4" onclick="myFunction()" >Copy</button>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="mb-3 border-bottom pb-3">
                <h3>Encrypt</h3>
                <form method="POST" action="{{ route('passowrd.check') }}" id="addForm_passwordCheck">
                  @csrf
                  <div class="row">
                    <div class="col-sm-10">
                      <label>Hash to check</label>
                      <input type="text" name="encrypt_password" class="form-control form-control-sm" placeholder="Hash to check" id="encrypt_password" aria-label="Last name" autocomplete="off">
                    </div>
                    <div class="col-sm-10">
                      <label>String</label>
                      <input type="text" name="password" class="form-control form-control-sm" placeholder="String" aria-label="Last name" autocomplete="off" id="password">
                    </div>
                    <div class="col-auto">
                      <button type="submit" class="btn btn-sm btn-outline-info mt-4">Check</button>
                    </div>
                    <br>
                    <h5 class="result-text text-center"></h5>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
          <div class="card text-center">
            <div class="card-header">
              <h2 class="text-center mt-2">Contact</h2>
            </div>
            <div class="card-body">
              <h5 class="card-title">Nijwel</h5>
              <p class="card-text">Backend Developer</p>
              <p class="card-text">01911970156 , 01671668631</p>
              <a href="http://www.nijwel.xyz" target="_blank" class="btn btn-primary">Portfolio</a>
            </div>
            <div class="card-footer text-muted">
              www.nijwel.xyz
            </div>
          </div>
        </div>
      </div>

      
    </div>
    <div class="footer-item mt-4 container">
      <div class="text-end">
        &copy; Developed By Nijwel
      </div>
      <button class="btn btn-danger" id="rest" type="button">Rest</button>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
      //store  ajax call
       $('#addForm').submit(function(e){
         e.preventDefault();
         var url = $(this).attr('action');
         var request =$(this).serialize();
         $.ajax({
           url:url,
           type:'post',
           async:false,
           data:request,
           success:function(data){  

             $('.t_unit').text(data[0] + ' Unit');
             $('.unit_price').text(data[1] + ' Tk');
             $('.net_charge').text(data[2] + ' Tk');
             $('.demand_charge').text(data[3] + ' Tk');
             $('.vat').text(data[4] + ' Tk');
             $('.meter_charge').text(data[5] + ' Tk');
             $('.service_charge').text(data[6] + ' Tk');
             $('.others_charge').text(data[7] + ' Tk');
             $('.total_charge').text(data[8] + ' Tk');
             $('#total_charge').text(data[8] + ' Tk');
             
             if(data[9] == 1){
              if(data[0] >= {{ $tarrif->price_one_start }} && data[0] <= {{ $tarrif->price_one_end }}){
               $('.first').addClass('fw-bold text-success');
               $('.second').removeClass('fw-bold text-success');
               $('.third').removeClass('fw-bold text-success');
               $('.fourth').removeClass('fw-bold text-success');
               $('.fifth').removeClass('fw-bold text-success');
               $('.sixth').removeClass('fw-bold text-success');
               $('.seventh').removeClass('fw-bold text-success');
               $('.flat').removeClass('fw-bold text-success');
              }else if(data[0] >= {{ $tarrif->price_two_start }} && data[0] <= {{ $tarrif->price_two_end }}){
               $('.second').addClass('fw-bold text-success');
               $('.first').removeClass('fw-bold text-success');
               $('.third').removeClass('fw-bold text-success');
               $('.fourth').removeClass('fw-bold text-success');
               $('.fifth').removeClass('fw-bold text-success');
               $('.sixth').removeClass('fw-bold text-success');
               $('.seventh').removeClass('fw-bold text-success');
               $('.flat').removeClass('fw-bold text-success');
              }else if(data[0] >= {{ $tarrif->price_three_start }} && data[0] <= {{ $tarrif->price_three_end }}){
               $('.third').addClass('fw-bold text-success');
               $('.first').removeClass('fw-bold text-success');
               $('.second').removeClass('fw-bold text-success');
               $('.fourth').removeClass('fw-bold text-success');
               $('.fifth').removeClass('fw-bold text-success');
               $('.sixth').removeClass('fw-bold text-success');
               $('.seventh').removeClass('fw-bold text-success');
               $('.flat').removeClass('fw-bold text-success');
              }else if(data[0] >= {{ $tarrif->price_four_start }} && data[0] <= {{ $tarrif->price_four_end }}){
               $('.fourth').addClass('fw-bold text-success');
               $('.first').removeClass('fw-bold text-success');
               $('.second').removeClass('fw-bold text-success');
               $('.third').removeClass('fw-bold text-success');
               $('.fifth').removeClass('fw-bold text-success');
               $('.sixth').removeClass('fw-bold text-success');
               $('.seventh').removeClass('fw-bold text-success');
               $('.flat').removeClass('fw-bold text-success');
              }else if(data[0] >= {{ $tarrif->price_five_start }} && data[0] <= {{ $tarrif->price_five_end }}){
               $('.fifth').addClass('fw-bold text-success');
               $('.first').removeClass('fw-bold text-success');
               $('.second').removeClass('fw-bold text-success');
               $('.third').removeClass('fw-bold text-success');
               $('.fourth').removeClass('fw-bold text-success');
               $('.sixth').removeClass('fw-bold text-success');
               $('.seventh').removeClass('fw-bold text-success');
               $('.flat').removeClass('fw-bold text-success');
              }else if(data[0] >= {{ $tarrif->price_six_start }} && data[0] <= {{ $tarrif->price_six_end }}){
               $('.sixth').addClass('fw-bold text-success');
               $('.first').removeClass('fw-bold text-success');
               $('.second').removeClass('fw-bold text-success');
               $('.third').removeClass('fw-bold text-success');
               $('.fourth').removeClass('fw-bold text-success');
               $('.fifth').removeClass('fw-bold text-success');
               $('.seventh').removeClass('fw-bold text-success');
               $('.flat').removeClass('fw-bold text-success');
              }else if(data[0] >= {{ $tarrif->price_seven_start}} && data[0] < {{ $tarrif->price_seven_end }}){
               $('.seventh').addClass('fw-bold text-success');
               $('.sixth').removeClass('fw-bold text-success');
               $('.first').removeClass('fw-bold text-success');
               $('.second').removeClass('fw-bold text-success');
               $('.third').removeClass('fw-bold text-success');
               $('.fourth').removeClass('fw-bold text-success');
               $('.fifth').removeClass('fw-bold text-success');
               $('.flat').removeClass('fw-bold text-success');
              }
            }else if(data[9] == 2){
              $('.flat').addClass('fw-bold text-success');
              $('.seventh').removeClass('fw-bold text-success');
              $('.sixth').removeClass('fw-bold text-success');
              $('.first').removeClass('fw-bold text-success');
              $('.second').removeClass('fw-bold text-success');
              $('.third').removeClass('fw-bold text-success');
              $('.fourth').removeClass('fw-bold text-success');
              $('.fifth').removeClass('fw-bold text-success');
            }
           }
         });
       });


      $('#addForm_encrypt').submit(function(e){
        e.preventDefault();
        var url = $(this).attr('action');
        var request =$(this).serialize();
        $.ajax({
          url:url,
          type:'post',
          async:false,
          data:request,
          success:function(data){
            $('.encrypt_result').val(data);
            $('.encrypt_sec').show();
          }
          });
        });


      $('#addForm_passwordCheck').submit(function(e){
        e.preventDefault();
        var url = $(this).attr('action');
        var request =$(this).serialize();
        $.ajax({
          url:url,
          type:'post',
          async:false,
          data:request,
          success:function(data){
            if(data.success){
              $('#encrypt_password').addClass('border-success');
              $('#encrypt_password').addClass('bg-success-custom');
              $('#password').addClass('border-success');
              $('#password').addClass('bg-success-custom');
              $('#encrypt_password').removeClass('border-danger');
              $('#password').removeClass('border-danger');
              $('#encrypt_password').removeClass('bg-danger-custom');
              $('#password').removeClass('bg-danger-custom');
              $('.result-text').text(data.success).addClass('text-success bolder');
              $('.result-text').removeClass('text-danger');
              $('.result-text').show();
            }else{
              $('#encrypt_password').addClass('border-danger');
              $('#encrypt_password').addClass('bg-danger-custom');
              $('#encrypt_password').removeClass('bg-success-custom');
              $('#password').addClass('border-danger');
              $('#password').addClass('bg-danger-custom');
              $('#password').removeClass('bg-success-custom');
              $('.result-text').text(data.error).addClass('text-danger bolder');
              $('.result-text').removeClass('text-success');
              $('.result-text').show();
            }
          }
          });
        });


       $('#calculate').click(function(){
          var pre_unit = $('#pre_unit').val();
          var curr_unit = $('#curr_unit').val();

          if(pre_unit == '' && curr_unit == ''){
            $('#pre_unit').addClass('border-danger');
            $('#curr_unit').addClass('border-danger');
          }else{
            var total = curr_unit - pre_unit;
            if(pre_unit > curr_unit){
              $('.error').text('The previous unit will not be larger than the current unit.');
              $('#pre_unit').addClass('border-danger');
              $('#curr_unit').addClass('border-danger');
              return false;
            }else{
              $('#pre_unit').removeClass('border-danger');
              $('#curr_unit').removeClass('border-danger');
              $('.error').text('');
            }
          }
          $('#unit').val(total);
       });

       $('#category').on('change',function(){
          let val = $('#category').val();

          if(val == 1){
            $('.residential').addClass('fw-bold text-success');
            $('.industrial').removeClass('fw-bold text-success');
            $('#vat').text('{{ $tarrif->vat }} % ');
          }else if(val == 2){
            $('.industrial').addClass('fw-bold text-success');
            $('.residential').removeClass('fw-bold text-success');
            $('#vat').text('{{ $tarrif->c_vat }} % ');
          }
       });

       $(document).ready(function(){
        $('#rest').click(function(){
         $('#addForm')[0].reset();
         $('#unit_calculate')[0].reset();
         $('#addForm_encrypt')[0].reset();
         $('#addForm_passwordCheck')[0].reset();
         $("#result").load(location.href + " #result");
         $('#pre_unit').removeClass('border-danger');
         $('#curr_unit').removeClass('border-danger');
         $('.error').hide();
         $('.encrypt_sec').hide();
         $('#total_charge').text('0.00'+ 'Tk');
         $('.flat').removeClass('fw-bold text-success');
         $('.seventh').removeClass('fw-bold text-success');
         $('.sixth').removeClass('fw-bold text-success');
         $('.first').removeClass('fw-bold text-success');
         $('.second').removeClass('fw-bold text-success');
         $('.third').removeClass('fw-bold text-success');
         $('.fourth').removeClass('fw-bold text-success');
         $('.fifth').removeClass('fw-bold text-success');
         $('.industrial').removeClass('fw-bold text-success');
         $('.residential').removeClass('fw-bold text-success');
         $('#encrypt_password').removeClass('bg-success-custom');
         $('#encrypt_password').removeClass('bg-danger-custom');
         $('#password').removeClass('bg-success-custom');
         $('#password').removeClass('bg-danger-custom');

         $('#encrypt_password').removeClass('border-danger');
         $('#encrypt_password').removeClass('border-success');
         $('#password').removeClass('border-danger');
         $('#password').removeClass('border-success');
         $('.result-text').hide();

        });
       });

       function copyToClipboard(text) {
           var sampleTextarea = document.createElement("textarea");
           document.body.appendChild(sampleTextarea);
           sampleTextarea.value = text; //save main text in it
           sampleTextarea.select(); //select textarea contenrs
           document.execCommand("copy");
           document.body.removeChild(sampleTextarea);
       }

       function myFunction(){
           var copyText = document.getElementById("myInput");
           copyToClipboard(copyText.value);

           const Toast = Swal.mixin({
             toast: true,
             position: 'top-end',
             showConfirmButton: false,
             timer: 3000,
             timerProgressBar: true,
             didOpen: (toast) => {
               toast.addEventListener('mouseenter', Swal.stopTimer)
               toast.addEventListener('mouseleave', Swal.resumeTimer)
             }
           })

           Toast.fire({
             icon: 'success',
             title: 'Copy successfully'
           })
       }

    </script>
</body>
</html>