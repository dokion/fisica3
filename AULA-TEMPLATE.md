# TEMPLATE DE NOTA DE AULA — FIS-3 (instruções para agentes de IA)

**Contexto:** curso de Física-2 da Escola de Formação de Oficiais da Marinha Mercante,
publicado com Quarto. Cada tópico do sumário oficial é um arquivo `.qmd` em
`unidades/unidade-N-slug/`. Este arquivo define COMO escrever/completar uma nota de aula.
Toda decisão pedagógica já está tomada nos documentos de `_docs/` — você só preenche,
formata e instancia.

---

## 1. COMO ESTE TEMPLATE É USADO

O professor abre um chat com você e anexa:

1. **Este arquivo** (as regras);
2. **O `.qmd` do tópico** (esqueleto com os objetivos/RAs já mapeados no comentário do topo);
3. **Texto livre dele** — prosa dele intercalada com placeholders `<< instrução >>`
   (e, às vezes, fotos de quadro ou figuras).

**Sua tarefa:** completar SOMENTE os placeholders `<< >>` e formatar o resultado como
`.qmd` válido. O texto que o professor escreveu fora dos placeholders é INTOCÁVEL —
não reescreva, não "melhore", não resuma.

---

## 2. REGRAS INVIOLÁVEIS

1. **Os objetivos (RAs) do tópico estão no comentário no topo do `.qmd`** — são a fonte
   única. Não inventar objetivo, não cobrir conteúdo de outro tópico, não rebaixar nem
   inflar o nível Bloom do verbo.
2. **Todo conteúdo aponta para um objetivo do cabeçalho.** Se um trecho não responde a
   nenhum, ele sai.
3. **Contexto naval vem do cabeçalho** (coluna "→ naval") e das faixas SP da Seção 6 do
   Documento Mestre. Números realistas das faixas dadas — nunca inventados.
4. **Onde faltar dado** (valor, figura ilegível, referência): escrever `[VERIFICAR]` —
   nunca inventar.
5. **Nada de avaliação aqui:** provas, gabaritos e questões de banco não entram em nota
   de aula.

---

## 3. O RITMO PADRÃO (a "célula" de escrita)

A unidade de escrita é a **ideia**, não o capítulo. Cada seção = 1 ideia, sempre neste
ritmo:

1. **Prosa curta** (2–4 frases, nunca mais de 5 linhas): motivação e física antes da
   conta — *por que* isso importa, *o que* vamos fazer.
2. **Dedução em display math**, todos os passos relevantes, com no máximo 1 linha de
   conectivo entre equações ("substituindo (2) em (1):").
3. **1 frase de interpretação**: o que o resultado diz fisicamente.
4. **Opcional:** 1 bloco destacado (exemplo naval, erro clássico ou simulação).

**Quando usar cada formato:**

| Função do trecho | Formato |
|---|---|
| Motivação, interpretação, transição | Prosa curta (2–4 frases) |
| Dedução matemática | Display math `$$ $$`, passo a passo |
| Conteúdo genuinamente enumerável (exemplos, classificações, checklists) | Lista de tópicos |
| Exemplo resolvido naval | Caixa `::: {.sp}` no padrão (a) modelagem (b) desenvolvimento (c) resultado (d) análise crítica |
| Pergunta orientadora de simulação | Caixa `::: {.pergunta}` |
| Erro clássico | `::: {.callout-warning}` |

A completude vem da **dedução matemática íntegra**, não de prosa longa. Teste: um aluno
que faltou reconstrói o raciocínio do quadro lendo a nota? Então está completa.

---

## 4. CONVENÇÕES DO PROJETO (Quarto)

- **Badge de aula:** `{{< aula 3-4 >}}` — o professor posiciona onde o encontro começa.
  Não mover nem remover badges existentes; se criar, usar o par indicado pelo professor.
- **Badge de objetivo:** `{{< ra OE1.5 B3 >}}` ao lado de títulos de seção, quando o
  professor pedir rastreabilidade visível.
