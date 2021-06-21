@extends('admin.main')
@section('content')
<main>
    <div class="container-fluid">
        <h1 class="mt-4">Edit Category</h1>
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item"><a href="/category">View All Category</a></li>
            <li class="breadcrumb-item active"><a href="category/create">Create category</a></li>
        </ol>
        
        <div>
            <!-- It Show the form/input error -->
            @include('common.errors')
            {!! Form::model($category , array('route' => array('category.update', $category->id), 'method'=>'PUT')) !!}
            {!! Form::label('name', 'Name:') !!}
            {!! Form::text('name',null, array('class'=>'form-control')) !!}
            {!! Form::label('desc', 'Desc:') !!}
            {!! Form::text('desc',null, array('class'=>'form-control')) !!}
            {!! Form::submit('Update Category', array('class'=>'secondary-cart-btn')) !!}
            {!! Form::close() !!}
        </div>

    </div>
</main>
@endsection