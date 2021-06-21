<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Category;

use Validator;
use Session;

use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Auth;
class CategoryController extends Controller
{
    // check user login for this controlelr
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //$categories = DB::table('categories')->get();
        // 1 query builder
        //$categories = DB::table('categories')->get();
        /*$categories = DB::table('categories')->where('name', 'John')->get();
        $categories = DB::table('categories')->where('name', 'like', '%term%')->get();
        $categories = DB::table('categories')->find(1);*/
        // 2 eloquent
        $categories = Category::all();
        /*$categories = Category::where('name', 'like', '%term%');
        $categories = Category::where('name', '=', 'John');
        $categories = Category::find(1);*/
	    //return view('category.index')->with('categories', $categories);
        //return view('category.index', ['categories' => $categories]);
        //return view('category.index',['categories' => $categories,'title' => 'Cat123']);
        //return view('category.index')->with('title', 'Cat12345');
        //return view('category.index');
        return view('category.index', ['categories' => $categories]);

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('category.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
			'name' => 'required|max:20|min:3',
		]);
		if ($validator->fails()) {
			return redirect('category/create')
            ->withInput()
            ->withErrors($validator);
		}

        // Create The Category
        $category = new Category;
        $category->name = $request->name;
        $category->desc = $request->input('desc');
        $category->save();
        Session::flash('category_create','Category is created!');
        return redirect('category/create');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $category = Category::find($id);
        return view('category.edit')->with('category', $category);
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
        $validator = Validator::make($request->all(), [
			'name' => 'required|max:20|min:3',
		]);
		if ($validator->fails()) {
			return redirect('category/' . $id . '/edit')
            ->withInput()
            ->withErrors($validator);
		}
		// Create The Category
		$category = Category::find($id);
		$category->name = $request->Input('name');
        $category->desc = $request->desc;
		$category->save();
		Session::flash('category_update','Category is Updated!');

		return redirect('category');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $category = Category::find($id);
    	$category->delete();
    	Session::flash('category_delete','Category is deleted');
    	return redirect('category');
    }
}
