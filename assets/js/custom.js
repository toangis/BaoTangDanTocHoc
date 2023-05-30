$(function(){
    let owl = $('.owl-carousel');
    owl.owlCarousel({
        loop: owl.children().length > 1,
        items: 1,
        thumbs: false,
        thumbImage: false,
        // thumbContainerClass: 'owl-thumbs',
        // thumbItemClass: 'owl-thumb-item',
        autoHeight:true,
        autoplay:true,
        autoplayTimeout:2000
    });

    owl.on('changed.owl.carousel', function(event) {
        var item = event.item.index - 2;     // Position of the current item
        $('h1', this).removeClass('animated bounce');
        $('.owl-item', this).not('.cloned').eq(item).find('h1').addClass('animated bounce');
    });

});

//fixed menu
(function( $ ){
    $(window).scroll(function() {
        //var headerHeight = document.querySelector('.top-header').offsetHeight;
        var scrollY = $(window).scrollTop();
        if (scrollY > 140){
            $("#treeMenu").addClass('no-active');
        }
        else{
            $("#treeMenu").removeClass('no-active');
        }
        if($(window).width() >= 992)
        {
          if ( window.scrollY > 0) {
            $("#masthead").addClass('fixed-header');
            $(".navbar").css("background-color","rgba(255, 255, 255, 1)");
            $(".navbar .site-menu ul.submenu").css("background-color","rgba(255, 255, 255, 1)");
            $(".navbar .site-menu ul.submenu").css("box-shadow","0 -3px 10px rgba(0, 0, 0, 0.2)");
            $("#masthead .logo").addClass('no-active');
            $("#masthead .top-bar").addClass('no-active');  
          }else {
            $("#masthead").removeClass('fixed-header');
            $(".navbar").css("background-color","rgba(255, 255, 255, 0.7)");
            $(".navbar .site-menu ul.submenu").css("background-color","rgba(255, 255, 255, 0.7)");
            $("#masthead .logo").removeClass('no-active');
            $("#masthead .top-bar").removeClass('no-active');      
          }
        }
    });
})( jQuery );

try{
    if ($("#treeMenu h4").text() != "" && $("#treeMenu h4").text() != null) document.title = $("#treeMenu h4").text();
}
catch{
    document.title = "Bảo tàng Dân tộc học Việt Nam";
}

//Slide ảnh
$(window).load(function () {
    $('#slider').nivoSlider({
        effect:'random',
        boxCols: 3,
        boxRows: 3,
        animSpeed: 500,
        pauseTime: 6000,
        directionNav:true,
        controlNav:true,
        controlNavThumbs:true,
        prevText:'Prev',
        nextText:'Next',
        randomStart:false,
        slices: 3,
        afterLoad: DisplayTreeMenu()
    });
});
function DisplayTreeMenu(){
    $("#treeMenu").css("display","block");
}
//Auto Slide tin tức
$(".regular").slick({
    dots: true,
    infinite: true,
    slidesToShow: 3,
    slidesToScroll: 3,
    autoplay: true,
    autoplaySpeed: 3500,
    responsive: [
        {
          breakpoint: 1324,
          settings: {
            slidesToShow: 3,
            slidesToScroll: 3,
            infinite: true,
            dots: true
          }
        },
        {
          breakpoint: 1000,
          settings: {
            slidesToShow: 2,
            slidesToScroll: 2
          }
        },
        {
          breakpoint: 700,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1
          }
        }
        // You can unslick at a given breakpoint now by adding:
        // settings: "unslick"
        // instead of a settings object
      ]
});

// var swiper = new Swiper("#mySwiper", {
//     spaceBetween: 30,
//     centeredSlides: true,
//     autoplay: {
//       delay: 10000,
//       disableOnInteraction: false,
//     },
//     pagination: {
//       el: ".swiper-pagination",
//       clickable: true,
//     },
//     loop: true
//     // navigation: {
//     //   nextEl: ".swiper-button-next",
//     //   prevEl: ".swiper-button-prev",
//     // },
//   });
function handleClick(e)
{
    e.preventDefault();

    let query = document.getElementById('query').value;

    window.location.href = '/vi/s/' + query + '-p1.html';
}
var lazyLoadInstance = new LazyLoad({
    // Your custom settings go here
    callback_loaded: function(el){
        //console.info('Loaded', el);
        window.dispatchEvent(new Event('resize'));

    },
    callback_finish: function(){
        console.info('Finish');
    }
});

function clock(){
    var timer = new Date();
    var day = timer.getDate();
    var month = timer.getMonth()+1;
    var year = timer.getFullYear();
    var hour = timer.getHours();
    var minute = timer.getMinutes();
    var second = timer.getSeconds();
    if(day < 10) {
        day = "0" + day;
    }
    if(month < 10) {
        month = "0" + month;
    }
    if(hour < 10) {
        hour = "0" + hour;
    }
    if(minute < 10) {
        minute = "0" + minute;
    }
    if(second < 10) {
        second = "0" + second;
    }
    //Hiện thị thời gian lên thẻ div id="clock" với phương thức innerHTML
    document.getElementById("clock").innerHTML = hour + ":" + minute + ":" + second + " - " + day + "/" + month + "/" + year;
};
clock();
//Thực hiện hàm clock theo chu kỳ 1 giây
setInterval("clock()",1000);


$("#scroll_down").click(function() {
    console.log("test scroll")
    $('html, body').animate({
        scrollTop: $("#home-page-section").offset().top -100
    }, 500);
});

// $(document).on('click', '.scroll-down-button', function (e) {
//     e.preventDefault();
//     $('html, body').animate({ scrollTop: $($(this).attr('href')).offset().top }, 500, 'linear');
// });