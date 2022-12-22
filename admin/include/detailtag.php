
<?php 
        if(isset($_GET['data'])){
	      $id_tag = $_GET['data'];
        //get profil
        $sql = "SELECT `id_tag`, `tag` FROM `tag` WHERE `id_tag`='$id_tag'";
        //echo $sql;
        $query = mysqli_query($koneksi, $sql);
        while($data = mysqli_fetch_row($query)){
            $id_tag = $data[0];
          $tag = $data[1];
        
        }}
?>
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h3><i class="fas fa-user-tie"></i> Detail Data Tag</h3>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item"><a href="index.php?include=tag">Data Tag</a></li>
              <li class="breadcrumb-item active">Detail Data Tag</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
            <div class="card">
              <div class="card-header">
                <div class="card-tools">
                  <a href="index.php?include=tag" class="btn btn-sm btn-warning float-right">
                  <i class="fas fa-arrow-alt-circle-left"></i> Kembali</a>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table class="table table-bordered">
                    <tbody>  
                      <tr>
                        <td colspan="2"><i class="fas fa-user-circle"></i> <strong>Data Tag<strong></td>
                      </tr>                      
                      <tr>
                        <td width="20%"><strong>Tag<strong></td>
                        <td width="80%"><?php echo $tag;?></td>
                      </tr>                 
            
                    </tbody>
                  </table>  
              </div>
              <!-- /.card-body -->
              <div class="card-footer clearfix">&nbsp;</div>
            </div>
            <!-- /.card -->

    </section>
 
