module Jekyll
  class VideoYouTube < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text
    end
    def render(context)
      "<iframe width=\"640\" height=\"480\" src=\"http://www.youtube-nocookie.com/embed/#{@text.strip}\" frameborder=\"0\"></iframe><!-- auto youtube -->"
    end
  end
  
  class VideoVimeo < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text
    end
    def render(context)
      "<iframe src=\"http://player.vimeo.com/video/#{@text.strip}?title=0&amp;byline=0&amp;portrait=0\" width=\"640\" height=\"458\" frameborder=\"0\"></iframe><!-- auto vimeo -->"
    end
  end
end
Liquid::Template.register_tag('youtube', Jekyll::VideoYouTube)
Liquid::Template.register_tag('vimeo', Jekyll::VideoVimeo)