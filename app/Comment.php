<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

//plusieurs personnes peuvent ecrire un commentaire et chaque commentaire appartient à un seul utilisateur 

class Comment extends Model
{
    protected $guarded =[];

    public function commentable()
    {
      return $this ->morphTo();

    }
    public  function comments()
    {
     return $this->morphMany('App\Comment','commentable')->latest();
    }


    public function user()
    {
        return $this->BelongsTo('App\User');
    }
}
