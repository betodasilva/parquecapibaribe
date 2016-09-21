function Menu(cm){
  var self = this;
  var lastOffsetBeforeAnimation;

  var DIRECTIONS = {
    DOWN: +1,
    UP: -1
  };

  var tempWrapper = jQuery('<div>').css('display', 'none').attr('id', 'temp-wrapper');
  jQuery('body').append(tempWrapper);

  var spinnerModal = jQuery('<div id="loading-modal">'+
    '<div class="spinner-wrapper">'+
      '<div class="sk-folding-cube">'+
        '<div class="sk-cube1 sk-cube"></div>'+
        '<div class="sk-cube2 sk-cube"></div>'+
        '<div class="sk-cube4 sk-cube"></div>'+
        '<div class="sk-cube3 sk-cube"></div>'+
      '</div>'+
    '</div>'+
  '</section>');

  var activeSection;
  var oldSection;
  var oldSectionIdx;
  var activeSectionIdx;
  var sectionsRendered;

  var defaultConfig = {
    wrapperSel: '#content',
    mobileMenuBtnSel: '#mobile-menu-btn',
    sectionList: defaultGetSectionList(),
    notFoundTemplateUrl: 'http://localhost/parquecapibaribe/wp-content/themes/parquecapibaribe/sections' +'/'+ '404.php',
    speed: 500
  };

  self.init = init;
  self.destroy = destroy;
  self.getActiveSection = getActiveSection;
  self.renderSection = renderSection;

  function getActiveSection(){
    return activeSection;
  }

  function renderSection(hashStr, states, callback){
    oldSection = activeSection;
    activeSection = !!hashStr ? hashStr : (!!self.config.initialSection ? self.config.initialSection : self.config.sectionList[0]);
    oldSectionIdx = getSectionIndex(oldSection);
    activeSectionIdx = getSectionIndex(activeSection);
    sectionsRendered = 0;

    jQuery('#temp-wrapper').html(jQuery('#content').html());

    lastOffsetBeforeAnimation = Math.max(0, jQuery(window).scrollTop() - (jQuery('#content #'+oldSection).offset() ? jQuery('#content #'+oldSection).offset().top : 0));

    jQuery('body').removeClass('mobile-menu-opened');
    if(!oldSection){
      cm.get(states[activeSection].templateUrl)
        .done(function(template){
          jQuery(self.config.wrapperSel).html(jQuery(template).addClass('active'));
          jQuery('#loading-modal').remove();
          callback();
        });
    } else {
      jQuery('body').append(spinnerModal.clone());
      if(activeSectionIdx < 0){
        render404Template(callback);
      } else {
        if(oldSectionIdx < activeSectionIdx){
          goToActiveSection(states, DIRECTIONS.DOWN, callback);
        } else if(oldSectionIdx > activeSectionIdx) {
          goToActiveSection(states, DIRECTIONS.UP, callback);
        } else {
          jQuery('#loading-modal').remove();
        }
      }
    }
  }

  function init(config){
    self.config = jQuery.extend(true, defaultConfig, config);
    jQuery('body').append(spinnerModal.clone().css({
          width: '100vw',
          height: '100vh',
          top: 0,
          left: 0,
          margin: 0,
          background: 'white'
      }));
    
    jQuery(self.config.mobileMenuBtnSel).click(function(e){
      e.preventDefault();
      e.stopPropagation();
      jQuery('body').toggleClass('mobile-menu-opened');
    });

    jQuery('header').click(function(e){
      jQuery('body').removeClass('mobile-menu-opened');
    });

    jQuery(document).on('click', 'section', function(e){
      jQuery('body').removeClass('mobile-menu-opened');
    });

    jQuery('footer').click(function(e){
      jQuery('body').removeClass('mobile-menu-opened');
    });

    jQuery(window).on('scroll', relocateMenu);
    relocateMenu();
  }
  

  function getSectionIndex(sectionName){
    return self.config.sectionList.indexOf(sectionName);
  }

  function render404Template (){
    jQuery(self.config.wrapperSel).html('<section id="404">'+
      '<h1 class="text-center"> ERRO: Página não encontrada!</h1>'+
    '</section>');
    jQuery('#loading-modal').remove();
    callback();
  }

  function goToActiveSection(states, animationDirection, callback){
    for(var i = oldSectionIdx + animationDirection; 
      animationDirection === 1 ? i <= activeSectionIdx : i >= activeSectionIdx;
      i += animationDirection){

      renderSectionTemplate(states, i, animationDirection, callback);
    }
  }

  function putSectionInTheRightPlace(sectionEl, idx){
    if(idx != 0){
      var foundSectionBefore = false;
      for(var k = idx - 1; k >= 0 && !foundSectionBefore; k--){
        if(jQuery('#temp-wrapper').find('#'+self.config.sectionList[k]).length > 0){
          foundSectionBefore = true;
          jQuery('#temp-wrapper').find('#'+self.config.sectionList[k]).after(sectionEl.clone());
        }
      }
      if(!foundSectionBefore){
        jQuery('#temp-wrapper').prepend(sectionEl.clone());
      }
    } else {
      jQuery('#temp-wrapper').prepend(sectionEl.clone());
    }
  }
  
  function removeInactiveSections(animationDirection){
    for(var j = activeSectionIdx - animationDirection; 
      animationDirection === -1 ? j <= oldSectionIdx : j >= oldSectionIdx; 
      j -= animationDirection){

      jQuery(self.config.wrapperSel).find('#' + self.config.sectionList[j]).remove();
      jQuery("html, body").scrollTop( jQuery('#content #'+activeSection).offset().top );

    }
  }

  function renderSectionTemplate(states, idx, animationDirection, callback){
    cm.get(states[self.config.sectionList[idx]].templateUrl)
      .done(function(template){
        var sectionEl = jQuery(template);

        putSectionInTheRightPlace(sectionEl, idx);
        if(animationDirection === -1){
          jQuery("html, body").scrollTop( jQuery('#content #'+oldSection).offset().top + lastOffsetBeforeAnimation );
        }
        sectionsRendered++;

        if(sectionsRendered === Math.abs(oldSectionIdx - activeSectionIdx)){
          jQuery('#loading-modal').remove();
          jQuery(self.config.wrapperSel).html(jQuery('#temp-wrapper').html());

          if(!!oldSection)
            jQuery("html, body").scrollTop( jQuery('#content #'+oldSection).offset().top + lastOffsetBeforeAnimation );

          jQuery('#temp-wrapper').html('');

          jQuery('#'+activeSection).addClass('active');
          jQuery("html")
            .velocity('stop')
            .velocity('scroll', {
              duration: self.config.speed, 
              offset: jQuery('#content #'+activeSection).offset().top, 
              complete: function(){
                removeInactiveSections(animationDirection);
                callback();
              }
            });
        }
      });
  }

  function relocateMenu() {
    var window_top = jQuery(window).scrollTop();
    var div_top = jQuery('header').outerHeight(true);
    if (window_top > div_top) {
      jQuery('#full-menu').addClass('fixed');
    } else {
      jQuery('#full-menu').removeClass('fixed');
    }
  }

  function destroy(){
    jQuery(window).off('scroll');
    jQuery(self.config.mobileMenuBtnSel).off('click');
    jQuery('header, section, footer').off('click');
  }

  function defaultGetSectionList(){
    var sections = [];
    for(var idx in jQuery('#menu li a').toArray()){
      sections.push(jQuery(jQuery('#menu li a')[idx]).attr('href').substr(1));
    }
    return sections;
  }
}

