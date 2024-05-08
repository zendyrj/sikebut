<div class="modal fade" id="modal-default">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Persetujuan kgb Pegawai</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                @forelse($detkgb as $index => $detkgb)
                    <script>
                        $("#modal-default").modal('show');
                        document.getElementById('myIframeRekom').setAttribute('src', '');
                        var url =
                            "{{ url('/kgb/cetak-sk/') }}/{{ $detkgb->kgb_id }}#toolbar=1&navpanes=0&statusbar=1&view=Fit;readonly=false&embedded=true; disableprint=false";
                        document.getElementById("myIframeRekom").setAttribute("src", url);
                    </script>
                    <iframe id="myIframeRekom" style="width:100%; height:800px;" frameborder="0"></iframe>
                @empty
                @endforelse
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default float-right" data-dismiss="modal">Close</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<script>
    $("#modal-default").modal('show');
</script>
