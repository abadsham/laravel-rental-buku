@extends('layout')

@section('title', 'Delete Category')

@section('content1')

<h1>Deleted Category List</h1>

<div class="mt-2 d-flex justify-content-end">
    <a href="categories" class="btn btn-dark"><< Back to Category</a>
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
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($deletedCategories as $item)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $item->name }}</td>
                    <td>
                        <a href="category-restore/{{$item->slug}}" class="btn btn-secondary">Restore</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
</div>

@endsection