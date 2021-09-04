
<h3>Services List</h3>
<table id="mainTable" class="table table-striped">
    <thead>
        <tr>
            <th></th>
            <th>Id</th>
            <th>Quantity</th>
            <th>Link</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>+</td>
            <td>
            <div class="form-group result-services" id="result_services">
                    <select name="service_id"  id="service_option" class="chosen-select" data-url="<?=cn($module."/get_service/")?>">
                      <option> <?=lang("choose_a_service")?></option>
                      <?php
                        if (!empty($services)) {
                          $service_item_default = $services[0];
                          foreach ($services as $key => $service) {
                      ?>
                      <option value="<?=$service->id?>" ><?=$service->name?></option>
                      <?php }}?>
                    </select>
                  </div>
            </td>
            <td><input class="form-control mass-quantity" name="mass_quantity_1" /></td>
            <td><input class="form-control mass-service-link" name="mass_service_link_1" /></td>
            <td>action</td>
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
<script src="<?=BASE?>assets/js/mindmup-editabletable.js"></script>
<script src="<?=BASE?>assets/js/numeric-input-example.js"></script>
<script>
// $('#mainTable').editableTableWidget();

//  window.prettyPrint && prettyPrint();
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