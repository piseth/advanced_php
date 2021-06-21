<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Category;
use App\Post;
class FrontendController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $categories = Category::all();
        //$posts = Post::all();
        $posts = Post::orderBy('created_at','DESC')->paginate(3);
        return view('frontend.index')->with('posts',$posts)->with('categories',$categories);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $categories = Category::all();
        $post = Post::find($id);
        return view('frontend.show')->with('post',$post )->with('categories',$categories);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function getByCategory($category) {
        $categories = Category::all();
        // get data by Eloquent
        $post = Post::where('category_id',$category)->paginate(3);
        // get data by query builder
        //$post = DB::table('posts')->where('category_id', $id)->paginate(3);
        return view('frontend.category')->with('posts', $post)->with('categories', $categories);
    }

    public function getBySearch(Request $request) {

        $keyword = $request->input('keyword');
        $categories = Category::all();
        if( $keyword != ""){
            return view('frontend.search')
                ->with('posts', Post::where('title', 'LIKE', '%'.$keyword.'%')->paginate(3))
                ->with('keyword', $keyword)
                ->with('categories', $categories);
        } else {
            return redirect('/') ;
        }

    }
}
