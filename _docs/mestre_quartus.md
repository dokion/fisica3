# DOCUMENTO MESTRE — APÊNDICE Q: Publicação com Quarto + Bibliotecas JS
**Função:** apêndice ao Documento Mestre do Curso de Física em Padrão Internacional. Define COMO publicar o material do curso (notas de aula, listas, syllabus) usando Quarto, e QUANDO usar cada biblioteca JS para ilustrações interativas. Segue a mesma regra de ouro: nenhuma decisão é delegada ao modelo de IA — todas estão tomadas aqui. O modelo só preenche, instancia e formata.
**Pré-requisito de leitura:** Documento Mestre (Seções 6, 9, 10).
**Referência de estilo:** TU Delft OCW (material publicado, navegável, com componente computacional embutido).

---

## Q0. COMO USAR ESTE APÊNDICE

1. **Com modelos baratos:** cole o Documento Mestre + este apêndice + um prompt da Seção Q7.
2. **Regra de ouro:** se algo gerado contradisser este apêndice ou o Documento Mestre, os documentos vencem.
3. **Princípio offline-first:** todo material publicado deve funcionar sem internet quando possível (Seção Q6) — coerente com a restrição institucional de conectividade.

---

## Q1. PAPEL DO QUARTO NO FLUXO DO CURSO

O Quarto é o motor de publicação das **notas de aula (Seção 10 do Mestre)** e, opcionalmente, das **listas (Seção 9)** e do **syllabus (Seção 3)**. Mapa de correspondência:

| Etapa do Mestre | Artefato Quarto | Formato de saída |
|---|---|---|
| Seção 3 — Syllabus | `index.qmd` ou `syllabus.qmd` | HTML (site) + PDF |
| Seção 9 — Listas | `lista-N.qmd` (1 arquivo por lista) | HTML + PDF |
| Seção 10 — Notas de aula | `aula-NN-titulo.qmd` (template da Seção 10 vira .qmd) | HTML + PDF |
| Seção 8 — Projeto computacional | bloco `{python}` executável dentro da nota de aula correspondente | HTML (código visível e executado) |
| Seção 14 — Desafio Naval | `desafio-naval.qmd` (regulamento + resultados pós-evento) | HTML + PDF |

**O que NÃO vai para o Quarto:** provas, blueprints, bancos de questões Dokion. Material de avaliação não é publicado.

**Fluxo semanal (integra com o checklist da Seção 13):**
```
foto do quadro → modelo transcreve (prompt P5 do Mestre) → professor revisa
→ salva como aula-NN.qmd → quarto render → quarto publish gh-pages
```
Custo adicional sobre o fluxo já previsto na Seção 10: ~2 min (render + publish).

---

## Q2. ESTRUTURA-PADRÃO DO PROJETO QUARTO

Um projeto por disciplina:

```
fisica-1/
├── _quarto.yml          # configuração (template Q3)
├── index.qmd            # página inicial = syllabus resumido
├── aula-01-cinematica.qmd
├── aula-02-vetores.qmd
├── lista-01.qmd
├── libs/                # bibliotecas JS baixadas (modo offline, Q6)
├── img/                 # fotos de quadro tratadas, diagramas
└── _site/               # gerado — nunca editar, nunca comitar
```

Convenções obrigatórias:
- Nome de arquivo: `aula-NN-slug.qmd`, `lista-NN.qmd` (NN com zero à esquerda — ordena sozinho).
- Todo `.qmd` de aula segue o template da Seção 10 do Mestre (Ideia central / Desenvolvimento / Exemplo SP / Erros clássicos / Conexão).
- Códigos [RAx][By] aparecem no YAML do arquivo (campo `categories`) para rastreabilidade.

---

## Q3. TEMPLATE `_quarto.yml` (PADRÃO DO CURSO)

```yaml
project:
  type: website
  output-dir: _site

website:
  title: "{Disciplina} — {Escola}"
  lang: pt-BR
  navbar:
    left:
      - href: index.qmd
        text: Syllabus
      - text: Aulas
        menu:
          - aula-01-cinematica.qmd
      - text: Listas
        menu:
          - lista-01.qmd

format:
  html:
    theme: cosmo
    toc: true
    toc-title: "Nesta página"
    number-sections: true
    lang: pt-BR
    html-math-method: mathjax
    include-in-header:
      - text: |
          <script src="https://cdn.plot.ly/plotly-2.32.0.min.js"></script>
          <script src="https://cdn.jsdelivr.net/npm/p5@1.9.4/lib/p5.min.js"></script>
  pdf:
    documentclass: article
    lang: pt-BR
    toc: true
    number-sections: true

execute:
  echo: true
  warning: false
```

