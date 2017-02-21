
window.onload = function() {
    document.body.onclick = function(event) {
        t=event.target; //||event.srcElement
        if(t.getAttribute('id') == null){
            t = t.parentElement;
        }
        var id = t.getAttribute('id');
        if (id){
            console.log(t.getAttribute('id'));
            $.ajax({
                url: 'blog/hits',
                type: 'post',
                data:  {
                    id: id,
                    ajax_hits: true
                },
                success: function (data) {
                    console.log(data);
                },
                error: function (msg) {
                    console.log('ajax has failed to work!');
                }
            });
        }

    }
}