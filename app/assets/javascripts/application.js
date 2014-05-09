// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require allPages
//= require dataTables/jquery.dataTables
//= require dataTables/jquery.dataTables.bootstrap
//= require jquery-ui
//= require jquery-ui-timepicker-addon.js
//= require jquery.tokeninput

$(document).ready(
  function() {
  $("#persona_establecimiento_tokens").tokenInput("/soft/censo-adr/establecimientos.json", {
		crossDomain: false,
		searchingText: "Buscando...",
		hintText: "Escriba para buscar establecimientos",
		tokenLimit: 20,
    	minChars: 1,
		noResultsText: "No se han encontrado resultados",
		prePopulate: $("#persona_establecimiento_tokens").data("pre"),
		theme: "facebook"
		
	});
   
});
