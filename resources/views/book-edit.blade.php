@extends('layout')

@section('title', 'Book Edit')

@section('content1')
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />

<h1>Edit Book</h1>

{{-- <div class="mt-2 d-flex justify-content-end">
    <a href="book" class="btn btn-dark"><< Back to Book</a>
</div> --}}

<div class="mt-4 w-50">

    @if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
    @endif

    <form action="book-add" method="post" enctype="multipart/form-data">
        @csrf
        <div class="mb-3">
            <label class="form-label" for="book_code">Code</label>
            <input class="form-control" type="text" name="book_code" id="code" placeholder="Book's Code" value="{{ $book->book_code }}">
        </div>
        <div class="mb-3">
            <label class="form-label" for="title">Title</label>
            <input class="form-control" type="text" name="title" id="title" placeholder="Book's Title" value="{{ $book->title }}">
        </div>
        <div class="mb-3">
            <label class="form-label" for="image">Image</label>
            <input class="form-control" type="file" name="image">
        </div>

        <div class="mb-3">
            <label class="form-label" for="currentImage">Current Image</label>
            <div class="my-2">
                @if ($book->cover != '')
                    <img width="300px" src="{{ asset('storage/cover'.$book->cover )}}">
                @else
                    <img width="300px" style="display: block;" src="{{ asset('image/img-notfound.png') }}">
                @endif
            </div>
        </div>

        <div class="mb-3">
            <Label class="form-label" for="category">Category</Label>
            <select name="categories[]" id="category" class="form-control select-multiple" multiple>
                @foreach ($categories as $item)
                <option value="{{ $item->id }}">{{ $item->name }}</option>
                @endforeach
            </select>
        </div>
        
        <div class="mb-3">
            <label for="currentCategory">Current Category</label>
            <ul>
                @foreach ($book->categories as $category)
                <li>{{ $category->name }}</li>
                @endforeach
            </ul>
        </div>

        <div>
            <button class="btn btn-success" type="submit">Save</button>
        </div>
    </form>
</div>


<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
<script>
    $(document).ready(function() {
        $('.select-multiple').select2();
    });
</script>
@endsection