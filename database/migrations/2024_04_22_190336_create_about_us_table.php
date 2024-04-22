<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('about_us', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->text('our_goals');
            $table->smallInteger('students_number');
            $table->smallInteger('graduated_students');
            $table->string("question")->nullable();
            $table->text('answers');
            $table->string('constructed_at');
            $table->string('organizational_char_image')->nullable();
            $table->string('institute_dean_name');
            $table->string('institute_dean_image');
            $table->text('institute_dean_word');
            $table->string('chairman_of_board_name');
            $table->string('chairman_of_board_image');
            $table->text('chairman_of_board_word');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('about_us');
    }
};
