<div id="main-modal-content">
    <div class="modal-right">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <?php
          $ids = (!empty($creditcard->ids))? $creditcard->ids: '';
          if ($ids != "") {
            $url = cn($module."/ajax_update/$ids");
          }else{
            $url = cn($module."/ajax_update");
          }
        ?>
                <form class="form actionForm" action="<?=$url?>" data-redirect="<?=cn($module)?>" method="POST">
                    <div class="modal-header bg-pantone">
                        <h4 class="modal-title"><i class="fa fa-edit"></i> <?=lang("edit_creditcard")?></h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-body">
                            <div class="row justify-content-md-center">
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <label><?=lang('Name')?></label>
                                        <input type="text" class="form-control square" name="name"
                                            value="<?=(!empty($creditcard->name))? $creditcard->name: ''?>">
                                    </div>
                                </div>

                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <label><?=lang("Creditcard No")?></label>
                                        <input type="number" class="form-control square" name="creditcardno"
                                            value="<?=(!empty($creditcard->creditcardno))? $creditcard->creditcardno: ''?>">
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-4 col-xs-4">
                                    <div class="form-group">
                                        <label for="ccmonth"><?= lang("Month") ?></label>
                                        <select class="form-control" id="ccmonth" name="creditcard_month">
                                            <?php for ($i = 1; $i <= 12; $i++): ?>
                                            <?php if ($i < 10): ?>
                                            <option value="<?= '0'.$i ?>"
                                                <?= ($creditcard->month == '0'.$i ? 'selected' : '')?>><?= $i ?>
                                            </option>
                                            <?php else: ?>
                                            <option value="<?= $i ?>"
                                                <?= ($creditcard->month == $i ? 'selected' : '')?>><?= $i ?>
                                            </option>
                                            <?php endif ?>
                                            <?php endfor ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-4 col-xs-4">
                                    <div class="form-group">
                                        <label for="ccyear"><?= lang("year") ?></label>
                                        <select class="form-control" id="ccyear" name="creditcard_year"
                                            value=<?= $creditcard->year ?>>
                                            <?php for ($i = 0; $i <= 5; $i++): ?>
                                            <option value="<?= date("Y") + $i ?>"
                                                <?= $creditcard->year == date("Y") + $i ? 'selected' : '' ?>>
                                                <?= date("Y") + $i ?></option>
                                            <?php endfor ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-4 col-xs-4">
                                    <div class="form-group">
                                        <label for="cvv"><?= lang("cvv") ?></label>
                                        <input class="form-control" id="cvv" name="creditcard_cvv" type="text"
                                            placeholder="123">
                                    </div>
                                </div>
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <label><?=lang("Status")?></label>
                                        <select name="status" class="form-control square">
                                            <option value="1"
                                                <?=(!empty($creditcard->status) && $creditcard->status == 1) ? 'selected' : ''?>>
                                                <?=lang("Active")?></option>
                                            <option value="0"
                                                <?=(isset($creditcard->status) && $creditcard->status != 1) ? 'selected' : ''?>>
                                                <?=lang("Deactive")?></option>
                                        </select>
                                    </div>
                                </div>




                            </div>
                        </div>



                        <div class="modal-footer">
                            <button type="submit"
                                class="btn round btn-primary btn-min-width mr-1 mb-1"><?=lang("Submit")?></button>
                            <button type="button" class="btn round btn-default btn-min-width mr-1 mb-1"
                                data-dismiss="modal"><?=lang("Cancel")?></button>
                        </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
$(function() {
    $('.datepicker').datepicker({
        autoclose: true,
        startDate: truncateDate(new Date())
    });
    $(".datepicker").datepicker().datepicker("setDate", new Date());

    function truncateDate(date) {
        return new Date(date.getFullYear(), date.getMonth(), date.getDate());
    }
});
</script>

<script>
$(document).ready(function() {
    plugin_editor('.plugin_editor', {
        height: 200
    });
});
</script>