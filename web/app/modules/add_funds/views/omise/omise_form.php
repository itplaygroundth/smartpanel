<section class="add-funds m-t-30">
    <div class="container-fluid">
        <div class="row justify-content-md-center" id="result_ajaxSearch">
            <div class="col-md-5">
                <div class="page-header">
                    <h1 class="page-title">

                        <a href="<?=cn("creditcard/update")?>" class="ajaxModal"><span class="add-new"
                                data-toggle="tooltip" data-placement="bottom" title="<?=lang("add_new")?>"
                                data-original-title="Add new"><i class="fa fa-plus-square text-primary"
                                    aria-hidden="true"></i></span></a>

                        <?=lang("Credit Card")?>
                    </h1>
                </div>
                <script type="text/javascript" src="https://cdn.omise.co/omise.js" data-key="<?= $omise_key ?>"
                    data-image="" data-frame-label="Merchant site name" data-button-label="Pay now"
                    data-submit-label="Submit" data-location="no" data-amount="<?=$amount?>"
                    data-currency="<?= $currency ?>">
                </script>
                <form id="paymentFrm" method="post" action="<?=cn($module."/omise/create_payment")?>">
                    <div class="card">
                        <div class="card-header d-flex align-items-center">
                            <h3 class="card-title"> <?=lang("Select Credit card ")?></h3>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <?php foreach ($creditcards as $key => $row) { ?>
                                <select class="form-control" id="seleted_creditcard" name="selected_creditcard"
                                    value=<?= $selected_creditcard ?>>
                                    <option <?= $row->ids == $seleted_creditcard ? 'selected' : '' ?>
                                        value="<?=$row->ids?>"><?=$row->creditcardno?></option>
                                </select>
                                <?php }?>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-header d-flex align-items-center">
                            <h3 class="card-title"> <?=lang("omise_confirmation")?></h3>
                        </div>
                        <div class="card-body">
                            <div class="tab-content">


                                <div class="form-group">
                                    <label
                                        class="form-label"><?=sprintf(lang("total_amount_XX_includes_fee"), 'USD')?></label>
                                    <input title="TXN_AMOUNT" tabindex="10" type="hidden" name="TXN_AMOUNT"
                                        value="<?=$amount?>">
                                    <input type="text" class="form-control" value="<?=$amount?>" disabled>
                                </div>

                                <div class="form-group">
                                    <span class="small"><?=lang("note")?>
                                        <?=lang("the_system_will_convert_automatically_from_INR_to_USD_and_add_funds_to_your_blance_when_payment_is_made")?></span>
                                </div>

                                <input type="hidden" id="ORDER_ID" tabindex="1" maxlength="20" size="20" name="ORDER_ID"
                                    autocomplete="off" value="<?php echo  "ORDS" . rand(10000,99999999)?>">
                                <input type="hidden" name="user_id" value="<?=session("uid")?>" />
                                <input type="hidden" name="<?php echo $this->security->get_csrf_token_name();?>"
                                    value="<?php echo $this->security->get_csrf_hash();?>">

                                <!-- submit button -->
                                <input type="submit" class="btn btn-primary btn-lg btn-block" name="PAYMENT_METHOD"
                                    value="<?=lang("Submit")?>">

                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>