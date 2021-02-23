@extends("layout.app")
@section("content")
<section  style="background-color: wheat; padding-top:130px;" >
  <div class="row">
    <div class="col-md-6 col-sm-12">
      <div class="card join-cards right-shift">
        <p class="left_content" >
           your content goes here!
        </p>
      </div>
    </div>
    <div class="col-md-6 col-sm-12">
      <div class="card join-cards">
        <p class="join_head">
          Join as a student.
        </p> 
        <p class="sub_heading">
          Enter your details here.
        </p>
        
        <form>
          <div class="row form-group query-text">
                  <label class="col-md-5">Name</label>
                  <input type="email" class="col-md-7 form-control input-box" placeholder="Enter name" 
                  style="width: 50%;">
              </div>
              <div class="row form-group query-text">
                  <label class="col-md-5">Email address</label>
                  <input type="email" class="col-md-7 form-control input-box" placeholder="Enter email"
                  style="width: 50% ;">
              </div>
              <div class="row form-group">
                <div class="col-md-5 query-text">
                  <label>Select your board:</label>
                </div>
                <div class="col-md-7 radio-input">
                  <div class="form-check">
                  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                  <label class="form-check-label" for="flexRadioDefault1">board1 </label>
              </div>
              <div class="form-check">
                  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                  <label class="form-check-label" for="flexRadioDefault1">board2</label>
              </div>
              <div class="form-check">
                  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                  <label class="form-check-label" for="flexRadioDefault1">board2</label>
              </div>
                </div>
              </div>
              <div class="row form-group">
                <div class="col-md-5 query-text">
                  <label>Select your subjects:</label>
                </div>
                <div class="col-md-7 radio-input">
                  <div class="form-check">
                  <label>
                    <input class="form-check-input" type="checkbox" value="">
                    Subject1
                  </label>
                  <br>
                  <label>
                    <input class="form-check-input" type="checkbox" value="">
                    Subject2
                  </label> 
                  <br> 
                  <label>
                    <input class="form-check-input" type="checkbox" value="">
                    Subject3
                  </label>
                  <br>  
                  <label>
                    <input class="form-check-input" type="checkbox" value="">
                    Subject4
                  </label>  
              </div>
                </div>
              </div>              
              <div class="row">
                <div class="col-md-5"></div>
                <div class="col-md-7">
                    <button type="submit" class="btn enroll-btn">Enroll</button>
                </div>
              </div>
          </form>
      </div>
    </div>
  </div>
</section>
@endsection

