$('form#add_comment').on('submit', function(event){
    event.preventDefault();
    var $target = $(event.target);
    $.ajax({url: $target.attr('action'),
           method: 'post',
           data: $target.serialize(),
           dataType: 'html'
    }).done(function(data){
      // I want to go up to comment_list sibling and append the new comment.
      $('#comment_list').append(data)
      $('#add_comment').trigger('reset');
  });
});
// function refreshPartial() {
//   $.ajax({
//     url: ''
//   });
//   setTimeout(refreshPartial, 5000);
// }

// $(document).ready(function() {
//   setTimeout(refreshPartial, 5000);
// });