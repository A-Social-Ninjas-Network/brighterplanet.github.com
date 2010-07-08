require 'rake'
require 'net/http'
require 'uri'
require 'erb'
require 'lib/stubs'

namespace :layout do
  task :build do
    File.open File.join(File.dirname(__FILE__), '_includes', 'header.html'), 'w' do |f|
      f.puts ERB.new(Net::HTTP.get(URI.parse('http://github.com/brighterplanet/brighter_planet_layout/raw/master/app/views/layouts/_header.html.erb'))).result(Header.new.get_binding)
    end

    File.open File.join(File.dirname(__FILE__), '_includes', 'footer.html'), 'w' do |f|
      f.puts ERB.new(Net::HTTP.get(URI.parse('http://github.com/brighterplanet/brighter_planet_layout/raw/master/app/views/layouts/_footer.html.erb'))).result(Footer.new.get_binding)
    end

    File.open File.join(File.dirname(__FILE__), '_includes', 'google_analytics.html'), 'w' do |f|
      f.puts ERB.new(Net::HTTP.get(URI.parse('http://github.com/brighterplanet/brighter_planet_layout/raw/master/app/views/layouts/_google_analytics.html.erb')), nil, nil, '@output').result(GoogleAnalytics.new.get_binding)
    end

    File.open File.join(File.dirname(__FILE__), '_layouts', 'default.html'), 'w' do |f|
      f.puts ERB.new(Net::HTTP.get(URI.parse('http://github.com/brighterplanet/brighter_planet_layout/raw/master/app/views/layouts/brighter_planet.html.erb'))).result(Layout.new.get_binding  { |*pages| '{{ content }}' if pages.empty? })
    end

    File.open File.join(File.dirname(__FILE__), 'stylesheets', 'brighter_planet.css'), 'w' do |f|
      f.puts Net::HTTP.get(URI.parse('http://github.com/brighterplanet/brighter_planet_layout/raw/master/public/stylesheets/brighter_planet.css'))
    end
    
    %w(bg cards emitters gears logo prism).each do |image|
      File.open File.join(File.dirname(__FILE__), 'stylesheets', 'images', "#{image}.png"), 'wb' do |f|
        f.puts Net::HTTP.get(URI.parse("http://github.com/brighterplanet/brighter_planet_layout/raw/master/public/stylesheets/images/#{image}.png"))
      end
    end
    
#    Dir.mkdir(File.join(File.dirname(__FILE__), 'stylesheets', 'fonts'))

#    %w(KievitWebPro KievitWebPro-Bold KievitWebPro-BoldIta KievitWebPro-Ita).each do |font|
#      %w(eot woff).each do |ext|
#        File.open File.join(File.dirname(__FILE__), 'stylesheets', 'fonts', "#{font}.#{ext}"), 'wb' do |f|
#          f.puts Net::HTTP.get(URI.parse("http://github.com/brighterplanet/brighter_planet_layout/raw/master/public/stylesheets/fonts/#{font}.#{ext}"))
#        end
#      end
#    end

#    %w(DejaVuSansMono DejaVuSansMono-Oblique).each do |font|
#      %w(eot ttf).each do |ext|
#        File.open File.join(File.dirname(__FILE__), 'stylesheets', 'fonts', "#{font}.#{ext}"), 'wb' do |f|
#          f.puts Net::HTTP.get(URI.parse("http://github.com/brighterplanet/brighter_planet_layout/raw/master/public/stylesheets/fonts/#{font}.#{ext}"))
#        end
#      end
#    end

#    %w(KievitOT-Bold KievitOT-BoldItalic KievitOT-Italic KievitOT-Regular).each do |font|
#      File.open File.join(File.dirname(__FILE__), 'stylesheets', 'fonts', "#{font}.otf"), 'wb' do |f|
#        f.puts Net::HTTP.get(URI.parse("http://github.com/brighterplanet/brighter_planet_layout/raw/master/public/stylesheets/fonts/#{font}.otf"))
#      end
#    end
  end
end
