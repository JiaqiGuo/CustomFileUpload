(function(){$.fn.extend({customFileUpload:function(){return this.each(function(){var t;return t=$(this),$(this).append($("<div/>").attr("class","customFileUploadNativeInputWrapper")),$(this).append($("<div/>").attr("class","customFileUploadCustomInputWrapper")),$(this).find(".customFileUploadNativeInputWrapper").append($("<input/>").attr("type","file").attr("name","someName")),$(this).find(".customFileUploadCustomInputWrapper").append($("<img/>").attr("class","customFileUploadCustomInputImgViewer").attr("src","/upload.png")),$(this).find(".customFileUploadCustomInputWrapper").append($("<div/>").attr("class","customFileUploadCustomInputFileName")),$(this).find(".customFileUploadCustomInputFileName").append($("<div/>").attr("class","customFileUploadCustomInputFileNameTextWrapper")),$(this).find(".customFileUploadCustomInputFileNameTextWrapper").append($("<div/>").attr("class","customFileUploadCustomInputFileNameTextWrapperInner")),$(this).find(".customFileUploadCustomInputFileNameTextWrapperInner").text("Select your file..."),$(this).find(".customFileUploadNativeInputWrapper input").change(function(e){var a,p,i;return p=URL.createObjectURL(e.target.files[0]),a=e.target.files[0].name.substr(e.target.files[0].name.lastIndexOf(".")+1),i=["png","jpg","bmp","jpeg","gif"],i.includes(a)&&t.find(".customFileUploadCustomInputImgViewer").attr("src",p),t.find(".customFileUploadCustomInputFileNameTextWrapperInner").text(e.target.files[0].name)})})}})}).call(this);