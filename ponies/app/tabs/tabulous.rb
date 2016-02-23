Tabulous.setup do
  
  t5 = '<h2 class="glyphicon icon-user"></h2>' 
  
  

  tabs do

    home_tab do
      text          { '<h2 class="glyphicon glyphicon-home"></h2>' }
      link_path     { root_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('home') }
    end

    resumes_tab do
      text          { '<h2 class="glyphicon glyphicon-paperclip"></h2>' }
      link_path     { resumes_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('resumes') }
    end

    ponies_tab do
      text          { '<h2 class="glyphicon glyphicon-cloud"></h2>' }
      link_path     { ponies_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('ponies') }
    end

    components_tab do
      text          { '<h2 class="glyphicon glyphicon-stats"></h2>' }
      link_path     { components_nav_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('components') }
    end

    people_tab do
      text          { t5 }
      link_path     { people_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('people') }
    end

  end

  customize do


  
    # which class to use to generate HTML
    # :default, :html5, :bootstrap, :bootstrap_pill or :bootstrap_navbar
    # or create your own renderer class and reference it here
    # renderer :default

    # whether to allow the active tab to be clicked
    # defaults to true
    
    active_tab_clickable true

    # what to do when there is no active tab for the current controller action
    # :render -- draw the tabset, even though no tab is active
    # :do_not_render -- do not draw the tabset
    # :raise_error -- raise an error
    # defaults to :do_not_render
    # when_action_has_no_tab :do_not_render

    # whether to always add the HTML markup for subtabs, even if empty
    # defaults to false
    # render_subtabs_when_empty false

  end

  # The following will insert some CSS straight into your HTML so that you
  # can quickly prototype an app with halfway-decent looking tabs.
  #
  # This scaffolding should be turned off and replaced by your own custom
  # CSS before using tabulous in production.
  use_css_scaffolding do
    background_color 'rgba(0,0,0,0.03)'
    text_color '#444'
    active_tab_color '#fff'
    hover_tab_color '#ddd'
    inactive_tab_color 'rgba(0,0,0,0.03)'
    inactive_text_color '#ccc'
  end


  
end