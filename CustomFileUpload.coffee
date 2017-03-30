
$.fn.extend
	customFileUpload: ->

		return @each () ->
		   el = $(this)
		   $(this).append($("<div/>").attr("class","customFileUploadNativeInputWrapper"))
		   $(this).append($("<div/>").attr("class","customFileUploadCustomInputWrapper"))
		   $(this).find(".customFileUploadNativeInputWrapper").append($('<input/>').attr('type', 'file').attr('name', 'someName'))
		   $(this).find(".customFileUploadCustomInputWrapper").append($("<img/>").attr("class","customFileUploadCustomInputImgViewer").attr("src","/upload.png"))
		   $(this).find(".customFileUploadCustomInputWrapper").append($("<div/>").attr("class","customFileUploadCustomInputFileName"))
		   $(this).find(".customFileUploadCustomInputFileName").append($("<div/>").attr("class","customFileUploadCustomInputFileNameTextWrapper"))
		   $(this).find(".customFileUploadCustomInputFileNameTextWrapper").append($("<div/>").attr("class","customFileUploadCustomInputFileNameTextWrapperInner"))
		   $(this).find(".customFileUploadCustomInputFileNameTextWrapperInner").text('Select your file...')
		   $(this).find(".customFileUploadNativeInputWrapper input").change (e) ->
		     tmppath = URL.createObjectURL(e.target.files[0])
		     fileNameExt = e.target.files[0].name.substr(e.target.files[0].name.lastIndexOf('.') + 1)
		     validImgExt = ["png","jpg","bmp","jpeg","gif"]
		     if validImgExt.includes fileNameExt
		       el.find(".customFileUploadCustomInputImgViewer").attr("src",tmppath)
		     el.find(".customFileUploadCustomInputFileNameTextWrapperInner").text(e.target.files[0].name)


