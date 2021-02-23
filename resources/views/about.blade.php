@extends("layout.app")
@section("content")
<div style="padding-top:130px; padding: 10% 4%;" >

<div  style="background-color: {{$about[0]->background_colour}}">
  @foreach ($about as $abt)
      <div>
      	<div>
      		<img src="{{ Voyager::image( $abt->logo )}}" >
      	</div>
      	<div style="font-family: Gayathri; font-size: 34px; text-align: center;">
        	{!!$abt->heading!!}
      	</div>
      	<div style="font-family: Gayathri; font-size: 20px;text-align: center;">
        	{!!$abt->description!!}
      	</div>
    </div>
  @endforeach
</div>
</div>
@endsection