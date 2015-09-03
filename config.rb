require 'haml'
require 'bootstrap-sass'

# Compass

activate :sprockets

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
page "/recomy-best-of-swiss-web-2014.html", layout: false
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

redirect "pantalk/index.html", :to => "http://www.meetup.com/Pantalks-tech-non-tech-talks-Panter-AG-Zurich/"

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

activate :deploy do |deploy|
  deploy.method = :rsync
  deploy.host = 'panter.ch'
  deploy.user = 'panterch'
  deploy.clean = true
  if ENV['TARGET'].to_s == 'production'
    deploy.path = 'www.panter.ch'
  else
    deploy.path = 'beta.panter.ch'
  end

  # temporary: ignore the next-landing-page folder
  deploy.flags = '-avz --exclude files --exclude next-landing-page --exclude talks'
end

# Methods defined in the helpers block are available in templates
helpers do
  def other_lang(langs, lang)
    (langs - [lang.to_sym]).first.to_s
  end
end

set :css_dir, 'css'

set :js_dir, 'js'

set :images_dir, 'img'

activate :i18n, :langs => [:de, :en], :mount_at_root => :de

# Build-specific configuration
configure :build do
  ignore 'source/img/icons/*.png'

  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  activate :favicon_maker do |f|
    f.template_dir  = File.join(root, 'source', 'img', 'favicon')
    f.icons = {
      'apple-touch-icon-precomposed.png' => [
        { icon: 'apple-touch-icon-152x152-precomposed.png' },
        { icon: 'favicon.ico', size: '64x64,32x32,24x24,16x16' },
      ]
    }
  end

  # Use relative URLs
  activate :relative_assets

  activate :imageoptim

  # Enable cache buster
  #activate :asset_hash

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