- **YAML:** manter `title` e `categories` (códigos `UEn`, `OEn.m-Bk`) do esqueleto.
- **Situação-problema:** `::: {.sp}` ... `:::` — sempre com dados nas faixas SP.
- **Pergunta orientadora:** `::: {.pergunta}` ... `:::` — obrigatória junto a toda
  simulação.
- **Equações:** LaTeX. Variáveis em itálico, unidades SI romanas (`\,\text{m/s}`).

### Simulações e figuras (paridade HTML/PDF — Apêndice Q)

- Máximo **1 simulação interativa por tópico**, e só se ela responder a um objetivo.
  Escolha da lib pela tabela Q4 do Apêndice Q (movimento → p5.js; gráfico explorável →
  Plotly; interação entre corpos → Matter.js; etc.).
- **Toda visualização interativa exige equivalente estático matplotlib** num bloco
  `{python}`, com os MESMOS parâmetros numéricos (o PDF da apostila é entregável).
- Toda simulação vem acompanhada de `::: {.pergunta}` com 1 pergunta orientadora.
- Se você não tem certeza da lib ou dos parâmetros: deixe um comentário
  `<!-- SIMULAÇÃO SUGERIDA: [descrição, lib pela tabela Q4, parâmetros SP] -->` em vez
  de gerar código quebrado.

---

## 5. PLACEHOLDERS — O CONTRATO `<< >>`

O professor escreve livre e marca o que delega. Exemplos reais de como interpretar:

| O professor escreve | Você entrega |
|---|---|
| `<< Definir movimento harmônico como ... >>` | A definição formal, no ritmo da Seção 3, com a redação técnica correta |
| `<< falar da importância e exemplos de MHS na área naval em formato de tópicos >>` | Lista de tópicos, com os exemplos navais do cabeçalho de RAs |
| `<< place holder para uma imagem >>` | `![{legenda} [VERIFICAR]](img/{slug}.png){#fig-slug}` + comentário do que a figura deve mostrar |
| `<< Aqui entra uma simulação ... >>` | Bloco interativo completo (lib pela tabela Q4) + matplotlib de paridade + `::: {.pergunta}` |
| Texto sem placeholder | NADA — preservar literalmente |

Se um placeholder for ambíguo, escolha a leitura mais simples e marque
`<!-- [VERIFICAR: interpretei como ...] -->` para o professor conferir.

---

## 6. ESQUELETO DE REFERÊNCIA

Um tópico novo (se algum dia for preciso criar um) nasce assim:

````markdown
---
title: "N.M — {Título do tópico, igual ao sumário}"
categories: [UEn, OEn.m-Bk, ...]
---

<!-- ═══ OBJETIVOS DESTE TÓPICO — fonte: _docs/FIS_3_RA.md (não editar) ═══
OE n.m [Bk] {texto do objetivo}
            → naval: {aplicação do FIS_3_RA.md}
═══════════════════════════════════════════════════════════════════════ -->

{{< aula N-M >}}

{conteúdo no ritmo da Seção 3}
````

**Exemplares para imitar** (tom, densidade e estrutura):
`unidades/unidade-1-eletrostatica/1-01-lei-de-coulomb.qmd` e
`unidades/unidade-1-eletrostatica/1-03-lei-de-gauss.qmd`.

---

## 7. CHECKLIST ANTES DE DEVOLVER

- [ ] Todo `<< >>` do professor foi resolvido (ou marcado `[VERIFICAR]`)?
- [ ] Texto do professor fora dos placeholders preservado byte a byte?
- [ ] Cada seção responde a um objetivo do cabeçalho?
- [ ] Parágrafos ≤ 5 linhas; deduções completas em display math?
- [ ] Simulação (se houver): lib pela tabela Q4 + matplotlib de paridade + pergunta orientadora?
- [ ] Números navais dentro das faixas SP do Mestre §6?
- [ ] YAML válido, `title` e `categories` intactos?
