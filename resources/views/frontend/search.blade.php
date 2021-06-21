@extends('frontend.main')
@section('content')
<!-- Blog entries-->
<div class="col-lg-8">
    <!-- Featured blog post-->

    <!-- Nested row for non-featured blog posts-->
    <div class="row">
        <div class="col-lg-12">
        @foreach ($posts as $post)

            <div class="card mb-4">
                <a href="#!">
                    {!! Html::image("/upload/".$post->image, $post->title, array('width'=>'850','class'=>'card-img-top'))  !!}
                </a>
                <div class="card-body">
                    <div class="small text-muted">{!!$post->created_at->format('M-d-Y')!!} by {!! $post->author !!}</div>
                    <h2 class="card-title h4">{!!$post->title !!}</h2>
                    <p class="card-text">{!!$post->short_desc !!}</p>
                    <a class="btn btn-primary" href="/show/{{$post->id}}">Read more →</a>
                </div>
            </div>
        @endforeach

        </div>
    </div>
    <!-- Pagination-->

    <nav aria-label="Pagination">
        <hr class="my-0" />
        <br>
        {!! $posts->appends(request()->input())->links(); !!}
    </nav>
</div>
@endsection
