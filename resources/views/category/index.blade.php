@extends('admin.main')

@section('content')
<main>
    <div class="container-fluid">
        <h1 class="mt-4">Category</h1>
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item"><a href="{!! url('/category') !!}">View All Category </a></li>
            <li class="breadcrumb-item active"><a href="{!! url('/category/create') !!}">Create category</a></li>
        </ol>
        <div class="card mb-4">
            <div class="card-body">
                <h1>Category list</h1>
                @if(Session::has('category_update'))
                <div class="alert alert-success"><em>{!! session('category_update') !!}</em>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times</span></button>
                </div>
                @endif
                @if(Session::has('category_delete'))
                <div class="alert alert-success"><em>{!! session('category_delete') !!}</em>
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times</span></button>
                </div>
                @endif
                <table class="table">
                    <thead>
                        <th>Category</th>
                        <th>&nbsp;</th>
                    </thead>
                    <tbody>
                        @if (count($categories) > 0)
                        @foreach ($categories as $category)
                        <tr>
                            <td>
                                <div>{!! $category->name !!}</div>
                            </td>
                            <td><a href="{!! url('/category/' . $category->id . '/edit') !!}">Edit</a></td>
                            <td>
                                {!! Form::open(array('url'=>'category/'. $category->id, 'method'=>'DELETE')) !!}
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
        <div style="height: 100vh;"></div>
        <div class="card mb-4">
            <div class="card-body">When scrolling, the navigation stays at the top of the page. This is the end of the static navigation demo.</div>
        </div>
    </div>
</main>
@endsection
