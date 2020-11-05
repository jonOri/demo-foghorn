$( document ).ready(function() {
	$.getJSON("/cgi-bin/orienv.pl", function(data) {
		$.each(data, function(key, val) {
			$("#content").append("<p>" + key + " : \"" + val + "\"");
		});
	});
});
