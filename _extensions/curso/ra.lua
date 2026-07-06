-- ra.lua — shortcode  {{< ra RA3 B4 >}}
-- Renderiza badges inline: o RA (contornado) + o nível Bloom (sólido).
-- Uso:  {{< ra RA3 >}}   ou   {{< ra RA3 B4 >}}
-- Estilo definido em theme.scss (.ra-badge). No PDF, vira texto legível.

return {
  ['ra'] = function(args, kwargs, meta)
    local ra    = args[1] and pandoc.utils.stringify(args[1]) or nil
    local bloom = args[2] and pandoc.utils.stringify(args[2]) or nil

    if quarto.doc.is_format('html') then
      local parts = {}
      if ra then
        parts[#parts + 1] = '<span class="ra-badge ra-ra">' .. ra .. '</span>'
      end
      if bloom then
        parts[#parts + 1] = '<span class="ra-badge ra-bloom">' .. bloom .. '</span>'
      end
      return pandoc.RawInline('html',
        '<span class="ra-badges">' .. table.concat(parts) .. '</span>')
    else
      -- PDF / Typst / outros: texto legível
      local txt = ra or ''
      if bloom then txt = txt .. ' [' .. bloom .. ']' end
      return pandoc.Str(txt)
    end
  end
}
