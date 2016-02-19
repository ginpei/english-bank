class Phrase < ActiveRecord::Base
  def body_md
    markdown.render(body).html_safe
  end

  private
    def markdown
      unless @markdown
        @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
      end
      @markdown
    end
end
