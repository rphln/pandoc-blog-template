function Header(header)
  header.content = pandoc.Link(header.content, "#" .. header.identifier)
  return header
end
