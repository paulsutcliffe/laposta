// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function() {
  $("#posts th a, #posts .pagination a").live("click", function() {
    $.getScript(this.href);
    return false;
  });
  $("#posts_search input").keyup(function() {
    $.get($("#posts_search").attr("action"), $("#posts_search").serialize(), null, "script");
    return false;
  });
});
