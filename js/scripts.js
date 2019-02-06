$(document).ready(function() {

	$.ajax({
        url: "http://localhost:88/api/menuCategories",
    }).done(function(data) {
    	var navbarMenu = "<a class='nav-link dropdown-toggle' href='#' id='navbarDropdown' role='button' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>Menu</a>";
			navbarMenu += "<div class='dropdown-menu' aria-labelledby='navbarDropdown'>";
			    for(var i=0; i<data.length; i++) {
			       	var items = data[i];
			       	navbarMenu += "<a href='"+items.code+".html?i="+items.id+"' class='dropdown-item' id='"+items.id+"'>"+items.name+"</a>";
			    }
			navbarMenu += "</div>";	
		$('#navbar-menu').html(navbarMenu);
    });

	var loadMenu = function(itemId) {
		$.ajax({
			url: "http://localhost:88/api/menuCategory/" + itemId,
		}).done(function(data) {
			var htmlBody = "<div class='row'>";
				for(var b=0; b<data.length; b++) {
					var items = data[b];
					htmlBody += "<div class='col-lg-6 padding-5'>";
					htmlBody += "	<div class='row'>";
					htmlBody += "		<div class='col-lg-6'>";
					htmlBody += "			<img src='img/default_img.jpg' />";
					htmlBody += "		</div>";

					htmlBody += "		<div class='col-lg-6'>";
					htmlBody += "			<div class='row padding-10'>";
					htmlBody += "				<div class='col-lg-12 menu-header'>";
					htmlBody += "					<p>"+items.name+"</p>";
					htmlBody += "				</div>";
					htmlBody += "			</div>";

					htmlBody += "			<div class='row padding-10'>";
					htmlBody += "				<div class='col-lg-6 menu-price'>";
					htmlBody += "					<p>Php "+items.price+"</p>";
					htmlBody += "				</div>";
					htmlBody += "				<div class='col-lg-6'>";
					htmlBody += "					<p><a href='order.html?i="+items.id+"' class='btn btn-outline-primary btn-block'>Order</a></p>";
					htmlBody += "				</div>";
					htmlBody += "			</div>";

					htmlBody += "		</div>";
					htmlBody += "	</div>";
					htmlBody += "</div>";
				}
				htmlBody += "</div>";
			$('#listMenu').html(htmlBody);
		});
	}

    var p = window.location.search.substring(1).split('=');
	(p[1] === undefined) ? '' : loadMenu(p[1])

	


 	//    var loadMenu = function(itemId) {
	// 	$.ajax({
	// 		url: "http://localhost:88/api/menu/" + itemId,
	// 	}).done(function(data) {
	// 		if(data.length > 0) {
	// 			var subMenu = "<ul>";

	// 				for(var m=0; m<data.length; m++) {
	// 					subMenu += "<li>";
	// 					subMenu += "<a href=''>"+data[m].name+"</a>";
	// 					subMenu += "</li>";
	// 				}

	// 				subMenu += "</ul>";
	// 		}

	// 		$('#'+itemId).append(subMenu);
	// 	});
	// }
});