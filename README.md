# Brand do curso — sienna-Dokion para Quarto

Identidade visual herdada do **Dokion v4.0 (tema light)**: papel terracota, tinta
quente, acento **sienna profundo `#5C2A14`**, e o trio EB Garamond / DM Sans /
IBM Plex Mono. Apostila e Dokion passam a ler como um produto só.

## 1. Onde colocar cada arquivo

Copie para a **raiz do projeto Quarto** da disciplina:

```
fisica-3/
├── _brand.yml                     ← cores + fontes (HTML e PDF)
├── theme.scss                     ← detalhe visual (navbar, badges, caixas…)
├── _extensions/
│   └── curso/
│       ├── _extension.yml
│       └── ra.lua                 ← shortcode {{< ra >}}
└── _quarto.yml                    ← edite conforme o passo 2
```

## 2. Wiring no `_quarto.yml`

No bloco `format: html`, troque o `theme:` antigo (ex.: `cosmo`) por:

```yaml
format:
  html:
    theme: [brand, theme.scss]     # Bootstrap base + _brand.yml + seu detalhe
    toc: true
    html-math-method: mathjax
  pdf:
    # o _brand.yml também tematiza o PDF (Typst recomendado):
    # format: typst
    toc: true
```

> Tire a injeção de fontes do `include-in-header` — o `_brand.yml` cuida disso agora.

## 3. Os três componentes

**Badge de RA** — inline, é um shortcode de verdade:

```markdown
Nesta seção: {{< ra RA3 B4 >}}
```

**Caixa de Situação-Problema** e **Pergunta orientadora** — são *Divs*, não
shortcodes. Motivo: shortcode não envolve um bloco de conteúdo (com itens a–d);
Div é a ferramenta certa do Quarto pra isso, e preenche igual:

````markdown
::: {.sp}
**SP2 · Estabilidade transversal**  {{< ra RA3 B4 >}}

(a) Modelagem — …
(b) Desenvolvimento — …
(c) Resultado — …
(d) Análise crítica — …
:::

::: {.pergunta}
O que acontece com o período de balanço quando você dobra a boca?
Confirme com a fórmula.
:::
````

A caixa ganha o cabeçalho ("Situação-Problema" / "Para explorar →") sozinha, via CSS.

**Notas de margem** (onde os códigos de RA ficam elegantes, estilo Tufte):

```markdown
Texto principal aqui.[^m1]

[^m1]: {{< ra RA3 >}} comentário lateral.
```
…ou `::: {.column-margin}` … `:::` para figuras/quadros na margem.

## 4. Fontes offline (antes de gerar o pendrive)

O `_brand.yml` vem com `source: google` — funciona online e no gh-pages. Para o
**laboratório sem internet**, faça uma vez por semestre (igual ao download das
libs da Seção Q6):

1. Baixe as três famílias em **woff2** em <https://gwfh.mranftl.com/fonts>
   (EB Garamond, DM Sans, IBM Plex Mono) para uma pasta `fonts/`.
2. No `_brand.yml`, troque o bloco `fonts:` por `source: file` (ajuste os nomes
   aos arquivos que você baixou):

```yaml
typography:
  fonts:
    - family: EB Garamond
      source: file
      files:
        - { path: fonts/eb-garamond-400.woff2,  weight: 400, style: normal }
        - { path: fonts/eb-garamond-400i.woff2, weight: 400, style: italic }
        - { path: fonts/eb-garamond-600.woff2,  weight: 600, style: normal }
    - family: DM Sans
      source: file
      files:
        - { path: fonts/dm-sans-400.woff2, weight: 400, style: normal }
        - { path: fonts/dm-sans-500.woff2, weight: 500, style: normal }
    - family: IBM Plex Mono
      source: file
      files:
        - { path: fonts/ibm-plex-mono-400.woff2, weight: 400, style: normal }
```

O Quarto copia `fonts/` para o `_site/` — o pendrive mantém a identidade.

## 5. Decisões embutidas (caso queira mexer)

- **Navbar em sienna profunda** com texto em papel: a expressão mais forte da
  marca, e o que mais foge do "cara de template". Área de leitura segue clara.
- **Sem bootswatch** (`cosmo` saiu): base Bootstrap + brand + seu SCSS.
- **Raios curtos** (2/3/6px) e etiquetas mono em maiúsculas espaçadas — réplica
  da estética do Dokion.
- Hover da navbar usa a **brasa `#C85C2E`** (o acento do dark do Dokion).