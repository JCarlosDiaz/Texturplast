$(function() {
    "use strict";

    // for revolution slider
    var tpj=jQuery;
    var revapi56;
    tpj(document).ready(function() {
        if(tpj("#rev_slider_56_1").revolution === undefined){
            revslider_showDoubleJqueryError("#rev_slider_56_1");
        }else{
            revapi56 = tpj("#rev_slider_56_1").show().revolution({
                sliderType:"standard",
                sliderLayout:"fullscreen",
                dottedOverlay:"none",
                delay:9000,
                navigation: {
                    keyboardNavigation:"off",
                    keyboard_direction: "horizontal",
                    mouseScrollNavigation:"off",
                     mouseScrollReverse:"default",
                    onHoverStop:"off",
                    arrows: {
                        style:"uranus",
                        enable:true,
                        hide_onmobile:false,
                        hide_onleave:false,
                        tmp:'',
                        left: {
                            h_align:"center",
                            v_align:"bottom",
                            h_offset:-30,
                            v_offset:60
                        },
                        right: {
                            h_align:"center",
                            v_align:"bottom",
                            h_offset:30,
                            v_offset:60
                        }
                    }
                },
                responsiveLevels:[1240,1024,778,480],
                visibilityLevels:[1240,1024,778,480],
                gridwidth:[1240,1024,778,480],
                gridheight:[768,668,960,720],
                lazyType:"single",
                parallax: {
                    type:"3D",
                    origo:"slidercenter",
                    speed:400,
                    levels:[50,10,8,15,20,30,35,40,0,50,47,48,49,50,51,55],
                    ddd_shadow:"off",
                    ddd_bgfreeze:"off",
                    ddd_overflow:"hidden",
                    ddd_layer_overflow:"visible",
                    ddd_z_correction:65,
                },
                spinner:"off",
                stopLoop:"on",
                stopAfterLoops:0,
                stopAtSlide:1,
                shuffle:"off",
                autoHeight:"off",
                fullScreenAutoWidth:"off",
                fullScreenAlignForce:"off",
                fullScreenOffsetContainer: "",
                fullScreenOffset: "60px",
                disableProgressBar:"on",
                hideThumbsOnMobile:"off",
                hideSliderAtLimit:0,
                hideCaptionAtLimit:0,
                hideAllCaptionAtLilmit:0,
                debugMode:false,
                fallbacks: {
                    simplifyAll:"off",
                    nextSlideOnWindowFocus:"off",
                    disableFocusListener:false,
                }
            });
        }
    });	/*ready*/
});
