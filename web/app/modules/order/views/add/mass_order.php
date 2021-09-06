
<div id="service_mass" class="table-responsive-sm">
<input type="hidden" id="massnumber" name="massnumber" value="0"?>
<input type="hidden" name="<?php echo $this->security->get_csrf_token_name();?>"
                        value="<?php echo $this->security->get_csrf_hash();?>">
<table id="mainTable" class="table table-striped">
    <thead>
        <tr>
            <th></th>
            <th>Id | Name</th>
            <th>Quantity</th>
            <th>Link</th>
        </tr>
    </thead>
  
    <tbody >
    
        <tr id="0">
            <td style="min-width: 80;padding-left:5px;">
                <span>
                <a id="add_0" href="javascript:addrow(0)" class="mass_add"><i id="addbtn" class="addbtn fa fa-plus-square fa-2x text-primary" aria-hidden="true" style="cursor: pointer;"></i></a>
                <a id="copy_0" href="javascript:copyrow(0)" class="mass_copy">    <i id="copybtn" class="copybtn fa fa-clone fa-2x text-primary" aria-hidden="true" style="cursor: pointer;"></i></a>
                </span>
            </td>
            <td style="padding-left: 0;">
            <div class="form-group result-services" id="result_services">
                    <select name="mass_order[0][0]"  id="services_option_0" class="chosen-select massChangeService" data-url="<?=cn($module."/ajax_load_services/")?>">
                      <option> <?=lang("choose_a_service")?></option>
                      <?php
                        if (!empty($massservice)) {
                          $service_item_default = $massservice[0];
                          foreach ($massservice as $key => $service) {
                      ?>
                      <option value="<?=$service->id?>" ><?=$service->name?></option>
                      <?php }}?>
                    </select>
                  </div>
            </td>
            <td style="padding-left: 0;"><input class="form-control mass-quantity" name="mass_order[0][1]"  id="quantity_0" data-toggle="tooltip" data-placement="top" title="Min:<?=$servicex->min?>,Max:<?=$servicex->max?>"/></td>
            <td><input class="form-control mass-service-link" name="mass_order[0][2]" /></td>
            <td>
            <div class="item-action dropdown">
                <a href="javascript:void(0)" data-toggle="dropdown" class="icon"><i class="fa fa-bars fa-2x text-primary" aria-hidden="true"></i></a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a href="javascript:delrow(0)" class="dropdown-item"><i class="dropdown-icon fe fe-trash"></i> <?=lang('Delete')?> </a>
                  </div>
                </div>
            </td>
        </tr>
       
    </tbody>
  
</table>
</div>
<script src="<?=BASE?>assets/js/mindmup-editabletable.js"></script>
<script src="<?=BASE?>assets/js/numeric-input-example.js"></script>
<script>
 
var t = 0;


function addrow(val){
 
    var id = parseInt($("#massnumber").val())+1
    
    var tr=`<tr id="`+id+`" class="mass_tr">
            <td style="min-width: 80;padding-left:5px;">
                <span>
                <a id="add_${id}" href="javascript:addrow(${id})" class="mass_add"><i id="addbtn" class="addbtn fa fa-plus-square fa-2x text-primary" aria-hidden="true" style="cursor: pointer;"></i></a>
                <a id="copy_${id}" href="javascript:copyrow(${id})" class="mass_copy">    <i id="copybtn" class="copybtn fa fa-clone fa-2x text-primary" aria-hidden="true" style="cursor: pointer;"></i></a>
                </span>
            </td>
    `
    tr += `
    <td style="padding-left: 0;">
            <div class="form-group result-services" id="result_services_`+id+`}">
                    <select name="mass_order[`+id+`][0]"  id="services_option_`+id+`" class="chosen-select massChangeService" data-url="<?=cn($module."/ajax_load_services/")?>">
                      <option> <?=lang("choose_a_service")?></option>
                      <?php
                        if (!empty($massservice)) {
                          $service_item_default = $massservice[0];
                          foreach ($massservice as $key => $service) {
                      ?>
                      <option value="<?=$service->id?>" ><?=$service->name?></option>
                      <?php }}?>
                    </select>
                  </div>
            </td>
    `
    tr += `<td style="padding-left: 0;"><input class="form-control mass-quantity" name="mass_order[`+id+`][1]" id="quantity_${id}" data-toggle="tooltip" data-placement="top" title="Min:,Max:"/></td>
            <td><input class="form-control mass-service-link" name="mass_order[`+id+`][2]" /></td>
    <td>
    <div class="item-action dropdown">
                <a href="javascript:void(0)" data-toggle="dropdown" class="icon"><i class="fa fa-bars fa-2x text-primary" aria-hidden="true"></i></a>
                <div class="dropdown-menu dropdown-menu-right">
                    <a href="javascript:delrow(`+id+`)" class="dropdown-item"><i class="dropdown-icon fe fe-trash"></i> <?=lang('Delete')?> </a>
                  </div>
                </div>
            </td>
    </tr>`
    $("#massnumber").prop('value',id)
    $('#mainTable tbody tr:last').after(tr);
    $(".chosen-select").chosen({width: "95%"})
}
 
function copyrow(val){
   
    
  
    var clone_id = parseInt(val)
    addrow(val);
    var val_select = $("#services_option_"+clone_id).find(":selected").val()
    var id = parseInt($("#massnumber").val())
    
   $(`#services_option_${id}`).val(val_select)
   $(`#services_option_${id}`).trigger("chosen:updated");
   //id_ = _that.closest('tr').attr('id')
   title =  $(`#quantity_${clone_id}`).attr("data-original-title")
  // console.log(title)
   $(`#quantity_${id}`).attr("title",title)
 
}
function delrow(id){
    //console.log(id)
    if(id>0){
    $(`#mainTable tbody tr#${id}`).remove();
    }
}

$(document).on("change", ".massChangeService" , function(){
            event.preventDefault();
            _that         = $(this);
            _id           = _that.val();
            _dripfeed     = _that.children("option:selected").data("dripfeed");
            _service_type = _that.children("option:selected").data("type");
            _action     = _that.data("url") + _id;
            _data       = $.param({token:token});
            $.post( _action, _data,function(_result){
               // $("#result_onChangeService").html(_result);
                result = JSON.parse(_result)
                id_ = _that.closest('tr').attr('id')

                $(`#quantity_${id_}`).attr("data-original-title", `Min:${result.service.min},Max:${result.service.max}`)
                $(`#quantity_${id_}`).attr("title", `Min:${result.service.min},Max:${result.service.max}`)
            })
        })


</script>
<style>
 
    .result-services{
        width: 350px !important;
    }
    .mass-quantity {
        width: 50px;
    }
    .mass-service-link{
        width:300px;
    }
</style>