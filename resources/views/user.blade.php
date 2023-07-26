@extends('layout')

@section('title', 'User List')

@section('content1')

<h1>User List</h1>    

<div class="mt-2 d-flex justify-content-end">
    <a href="/user-banned" class="btn btn-dark me-2">View Banned Data</a>
    <a href="/registered-user" class="btn btn-primary">New Registered User</a>
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
                <th width="20%">Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($users as $item)
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
                    <a href="/user-detail/{{ $item->slug }}" class="btn btn-secondary">detail</a>
                    <a href="/user-ban/{{ $item->slug }}" class="btn btn-success">ban user</a>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>

@endsection