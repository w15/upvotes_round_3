$(".item_<%= @upvote.item_id %> .new_upvote").remove();
$(".item_<%= @upvote.item_id %>").prepend("<%= j(render('destroy_upvote', upvote: @upvote)) %>");
