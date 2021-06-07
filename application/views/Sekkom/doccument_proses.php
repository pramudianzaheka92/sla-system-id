<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h4><b>Dokumen Diproses</b></h4>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <div class="content">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h5 class="card-title"><b>Daftar dokumen yang telah selesai proses</b></h5>
              </div>
              <div class="card-body">
                <table class="table table-striped" id="datatables" width="100%" data-page-length='5' data-length-change='false'>
                  <thead>
                    <tr class="bg-table">
                      <th scope="col">No</th>
                      <th scope="col">No Dokumen</th>
                      <th scope="col">Nama Dokumen</th>
                      <th scope="col">Nama Debitur</th>
                      <th scope="col">Status</th>
                      <th scope="col">Posisi</th>
                      <th scope="col">Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th scope="row">1</th>
                      <td>OPK/MAK/001</td>
                      <td>Dokumen Kredit</td>
                      <td>PT. Djarum</td>
                      <td>Pembuatan SKK</td>
                      <td>Dodi (Analyst)</td>
                      <td>
                        <a href="#" class="btn btn-green">
                          Lihat Detail
                        </a>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- /.content -->
</div>
<script>
    $('#datatables').DataTable( {
        language: {
            searchPlaceholder: "Cari Dokumen"
        }
    });
</script>