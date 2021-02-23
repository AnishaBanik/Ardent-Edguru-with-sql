<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use  App\Models\Home;
use  App\Models\Slider;
use  App\Models\Contact;
use  App\Models\Navbar;
use  App\Models\Queries;
use  App\Models\PrivacyPolicy;
use  App\Models\Term;
use  App\Models\About;

class WebsiteController extends Controller
{
    public function home(Request $request)
   {
   	$settings = Home::get();
   	$sliders = Slider::get();
   	$contact = Contact::get();
   	$navbar = Navbar::get();
   	$data = ['setting'=>$settings, 'slider'=>$sliders, 'contact'=>$contact, 'navbar'=>$navbar, "title"=>"Edguru India"];
   	return view("home_page")->with($data);
   }
    public function teacher_register(Request $request)
   {
      $navbar = Navbar::get();
      $data = ['navbar'=>$navbar, "title"=>"Edguru India"];
   	return view("teacher_register")->with($data);
   }
   public function student_register(Request $request)
   {
      $navbar = Navbar::get();
      $data = ['navbar'=>$navbar, "title"=>"Edguru India"];
   	return view("student_register")->with($data);
   }
   public function terms(Request $request)
   {
      $navbar = Navbar::get();
      $term = Term::get();
      $data = ['term'=> $term, 'navbar'=>$navbar, "title"=>"Edguru India"];
   	return view("terms")->with($data);
   }
   public function privacy_policy(Request $request)
   {
      $navbar = Navbar::get();
      $privacy = PrivacyPolicy::get();
      $data = ['privacy'=>$privacy, 'navbar'=>$navbar, "title"=>"Edguru India"];
   	return view("privacy_policy")->with($data);
   }
   public function submitQuery(Request $request)
   {
      //print_r($request->input());
         $query = new Queries;
         $query->email_id = $request->email_id;
         $query->description = $request->description;
         $query-> save();
         return redirect()->back();
   }
   public function about(Request $request)
   {
      $navbar = Navbar::get();
      $about = About::get();
      $data = ['about'=>$about, 'navbar'=>$navbar, "title"=>"Edguru India"];
      return view("about")->with($data);
   }
}
