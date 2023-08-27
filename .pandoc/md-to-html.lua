function Link(link)
  if link.target:match("^https?://") == nil then
    link.target = string.gsub(link.target, "%.md$", ".html")
  end

  return link
end
