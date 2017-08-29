###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

activate :sprockets
activate :directory_indexes

activate :contentful do |f|
  f.access_token = 'df7bbab3d567a7899b8ac453afdd6f0b747b89e30c63f90b85e25f86447d3c8f'
  f.space = { site: 'leru95nhtzzv' }
  f.rebuild_on_webhook = false
  f.content_types = {
    category: '6XwpTaSiiI2Ak2Ww0oi6qa'
  }
end

data.site.category.each do |id, category|
  proxy "/#{category.slug}/index.html", "/detail.html", :locals => { :products => category.products, :title => category.title }, :ignore => true
end

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
helpers do
  def nav_active(path)
    current_page.path == path ? "active" : ""
  end
end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end