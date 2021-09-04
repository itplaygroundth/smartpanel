<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">

    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="form-inline">
                    <!-- <div class="form-group mb-2">
                        <label for="staticEmail2" class="sr-only">Email</label>
                        <input type="text" readonly class="form-control-plaintext" id="staticEmail2" value="email@example.com">
                    </div> -->
                    <div class="form-group mx-sm-3 mb-2">
                        <label for="username" class="sr-only">Username</label>
                        <input type="text" class="form-control" id="username" placeholder="Username">
                    </div>
                    <button type="submit" class="btn btn-primary mb-2">next</button>
                </div>
                <section id="landing-services-likes" class="service-section">
                    <div class="service-section">
                        <div class="inner">
                            <div id="service-illustration" class="service-illustration">
                                <div id="likes-posts-illustration">
                                    <div class="tl post">
                                        <div class="counter">
                                            <img src="<?= BASE ?>/assets/img/icons/play-small-white.svg" alt="Plays TikTok icon" draggable="false">
                                            <span>212.9K</span>
                                        </div>
                                        <video id="views-post-tl-canvas" class="views-hero-illustration-canvas" disableremoteplayback="" preload="" tabindex="-1" loop autoplay muted="true" playsinline="" src="<?= BASE ?>/assets/img/videos/trick_x160.mp4"></video>
                                    </div>
                                    <div class="tm post">
                                        <div class="counter">
                                            <img src="<?= BASE ?>/assets/img/icons/play-small-white.svg" alt="Plays TikTok icon" draggable="false">
                                            <span>176.1K</span>
                                        </div>
                                        <video id="views-post-tm-canvas" class="views-hero-illustration-canvas" disableremoteplayback="" preload="" tabindex="-1" loop="" autoplay muted="true" playsinline="" src="<?= BASE ?>/assets/img/videos/moneyraccoon_x160.mp4"></video>
                                    </div>
                                    <div class="tr post">
                                        <div class="counter">
                                            <img src="<?= BASE ?>/assets/img/icons/play-small-white.svg" alt="Plays TikTok icon" draggable="false">
                                            <span>189.8K</span>
                                        </div>
                                        <video id="views-post-tr-canvas" class="views-hero-illustration-canvas" disableremoteplayback="" preload="" tabindex="-1" loop="" autoplay muted="true" playsinline="" src="<?= BASE ?>/assets/img/videos/swimmer_x160.mp4"></video>
                                    </div>
                                    <div class="bl post">
                                        <div class="counter">
                                            <img src="<?= BASE ?>/assets/img/icons/play-small-white.svg" alt="Plays TikTok icon" draggable="false">
                                            <span>223.9K</span>
                                        </div>
                                        <video id="views-post-bl-canvas" class="views-hero-illustration-canvas" disableremoteplayback="" preload="" tabindex="-1" loop="" autoplay muted="true" playsinline="" src="<?= BASE ?>/assets/img/videos/floof_x160.mp4"></video>
                                    </div>
                                    <div class="bm post">
                                        <div class="counter">
                                            <img src="<?= BASE ?>/assets/img/icons/play-small-white.svg" alt="Plays TikTok icon" draggable="false">
                                            <span>200.1K</span>
                                        </div>
                                        <video id="views-post-bm-canvas" class="views-hero-illustration-canvas" disableremoteplayback="" preload="" tabindex="-1" loop="" autoplay muted="true" playsinline="" src="<?= BASE ?>/assets/img/videos/science_x160.mp4"></video>
                                    </div>
                                    <div class="br post">
                                        <div class="counter">
                                            <img src="<?= BASE ?>/assets/img/icons/play-small-white.svg" alt="Plays TikTok icon" draggable="false">
                                            <span>189.3K</span>
                                        </div>
                                        <video id="views-post-br-canvas" class="views-hero-illustration-canvas" disableremoteplayback="" preload="" tabindex="-1" loop="" autoplay muted="true" playsinline="" src="<?= BASE ?>/assets/img/videos/weird-dance_x160.mp4"></video>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>

<script>
    $("select[name='category_id']").on("change", function() {
        selected_v = $("select[name='category_id'] option").filter(':selected').val();
        selected_t = $("select[name='category_id'] option").filter(':selected').text();
        //console.log(selected_v,selected_t);
        // $.ajax('')

    })
