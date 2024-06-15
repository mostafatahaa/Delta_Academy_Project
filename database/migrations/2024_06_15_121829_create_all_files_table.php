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
        Schema::create('all_files', function (Blueprint $table) {
            $table->id();
            $table->string('organizational_chart');
            $table->string('old_institute_regulations');
            $table->string('new_institute_regulations');
            $table->string('class_schedules_one');
            $table->string('class_schedules_two');
            $table->string('class_schedules_three');
            $table->string('class_schedules_four');
            $table->string('courses_new');
            $table->string('courses_old');
            $table->string('exam_schedules_one');
            $table->string('exam_schedules_two');
            $table->string('exam_schedules_three');
            $table->string('exam_schedules_four');
            $table->string('student_guide');
            $table->string('academic_advising');
            $table->string('scientific_leadership_guide');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('all_files');
    }
};
