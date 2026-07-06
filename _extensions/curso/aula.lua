-- aula.lua — shortcode  {{< aula 3-4 >}}
-- Badge de posicionamento livre que marca onde um encontro (par de aulas)
-- começa dentro de um tópico. Puramente informativo: o cronograma oficial
-- continua sendo o PLADIS (Apêndice II, régua por pares de aulas).
-- Uso:  {{< aula 3-4 >}}   →  HTML: badge estilizado; PDF: texto em negrito.
-- Estilo definido em theme.scss (.aula-badge).

return {
  ['aula'] = function(args, kwargs, meta)
    local par = args[1] and pandoc.utils.stringify(args[1]) or '?'

    if quarto.doc.is_format('html') then
      return pandoc.RawInline('html',
        '<span class="aula-badge">Aula ' .. par .. '</span>')
    else
      -- PDF / Typst / outros: texto legível
      return pandoc.Strong({ pandoc.Str('[Aula ' .. par .. ']') })
    end
  end
}
