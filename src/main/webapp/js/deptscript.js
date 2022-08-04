$(function(){
	$('#department_id').blur(function() {
		$.ajax({
			async: true,
			type: 'get',
			url: $('#path').val() + '/SelectprimyKeyAjaxservlet',
			dataType: 'text',
			data: { department_id: $('#department_id').val() },
			success: function(data) {
				$('span[id="point"]').html(data);
			},
			error: function(XMLHttpRequest) {
				alert("部门编号为必填项");
			}
		});
	});
});
	