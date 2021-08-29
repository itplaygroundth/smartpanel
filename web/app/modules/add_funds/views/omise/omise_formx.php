<div class="row justify-content-md-center">
    <form id="paymentFrm" method="post" action="<?=cn($module."/omise/create")?>">
        <script type="text/javascript" src="https://cdn.omise.co/omise.js"></script>
        <!-- data-key="<?= $omise_key ?>"
    data-image=""
    data-frame-label="Merchant site name"
    data-button-label="Pay now"
    data-submit-label="Submit"
    data-location="no"
    data-amount="<?=$amount?>"
    data-currency="<?= $currency ?>"
    >
  </script> -->
        <div class="card">
            <div class="card-header d-flex align-items-center">
                <img src="<?=BASE?>/assets/images/omise.svg" width="50%" alt="omise icon">
            </div>
            <div class="card-body">
                <div class="form-body">
                    <div id="token_errors"></div>
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="form-group">
                            <input class="form-control" type="hidden" name="omise_token">
                            Name<br>
                            <input class="form-control" type="text" data-omise="holder_name">
                        </div>
                    </div>
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        Number<br>
                        <input class="form-control" type="text" data-omise="number">
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-6">
                        <div class="form-group">
                            Date
                            <input class="form-control" type="text" data-omise="expiration_month" size="4"> /
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-6">
                        <div class="form-group">
                            <input class="form-control" type="text" data-omise="expiration_year" size="8">
                        </div>
                    </div>

                    <div class="col-md-12 col-sm-12 col-xs-12">

                        Security Code<br>
                        <input class="form-control" type="text" data-omise="security_code" size="8">
                    </div>
                    <div class="col-md-12 col-sm-12 col-xs-12">
                    <input type="submit" class="btn btn-primary btn-lg btn-block" name="PAYMENT_METHOD"
                                    value="<?=lang("Submit")?>">
                    </div>
                </div>
            </div>
            <!--the script will render <input type="hidden" name="omiseToken"> for you automatically-->
    </form>

    <!-- data-key="YOUR_PUBLIC_KEY" -->