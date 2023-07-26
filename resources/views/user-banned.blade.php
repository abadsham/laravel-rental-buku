@extends('layout')

@section('title', 'User Banned')

@section('content1')

<h1>Banned User List</h1>    

<div class="mt-2 d-flex justify-content-end">
    <a href="/users" class="btn btn-secondary ms-2"><< Back to User List</a>
</div>

<div class="mt-3">
    @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
    @endif
</div>

<div class="mt-5">
    <table class="table ms-1">
        <thead>
            <tr>
                <th>No.</th>
                <th>Username</th>
                <th>Phone</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($bannedUser as $item)
            <tr>
                <td>{{ $loop->iteration }}</td>
                <td>{{ $item->username }}</td>
                <td>
                    @if ($item->phone)
                        {{ $item->phone }}
                    @else
                        --
                    @endif    
                </td>
                <td>
                    <a href="/user-restore/{{ $item->slug }}" class="btn btn-success">restore</a>
                    {{-- <a href="/user-ban/{{ $item->slug }}" class="btn btn-success">ban user</a> --}}
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>

@endsection