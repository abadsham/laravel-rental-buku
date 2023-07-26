@extends('layout')

@section('title', 'Delete Book')

@section('content1')

<h1>Deleted Book List</h1>

<div class="mt-2 d-flex justify-content-end">
    <a href="books" class="btn btn-dark"><< Back to Book</a>
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
                    <th>Code</th>
                    <th>Title</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($deletedBooks as $item)
                <tr>
                    <td>{{ $loop->iteration }}</td>
                    <td>{{ $item->book_code }}</td>
                    <td>{{ $item->title }}</td>
                    <td>
                        <a href="book-restore/{{$item->slug}}" class="btn btn-secondary">Restore</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
</div>

@endsection