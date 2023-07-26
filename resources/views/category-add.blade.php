@extends('layout')

@section('title', 'Add Category')

@section('content1')

<h1>Add New Category</h1>

<div class="mt-2 d-flex justify-content-end">
    <a href="categories" class="btn btn-dark"><< Back to Category</a>
</div>

<div class="mt-5 w-50">

    @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif

    <form action="category-add" method="post">
        @csrf
        <div>
            <label class="form-label" for="name">Name</label>
            <input class="form-control" type="text" name="name" id="name" placeholder="category name">
        </div>

        <div class="mt-3">
            <button class="btn btn-success" type="submit">Save</button>
        </div>
    </form>
</div>

@endsection