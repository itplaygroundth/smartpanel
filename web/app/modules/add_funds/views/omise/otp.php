<div class="row justify-content-md-center">
    <form id="frm-truewallet" method="post" class="form omisepayForm" action="<?=cn($module."/omise/checkotp")?>"
        data-redirect="<?=cn($module)."/omise/successfuly"?>" >
        <div class="container  justify-content-center">
                    <div class="card p-5">
                        <div class="card-header d-flex align-items-center">
                            <h1 class="page-title">
                                <div class="d-flex flex-row align-items-center"> <img
                                        src="https://www.truemoney.com/wp-content/uploads/2020/11/truemoney-wallet-logo-1x.png"
                                        class="rounded" width="100%"></div>

                            </h1>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label for="omise_otp" class="form-label">OTP:</label>
                                <input type="text" id="omise_otp" class="form-control" name="omise_otp">
                                <input type="hidden" name="payment_method" value="<?=$payment_method?>" />
                                <button id="submit" class="btn"><b><?=lang("process")?></b></button>
                           
                            </div>
                         
                        </div>
                    
                    </div>
         
        </div>
    </form>
</div>
<style>
form .row-1 {
    border: 1px solid rgba(0, 0, 0, 0.137);
    padding: 0.5rem;
    outline: none;
    width: 100%;
    min-width: unset;
    border-radius: 5px;
    background-color: rgba(221, 228, 236, 0.301);
    border-color: rgba(221, 228, 236, 0.459);
    margin: 2vh 0;
    overflow: hidden
}

.btn {
    width: 100%;
    background-color: rgb(65, 202, 127);
    border-color: rgb(65, 202, 127);
    color: white;
    justify-content: center;
    padding: 2vh 0;
    margin-top: 3vh
}

.btn:focus {
    box-shadow: none;
    outline: none;
    box-shadow: none;
    color: white;
    -webkit-box-shadow: none;
    -webkit-user-select: none;
    transition: none
}

.btn:hover {
    color: white
}
</style>