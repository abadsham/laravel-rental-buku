@extends('layout')

@section('title', 'Delete User')

@section('content1')

<div class="card w-75" style="margin: auto;">
    <div class=" card-body border border-1 border-success rounded shadow-lg">
        <h3 class="py-3 text-center">Are you sure to delete Category {{ $user->username }} ?</h3>
        <div class="d-flex justify-content-center">
            <a href="/user-destroy/{{$user->slug}}" class="btn btn-danger px-lg-5 m-2">Yes</a>
            <a href="/users" class="btn btn-primary px-lg-5 m-2">No</a>
        </div>
    </div>
</div>
@endsection