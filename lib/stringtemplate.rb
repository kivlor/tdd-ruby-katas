class StringTemplate
  def self.call(template, **vars)
    vars.keys.each{ |k| template.sub! "{#{k.to_s}}", vars[k] }
    template
  end
end
