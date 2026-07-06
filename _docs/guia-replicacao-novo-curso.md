# Guia de Replicação — clonar a faina de FIS-2 para FIS-1 e FIS-3

**Para quem é este documento:** o professor (daqui a meses, sem lembrar dos detalhes) e
qualquer sessão nova de IA (sem nenhuma memória deste chat). Ele descreve **como o site
de FIS-2 foi construído**, o que é reaproveitável tal-qual, o que é específico do curso,
e o pipeline exato para reconstruir tudo para outro curso (FIS-1, FIS-3, …).

**Premissa central:** nenhuma etapa depende de memória de conversa. Toda a pedagogia
está nos documentos de `_docs/`, todas as convenções de escrita estão em
`AULA-TEMPLATE.md`, e todo o roteamento de tarefas está em `CLAUDE.md`. Os únicos
insumos novos que o professor precisa fornecer para um curso novo são:

1. **O sumário oficial** do curso (PDF, equivalente ao `18. FIS-2.pdf`);
2. ~~Os Model Courses IMO~~ → **já resolvido**: os learning objectives de física dos
   Model Courses 7.03/7.04 estão destilados em `_docs/mc-7.03-extrato.md` e
   `_docs/mc-7.04-extrato.md` (copiados na Fase 0 como todo o resto). Só seria preciso
   nova destilação se o curso novo exigir outra fonte IMO ainda não extraída.

Todo o resto se regenera a partir disso.

---

## 1. Inventário — o que copiar, o que adaptar, o que gerar

### 1.1 Copiar tal-qual (curso-agnóstico — não tocar)

| Arquivo/pasta | Papel |
|---|---|
| `_docs/documento-mestre-curso-internacional.md` | Pedagogia: Bloom, blueprints, rubricas, SPs, anti-IA, prompts P1–P7 |
| `_docs/apendice-i-adaptacao-institucional.md` | Pesos e calendário institucional (2 ciclos P1/P2) |
| `_docs/apendice-ii-pladis-regua-aulas.md` | Régua de par de aulas + PLADIS |
| `_docs/apendice-iii-cruzamento-stcw-ra.md` | Método de gerar RAs navalizados (usado na Fase 1) |
| `_docs/mestre_quartus.md` | Publicação Quarto: libs, offline, paridade HTML/PDF |
| `_docs/PLADIS-template.docx` | Template institucional intocável |
| `_docs/mc-7.03-extrato.md` + `_docs/mc-7.04-extrato.md` | Extratos dos Model Courses IMO (fonte de âncoras da Fase 1 — dispensam NotebookLM) |
| `_extensions/curso/` | Shortcodes `{{< aula >}}` e `{{< ra >}}` (Lua) |
| `theme.scss` | Tema visual + caixas `.sp`, `.pergunta`, badges de aula/RA |
| `_brand.yml` | Identidade visual |
| `libs/` | Libs JS locais (offline-first, Q6) |
| `.github/workflows/publish.yml` | CI de render + publish (inclui Jupyter/nbformat para blocos `{python}`) |

### 1.2 Adaptar (buscar-e-substituir + pequenos ajustes)

| Arquivo | O que muda |
|---|---|
| `CLAUDE.md` | Trocar "FIS-02"→"FIS-0N", nome do PDF do sumário e `FIS_2_RA.md`→`FIS_N_RA.md`. A lógica não muda. |
| `AULA-TEMPLATE.md` | Mesmas trocas de nome. O "ritmo" (§3), o contrato `<< >>` (§5) e o checklist (§7) valem para qualquer curso. |
| `_quarto.yml` | Título do site e as seções da sidebar (uma `section` por UE do novo sumário). |
| `index.qmd` | Regenerar via prompt **P1** do Mestre + ajuste **I6** (não editar o de FIS-2 na mão — a estrutura serve de exemplar). |

### 1.3 Gerar do zero (curso-específico)

| Artefato | Como nasce | Fase |
|---|---|---|
| `_docs/<sumário oficial>.pdf` | Professor fornece | 0 |
| `_docs/FIS_N_RA.md` | Apêndice III (III-P1 → extratos `mc-7.0X` → III-P2) | 1 |
| `unidades/unidade-N-slug/…` | Fusão sumário Parte B + `FIS_N_RA.md` | 2–3 |
| `index.qmd` (syllabus + cronograma) | Mestre P1 + I6 + Apêndice II (pares de aulas) | 4 |

---

## 2. O pipeline em 5 fases

### Fase 0 — Repositório e infraestrutura

1. Criar repositório novo (ex.: `fisica1`), um por curso — cada curso vira um site
   próprio no GitHub Pages.
