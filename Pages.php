<?php

namespace App\Controllers;

use App\Models\FaqModel;
use App\Models\TestimonialModel;
use App\Models\BasicModel;

class Pages extends License
{

  public

    function index()
  {
    return redirect()->to(base_url());
  }

  public

    function view($page = 'home')
  {

    $FaqModel = new FaqModel();
    $TestimonialModel = new TestimonialModel();
    $BasicModel = new BasicModel();
    $data = $this->site;
   
    //FAQs
     $data['faqs'] = $FaqModel->orderBy('id', 'ASC')->findAll();   
     //Testimonials
      $data['testimonials'] = $TestimonialModel->orderBy('id', 'ASC')->findAll();
      //Terms and Conditions
      $data['terms'] = $BasicModel->where('title', 'terms')->first()['value'];    
      //About Us
      $data['about_us'] = $BasicModel->where('title', 'about')->first()['value'];

    $data['page'] = ucfirst(str_replace('-', ' ', $page));
    return view("template/$this->template/header", $data)
      . view("template/$this->template/$page", $data)
      . view("template/$this->template/footer", $data);

  }

}