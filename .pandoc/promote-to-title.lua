local title = nil

function Header(header)
  if title == nil and header.level == 1 then
    title = pandoc.utils.stringify(header.content)
  end

  return header
end

function Meta(meta)
  if meta.title == nil then
    meta.title = title
  end

  return meta
end