</script>
<style>
    #username {
        width: 100px;
    }

    #landing-sections-boundary {
        overflow: hidden;
    }

    .service-section {
        width: 100%;
        background: #fff;
        color: #380337;
        overflow: auto;
    }

    .service-section .inner {
        width: 92%;
        max-width: 980px;
        padding: 140px 4%;
        display: block;
        margin: 0 auto;
    }

    .service-section .inner .service-description {
        width: 420px;
        display: inline-block;
        vertical-align: middle;
        text-align: left;
    }

    .service-section .inner .service-description h2 {
        padding-bottom: 20px;
    }

    .service-section .inner .service-description .button {
        margin-top: 35px;
    }

    .service-section .inner .service-illustration {
        width: calc(100% - 420px);
        display: inline-block;
        vertical-align: middle;
        position: relative;
        pointer-events: none;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
    }

    #landing-services-menu .service-menu {
        width: 92%;
        max-width: 980px;
        display: block;
        margin: 0 auto;
        padding: 40px 4%;
        text-align: center;
    }

    #landing-services-menu .inset-button {
        margin: 0 10px;
    }

    #landing-services-likes .service-illustration #likes-figure {
        width: 670px;
        height: auto;
        position: absolute;
        top: -260px;
        left: 50px;
    }

    #landing-services-likes .service-illustration #likes-posts-illustration {
        position: absolute;
        left: 0px;
        top: 0;
    }

    #landing-services-likes .service-illustration #likes-posts-illustration .post {
        width: 160px;
        height: 160px;
        position: absolute;
        border-radius: 6px;
        background-color: #555;
        background-size: cover;
        background-position: 50%;
        box-shadow: 6px 12px 28px 1px rgba(0, 0, 0, 0.3);
        font-family: azo-sans-web, sans-serif;
        font-weight: 400;
        font-size: 14px;
        color: #fff;
    }

    #landing-services-likes .service-illustration #likes-posts-illustration .post .counter {
        position: absolute;
        bottom: 12px;
        left: 12px;
    }

    #landing-services-likes .service-illustration #likes-posts-illustration .post .counter>img {
        width: 18px;
        height: auto;
        margin-right: 1px;
        display: inline-block;
        vertical-align: middle;
    }

    #landing-services-likes .service-illustration #likes-posts-illustration .post .counter>span {
        display: inline-block;
        vertical-align: middle;
    }

    #landing-services-likes .service-illustration #likes-posts-illustration .post canvas,
    #landing-services-likes .service-illustration #likes-posts-illustration .post video {
        width: 100%;
        height: 100%;
        display: block;
        border-radius: 6px;
    }

    #landing-services-likes .service-illustration #likes-posts-illustration .tl.post {
        top: -150px;
        left: 0;
    }

    #landing-services-likes .service-illustration #likes-posts-illustration .tl.post video {
        background: #fda406;
    }

    #landing-services-likes .service-illustration #likes-posts-illustration .bl.post {
        top: 50px;
        left: 200px;
    }

    #landing-services-likes .service-illustration #likes-posts-illustration .bl.post video {
        background: #f2e1d7;
    }

    #landing-services-likes .service-illustration #likes-posts-illustration .tm.post {
        top: 50px;
        left: 0px;
    }

    #landing-services-likes .service-illustration #likes-posts-illustration .tm.post video {
        background: #c59579;
    }

    #landing-services-likes .service-illustration #likes-posts-illustration .bm.post {
        top: 250px;
        left: 0px;
    }

    #landing-services-likes .service-illustration #likes-posts-illustration .bm.post video {
        background: #bbbfd3;
    }

    #landing-services-likes .service-illustration #likes-posts-illustration .tr.post {
        top: -150px;
        left: 200px;
    }

    #landing-services-likes .service-illustration #likes-posts-illustration .tr.post video {
        background: #ddd8d6;
    }

    #landing-services-likes .service-illustration #likes-posts-illustration .br.post {
        top: 250px;
        left: 200px;
    }

    #landing-services-likes .service-illustration #likes-posts-illustration .br.post video {
        background: #a9a099;
    }

    #landing-services-followers .service-illustration #followers-figure {
        width: 600px;
        height: auto;
        position: absolute;
        top: -200px;
        right: 100px;
    }

    #landing-services-followers .service-illustration #followers-accounts-illustration {
        position: absolute;
        top: 0;
        right: 70px;
    }

    #landing-services-followers .service-illustration #followers-accounts-illustration .account {
        width: 260px;
        height: auto;
        padding: 12px;
        border-radius: 200px;
        box-sizing: border-box;
        position: absolute;
        font-family: azo-sans-web, sans-serif;
        font-weight: 400;
        color: #7a7a7a;
        background: #fff;
        box-shadow: 6px 12px 28px 1px rgba(0, 0, 0, 0.3);
    }

    #landing-services-followers .service-illustration #followers-accounts-illustration .account img {
        width: 60px;
        height: 60px;
        margin-right: 15px;
        border-radius: 200px;
        display: inline-block;
        vertical-align: middle;
    }

    #landing-services-followers .service-illustration #followers-accounts-illustration .account span {
        width: calc(100% - 77px);
        font-size: 16px;
        line-height: 140%;
        display: inline-block;
        vertical-align: middle;
    }

    #landing-services-followers .service-illustration #followers-accounts-illustration .account span>strong {
        font-weight: 600;
    }

    #landing-services-followers .service-illustration #followers-accounts-illustration .left-top.account {
        right: 400px;
        top: -160px;
        -webkit-animation: right-to-left 30s infinite;
        animation: right-to-left 30s infinite;
    }

    #landing-services-followers .service-illustration #followers-accounts-illustration .left-middle.account {
        right: 335px;
        top: -15px;
        -webkit-animation: right-to-left 30s 2s infinite;
        animation: right-to-left 30s 2s infinite;
    }

    #landing-services-followers .service-illustration #followers-accounts-illustration .left-bottom.account {
        right: 270px;
        top: 130px;
        -webkit-animation: right-to-left 30s 4s infinite;
        animation: right-to-left 30s 4s infinite;
    }

    #landing-services-followers .service-illustration #followers-accounts-illustration .right-top.account {
        right: 65px;
        top: -110px;
        -webkit-animation: right-to-left 30s 6s infinite;
        animation: right-to-left 30s 6s infinite;
    }

    #landing-services-followers .service-illustration #followers-accounts-illustration .right-bottom.account {
        right: 0;
        top: 35px;
        -webkit-animation: right-to-left 30s 8s infinite;
        animation: right-to-left 30s 8s infinite;
    }

    @-webkit-keyframes right-to-left {
        0% {
            transform: translateX(0);
        }

        50% {
            transform: translateX(50px);
        }

        to {
            transform: translateX(0);
        }
    }

    @keyframes right-to-left {
        0% {
            transform: translateX(0);
        }

        50% {
            transform: translateX(50px);
        }

        to {
            transform: translateX(0);
        }
    }

    #landing-services-views {
        padding-bottom: 300px;
    }

    #landing-services-views .service-illustration #views-figure {
        width: auto;
        height: 580px;
        position: absolute;
        top: -280px;
        left: 100px;
    }

    #landing-services-views .service-illustration #views-video {
        width: 240px;
        height: auto;
        position: absolute;
        top: -218px;
        left: 281px;
    }

    #landing-services-views .service-illustration #views-video * {
        transform: rotate(5deg);
    }

    #landing-services-views .service-illustration #views-video canvas,
    #landing-services-views .service-illustration #views-video video {
        width: 240px;
        height: 426px;
        border-radius: 24px;
        left: 0;
        top: 0;
        position: absolute;
        z-index: 1;
        background-color: #e0dee1;
    }

    #landing-services-views .service-illustration #views-video .frame {
        width: 246px;
        left: -3px;
        top: -14px;
        position: absolute;
        z-index: 3;
    }

    #landing-services-views .service-illustration #views-video .shadow {
        width: 242px;
        height: 452px;
        left: -1px;
        top: -13px;
        position: absolute;
        box-shadow: 6px 12px 28px 1px rgba(0, 0, 0, 0.3);
        border-radius: 37px;
        background: transparent;
    }

    #landing-services-views .service-illustration #views-video .gui-overlay {
        width: 240px;
        height: 426px;
        left: 0;
        top: 0;
        position: absolute;
        z-index: 2;
    }

    .centered-section {
        width: 100%;
        position: relative;
    }

    .centered-section .inner {
        width: 92%;
        max-width: 640px;
        padding: 140px 4%;
        display: block;
        margin: 0 auto;
    }

    .centered-section .inner p {
        line-height: 130%;
    }

    .centered-section .inner p strong {
        font-weight: 700;
    }

    #landing-free-trial {
        color: #fff;
        background-color: #be3489;
        background: linear-gradient(180deg, #d74489, #991a87);
    }

    #landing-free-trial .background-top-divider {
        bottom: calc(100% - 1px);
        left: -1px;
        position: absolute;
        height: 300px;
        width: 1500px;
        z-index: 1;
        background-image: url(/img/dividers/landing-views-trial-divider-v4.svg);
        background-repeat: no-repeat;
        background-position: 0 100%;
    }

    #landing-free-trial .background-bottom-divider {
        bottom: -171px;
        right: -1px;
        position: absolute;
        width: 1680px;
        height: 430px;
        z-index: 1;
        background-image: url(/img/dividers/landing-trial-bottom-divider.svg);
        background-repeat: no-repeat;
        background-position: 100% 100%;
    }

    #landing-free-trial .inner {
        position: relative;
        z-index: 2;
        padding: 80px 2%;
    }

    #landing-free-trial .inner p {
        padding: 30px 0 35px;
        line-height: 130%;
    }

    #landing-free-trial .inner p strong {
        font-weight: 700;
    }

    #landing-free-trial .inner .inset-button {
        min-width: 250px;
        box-sizing: border-box;
        margin-bottom: 15px;
        margin-right: 25px;
        background: hsla(0, 0%, 100%, 0.1);
    }

    #landing-free-trial .inner .inset-button:hover {
        background: hsla(0, 0%, 100%, 0.4);
    }

    #landing-sell {
        color: #fff;
        background-color: #c23589;
        background: linear-gradient(180deg, #cb3c8a, #860c86);
    }

    #landing-sell .background-top-divider {
        top: -290px;
        right: -5px;
        position: absolute;
        width: 1600px;
        height: 398px;
        z-index: 1;
        background-image: url(/img/dividers/landing-sell-top.svg);
        background-repeat: no-repeat;
        background-position: 100% 100%;
    }

    #landing-sell .inner {
        position: relative;
        z-index: 2;
        padding: 240px 2% 200px;
    }

    #landing-sell .inner p {
        padding: 30px 0 35px;
        line-height: 130%;
    }

    #landing-sell .inner p strong {
        font-weight: 700;
    }

    #landing-sell .inner .inset-button {
        min-width: 215px;
        box-sizing: border-box;
        margin-bottom: 15px;
        margin-right: 25px;
        background: hsla(0, 0%, 100%, 0.1);
    }

    #landing-sell .inner .inset-button:hover {
        background: hsla(0, 0%, 100%, 0.4);
    }

    .points-section {
        position: relative;
    }

    .points-section .inner {
        width: 92%;
        max-width: 980px;
        padding: 100px 4%;
        display: block;
        margin: 0 auto;
    }

    .points-section .inner h2 {
        padding-bottom: 20px;
    }

    .points-section .inner .point {
        width: 48%;
        display: inline-block;
        vertical-align: top;
        box-sizing: border-box;
        padding: 35px 0 35px 2%;
    }

    .points-section .inner .point:nth-child(2n) {
        padding: 35px 2% 35px 0;
    }

    .points-section .inner .point .point-icon {
        width: 50px;
        height: 50px;
        border-radius: 100px;
        padding: 20px;
        box-shadow: 0 4px 12px 0 rgba(0, 0, 0, 0.12);
        pointer-events: none;
        background: #fff;
    }

    .points-section .inner .point .point-icon img {
        width: 100%;
        height: auto;
    }

    .points-section .inner .point h3 {
        padding-top: 20px;
        padding-bottom: 15px;
    }

    .points-section .inner .point p strong {
        font-weight: 700;
    }

    #landing-why-us {
        padding: 180px 0 0;
        color: #380337;
        background: #fff;
    }

    #landing-why-us #landing-why-us-figure {
        left: 0;
        top: 100px;
        position: absolute;
        width: 1400px;
        height: auto;
        pointer-events: none;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
        opacity: 0.05;
    }
</style>