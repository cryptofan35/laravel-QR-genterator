
@extends('backLayout.app')
@section('title')
Login
@stop

@section('style')

@stop
@section('content')

<div class="tile_count">
<h1>QR codes</h1>
<br />
<div class="container" style="position: static; overflow: scroll; padding: 0px;">
    <table class="table table-bordered table-striped table-hover" id="tblUsers">
        <thead>
            <tr>

                <th class="text-center">No</th>
                <th class="text-center">QR Code</th>
            </tr>
        </thead>
        <tbody>
            @foreach($qr_infos as $i => $qr_info)
                <tr>
                    <td class="text-center col-lg-1">{{$i+1}}</td>
                    <td class="text-left col-lg-11">{{$qr_info->qr_id}};{{$qr_info->qr_value}}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
</div>

@endsection

@section('scripts')


@endsection