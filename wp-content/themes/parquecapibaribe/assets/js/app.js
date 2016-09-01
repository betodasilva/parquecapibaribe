function App(){
    var self = this;

    self.init = init;
    self.destroy = destroy;

    function init(){
        self.cm = new CacheManager();

        self.menu = new Menu(self.cm);
        self.menu.init();

        self.projectSlider = new ProjectSlider(self.cm);

        self.router = new Router(self.cm, self.menu);
        jQuery('#menu a').click(function(e){
            e.preventDefault();
            jQuery("html")
                .velocity('stop')
                .velocity('scroll', {
                    duration: 1000, 
                    offset: jQuery('#content section').offset().top 
                });
            location.hash = jQuery(this).attr('href')
        })
        jQuery('#menu a').each(function(i, el){
            var item = jQuery(el);
            var itemStateName = item.attr('href').substr(1);
            self.router.addState(itemStateName, {
                url: itemStateName,
                templateUrl: item.attr('data-page-url'),
                controller: function(stateName, args, states){
                    self.menu.renderSection(stateName, states, function(){
                        if(item.attr('data-menu-item-type') === 'category'){
                            jQuery('#content .action').each(function(i, el){
                                jQuery(el).attr('href', '#'+itemStateName+'/'+jQuery(el).attr('data-action-slug'));
                            });
                        }
                    });
                }
            });

            if(item.attr('data-menu-item-type') === 'category'){
                self.router.addState(itemStateName+'-ActionDetail', {
                    url: itemStateName+'/:actionId',
                    controller: function(stateName, args, states){
                        if(jQuery('#content').html() === ''){
                            self.menu.renderSection(itemStateName, states, function(){
                                jQuery('#content .action').each(function(i, el){
                                    jQuery(el).attr('href', '#'+itemStateName+'/'+jQuery(el).attr('data-action-slug'));
                                });
                                self.projectSlider.init({
                                    slideClass: '.bdq-slide',
                                    templateUrl: jQuery('#'+args.actionId).attr('data-action-link'),
                                    title: jQuery('#'+args.actionId).attr('data-action-title')
                                });
                            });
                        } else {
                            self.projectSlider.init({
                                slideClass: '.bdq-slide',
                                templateUrl: jQuery('#'+args.actionId).attr('data-action-link'),
                                title: jQuery('#'+args.actionId).attr('data-action-title')
                            });
                        }
                    }
                });
            }

            if(i === 0){
                self.router.setDefaultState(item.attr('href').substr(1));
            }
        });
        
        

        self.router.init();
    }

    function destroy(){
        self.menu.destroy();
        self.router.destroy();
    }
}