Regras:
- Carregar no header global apenas as libs usadas em VÁRIAS páginas (Plotly e p5 são o caso típico). As demais entram página a página (Q5).
- Pyodide NUNCA entra no header global (10 MB por página).
- O `format: pdf` é obrigatório — a apostila impressa é entregável do curso (alunos sem internet).

---

## Q4. AS 7 BIBLIOTECAS — QUANDO USAR CADA UMA

Decisão por tabela, não por gosto. Coluna "SPs típicos" referencia a Seção 6 do Mestre.

| Lib | Usar quando... | Física típica | SPs típicos | PDF? |
|---|---|---|---|---|
| **Plotly.js** | o aluno precisa explorar um gráfico (zoom, hover, comparar curvas) | curvas de energia, GZ×θ, espectros, diagramas P-V | SP2, SP3, SP10 | ✗ (usar matplotlib no bloco `{python}` para a versão PDF) |
| **p5.js** | o conceito é um MOVIMENTO contínuo que o aluno deve observar | MHS, pêndulo, projéteis, propagação de onda, roll do navio | SP3, SP7, SP8, SP12 | ✗ |
| **Matter.js** | há INTERAÇÃO entre corpos (colisão, vínculo, mola) | momentum, impulso, colisões, polias, Hooke | SP5, SP8 | ✗ |
| **Anime.js** | o professor quer uma SEQUÊNCIA controlada (mostrar passo a passo) | vetores em MRU/MRUV, fases de ciclo termodinâmico, etapas de circuito | SP10, SP11 | ✗ |
| **D3.js** | a figura é DADO desenhado com precisão (campo, isolinha, diagrama) | campo elétrico/gravitacional, linhas de campo, diagrama de fase | SP6, SP11 | parcial (SVG estático exporta) |
| **Three.js / Canvas iso** | a geometria 2D NÃO BASTA | onda 3D, superfície de potencial, casco, momento angular vetorial | SP2, SP3 | ✗ |
| **Pyodide** | o aluno deve EDITAR E RODAR código na própria apostila | qualquer SP com componente numérico; preparação para o projeto computacional (Seção 8) | SP2, SP7, SP8 | ✗ |

**Regra de decisão rápida (teste de 10 segundos):**
1. É gráfico de função/dados? → Plotly (interativo) + matplotlib (PDF).
2. É movimento? → p5.js. Com colisão/vínculo? → Matter.js.
3. É sequência didática passo a passo? → Anime.js.
4. É campo ou diagrama de precisão? → D3.js.
5. Precisa de 3D? → Three.js (com fallback Canvas 2D isométrico — Q5.3).
6. O aluno deve mexer no código? → Pyodide.
7. Nenhuma das anteriores → figura estática matplotlib. **Interatividade sem propósito didático é proibida** — anima-se o que o RA pede, não o que fica bonito.

**Regra de paridade HTML/PDF:** toda visualização interativa DEVE ter equivalente estático no PDF. Padrão: o bloco `{python}` com matplotlib gera a figura do PDF; o bloco `{=html}` com a lib JS gera a versão interativa. Os dois usam OS MESMOS parâmetros numéricos (mesma faixa SP da Seção 6).

---

## Q5. RECEITAS DE INSTANCIAÇÃO (para modelos baratos)

### Q5.1 Bloco interativo padrão
Estrutura fixa de toda visualização interativa em nota de aula:

````markdown
## {Título da visualização}  [RAx][By]

{1–2 frases: o que o aluno deve OBSERVAR e qual conceito isso ilustra.}

```{python}
#| fig-cap: "{legenda}"
# Versão estática (vai para o PDF) — matplotlib, mesmos parâmetros
```

```{=html}
<!-- Versão interativa (HTML) — lib conforme tabela Q4 -->
```

