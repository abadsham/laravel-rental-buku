@extends('layout')

@section('title', 'User List')

@section('content1')

<h1>Detail User list</h1>

<div class="mt-2 d-flex justify-content-end">
    @if ($user->status == 'inactive')
        <a href="/user-approve/{{ $user->slug }}" class="btn btn-success">Approve List</a>
    @endif
    <a href="/users" class="btn btn-secondary ms-2"><< Back to User List</a>
</div>

<div class="mt-3">
    @if (session('status'))
        <div class="alert alert-success">
            {{ session('status') }}
        </div>
    @endif
</div>

<div class="mt-3 w-50">
    <div class="mb-3">
        <label for="" class="form-label mb-2">Username</label>
        <input type="text" readonly class="form-control" value="{{ $user->username }}">
    </div>
    <div class="mb-3">
        <label for="" class="form-label mb-2">Phone</label>
        <input type="text" readonly class="form-control" value="{{ $user->phone }}">
    </div>
    <div class="mb-3">
        <label for="" class="form-label mb-2">Address</label>
        <textarea cols="20" rows="3" readonly class="form-control" style="resize:none; ">{{ $user->address }}</textarea>
    </div>
    <div class="mb-3">
        <label for="" class="form-label mb-2">Status</label>
        <input type="text" readonly class="form-control" value="{{ $user->status }}">
    </div>
</div>

@endsection