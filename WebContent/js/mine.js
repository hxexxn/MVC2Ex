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
	
	$('#boardModiBtn').click(function(){

		var boardModiForm = $('#boardModiForm');
		
		var bTitle = $('#bTitle').val();
		var bContent = $('#bContent').val();
		
		if (bTitle == "" || bContent == "" ) {
			alert('제목과 내용을 모두 적어주셔야 합니다.');
			return;
		}
		
		boardModiForm.submit();
		
	})
	
	


})