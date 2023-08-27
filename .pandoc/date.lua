-- Source: <https://pandoc.org/lua-filters.html#setting-the-date-in-the-metadata>

function Meta(meta)
  if meta.date == nil then
    meta.date = os.date("%B %d, %Y")
    return meta
  end
end
