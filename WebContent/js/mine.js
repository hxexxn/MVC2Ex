$(function(){

	$('#bbsRegistBtn').click(function(){
		
		var boardRegistForm = $('#boardRegistForm');
		
		var bbsTitle = $('#bbsTitle').val();
		
		if (bbsTitle == null || bbsTitle.trim() == "") {
			alert('제목을 입력해주세요.');
			return;
		}
		
		var bbsContent = $('#bbsContent').val();
		
		if (bbsContent == null || bbsContent.trim() == "") {
			alert('제목을 입력해주세요.');
			return;
		}
		
		var bbsWriter = $('#bbsWriter').val();
		
		if (bbsWriter == null || bbsWriter.trim() == "") {
			alert('제목을 입력해주세요.');
			return;
		}
		
		boardRegistForm.submit();
		
	})


})