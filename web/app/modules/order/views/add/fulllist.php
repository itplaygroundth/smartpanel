<link rel="stylesheet" type="text/css" href="<?= BASE ?>assets/fixtable/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="<?= BASE ?>assets/fixtable/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="<?= BASE ?>assets/fixtable/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="<?= BASE ?>assets/fixtable/css/util.css">
<link rel="stylesheet" type="text/css" href="<?= BASE ?>assets/fixtable/css/main.css">
<div class="limiter">
    <div class="container-table100">
        <div class="wrap-table100">
            <div class="table100 ver5 m-b-110">
                <div class="table100-head table-responsive">
                    <table>
                        <thead>
                            <tr class="row100 head">
                                <th class="cell100 action_col">&nbsp;&nbsp;&nbsp;</th>
                                <th class="cell100 service_col">ID | NAME</th>
                                <th class="cell100 quantity_col">Quantity</th>
                                <th class="cell100 link_col">Link</th>
                                <th class="cell100 "></th>
                            </tr>
                        </thead>
                    </table>
                </div>

                <div class="table100-body">
                    <table>
                        <tbody>
                            <?php for ($i = 0; $i < 1; $i++) : ?>
                                <tr class="row100 body">
                                    <td class="cell100 action_col"> <span>
                                            <i class="fa fa-plus-square fa-1x text-primary" aria-hidden="true"></i>
                                            <i class="fa fa-clone fa-1x text-primary" aria-hidden="true"></i>
                                        </span></td>
                                    <td class="cell100 service_col">
                                        <select name="services_id" id="services_option" class="chosen-select" data-url="<?= cn($module . "/ajax_load_services") ?>">
                                            <option> <?= lang("choose_a_service") ?></option>
                                            <?php
                                            if (!empty($massservice)) {
                                                $service_item_default = $massservice[0];
                                                foreach ($massservice as $key => $service) {
                                            ?>
                                                    <option value="<?= $service->id ?>"><?= $service->name ?></option>
                                            <?php }
                                            } ?>
                                        </select>
                                    </td>
                                    <td class="cell100 quantity_col"><input class="form-control mass-quantity" name="mass_quantity_<?= $i ?>" /></td>
                                    <td class="cell100 link_col"><input class="form-control mass-service-link" name="mass_service_link_<?= $i ?>" />
                                    </td>
                                    <td>
                                        <span>
                                            <i class="fa fa-bars fa-1x text-primary" aria-hidden="true"></i>
                                        </span>
                                    </td>
                                </tr>
                            <?php endfor ?>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<!--===============================================================================================-->
<script src="<?= BASE ?>assets/fixtable/vendor/bootstrap/js/popper.js"></script>
<!-- <script src="<?= BASE ?>assets/fixtable/vendor/bootstrap/js/bootstrap.min.js"></script> -->
<!--===============================================================================================-->
<script src="<?= BASE ?>assets/fixtable/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="<?= BASE ?>assets/fixtable/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script>
    $('.js-pscroll').each(function() {
        var ps = new PerfectScrollbar(this);

        $(window).on('resize', function() {
            ps.update();
        })
    });
</script>
<style>
    .quantity_col {
        width: 50px;
    }
   
    .link_col {
        width: 300px;
    }
    th.action_col {
        padding-left: 30px;
    }
    .action_col {
        width: 10px;
        padding-left: 20px;
    }
    th.service_col {
        min-width: 100px !important;
    }
    .service_col {
        min-width: 300px !important;
        max-width: 300px !important;
    }
    .result-services{
        width: 450px !important;
    }
    .mass-quantity {
        width: 50px;
    }
    .mass-service-link{
        width:300px;
    }
</style>
<!--===============================================================================================
	<script src="<?= APPPATH ?>/assets/fixtable/js/main.js"></script>-->