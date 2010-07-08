module Link
  def link_to(text, url)
    "<a href=\"#{url}\">#{text}</a>"
  end
end

class Header
  include Link
  
  def render(*args)
    "{% include title.html %}"
  end
  def flash
    {}
  end
  
  def get_binding
    binding
  end
end

class Footer
  include Link

  def get_binding
    binding
  end
end

class GoogleAnalytics
  class Rails
    def self.application; self end
    def self.google_analytics_ua_number; 'UA-1667526-18' end
  end
  
  def javascript_tag(&blk)
    @output << '<script type="text/javascript">'
    yield
    @output << '</script>'
  end
  
  def get_binding
    binding
  end
end

class Layout
  class Rails
    def self.application
      self
    end
    
    def self.name
      'Developer Hub'
    end
  end
  
  def stylesheet_link_tag(*sheets)
    sheets.collect do |sheet|
      "<link rel=\"stylesheet\" type=\"text/css\" href=\"/stylesheets/#{sheet}.css\" />"
    end
  end
  
  def csrf_meta_tag; end
  def render_or_nothing(*args); end
    
  def render(options = {})
    "{% include #{options[:partial][/[a-z_]*$/]}.html %}"
  end
  
  def get_binding
    binding
  end
end

class String
  def html_safe
    self
  end
end


