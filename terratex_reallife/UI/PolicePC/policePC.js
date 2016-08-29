/**
 * Created by C5217649 on 12.08.2016.
 */
$(document).ready(function () {
    loadPage("overview");
    $('a[data-toggle="tab"]').click(function (e) {
        loadPage($(this).attr("data-page"));
    });
});

function loadPage(id) {
    toggleContentLoader(true);
    $("#content").html("");
    $.ajax("http://mta/local/ajax_policePC_load_page.html?id=" + id);
}

function setContent(content) {
    $("#content").html(content);
    toggleContentLoader(false);
}

function toggleContentLoader(bool) {
    $("#page-loading").toggleClass("hidden-xs-up", !bool);
}

function setCar(id, html) {
    if ($("#map div[data-car-id='" + id + "']").length > 0) {
        $("#map div[data-car-id='" + id + "']").remove();
    }
    $("#map").append(html);
    $("#map div[data-car-id='" + id + "']").tooltip({
        container: 'body'
    });
}