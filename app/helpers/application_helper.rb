module ApplicationHelper
  def md(text)
    return '' unless text
    common_markdown_renderer.render(text).html_safe
  end

  # via https://github.com/vmg/redcarpet/issues/92#issuecomment-35462000
  def md_line(text)
    html = md(text)
    Regexp.new(/\A<p>(.*)<\/p>\Z/m).match(html)[1].html_safe rescue html
  end

  private
    def common_markdown_renderer
      unless @common_markdown_renderer
        @common_markdown_renderer = Redcarpet::Markdown.new(
          Redcarpet::Render::HTML,
          autolink: true
        )
      end
      @common_markdown_renderer
    end
end
