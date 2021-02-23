@extends("layout.app")
@section("content")
<div style="padding-top:130px; padding: 10% 4%;" >

<div>
  @foreach ($term as $t)
      <div>
      <div style="font-family: Gayathri; font-size: 34px;">
        {!!$t->heading!!}
      </div>
      <div style="font-family: Gayathri; font-size: 20px;text-align: justify;">
        {!!$t->description!!}
      </div>
    </div>
  @endforeach
</div>
</div>

@endsection

