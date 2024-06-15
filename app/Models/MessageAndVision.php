<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MessageAndVision extends Model
{
    use HasFactory;
    protected $fillable = ['title', 'description'];
}
