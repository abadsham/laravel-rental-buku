@extends('layout')

@section('title', 'Dashboard')

@section('content1')

<h1>Welcome, {{ Auth::user()->username }}!</h1>

<div class="row">
    <div class="col-lg-4">
        <div class="card-data book">
            <div class="row d-flex ">
                <div class="col-6"><i class="bi bi-journal-bookmark"></i></div>
                <div class="col-6 d-flex flex-column justify-content-center align-items-end">
                    <div class="card-desc">Books</div>
                    <div class="card-count">{{ $book_count }}</div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-4">
        <div class="card-data category">
            <div class="row d-flex ">
                <div class="col-6"><i class="bi bi-list-check"></i></div>
                <div class="col-6 d-flex flex-column justify-content-center align-items-end">
                    <div class="card-desc">Categories</div>
                    <div class="card-count">{{ $category_count }}</div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-lg-4">
        <div class="card-data user">
            <div class="row d-flex ">
                <div class="col-6"><i class="bi bi-people"></i></div>
                <div class="col-6 d-flex flex-column justify-content-center align-items-end">
                    <div class="card-desc">Users</div>
                    <div class="card-count">{{ $user_count }}</div>
                </div>
            </div>
        </div>
    </div>       
</div>
<div class="mt-5">
    <h3 class="pb-3">#Rent Log</h2>

    <thead>
        <table class="table">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Name</th>
                    <th>Book</th>
                    <th>Rent Date</th>
                    <th>Return Date</th>
                    <th>Actual Return Date</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td colspan="7" style="text-align: center;">No Data</td>
                </tr>
            </tbody>
        </table>
    </thead>
</div>


@endsection
