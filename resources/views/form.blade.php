<html>

<body>
   {!! Form::open(['url' => 'category']) !!}
   {!! Form::label('name', 'Name: ') !!}
   {!! Form::text('name', '',array('class'=>'form-control')) !!}
   {!! Form::submit('Create',array('class'=> 'secondary-cart-btn')) !!}
   {!! Form::close() !!}

</body>

</html>