2. Copiar tudo da tabela 1.1 do repo de FIS-2, aplicar os ajustes da tabela 1.2.
3. Colocar o sumário oficial do curso novo em `_docs/`.
4. Ativar GitHub Pages na branch `gh-pages` (o workflow já publica lá).

### Fase 1 — Gerar `FIS_N_RA.md` (os RAs/OEs navalizados)

Seguir o **Apêndice III** literalmente:

1. **III-P1 (triagem):** a partir do sumário oficial, identificar quais seções dos
   Model Courses ancoram cada UE (termos-âncora da tabela III3).
2. **Consultar os extratos** `_docs/mc-7.03-extrato.md` / `mc-7.04-extrato.md` (busca
   de texto pelo termo-âncora) — o ciclo NotebookLM foi aposentado; ver Nota de método
   v1.1 no topo do Apêndice III. Os PDFs originais em `_docs/` são o recurso de
   desempate se o extrato parecer incompleto.
3. **III-P2 (cruzamento):** produzir a tabela final de RAs.

**O formato de saída deve ser IDÊNTICO ao de `FIS_2_RA.md`** — é isso que a Fase 2
consome. Ou seja:

- Cabeçalho com disciplina, CHD, cursos, âncora internacional, STCW, formato e regra
  de hierarquia.
- Uma seção `## UE N — Nome (X h-aula expositiva / Y h-aula prática)` por unidade,
  com âncora e STCW de aplicação da UE.
- Tabela com colunas: `Obj. | Texto original (Parte C) | Bloom | Âncora | Aplicação naval`
  (+ `STCW` quando houver vínculo).
- **1 RA por objetivo do sumário (Parte C), fiel ao texto original** — não fundir,
  não reordenar, não reescrever o verbo (Bloom vem do verbo original).
- Onde não houver âncora ou aplicação naval: `—`. Nunca inventar (`[VERIFICAR]` se
  houver dúvida de fonte).

### Fase 2 — Esqueleto de `unidades/` (a decisão estrutural)

Esta é a decisão local registrada em `CLAUDE.md` §5. Regras exatas:

1. **1 arquivo por tópico da Parte B do sumário** — não por aula, não por semana.
   Caminho: `unidades/unidade-N-slug/N-MM-slug-do-topico.qmd`, com zero à esquerda
   no tópico (`1-01`, `4-16`). O slug vem do título do tópico, minúsculo, sem acento,
   hifenizado.
