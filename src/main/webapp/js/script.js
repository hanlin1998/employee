$(function() {
	$('#jobId').change(function() {
		if ($('#jobId').val() == 0) {
			$('#minSal').val(0);
			$('#maxSal').val(0);
		} else {
			$.ajax({
				async: true,
				type: 'get',
				url: $('#path').val() + '/job/selectByPrimaryKeyJson',
				dataType: 'json',
				data: { jobId: $('#jobId').val() },
				success: function(data) {
					$('#minSal').val(data.minSal);
					$('#maxSal').val(data.maxSal);
				},
				error: function(XMLHttpRequest) {
					alert(XMLHttpRequest.status);
				}
			});
		}
	});
});