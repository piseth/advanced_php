@extends('admin.main')
@section('content')
<main>
    <div class="container-fluid">
        <h1 class="mt-4">List post</h1>
        <ol class="breadcrumb mb-4">
			<li class="breadcrumb-item"><a href="{!! url('/post') !!}">View all posts </a></li>
			<li class="breadcrumb-item active"><a href="{!! url('/post/create') !!}">Create post</a></li>
		</ol>
        <div class="card mb-4">
            <div class="card-body">
                @if(Session::has('post_update'))
                <div class="alert alert-success"><em>{!! session('post_update') !!}</em>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times</span></button>
                </div>
                @endif
                @if(Session::has('post_delete'))
                <div class="alert alert-success"><em>{!! session('post_delete') !!}</em>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times</span></button>
                </div>
                @endif

                <div class="panel panel-default">
                    <div class="panel-heading">
                        All Posts
                    </div>

                    <div class="panel-body">
                        <table class="table table-striped task-table">
                            <thead>
                                <th>Title</th>
                                <th>Author</th>
                                <th>Category</th>
                                <th>Image</th>
                                <th>Description</th>

                            </thead>

                            <tbody>
                                @if (count($posts) > 0)
                                    @foreach ($posts as $post)
                                    <tr>
                                        <td>
                                            <div>{!! $post->title !!}</div>
                                        </td>
                                        <td>
                                            <div>{!! $post->author !!}</div>
                                        </td>
                                        <td>
                                            <div>{!! $post->category->name !!}</div>
                                        </td>
                                        <td>
                                            <div>{!! Html::image("/upload/".$post->image, $post->title, array('width'=>'60'))  !!}</div>
                                        </td>
                                        <td>
                                            <div>{!! $post->short_desc !!}</div>
                                        </td>

                                        <td><a href="{!! url('post/' . $post->id . '/edit') !!}">Edit</a></td>

                                        <td>
                                            {!! Form::open(array('url'=>'post/'. $post->id, 'method'=>'DELETE')) !!}
                                            {!! csrf_field() !!}
                                            {!! method_field('DELETE') !!}
                                                <button class="btn btn-danger">Delete</button>
                                            {!! Form::close() !!}

                                        </td>

                                    </tr>

                                    @endforeach
                                @endif
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>
        </div>
        <div style="height: 100vh"></div>
        <div class="card mb-4"><div class="card-body">When scrolling, the navigation stays at the top of the page. This is the end of the static navigation demo.</div></div>
    </div>
</main>
@endsection
