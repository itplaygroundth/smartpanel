 
<div class="modal fade" id="serviceModal" tabindex="-1" role="dialog" aria-labelledby="serviceModalTitle" aria-hidden="true">

    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="serviceModalTitle">Post Choose</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <!-- <span aria-hidden="true">&times;</span> -->
                        </button>
            </div>
            <div class="modal-body">
                <section id="landing-services-likes" class="service-section">
                    <div class="service-section">
                        <form id="inline-form" method="post" action="/">
                            <div class="form-inline">
                                <input type="hidden" name="<?php echo $this->security->get_csrf_token_name(); ?>" value="<?php echo $this->security->get_csrf_hash(); ?>">
                                <input name='url_path' type="hidden" />
                                <div class="form-group mx-sm-3 mb-2">
                                    <label for="inputUsername" class="sr-only">Username</label>
                                    <input type="text" class="form-control" name="username" id="inputUsername" placeholder="Username">
                                </div>
                                <button type="submit" id="btn_load" class="btn btn-primary mb-2">show post</button>
                            </div>
                        </form>
                        <div class="inner">
                            <div id="service-illustration" >
                            <section id="post-list" class="post-list">
                               
                            </section>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <div class="modal-footer">
                <!-- <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> -->
                <button type="button" class="btn btn-primary" data-dismiss="modal">Save changes</button>
            </div>
        </div>
    </div>
</div>

<script>
     $(function() {
    var url_path = "";
    var mediatype = "";
    $("select[name='category_id']").on('change', function() {

        var category = ['tiktok', 'instagram', 'facebook', 'youtube', 'twitter'].filter((el, index, array) => {
            if ($("select[name='category_id'] option").filter(':selected').text().toLowerCase().includes(
                    el))
                return el
        })
        
        if (category.length > 0) {
            $("#modal_view").prop('disabled', false)

            url_path = 'RAPID_' + category[0].toUpperCase()
            mediatype = category[0].toUpperCase()
            $("input[name='url_path'").prop("value", url_path)

        } else {
            $("#modal_view").prop('disabled', true)
            mediatype = ""
        }
        
         var _action = "<?php echo cn('order/getdata') ?>",
             _token = '<?php echo strip_tags($this->security->get_csrf_hash()); ?>',
             _data = $.param({
                         token: _token,
                         category_id: $("select[name='category_id'] option").filter(':selected').val()
                     })
                    $.post(_action, _data, function(_result) {
                     var response =  JSON.parse(_result);
                     var btn = JSON.parse(response.data);
                     if(btn!=null){
                     $("#modal_view").prop('value',btn.text_btn)
                     }
                     //console.log(response.data.replace(/\\/g,""));
                    //  response.data.forEach((element) =>  {
                    //     console.log(element)
                    //  })
                    })
                
    })
    function addlink(url){

        var category = ['tiktok', 'instagram', 'facebook', 'youtube', 'twitter'].filter((el, index, array) => {
            if ($("select[name='category_id'] option").filter(':selected').text().toLowerCase().includes(el))
                return el
        })
        switch(category){
            case 'instagram':
                url='https://www.'+category+'.com/p/'+url
                break;
            case 'tiktok':
                break;
                
        
        }
        
        $("input[name='link']").prop('value',url);
        $("input[name='username']").prop('value','')
        $("#post-list").prop('html','')
       // $('#serviceModal').modal('hide');

    }
    $("#btn_load").on('click', function() {
                event.preventDefault();
                var _action = "<?php echo cn(); ?>" + "rapid/" + mediatype.toLocaleLowerCase() + '/getaccount',
                    _token = '<?php echo strip_tags($this->security->get_csrf_hash()); ?>',
                    _data = $.param({
                        token: _token,
                        url_path: $("input[name='url_path']").val()==''?'':$("input[name='url_path']").val(),
                        user_name: $("input[name='username']").val()==''?'':$("input[name='username']").val()
                    });
                $.post(_action, _data, function(_result) {
                     var response =  JSON.parse(_result);
                     response.data.forEach((element) =>  {
                       
                        // $("#likes-posts-illustration").append(`<div class="tl post"><img  id="views-post-tl-canvas-`+element.id+`" src="`+element.thumbnail_src+`" size=150 /><option value="`+element.shortcode+`"></option></div>`)
                         $("#post-list").append(`<a href="javascript:addlink('`+element.shortcode+`')" class="post" >
                            <figure class="post-image">
                            <img src="`+element.thumbnail_src+`" alt="">
                            </figure>
                            <span class="post-overlay">
                            <p>
                                <span class="post-likes"></span>
                                <span class="post-comments"></span>
                            </p>
                            </span>
                        </a>`)
  
                      })
                       
                    })
                    //var _result= JSON.parse(_result)
                    //console.log(_result)
    });
   
       
      });
</script>
<style>
    
 
.post-list {
  display: grid;
  grid-template-columns: repeat(3, minmax(100px, 293px));
  justify-content: center;
  grid-gap: 8px;
  padding-top: 5px;
}
.post {
  cursor: pointer;
  position: relative;
  display: block;
}
.post-image {
  margin: 0;
}
.post-image img {
  width: 100%;
  vertical-align: top;
}
.post-overlay {
  background: rgba(0,0,0, .4);
  position: absolute;
  left: 0;
  right: 0;
  bottom: 0;
  top: 0;
  display: none;
  align-items: center;
  justify-content: center;
  color: white;
  text-align: center;
}
.post:hover .post-overlay{
			display: flex;
}

.post:target .post-overlay{
    display: flex;
}

.post-like,
.post-comments {
  width: 80px;
  margin: 5px;
  font-weight: bold;
  text-align: center;
  display: inline-block;
}

@media screen and (max-width: 768px) {
  .post-list {
    grid-gap: 3px;
  }
}
</style>