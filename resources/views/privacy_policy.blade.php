@extends("layout.app")
@section("content")
<div style="padding-top:130px; padding: 10% 4%;" >

<div>
	@foreach ($privacy as $pri)
    	<div>
			<div style="font-family: Gayathri; font-size: 34px;">
				{!!$pri->heading!!}
			</div>
			<div style="font-family: Gayathri; font-size: 20px;text-align: justify;">
				{!!$pri->description!!}
			</div>
		</div>
	@endforeach
</div>
</div>

@endsection