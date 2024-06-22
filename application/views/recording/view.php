<script type="text/javascript">

//data	 
$('#nomor').val('<?=@$data['recording_nomor']?>');
$('#tanggal').val('<?=@$data['recording_tanggal']?>');
$('#keterangan').val('<?=@$data['recording_keterangan']?>');
$('#populasi').val('<?=@$data['recording_populasi']?>');
$('#bobot').val('<?=@$data['recording_bobot']?>');
$('form').attr('action', '<?=base_url('recording/update/'.@$data['recording_id'])?>');

//index loop 
<?php $a = 1;?>
<?php $t = 1;?>
<?php $p = 1;?> 
<?php $o = 1;?>

<?php foreach ($barang_data as $v): ?>

	//telur
	<?php if($v['recording_barang_kategori'] == 'telur'): ?>

		<?php if($t - 0): ?>

			clone('telur');

		<?php endif ?>

	<?php $t++ ?>

	<?php endif ?>

	//pakan
	<?php if($v['recording_barang_kategori'] == 'pakan'): ?>

		<?php if($p - 0): ?>

			clone('pakan');

		<?php endif ?>

	<?php $p++ ?>

	<?php endif ?>

	//obat
	<?php if($v['recording_barang_kategori'] == 'obat'): ?>

		<?php if($o - 0): ?>

			clone('obat');

		<?php endif ?>

	<?php $o++ ?>

	<?php endif ?>

<?php endforeach ?>

//insert data
<?php $i_t = 0; ?>
<?php $i_p = 0; ?>
<?php $i_o = 0; ?>
<?php foreach(@$barang_data as  $key => $v): ?>

	//ayam
	<?php if($v['barang_kategori'] == 1): ?>
		
		$('.telur:eq(<?=$i_t?>)').val('<?=$v['recording_barang_barang']?>').change();
		$('.telur_jumlah:eq(<?=$i_t?>)').val('<?=$v['recording_barang_jumlah']?>');

		<?php $i_t++; ?>
	<?php endif ?>

	//pakan
	<?php if($v['barang_kategori'] == 2): ?>
		
		$('.pakan:eq(<?=$i_p?>)').val('<?=$v['recording_barang_barang']?>');
		$('.pakan_stok:eq(<?=$i_p?>)').val('<?=$v['recording_barang_stok']?>');
		$('.pakan_jumlah:eq(<?=$i_p?>)').val('<?=$v['recording_barang_jumlah']?>');
		$('.pakan_satuan').text('<?=$v['barang_satuan']?>');

		<?php $i_p++; ?>
	<?php endif ?>

	//obat
	<?php if($v['barang_kategori'] == 3): ?>
		
		$('.obat:eq(<?=$i_o?>)').val('<?=$v['recording_barang_barang']?>');
		$('.obat_stok:eq(<?=$i_o?>)').val('<?=$v['recording_barang_stok']?>');
		$('.obat_jumlah:eq(<?=$i_o?>)').val('<?=$v['recording_barang_jumlah']?>');
		$('.obat_satuan').text('<?=$v['barang_satuan']?>');

		<?php $i_o++; ?>
	<?php endif ?>

<?php endforeach ?>

if (!'<?=@$edit?>') {

	//button
	$('#submit').remove();
	$('#back').removeAttr('hidden');
	
	//off click
	$('.form-group, table').css('pointer-events', 'none');
}

</script>