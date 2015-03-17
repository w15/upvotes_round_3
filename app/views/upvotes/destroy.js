$(".item_<%= @item_id %> .destroy-upvote").remove();
$(".item_<%= @item_id %>").prepend("<%= j(render('new_upvote', user_id: @user_id, item_id: @item_id)) %>");