**Para explorar:** {1 pergunta orientadora — ex.: "o que acontece com o
período quando você dobra L? Confirme com a fórmula."}
````

A pergunta orientadora é obrigatória: transforma a animação em atividade (alinhamento construtivo, Seção 1 do Mestre).

### Q5.2 Parâmetros realistas
Toda instanciação usa as faixas da Seção 6 do Mestre. Ex.: animação de roll (p5.js) usa T entre 8–25 s e boca 15–40 m — nunca números inventados.

### Q5.3 Fallback 3D
Three.js (WebGL) falha em máquinas sem GPU/driver (realidade de laboratório institucional). Ordem de preferência:
1. **Canvas 2D isométrico** (zero dependência — preferir como padrão institucional)
2. CSS3D (pontos DOM com `translateZ`)
3. Three.js WebGL (apenas se o material for consumido em máquinas pessoais)

### Q5.4 Pyodide
- Apenas em páginas dedicadas (ex.: `pratica-computacional.qmd`), nunca em toda nota de aula.
- Sempre avisar no texto: "primeira execução baixa ~10 MB".
- Uso pedagógico principal: rampa de entrada para o projeto computacional da Seção 8 — o aluno experimenta o código na apostila antes de abrir o notebook.

---

## Q6. MODO OFFLINE (RESTRIÇÃO INSTITUCIONAL)

Coerente com a Seção 10 do Mestre (simulações PhET baixadas):

1. Baixar cada lib usada para `libs/` (uma vez por semestre):
```bash
mkdir -p libs && cd libs
wget https://cdn.plot.ly/plotly-2.32.0.min.js
wget https://cdn.jsdelivr.net/npm/p5@1.9.4/lib/p5.min.js
wget https://cdn.jsdelivr.net/npm/matter-js@0.19.0/build/matter.min.js
wget https://cdn.jsdelivr.net/npm/animejs@3.2.2/lib/anime.min.js
wget https://cdn.jsdelivr.net/npm/d3@7/dist/d3.min.js
wget https://unpkg.com/three@0.163.0/build/three.module.min.js
```
2. No `_quarto.yml`, referenciar `libs/arquivo.js` em vez da CDN.
3. O Quarto copia `libs/` para `_site/` automaticamente — o site renderizado funciona num pendrive.
4. Pyodide offline é possível mas pesado (~200 MB completo); para uso institucional sem internet, preferir Jupyter local (já previsto na Seção 8).
5. **Atenção a MIME/CORS:** módulos ES (Three.js) servidos localmente via `file://` falham em alguns browsers; testar sempre com `quarto preview` (que serve via http) e instruir alunos a usar o site, não o arquivo solto.

---

## Q7. PROMPTS PRONTOS (complementam a Seção 12 do Mestre)

**Q-P1 — Converter nota de aula em .qmd:**
"Usando o template da Seção 10 do Documento Mestre e as Seções Q2 e Q5 do Apêndice Q, converta a nota de aula anexa em arquivo .qmd completo: YAML com title, categories [RAx][By], e estrutura de 5 partes. Onde houver o exemplo SP resolvido, adicione o bloco interativo padrão Q5.1 escolhendo a lib pela tabela Q4 e justificando a escolha em comentário HTML. Versão matplotlib obrigatória para o PDF."

**Q-P2 — Gerar visualização interativa:**
"Usando a tabela Q4 e a receita Q5.1 do Apêndice Q, gere o bloco interativo para ilustrar {conceito}, RA {código}, padrão {SPx} com parâmetros nas faixas da Seção 6 do Mestre. Lib: {indicar, ou 'decidir pela tabela Q4 e justificar'}. Inclua: versão matplotlib (PDF), versão JS (HTML), e a pergunta orientadora."

**Q-P3 — Gerar lista em .qmd:**
"Usando a Seção 9 do Mestre e a Seção Q2 do Apêndice, gere lista-{NN}.qmd sobre {tópicos} com a estrutura Bloco 1/2/3, fórmulas em LaTeX, e gabarito numérico em seção colapsável (`<details>`). Sem visualizações interativas em listas — listas são para o aluno resolver no papel."

**Q-P4 — Revisar paridade HTML/PDF:**
"Verifique no .qmd anexo se toda visualização interativa tem equivalente matplotlib com os mesmos parâmetros (regra de paridade Q4). Liste as violações e corrija."

---

## Q8. CHECKLIST DE IMPLANTAÇÃO QUARTO

(complementa a Seção 13 do Mestre — itens marcados ⊕ entram no fluxo semanal)

**Uma vez (antes do semestre):**
- [ ] Q1. Instalar Quarto + Python + TinyTeX e validar com `quarto check`
- [ ] Q2. Criar projeto da disciplina-piloto com a estrutura Q2 e o `_quarto.yml` Q3
- [ ] Q3. Publicar `index.qmd` = syllabus (gerado via P1 do Mestre) no GitHub Pages
- [ ] Q4. Baixar libs para `libs/` (modo offline Q6) e testar 1 visualização de cada lib usada
- [ ] Q5. Definir, por tópico do cronograma, quais aulas terão visualização interativa (máx. 1 por aula — interatividade é tempero, não prato)

**Semanal (⊕ integra com itens 7–8 da Seção 13 do Mestre):**
- [ ] Q6. ⊕ Foto do quadro → P5 → revisar → `aula-NN.qmd` → render → publish
- [ ] Q7. ⊕ Publicar lista da semana (Q-P3) junto com a nota de aula

**Critério de sucesso do semestre-piloto (adiciona ao critério da Seção 13):**
site da disciplina completo e navegável na última semana; PDF da apostila gerado em 1 comando; pelo menos 6 visualizações interativas alinhadas a RAs; zero visualização sem pergunta orientadora.

---

*Apêndice Q v1.0 — junho/2026 — integra-se ao Documento Mestre v1.2. Atualizar versões de libs a cada semestre (verificar CDNs e MIME).*
