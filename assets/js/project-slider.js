//                     Theme for wordpress temaplate.
//     Copyright (C) 2016  Universidade Federal de Pernambuco/INCITI


//   This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

// Email: root@3ecologias.net


function ProjectSlider(cm){

    var self = this;

    var uid, 
        activeSlide = 0,
        slides = [],
        defaultConfig = {
            previousBtnClass: '.previous-btn',
            nextBtnClass: '.next-btn',
            closeBtnClass: '.close-btn',
            slideClass: '.slide'
        };

    self.init = init;
    self.destroy = destroy;
    self.goToSlide = goToSlide;
    self.next = next;
    self.previous = previous;

    function init(config){
        generateUid();
        self.config = jQuery.extend(true, defaultConfig, config);

        jQuery('html,body').addClass('no-scroll');

        initSlideTemplate();
        initBtnEvents();
        loadSlideContent();

        updateControlButtonsBehavior(0);
    }

    function initSlideTemplate(){
        var slider = jQuery('<div>')
            .addClass('slider')
            .attr('id', uid.substr(1));


        var spinner = jQuery('<div class="spinner-wrapper">'+
          '<div class="sk-folding-cube">'+
            '<div class="sk-cube1 sk-cube"></div>'+
            '<div class="sk-cube2 sk-cube"></div>'+
            '<div class="sk-cube4 sk-cube"></div>'+
            '<div class="sk-cube3 sk-cube"></div>'+
          '</div>'+
        '</div>');

        var title = jQuery('<h1>')
            .html(self.config.title)
            .appendTo(slider);

        var slideWrapper = jQuery('<div>')
            .addClass('slide-wrapper')
            .appendTo(slider);

        var closeBtn = jQuery('<button>')
            .addClass(self.config.closeBtnClass.substr(1))
            .appendTo(slider)
            .html('<i class="glyphicon glyphicon-remove"> </i>');

        var previousBtn = jQuery('<button>')
            .addClass(self.config.previousBtnClass.substr(1) + ' visible-md visible-lg')
            .appendTo(slider)
            .html('<i class="glyphicon glyphicon-chevron-left"> </i>');

        var nextBtn = jQuery('<button>')
            .addClass(self.config.nextBtnClass.substr(1) + ' visible-md visible-lg')
            .appendTo(slider)
            .html('<i class="glyphicon glyphicon-chevron-right"> </i>');

        jQuery('body').append(slider);
    }

    function initBtnEvents(){
        jQuery(self.config.previousBtnClass).click(function(e){
            if(activeSlide > 0){
                previous();
            }
        });
        jQuery(self.config.nextBtnClass).click(function(e){
            if(activeSlide < getSlidesCount() - 1){
                next();
            }
        });
        jQuery(self.config.closeBtnClass).click(function(e){
            destroy();
        });
    }


    function getSlidesCount(){
        return jQuery(uid).find(self.config.slideClass).length;
    }

    function generateUid(){
        uid = '#project-slide-' + 1;
        for(var i=2; jQuery(uid).length !== 0; i++){
            uid = '#project-slide-' + i;
        }
    }

    function next(){
        if(activeSlide < getSlidesCount() - 1){
            goToSlide(activeSlide+1);
        }
    }


    function previous(){
        if(activeSlide > 0){
            goToSlide(activeSlide-1);
        }
    }


    function goToSlide(slide){
        if(slide < getSlidesCount() && slide >= 0){
            activeSlide = slide;
            jQuery(uid).find(self.config.slideClass).addClass('hidden-md hidden-lg');
            jQuery(jQuery(uid).find(self.config.slideClass)[slide]).removeClass('hidden-md hidden-lg');
        }

        updateControlButtonsBehavior(slide);
        
    }

    function updateControlButtonsBehavior(slide){
        if(slide === 0){
            jQuery(self.config.previousBtnClass).addClass('disabled');
        } else {
            jQuery(self.config.previousBtnClass).removeClass('disabled');
        }

        if(slide === getSlidesCount() - 1){
            jQuery(self.config.nextBtnClass).addClass('disabled');
        } else {
            jQuery(self.config.nextBtnClass).removeClass('disabled');
        }
    }

    function loadSlideContent(){
        cm.get(self.config.templateUrl).done(function(templateStr){
            jQuery(uid).find('.slide-wrapper').html(templateStr);
            jQuery(uid).find(self.config.slideClass).each(function(i, el){
                if(i !== 0){
                    jQuery(el).addClass('hidden-md hidden-lg');
                }
            });
            jQuery('.spinner-wrapper').remove();
        });
    }

    function destroy(){
        jQuery(self.config.previousBtnClass).off('click');
        jQuery(self.config.nextBtnClass).off('click');
        jQuery(self.config.closeBtnClass).off('click');
        jQuery(uid).remove();

        activeSlide = 0;

        jQuery('html,body').removeClass('no-scroll');

        var urlParts = location.hash.split('/');
        urlParts.pop();
        location.hash = urlParts.length > 1 ? urlParts.join('/') : urlParts[0];
    }

}