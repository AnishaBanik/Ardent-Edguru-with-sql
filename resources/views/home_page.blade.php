@extends("layout.app")
@section("content")
<style>
</style>
<div style="background-color: white;padding-top:100px; width: 98%">
<section class="banner-section" id="home" style="background-color: {{$setting[0]->background_colour}};">
  <div class="row">
    <div class="col-md-8 col-sm-12">
      <p class="header" style="font-family: {{$font[0]->mainheading_fontfamily}}; 
        font-size:{{$font[0]->mainheading_fontsize}}">
        {{$setting[0]->heading}}
        <p class="for-all">
          for all!
        </p>
      </p>
      <p class="desc" style="font-family: {{$font[0]->desc_fontfamily}}; 
        font-size:{{$font[0]->desc_fontsize}}">
        {{$setting[0]->description}}
      </p>
      <button class="learn-btn">
        Learn More
      </button>
    </div>
    <div class="col-md-4 d-none d-lg-block">
      <img src="{{ Voyager::image( $setting[0]->logo )}}" alt="image1" class="image1" style=" border: 20px solid  {{$setting[0]->image_background}};">
    </div>
  </div>
</section>

<section id="switch" style=" background-color: {{$setting[1]->background_colour}} !important">
  <div class="row switch-to">
    <div class="col-md-4 col-sm-4" style="background-color:  {{$setting[1]->image_background}}">
      <img src="{{ Voyager::image( $setting[1]->logo )}}" alt="image2" class="image2"
      style="box-shadow: none;">
    </div>
    <div class="col-md-8 col-sm-12 switch-to-desc">
      <h4 class="scnd_head" style="font-family:{{$font[0]->subheading_fontfamily}};
      font-size:{{$font[0]->subheading_fontsize}}">
        {{$setting[1]->heading}}
      </h4>
      <p class="scnd_desc" style="font-family: {{$font[0]->desc_fontfamily}}; 
        font-size:{{$font[0]->desc_fontsize}}">
        {!!$setting[1]->description!!}
      </p>
      <div class="row">
        <div class="col-sm-12">
          <div class="col-md-4 col-sm-12">
            <img src="{{ Voyager::image( $slider[0]->logo )}}" alt="image10" class="image10"
            style="background-color: {{$slider[0]->background_colour}};">
            <p class="scnd-img-desc">{!!$slider[0]->description!!}</p>
          </div>
          <div class="col-md-4 col-sm-12">
            <img src="{{ Voyager::image( $slider[1]->logo )}}" alt="image11" class="image10"
            style="background-color: {{$slider[0]->background_colour}};">
            <p class="scnd-img-desc">{!!$slider[1]->description!!}</p>
          </div>
          <div class="col-md-4 col-sm-12">
            <img src="{{ Voyager::image( $slider[2]->logo )}}" alt="image12" class="image10"
            style="background-color: {{$slider[0]->background_colour}};">
            <p class="scnd-img-desc">{!!$slider[2]->description!!}</p>
          </div>
        </div>
       
      </div>
    </div>
  </div>
</section>

