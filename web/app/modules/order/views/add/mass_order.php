
<div id="service_mass" class="table-responsive-sm">
<input type="hidden" id="massnumber" name="massnumber" value="0"?>
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
                    <select name="services_id_0"  id="services_option_0" class="chosen-select" data-url="<?=cn($module."/ajax_load_services")?>">
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
            <td style="padding-left: 0;"><input class="form-control mass-quantity" name="mass_quantity_0" /></td>
            <td><input class="form-control mass-service-link" name="mass_service_link_0" /></td>
            <td>
                <span>
                    <i class="fa fa-bars fa-2x text-primary" aria-hidden="true"></i>
                 </span>
            </td>
        </tr>
       
    </tbody>
  
    <tfoot>
        <tr>
            <th><strong>TOTAL</strong></th>
            <th></th>
            <th></th>
            <th></th>
        </tr>
        </thead>
</table>
</div>
<script src="<?=BASE?>assets/js/mindmup-editabletable.js"></script>
<script src="<?=BASE?>assets/js/numeric-input-example.js"></script>
<script>
//   var _action     = "<?php// echo cn($module.'/ajax_load_services'); ?>",
//   _token      = '<?php //echo strip_tags($this->security->get_csrf_hash()); ?>',
//   _data       = $.param({token:_token});
//   $.post(_action,_data,function(json){
//     console.log(JSON.parse(json))

// })
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
                    <select name="services_id_`+id+`"  id="services_option_`+id+`" class="chosen-select" data-url="<?=cn($module."/ajax_load_services")?>">
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
    tr += `<td style="padding-left: 0;"><input class="form-control mass-quantity" name="mass_quantity_`+id+`" /></td>
            <td><input class="form-control mass-service-link" name="mass_service_link_`+id+`" /></td>
    <td>
                <span><a id="actions_`+id+`" href="#">
                    <i class="fa fa-bars fa-2x text-primary" aria-hidden="true"></i></a>
                 </span>
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
    
  //  $("#services_option_"+id).trigger("chosen:open");
    //$("#services_option_"+id).val(val_select)
    //$("#services_option_"+id).trigger("chosen:close");
    //console.log($("#services_option_"+id).val())
    //$("#services_option_"+id).trigger("chosen:updated");
    // var $tableBody = $('#mainTable').find("tbody"),
    // $trLast = $tableBody.find("tr:last"),
    // $trNew = $trLast.clone();

    // $trLast.after($trNew);
    //$(".chosen-select").chosen({width: "95%"})
    //$('#mainTable tbody tr:last').after(tr);
}

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