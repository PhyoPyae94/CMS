@extends('layouts.app')

@section('content')
    <div class="card card-default">
        <div class="card-header">
            <div class="card-body">
            @include('errors.error')
                <form action="#" method="POST">
                    @csrf
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" name="name" value="{{ $category->name }}">
                    </div>
                    <div class="form-group">
                        <button class="btn btn-success">Update Category</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection