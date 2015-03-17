$(".item_<%= @upvote.item_id %> .new_upvote").remove();
$(".item_<%= @upvote.item_id %>").prepend("test");
