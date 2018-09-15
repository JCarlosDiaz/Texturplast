var pinturas = {
                "Textur Premium": "Textur Premium",
                 "Vinitur": "Vinitur", 
                 "Pintutex Plus": "Pintutex Plus", 
                 "Vivendi": "Vivendi",
                 "Popular": "Popular"
};

var selladores = {
                "Vitrificante": "Vitrificante",
                "Sellador Acrílico": "Sellador Acrílico",
                "Sellador 5x1": "Sellador 5x1",
                "Sellador Entintable": "Sellador Entintable",
                "Texturbond Plus / para concreto": "Texturbond Plus / para concreto",
                "Texturbond Eco / para concreto": "Texturbond Eco / para concret",
                "Pegatirol": "Pegatirol",
                "Pegayeso": "Pegayeso"
};
var pastas = {"Pasta Textur D": "Pasta Textur D",
                "Pasta Textur F": "Pasta Textur F",
                "Pasta Textur R": "Pasta Textur R",
                "Estuvo Veneciano": "Estuvo Veneciano",
                "Pasta para Grano Lanzado": "Pasta para Grano Lanzado",
                "Cáscara de Naranja": "Cáscara de Naranja",
                "Pasta para Tablaroca": "Pasta para Tablaroca"
};
var impermeabilizantes = {"Terracota 10 años": "Terracota 10 años",
                "Terracota 7 años": "Terracota 7 años",
                "Terracota 5 años": "Terracota 5 años",
                "Terracota 3 años": "Terracota 3 años",
                "Blanco 10 años": "Blanco 10 años",
                "Blanco 7 años": "Blanco 7 año",
                "Prefabricado 3.5 MM APP": "Prefabricado 3.5 MM APP",
                "Prefabricado 3.5 MM SBS": "Prefabricado 3.5 MM SBS",
                "Aislantes Térmicos": "Aislantes Térmicos"
};
var granitos = {"Granito Planchado ¼ de cero": "Granito Planchado ¼ de cero",
                "Granito Planchado ½ de cero": "Granito Planchado ½ de cero",
                "Granito Planchado cero grueso": "Granito Planchado cero grueso",
                "Granito Planchado pigmentado": "Granito Planchado pigmentado"
};
var pegazulejos = {"Normal Blanco": "Normal Blanco",
                "Pegapiso Gris Normal": "Pegapiso Gris Normal",
                "Pegapiso Gris Reforzado": "Pegapiso Gris Reforzad",
                "Adhesivo Marmol y Cantera Gris": "Adhesivo Marmol y Cantera Gris",
                "Adhesivo Gres Porcelánico Int. Gris": "dhesivo Gres Porcelánico Int. Gris",
                "Adhesivo Porcelanato Int. Blanco": "Adhesivo Porcelanato Int. Blanco",
                "Adhesivo PSP y Fijaveneciano Gris": "Adhesivo PSP y Fijaveneciano Gris0",
                "Adhesivo PSP y Fijaveneciano Blanco": "Adhesivo PSP y Fijaveneciano Blanco",
                "Adhesivo Porcelanato Exteriores": "Adhesivo Porcelanato Exteriores"
};
var especiales = {"Resanador Durock": "Resanador Durock",
                "Texturblock Plus Claro": "Texturblock Plus Claro",
                "Texturblock Plus Intenso": "Texturblock Plus Intenso",
                "Cemento Autonivelante": "Cemento Autonivelante",
                "Sombreador Blind para Invernaderos": "Sombreador Blind para Invernaderos",
                "Solvente para Sombreador Blind": "Solvente para Sombreador Blind"
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
        $overplay.toggleClass('open');
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