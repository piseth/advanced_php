@extends('frontend.main')
@section('content')
<div class="col-lg-8">
    <!-- Post content-->
    <article>
        <!-- Post header-->
        <header class="mb-4">
            <!-- Post title-->
            <h1 class="fw-bolder mb-1">{!!$post->title !!}</h1>
            <!-- Post meta content-->
            <div class="text-muted fst-italic mb-2">Posted on {!!$post->created_at->format('M-d-Y')!!} by {!! $post->author !!}</div>
            <!-- Post categories-->
            <a class="badge bg-secondary text-decoration-none link-light" href="#!">{!!$post->category->name !!}</a>
        </header>
        <!-- Preview image figure-->
        <figure class="mb-4">
            {!! Html::image("/upload/".$post->image, $post->title, array('width'=>'900','class'=>'img-fluid rounded'))  !!}
        </figure>
        <!-- Post content-->
        <section class="mb-5">
            {!!$post->description !!}
        </section>
    </article>
</div>
@endsection