2. **Mapear os objetivos (Parte C) para os tópicos (Parte B):** cada OE pertence a
   exatamente um tópico. A numeração do sumário já agrupa (ex.: tópico 1.4 "Oscilações
   amortecidas" ↔ OE 1.11–1.13). Em caso de ambiguidade, decidir pela adjacência
   temática e registrar `[VERIFICAR]`.
3. **Anatomia de cada arquivo** (ver §3 abaixo): YAML + comentário de objetivos +
   badge de aula + conteúdo.
4. **Badges `{{< aula A-B >}}`:** distribuir os pares de aula do cronograma (Apêndice
   II) pelos tópicos; posicionamento é informativo e o professor move depois.
5. Atualizar a sidebar do `_quarto.yml` com uma `section` por unidade.

### Fase 3 — Texto de partida de cada tópico

Para cada `.qmd`, escrever a primeira versão completa seguindo `AULA-TEMPLATE.md`:

- **1 seção `##` por OE (ou grupo coeso de OEs)**, com badge `{{< ra OEn.m Bk >}}`.
- **Ritmo da Seção 3 do template:** prosa curta → dedução em display math → 1 frase
  de interpretação → bloco destacado opcional.
- **Contexto naval:** vem da coluna "Aplicação naval" do `FIS_N_RA.md` (replicada no
  comentário do topo). Números sempre dentro das faixas SP do Mestre §6.
- **Situações-problema:** caixa `::: {.sp}` no padrão (a) modelagem (b) desenvolvimento
  (c) resultado (d) análise crítica.
- **Simulações:** na primeira passada, preferir o comentário
  `<!-- SIMULAÇÃO SUGERIDA: [descrição, lib pela tabela Q4, parâmetros SP] -->` em vez
  de código — o professor prioriza depois quais viram interativas (com paridade
  matplotlib obrigatória, Q4).
- Nível Bloom do OE limita a profundidade: um OE B2 ("explicar") não ganha dedução
  completa de B3 ("derivar").

### Fase 4 — Syllabus, render e publicação

1. Gerar `index.qmd` com o prompt **P1** do Mestre + estrutura de 2 ciclos do
   Apêndice I (**I6**). O cronograma usa **pares de aulas** (Apêndice II), mapeando
   pares → tópicos → OEs, com as verificações continuadas marcadas.
2. `quarto render` local até zerar erros (LaTeX e `{python}` inclusos).
3. Push → o CI publica. Conferir paridade HTML/PDF (Q-P4) por amostragem.

---

## 3. Anatomia de um `.qmd` de tópico (contrato exato)

```markdown
---
title: "N.M — {Título igual ao da Parte B do sumário}"
categories: [UEn, OEn.m-Bk, OEn.m2-Bk2, ...]
---

<!-- ═══ OBJETIVOS DESTE TÓPICO — fonte: _docs/FIS_N_RA.md (não editar) ═══
OE n.m  [Bk] {texto original do objetivo}
             → naval: {coluna "Aplicação naval" do FIS_N_RA.md, ou —}
OE n.m2 [Bk] {…}
             → naval: {…}
═══════════════════════════════════════════════════════════════════════ -->

{{< aula A-B >}}

{Parágrafo de abertura: motivação naval do tópico, 2–4 frases.}

## {Nome da primeira ideia} {{< ra OEn.m Bk >}}

{Conteúdo no ritmo do AULA-TEMPLATE §3.}

<!-- SIMULAÇÃO SUGERIDA: {descrição, lib pela tabela Q4, parâmetros nas faixas SP} -->

::: {.sp}
{Situação-problema com dados nas faixas SP do Mestre §6.}
:::
```

Invariantes (mesmos do `CLAUDE.md` §4): o comentário de objetivos é gerado uma vez e
nunca editado; nenhuma seção sem OE; nenhum OE de outro tópico; `[VERIFICAR]` onde
faltar dado.

**Exemplares para imitar** (tom, densidade, estrutura — abrir antes de escrever):
`unidades/unidade-1-oscilacoes/1-01-oscilacoes-harmonicas.qmd`,
`1-02-mhs-e-mcu.qmd` (inclui applet p5.js com paridade) e
`1-04-oscilacoes-amortecidas.qmd`.

---

## 4. Prompt de partida (colar na primeira sessão do repo novo)

> Este repositório replica para **FIS-N** a estrutura do curso FIS-2 (repo `fisica2`).
> Leia `CLAUDE.md`, `_docs/guia-replicacao-novo-curso.md` e `AULA-TEMPLATE.md` antes
> de qualquer coisa. A infraestrutura (Fase 0) já está copiada; o sumário oficial do
> curso está em `_docs/<nome>.pdf`. Execute as fases na ordem:
> **Fase 1** — gere `_docs/FIS_N_RA.md` pelo Apêndice III, no formato idêntico ao
> `FIS_2_RA.md` de referência, consultando as âncoras nos extratos
> `_docs/mc-7.03-extrato.md` e `_docs/mc-7.04-extrato.md` (já copiados na Fase 0).
> Pare para eu revisar. **Fase 2** — gere o esqueleto completo de `unidades/`
> (1 `.qmd` por tópico da Parte B, anatomia do §3 do guia) e a sidebar do
> `_quarto.yml`. Pare para eu revisar o mapeamento tópico↔OE. **Fase 3** — escreva o
> texto de partida de cada tópico pelo `AULA-TEMPLATE.md`, uma unidade por vez,
> simulações como comentário `SIMULAÇÃO SUGERIDA`. **Fase 4** — gere o `index.qmd`
> (Mestre P1 + I6), rode `quarto render` e corrija até zerar erros.
> Onde faltar dado de fonte, marque `[VERIFICAR]` — nunca invente.

Os pontos de parada das Fases 1 e 2 são deliberados: são as duas decisões que
contaminam todo o resto (RAs errados ou mapeamento tópico↔OE errado se propagam para
41 arquivos).

---

## 5. Checklist de fechamento da replicação

- [ ] `FIS_N_RA.md` cobre 100% dos objetivos da Parte C, 1 RA por objetivo, Bloom fiel ao verbo?
- [ ] Todo tópico da Parte B tem exatamente 1 `.qmd`? Todo OE aparece em exatamente 1 tópico?
- [ ] Comentário de objetivos no topo de cada arquivo, com coluna naval?
- [ ] `categories` do YAML = `UEn` + todos os `OEn.m-Bk` do tópico?
- [ ] Badges `{{< aula >}}` cobrem todos os pares de aula expositiva do cronograma?
- [ ] Sidebar do `_quarto.yml` com todas as unidades? Título do site trocado?
- [ ] `index.qmd` com cronograma em pares de aulas e verificações continuadas?
- [ ] `quarto render` sem erros; CI verde; Pages publicando?
- [ ] Nenhuma prova/blueprint/banco virou `.qmd` (Apêndice Q §Q1)?
- [ ] Todos os `[VERIFICAR]` listados para revisão do professor?
