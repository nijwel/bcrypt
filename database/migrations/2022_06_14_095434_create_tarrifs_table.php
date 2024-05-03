<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTarrifsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tarrifs', function (Blueprint $table) {
            $table->id();
            $table->integer('demand_charge')->nullable();
            $table->integer('meter_charge')->nullable();
            $table->integer('service_charge')->nullable();
            $table->integer('vat')->nullable();
            $table->integer('price_one')->nullable();
            $table->integer('price_two')->nullable();
            $table->integer('price_three')->nullable();
            $table->integer('price_four')->nullable();
            $table->integer('price_five')->nullable();
            $table->integer('price_six')->nullable();
            $table->integer('price_seven')->nullable();
            $table->integer('others')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('tarrifs');
    }
}
