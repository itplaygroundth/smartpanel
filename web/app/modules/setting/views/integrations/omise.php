
    <div class="card content">
      <div class="card-header">
        <h3 class="card-title"><i class="fe fe-credit-card"></i> <?=lang("omise_Integration")?></h3>
      </div>
      <div class="card-body">
        <form class="actionForm" action="<?=cn("$module/ajax_general_settings")?>" method="POST" data-redirect="<?=cn($module."?t=".$tab)?>">
          <div class="row">

            <div class="col-md-12 col-lg-12">
              <div class="form-group">
                <div class="form-label"><?=lang("Status")?></div>
                <div class="custom-controls-stacked">
                  <label class="custom-control custom-checkbox">
                    <input type="hidden" name="is_active_omise" value="0">
                    <input type="checkbox" class="custom-control-input" name="is_active_omise" value="1" <?=(get_option('is_active_omise', "") == 1)? "checked" : ''?>>
                    <span class="custom-control-label"><?=lang("Active")?></span>
                  </label>
                </div>
              </div>

              <div class="row">
                <div class="col-md-4">
                  <div class="form-group">
                    <label class="form-label"><?=lang("Environment")?></label>
                    <select  name="omise_payment_environment" class="form-control square">
                      <option value="TEST" <?=(get_option("omise_payment_environment", "TEST") == 'TEST')? 'selected': ''?>><?=lang("sandbox_test")?></option>
                      <option value="PROD" <?=(get_option("omise_payment_environment", "TEST") == 'PROD')? 'selected': ''?>><?=lang("Live")?></option>
                    </select>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="form-group">
                    <label class="form-label"><?=lang("transaction_fee")?></label>
                    <select name="omise_chagre_fee" class="form-control square">
                      <?php
                        for ($i = 0; $i <= 10; $i++) {
                      ?>
                      <option value="<?=$i?>" <?=(get_option("omise_chagre_fee", 4) == $i)? "selected" : ''?>><?=$i?>%</option>
                      <?php } ?>
                    </select>
                  </div>
                </div>

                <div class="col-md-4">
                  <div class="form-group">
                    <label class="form-label"><?=lang("currency_rate")?></label>
                    <div class="input-group">
                      <span class="input-group-prepend">
                        <span class="input-group-text">1USD =</span>
                      </span>
                      <input type="text" class="form-control text-right" name="omise_currency_rate_to_usd" value="<?=get_option('omise_currency_rate_to_usd', 70)?>">
                      <span class="input-group-append">
                        <span class="input-group-text">THB</span>
                      </span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label class="form-label"><?=lang("omise_bank_account")?></label>
                <input class="form-control" name="omise_amount_account" value="<?=get_option('omise_amount_account',"")?>">
              </div>
              <div class="form-group">
                <label class="form-label"><?=lang("omise_amount_group")?></label>
                <input class="form-control" name="omise_amount_group" value="<?=get_option('omise_amount_group',"")?>">
              </div>
              <div class="form-group">
                <label class="form-label"><?=lang("omise_merchant_secret")?></label>
                <input class="form-control" name="omise_merchant_secret" value="<?=get_option('omise_merchant_secret',"")?>">
              </div>

              <div class="form-group">
                <label class="form-label"><?=lang("omise_merchant_key")?></label>
                <input class="form-control" name="omise_merchant_key" value="<?=get_option('omise_merchant_key',"")?>">
              </div>

            </div> 
            <div class="col-md-12 col-lg-12">
              <div class="form-footer">
                <button class="btn btn-primary btn-min-width btn-lg text-uppercase"><?=lang("Save")?></button>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
