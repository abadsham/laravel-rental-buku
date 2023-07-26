@extends('layout')

@section('title', 'Book List')

@section('content1')

<h1>Books List</h1>

<form action="" method="get">
    <div class="mt-3 row">
        <div class="col-12 col-sm-6">
            <select name="category" id="category" class="form-control mt-3">
                <option value="">Select Category</option>
                @foreach ($categories as $item)
                <option value="{{ $item->id }}">{{ $item->name }}</option>
                @endforeach
            </select>
        </div>
        <div class="col-12 col-sm-6">
            <div class="input-group mt-3">
            <input type="text" name="title" class="form-control" placeholder="search book's title">
            <button class="btn btn-primary" type="submit">search</button>
            </div>
        </div>
    </div>
</form>

<div class="mt-5 ms-5">
    <div class="row">
        @foreach ($books as $item)
            <div class="col-lg-3 col-md-4 col-sm-6 mb-4">
                <div class="card h-75 w-75 shadow">
                    <div class="h-100">
                        <img class="card-img-top h-100 " src="{{ $item->cover != '' ? asset('storage/cover/'.$item->cover) : asset('storage/cover/img-notfound.png')}}" draggable="false">
                        <div class="card-body">
                        <h5 class="card-title">{{ $item->book_code }}</h5>
                        <p class="card-text">{{ $item->title }}</p>
                        <p class="text-end fw-bold {{ $item->status == 'in stock' ? 'text-success' : 'text-danger' }}">
                            {{ $item->status }}
                        </p>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>

@endsection