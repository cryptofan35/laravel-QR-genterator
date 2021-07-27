
@extends('backLayout.app')
@section('title')
Login
@stop

@section('style')

@stop
@section('content')

<div class="row tile_count">
<h1>QR codes</h1>
<br />
<div class="container">
<table class="table table-bordered table-striped table-hover" id="tblUsers">
    <thead>
        <tr>

            <th>ID</th>
            <th>First name</th>
            <th>Last name</th>
            <th>E-mail</th>
            <th>user Role</th>
            <th>Created At</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>

            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
    </tbody>
</table>
</div>
</div>

@endsection

@section('scripts')


@endsection