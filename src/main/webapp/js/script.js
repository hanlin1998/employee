$(function() {
	$('#job_id').change(function() {
		if ($('#job_id').val() == 0) {
			$('#min_salary').val(0);
			$('#max_salary').val(0);
		} else {
			$.ajax({
				async: true,
				type: 'get',
				url: $('#path').val() + '/SelectJobByIdServlet',
				dataType: 'json',
				data: { job_id: $('#job_id').val() },
				success: function(data) {
					$('#min_salary').val(data.minSal);
					$('#max_salary').val(data.maxSal);
				},
				error: function(XMLHttpRequest) {
					alert(XMLHttpRequest.status);
				}
			});
		}
	});
});