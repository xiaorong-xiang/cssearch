$(document).ready(function() {

    $('select.ui.dropdown').dropdown();

    $('.add.circle.icon').on("click", function(e) {
        var url = 'search/addc';
        $.get(url, function(html) {
            $("#addrows").append(html);
            exeAfterAdd();
        });
    });

    var exeAfterAdd = function() {
        $('select.ui.dropdown').dropdown();

        $('.minus.circle.icon').on("click", function(e) {
            $(this).closest('.ui.four.column.grid').remove();
        });

        $('.ui.search').search({
                apiSettings: {
                    url: 'search/getConceptV?q={query}'
                },
                fields: {
                    results : 'results',
                    title   : 'title'
                },
                minCharacters : 1
        });

    }

    $('.ui.search').search({
        apiSettings: {
            url: 'search/getConceptV?q={query}'
        },
        fields: {
            results : 'results',
            title   : 'title'
        },
        minCharacters : 1
    });

    $('#submitAdvancedQ').on("click", function(e) {
        e.preventDefault();
        var url = 'search/advancedQ';
        var dataS = $('#formAdvancedQ').serialize();
        alert(dataS);
        $.ajax({
            type: "POST",
            url: url,
            data: dataS,
            success: function(data) {
                $('#dispResults').html(data);
            },
            error: function() {
                alert('error handing here');
            }
        })
    });
});