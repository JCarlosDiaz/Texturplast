var pinturas = {"Textur Premium": "value1",
                "Vinitur": "value2",
                "Pintutex Plus": "value3",
                "Vivendi": "value4",
                "Popular": "value5"
};
var selladores = {"Vitrificante": "value16",
                "Sellador Acrílico": "value7",
                "Sellador 5x1": "value8",
                "Sellador Entintable": "value9",
                "Texturbond Plus / para concreto": "value10",
                "Texturbond Eco / para concreto": "value11",
                "Pegatirol": "value12",
                "Pegayeso": "value13"
};
var pastas = {"Pasta Textur D": "value14",
                "Pasta Textur F": "value15",
                "Pasta Textur R": "value16",
                "Estuvo Veneciano": "value17",
                "Pasta para Grano Lanzado": "value18",
                "Cáscara de Naranja": "value19",
                "Pasta para Tablaroca": "value20"
};
var impermeabilizantes = {"Terracota 10 años": "value21",
                "Terracota 7 años": "value22",
                "Terracota 5 años": "value23",
                "Terracota 3 años": "value24",
                "Blanco 10 años": "value25",
                "Blanco 7 años": "value26",
                "Prefabricado 3.5 MM APP": "value27",
                "Prefabricado 3.5 MM SBS": "value28",
                "Aislantes Térmicos": "value29"
};
var granitos = {"Granito Planchado ¼ de cero": "value30",
                "Granito Planchado ½ de cero": "value31",
                "Granito Planchado cero grueso": "value32",
                "Granito Planchado pigmentado": "value33"
};
var pegazulejos = {"Normal Blanco": "value34",
                "Pegapiso Gris Normal": "value35",
                "Pegapiso Gris Reforzado": "value36",
                "Adhesivo Marmol y Cantera Gris": "value37",
                "Adhesivo Gres Porcelánico Int. Gris": "value38",
                "Adhesivo Porcelanato Int. Blanco": "value39",
                "Adhesivo PSP y Fijaveneciano Gris": "value40",
                "Adhesivo PSP y Fijaveneciano Blanco": "value41",
                "Adhesivo Porcelanato Exteriores": "value42"
};
var especiales = {"Resanador Durock": "value43",
                "Texturblock Plus Claro": "value44",
                "Texturblock Plus Intenso": "value45",
                "Cemento Autonivelante": "value46",
                "Sombreador Blind para Invernaderos": "value47",
                "Solvente para Sombreador Blind": "value48"
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
    var $overplay = $(".overplay");
    var $hamburger = $(".hamburger");
    $hamburger.on("click", function(e) {
        $overplay.addClass('open');
    });

    var $overclose = $(".overclose");
    var $overplay = $(".overplay");
    $overclose.on("click", function(e) {
        $overplay.removeClass('open');
    });
    
    var $overclose = $(".overclose");
    var $hamburger = $(".hamburger");
    $overclose.on("click", function(e) {
        $hamburger.removeClass('is-active');
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
        switch(prod){
            case 'Selladores':
            $.each(selladores, function(key,value) {
                $options.append($("<option></option>")
                   .attr("value", value).text(key));
            });
                
        }
        switch(prod){
            case 'Pastas':
            $.each(pastas, function(key,value) {
                $options.append($("<option></option>")
                   .attr("value", value).text(key));
            });
                
        }
        switch(prod){
            case 'Impermeabilizantes':
            $.each(impermeabilizantes, function(key,value) {
                $options.append($("<option></option>")
                   .attr("value", value).text(key));
            });
                
        }
        switch(prod){
            case 'Granitos':
            $.each(granitos, function(key,value) {
                $options.append($("<option></option>")
                   .attr("value", value).text(key));
            });
                
        }
        switch(prod){
            case 'Pegazulejos':
            $.each(pegazulejos, function(key,value) {
                $options.append($("<option></option>")
                   .attr("value", value).text(key));
            });
                
        }
        switch(prod){
            case 'Especiales':
            $.each(especiales, function(key,value) {
                $options.append($("<option></option>")
                   .attr("value", value).text(key));
            });
                
        }
    });
});