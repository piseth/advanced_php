@extends('admin.main')
@section('content')
<main>
	<div class="container-fluid">
		<h1 class="mt-4">Edit Post</h1>
		<ol class="breadcrumb mb-4">
			<li class="breadcrumb-item"><a href="/post">View All Posts</a></li>
			<li class="breadcrumb-item active"><a href="post/create">Create post</a></li>
		</ol>
		<div class="card mb-4">

		<!-- It Show the form/input error -->
                @include('common.errors')

                <!-- It Create the new Category -->
                {!! Form::model($post , array('url' => '/post/'.$post->id, 'method'=>'PUT','files'=>'true')) !!}
                <!--{!! Form::model($post , array('route' => array('post.update', $post->id), 'method'=>'PUT','files'=>'true')) !!}-->

                {!! Form::label('title', 'Title:') !!}
                {!! Form::text('title',null, array('class'=>'form-control')) !!}

                {!! Form::label('author', 'Author:') !!}
                {!! Form::text('author',null, array('class'=>'form-control')) !!}

                {!! Form::label('image', 'Image:') !!}
                {!! Form::file('image',null, array('class'=>'form-control')) !!}
                <br>
                {!! Form::label('short_desc', 'Short Desc:') !!}
                {!! Form::text('short_desc',null, array('class'=>'form-control')) !!}

                {!! Form::label('description', 'Description:') !!}
                {!! Form::textarea('description',null, array('class'=>'form-control')) !!}

                {!! Form::label('category_id', 'Category:') !!}
                {!! Form::select('category_id',$categories, $post->category_id) !!}
                <br>
                {!! Form::submit('Update Post', array('class'=>'secondary-cart-btn')) !!}
                {!! Form::close() !!}
	</div>
</main>
@endsection
