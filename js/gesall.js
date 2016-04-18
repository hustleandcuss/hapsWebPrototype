$(document).ready(function() {
    $("a[href^='http://']").attr("target", "_blank");

    //shows start image
    $("#start").show();
    $("header").hide();
    $(".mainpg").hide();
    $("footer").hide();

    //hides start image and shows sitecontent
    setTimeout(function() {
        $("#start").hide();
        $("header").fadeIn(200);
        $(".mainpg").fadeIn(200);
        $("footer").fadeIn(200);
    }, 2000);

    //Navigation Tabs
    $("#tabs a").click(function() {
        $this = $(this);
        $(".pan").hide();
        $("#tabs a.active").removeClass("active");
        $this.addClass("active").blur();
        var pan = $this.attr("href");
        $(pan).fadeIn(250);
    });

    $("#tabs li:first a").click();
    //Navigation Tabs end

    function formatDate(date){
        if (date<10)
           return "0"+date;
        return date;
    }

    var d = new Date();
    var today = d.getFullYear() + "-" + formatDate((d.getMonth()+1)) + "-" + formatDate(d.getDate());
    var wd = new Date(d.getFullYear(), d.getMonth(), d.getDate() + 7);
    var nxtWeek = wd.getFullYear() + "-" + formatDate((wd.getMonth()+1)) + "-" + formatDate(wd.getDate());

    function isEmpty(el) {
        return !$.trim(el.html());
    }

    //getAllEvents
    $.ajax({
        url: "php/dbshow.php",
        dataType: "JSON",
        success: function(json) {
            //append to allEvents
            for(var i = 0; i < json.length; i++) {
                $("#allEvents").append("<li><h4>" + json[i].eventName + " " + json[i].eventDate + " " + json[i].eventTime + "</h4><br>" + json[i].eventPlace + "<br><p>" + json[i].eventDesc + "</p></li>");
            }

            //append to events today
            for(var i = 0; i < json.length; i++) {
                if(json[i].eventDate == today) {
                    $("#eventsToday").append("<li><h4>" + json[i].eventName + " " + json[i].eventDate + " " + json[i].eventTime + "</h4><br>" + json[i].eventPlace + "<br><p>" + json[i].eventDesc + "</p></li>");
                }

                if(isEmpty($('#eventsToday'))) {
                    $("#eventsToday").append("<li><h4>No events today.</h4></li>");
                }
            }
            //append to events of the week
            for(var i = 0; i < json.length; i++) {
                if(json[i].eventDate >= today && json[i].eventDate <= nxtWeek) {
                    $("#eventsWeek").append("<li><h4>" + json[i].eventName + " " + json[i].eventDate + " " + json[i].eventTime + "</h4><br>" + json[i].eventPlace + "<br><p>" + json[i].eventDesc + "</p></li>");
                }

                if(isEmpty($("#eventsWeek"))) {
                    $("#eventsWeek").append("<li><h4>No events this week.</h4></li>");
                }
            }
        }
    });
});