<section id="offer" style="background-color: {{$setting[2]->background_colour}}">
  <div class="row">
    <div class="col-sm-12">
      <p class="third_head" style="font-family:{{$font[0]->subheading_fontfamily}};
      font-size:{{$font[0]->subheading_fontsize}}">
        {{$setting[2]->heading}}
      </p>
      <p class="third_desc" style="font-family: {{$font[0]->desc_fontfamily}}; 
        font-size:{{$font[0]->desc_fontsize}}">
        {!!$setting[2]->description!!}
      </p>
            
    </div>
    <div class="row_change col-sm-12" >
      <div class="row">
        <div class="col-md-4 col-sm-12 cardboard-parent ">
          <div class="cards cardboard card">
            <div class="card-body" style="min-height: 327px; max-height: 327px; 
               background-color: {{$slider[3]->background_colour}};" >
              <img src="{{ Voyager::image( $slider[3]->logo )}}" alt="image4" class="image4">
              <p class="board-name-footer"> <b> {!!$slider[3]->description!!} </b>
              </p>
            </div>
          </div>
        </div>
        <div class="col-md-4 col-sm-12 cardboard-parent">
          <div class="cards cardboard card">
            <div class="card-body" style="min-height: 327px; max-height: 327px;
            background-color: {{$slider[4]->background_colour}};">
              <img src="{{ Voyager::image( $slider[4]->logo )}}" alt="image5" class="image5">
              <p class="board-name-footer"> <b>{!!$slider[4]->description!!} </b>
              </p>
            </div>
          </div>
        </div>
        <div class="col-md-4 col-sm-12 cardboard-parent">
          <div class="cards cardboard card">
            <div class="card-body" style="min-height: 327px; max-height: 327px;
             background-color: {{$slider[5]->background_colour}};">
              <img src="{{ Voyager::image( $slider[5]->logo )}}" alt="image6" class="image6">
              <p class="board-name-footer"> <b>{!!$slider[5]->description!!}</b>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<section id="register" style="background-color: {{$setting[3]->background_colour}}">
  <div class="row">
    <div class="forth_row_up col-sm-12">
      <p class="forth_head" style="font-family:{{$font[0]->subheading_fontfamily}};
      font-size:{{$font[0]->subheading_fontsize}}">
        {{$setting[3]->heading}}
      </p>
      <p class="forth_desc" style="font-family: {{$font[0]->desc_fontfamily}}; 
        font-size:{{$font[0]->desc_fontsize}}">
        {!!$setting[3]->description!!}
      </p>
    </div>
  </div>
  <div class="row">
    <div class="col-md-6 col-sm-12">
      <div class="card join-card">
        <img src="{{ Voyager::image( $slider[6]->logo )}}" alt="image7" class="image7"
         style="background-color: {{$slider[6]->background_colour}};">
        <a href="/student_register">
          <button class="stu-teach">
            {!!$slider[6]->description!!} 
          </button>
        </a>
      </div>
    </div>
    <div class="col-md-6 col-sm-12">
      <div class="card join-card">
        <img src="{{ Voyager::image( $slider[7]->logo )}}" alt="image8" class="image8"
        style="background-color: {{$slider[7]->background_colour}};">
        <a href="/teacher_register">
          <button class="stu-teach">
          {!!$slider[7]->description!!}
          </button> 
        </a>
        
      </div>
    </div>
  </div>
</section>
<section class="contacts-page" id="contact" style="background-color: {{$setting[4]->background_colour}}">
  <div class="row">
    <div class="last_page col-md-4 col-lg-4" style="background-color: {{$setting[5]->background_colour}}">
     <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3684.2783499034595!2d88.4294156144339!3d22.568690438802893!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a0275ad93c8289b%3A0xc099131033eb5917!2sSDF%20Building%2C%20GP%20Block%2C%20Sector%20V%2C%20Bidhannagar%2C%20Kolkata%2C%20West%20Bengal%20700091!5e0!3m2!1sen!2sin!4v1612178879383!5m2!1sen!2sin" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0" class="map"></iframe>
    </div>
    <div class="col-md-4 col-lg-4">
      <p class="last_head" style="font-family:{{$font[0]->subheading_fontfamily}};
      font-size:{{$font[0]->subheading_fontsize}}">
        {{$setting[4]->heading}}
      </p>
      <div class="row">
        
        <div class="col-md-12 col-sm-12" style="text-align: center; !important; ">
          <p class="email">
            <b>{{$contact[0]->head}}</b>
          </p>
          <p class="email_id">
            {!!$contact[0]->description!!}
          </p> 
          <p class="mail">
            <b>{{$contact[1]->head}}</b>
          </p>
          <p class="mail_id">
            {!!$contact[1]->description!!}
          </p>
          <p class="phn">
            <b>{{$contact[2]->head}}</b>
          </p>
          <p class="phn_no">
            {!!$contact[2]->description!!}
          </p>
        </div>  
      </div>
      
    </div>
    <div class="col-sm-12 col-md-4 col-lg-4" style="background-color: {{$setting[5]->background_colour}}">
      <p class="last_head" style="font-family:{{$font[0]->subheading_fontfamily}};
      font-size:{{$font[0]->subheading_fontsize}}">
        {{$setting[5]->heading}}
      </p>
      <form action="submit" method="POST">
        @csrf
        <div class="row form-group query-text">
          <label class="col-md-5">Email address</label>
          <input type="email" class="col-md-7 form-control query-input" placeholder="Enter email" 
          name="email_id" required>
        </div>
      <div class="row form-group query-text">
        <label class="col-md-5">Query Description</label>
        <textarea class="col-md-7 form-control query-input" placeholder="Write your query"
        name="description" required></textarea>
      </div>
      <div class="row">
        <div class="col-md-5"></div>
        <div class="col-md-7">
          <button type="submit" class="btn submit-btn">Submit</button>
        </div>
      </div>
      
    </form>
    </div>
  </section>
</div>
@endsection