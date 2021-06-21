<?php

namespace App\Helpers;

class AppHelper
{
    public function greeting($name)
    {
        //$myvar = \App\Helpers\AppHelper::instance()->greeting("piseth");
        //dd($myvar);
        return "Hello ".$name;
    }

    public static function instance()
    {
        return new AppHelper();
    }
}
