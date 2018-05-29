var pinturas = {"Option 1": "value1",
  "Option 2": "value2",
  "Option 3": "value3"
};

$(document).ready(function () {
    if($(window).width() > 991){
        $('.tab-style-3 .nav-tabs li').each(function(e){
            var position = $(this).position();
            var left = position.left;
            var a_href = $(this).find('a').attr('href');
            var ul_to_move = $(a_href).find('ul');
            ul_to_move.css('left', left-50);
            $('#especiales ul').css('left', left-150);
        });
    }
    
    $('.hamburger').click(function () {
        $(this).toggleClass('is-active');
    });
    $('#producto-categoria-selector').change(function (){
        var prod = $(this).val();
        console.log(prod);
        var $options = $('#producto-producto-selector');
        $options.empty();
        switch(prod){
            case 'Pinturas':
            $.each(pinturas, function(key,value) {
                $options.append($("<option></option>")
                   .attr("value", value).text(key));
            });
                
        }
    });
});