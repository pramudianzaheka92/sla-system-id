<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">


	<!-- Main content -->
	<section class="content">
		<div class="container-fluid">
			<div class="row">
				<!-- left column -->
				<div class="col-lg-6 col-6">
					<!-- small box -->
					<div class="small-box bg-info">
						<div class="inner">
							<div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $jumDokumenDiproses;?></div>
							<p>Jumlah Dokumen Diproses</p>
						</div>
						<div class="icon">
							<i class="fa fa-file"></i>
						</div>
						<a href="<?php echo site_url('DokumenDiproses/read')?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
					</div>
				</div>
                <div class="col-lg-6 col-6">
					<!-- small box -->
					<div class="small-box bg-info">
						<div class="inner">
							<div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $jumDokumenSelesai;?></div>
							<p>Jumlah Dokumen Selesai</p>
						</div>
						<div class="icon">
							<i class="fa fa-file"></i>
						</div>
						<a href="<?php echo site_url('DokumenSelesai/read')?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
