module ApplicationHelper
  def md(text)
    return '' unless text
    common_markdown_renderer.render(text).html_safe
  end

  private
    def common_markdown_renderer
      unless @common_markdown_renderer
        @common_markdown_renderer = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
      end
      @common_markdown_renderer
    end
end
