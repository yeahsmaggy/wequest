/**
 * @file
 * A JavaScript file for the theme.
 *
 * In order for this JavaScript to be loaded on pages, see the instructions in
 * the README.txt next to this file.
 */

// JavaScript should be made compatible with libraries other than jQuery by
// wrapping it with an "anonymous closure". See:
// - http://drupal.org/node/1446420
// - http://www.adequatelygood.com/2010/3/JavaScript-Module-Pattern-In-Depth
(function ($, Drupal, window, document, undefined) {

	// Funnel form submit button
	jQuery(window).load(function() {
		if ($('.funnel').length > 0) {
			//jQuery('.funnel input.submit').addClass('test');
			$('.funnel input.submit').wrapAll('<div class="submit-link" />');
			$('<div class="submit-link-indicator" />').prependTo('.submit-link');
			$('<span class="submit-link-arrow" />').appendTo('.submit-link');
			// Added click handler for extra markup around the input
			$('.funnel .submit-link').click(function(event) {
				if (!$(event.target).is('input.submit')) {
					$(this).find('input.submit').trigger("click");
				}
			});
		}
	});

	// MTV Apps - Quicktabs additions (only run once)
	jQuery(document).ready(function() {
		if ($('#quicktabs-mtv_apps ul.quicktabs-tabs').length > 0) {
			jQuery.each($('ul.quicktabs-tabs li a'), function() {
				// Add a class of the anchors text to the li
				var qttext = $(this).text().replace(/\s+/g, '-').toLowerCase();
				$(this).parent().addClass('qt--'+ qttext);
				// Wrap last word in a span to style
		    var html = $(this).html();
		    var split = html.split(" ");
		    if (split.length > 1) {
		        split[split.length - 1] = "<span class='qt-last-word'>" + split[split.length - 1] + "</span>"
		        $(this).html(split.join(" "));
		    }
				// Add markup for icon
				$(this).append('<span class="qt-replace"></span>');
			});
		}
	});

	// Scroll user to the top of the page
	Drupal.behaviors.return_top = {
		attach: function(context, settings) {

			$('.return-top-link').click(function () {
				$('body,html').animate({
					scrollTop: 0
				}, 800);
				return false;
			});

		}
	}

	// Footer apps swipable carousel
	Drupal.behaviors.footer_apps = {
		attach: function(context, settings) {

			function footerAppsWidth() {
				// Get the width of the container minus any list margins
				var listMargin = $('.footer-promo--apps .panel-pane ul').outerWidth(true) - $('.footer-promo--apps .panel-pane ul').outerWidth();
				var containerWidth = $('.footer-promo--apps').width() - listMargin;
				var itemWidth = containerWidth / 4; // 4 items
				// Set the width of each item so theres 4 per row
				$('.footer-promo--apps .panel-pane ul li').width(itemWidth);
			}

			jQuery(document).ready(function() {
			  footerAppsWidth();
			  $('.footer-promo--apps .item-list').wequestcarousel({itemsToScroll: 4});

			  // Add swipe functionality
		    $('.footer-promo--apps .item-list').on({
		      'swipeleft': function (ev) {
		        $(this).find('.cc-next').trigger('click');
		      },
		      'swiperight': function (ev) {
		        $(this).find('.cc-prev').trigger('click');
		      }
		    });

			});

			// Width detection on resize
			$(window).resize(function() {
				footerAppsWidth();
			});

		}
	}

	// Content searchbox - responsive width
	Drupal.behaviors.content_searchbox = {
		attach: function(context, settings) {

			function searchboxWidth() {
				// Get width of container
				var containerWidth = $('.searchbox--content').width();
				var bttnWidth = $('.searchbox--content .searchbox-bttn').outerWidth(true);
				var inputWidth = $('.searchbox--content .searchbox-input').outerWidth(true);
				var inputInnerWidth = $('.searchbox--content .searchbox-input').width();
				var assignedWidth = (containerWidth - bttnWidth) - (inputWidth - inputInnerWidth) - 1; // minus 1 so the bttn never drops down when the value isn't a round number
				$('.searchbox--content .searchbox-input').width(assignedWidth);
			}

			jQuery(document).ready(function() {
			  if ($('.searchbox--content').length > 0) {
			  	searchboxWidth();
			  }
			});

			// Width detection on resize
			$(window).resize(function() {
			  if ($('.searchbox--content').length > 0) {
			  	searchboxWidth();
			  }
			});

		}
	}

})(jQuery, Drupal, this, this.document);
