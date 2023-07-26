@extends('layout')

@section('title', 'New Registered User')

@section('content1')

<h1>New Registered User</h1>

<div class="mt-2 d-flex justify-content-end">
    <a href="/users" class="btn btn-primary"><< User List</a>
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
            @foreach ($registeredUsers as $item)
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
                    <a href="/user-detail/{{ $item->slug }}" class="btn btn-secondary">Detail</a>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
</div>

@endsection