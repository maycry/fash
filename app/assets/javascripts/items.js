$(function() {
	var field_picture = $('#item_picture');
	var img_picture   = $('.item-picture');
	var field_name    = $('#item_shop');

	field_picture.keypress(function(){
		img_picture.attr("src", field_picture.val());
	});

	field_picture.bind('paste', function(e) {
    var el = $(this);
    setTimeout(function() {
      var text = $(el).val();
      text = text.split("?").slice(0,1).join("");
      field_picture.val(text)
  		img_picture.attr("src", text );
  		field_name.val(text.match(/:\/\/(.[^/]+)/)[1])
    }, 100);
	});

});