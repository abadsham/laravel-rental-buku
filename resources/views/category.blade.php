@extends('layout')

@section('title', 'Category')

@section('content1')

<h1>Category List</h1>

<div class="mt-2 d-flex justify-content-end">
    <a href="category-deleted" class="btn btn-dark me-1"><< View Deleted Data</a>
    <a href="category-add" class="btn btn-success">+ Add Data</a>
</div>

<div class="mt-3">
    @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
    @endif
</div>

<div class="mt-5">
    <table class="table ms-3">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Name</th>
                    <th width="15%">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($categories as $item)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $item->name }}</td>
                    <td>
                        <a href="category-edit/{{$item->slug}}" class="btn btn-warning">Edit</a>
                        <a href="category-delete/{{$item->slug}}" class="btn btn-danger">Delete</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
</div>

@endsection