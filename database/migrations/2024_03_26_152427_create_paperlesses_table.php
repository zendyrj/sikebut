<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePaperlessesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('paperlesses', function (Blueprint $table) {
            $table->id('paperless_id');
            $table->string('format_paperless');
            $table->string('full_format');
            $table->string('desc_paperless');
            $table->integer('size_paperless');
            $table->string('type_paperless');
            $table->string('multifile');
            $table->string('form');
            $table->string('kolom');
            $table->string('custom');
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
        Schema::dropIfExists('paperlesses');
    }
}
