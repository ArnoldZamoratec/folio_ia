source 'https://rubygems.org'

gem 'jekyll', '~> 4.3'

# Essential Jekyll plugins only
group :jekyll_plugins do
  gem 'jekyll-feed'
  gem 'jekyll-sitemap'
  gem 'jekyll-seo-tag'
  gem 'jekyll-paginate-v2'
  gem 'jekyll-archives'
  gem 'jekyll-toc'
  gem 'jekyll-scholar'
  gem 'jemoji'
end

# Platform-specific gems
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem 'tzinfo', '>= 1', '< 3'
  gem 'tzinfo-data'
end

# Performance-booster for watching directories on Windows
gem 'wdm', '~> 0.1', :platforms => [:mingw, :x64_mingw, :mswin]

# Lock `http_parser.rb` gem to `v0.6.x` on JRuby builds
gem 'http_parser.rb', '~> 0.6.0', :platforms => [:jruby]

# Dependencies for custom plugins
gem 'feedjira'
gem 'httparty'
