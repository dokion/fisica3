# CLAUDE.md — Orquestrador do Curso FIS-03

Este projeto publica o material do curso de Física (FIS-03 — Escola de formação de
oficiais da Marinha Mercante) com Quarto + GitHub Pages. **Toda decisão pedagógica já
está tomada nos documentos de `_docs/`.** Seu papel é preencher, instanciar e formatar
DENTRO dos templates — nunca inventar pedagogia, layout, política, RA ou competência STCW.

**Regra de ouro:** se algo que você gerar contradisser qualquer documento de `_docs/`, o
documento vence. Sempre.

---

## 1. MAPA DOS DOCUMENTOS (`_docs/`)

| Arquivo | Papel | Manda em |
|---|---|---|
| `documento-mestre-curso-internacional.md` | **Mestre** (fonte única de verdade) | Bloom, RAs, blueprints, rubricas, SPs, anti-IA, listas, provas, notas de aula |
| `apendice-i-adaptacao-institucional.md` | Apêndice I | **Pesos e calendário** (2 ciclos P1/P2; prova 80% + trabalho 20%) |
| `apendice-ii-pladis-regua-aulas.md` | Apêndice II | **Unidade de progressão** (par de aulas, não semana) e preenchimento do PLADIS |
| `apendice-iii-cruzamento-stcw-ra.md` | Apêndice III | **Método** de cruzar física pura → STCW / Model Course → RA navalizado |
| `mestre_quartus.md` | Apêndice Q | **Publicação**: Quarto, libs JS, modo offline, paridade HTML/PDF |
| `PLADIS-template.docx` | Template institucional | Layout do PLADIS — **INTOCÁVEL** (preencher células, nunca alterar estrutura) |
| `FIS_3_RA.md` | RAs já extraídos e formatados | **Fonte oficial dos RAs de FIS-03.** NÃO reinventar nem reordenar RAs — usar estes. |
| `guia-replicacao-novo-curso.md` | Guia de replicação | **Como clonar esta estrutura para outro curso** (FIS-3, FIS-3): inventário de arquivos, pipeline em 5 fases, prompt de partida |
| `mc-7.03-extrato.md` / `mc-7.04-extrato.md` | Extratos das fontes IMO | **Consulta local aos Model Courses** (learning objectives de física, literais). Substituem o ciclo NotebookLM do Apêndice III — consultar estes antes de abrir os PDFs |

Antes de qualquer tarefa, leia o Mestre + o(s) apêndice(s) relevante(s). Não trabalhe de memória.

---

## 2. HIERARQUIA DE CONFLITO (resolve disputas entre documentos)

1. **Pesos e calendário** → Apêndice I vence o Mestre §4.
2. **Régua de aulas (par de aulas, UE, tópico)** → Apêndice II vence qualquer "semana" no Mestre, I ou Q.
3. **Redação final de RA** (formato, código Bloom, critério) → Mestre §2–3 vence (Apêndice III só manda no *método* de cruzamento e nas fontes).
4. **Publicação** → Apêndice Q.
5. **Em tudo o mais** → Mestre.
6. **RAs de FIS-03** → `FIS_3_RA.md` é a fonte. Não gerar RA novo a menos que o pedido seja explicitamente "criar RA" via Apêndice III.

---

## 3. ROTEADOR DE TAREFAS

Identifique o pedido → vá à seção indicada → use o prompt indicado. Os prompts são as
instruções já prontas dos documentos; siga-os literalmente.

| Pedido | Seção(ões) de referência | Prompt |
|---|---|---|
| Gerar **syllabus** | Mestre §3 + §1–2 + §4, com pesos do Apêndice I | Mestre **P1** + ajuste **I6** (estrutura de 2 ciclos) |
| Gerar **prova** (blueprint + híbrida) | Mestre §5–6 | Mestre **P2** |
| Gerar **questões para o banco Dokion** | Mestre §6 + §11.1 (campos) | Mestre **P3** |
| Gerar **lista de exercícios** | Mestre §9 | Mestre **P4** (ou **Q-P3** se saída `.qmd`) |
| **Transcrever quadro** → nota de aula | Mestre §10 | Mestre **P5** |
| Gerar **roteiro de defesa oral** | Mestre §8 | Mestre **P6** |
| **Adaptar rubrica** | Mestre §5.3 | Mestre **P7** |
| Converter nota de aula em **`.qmd`** | Apêndice Q §10 + Q2 + Q5 | **Q-P1** |
| Gerar **visualização interativa** | Apêndice Q §Q4–Q5 | **Q-P2** |
| Verificar **paridade HTML/PDF** | Apêndice Q §Q4 | **Q-P4** |
| Preencher o **PLADIS** | Apêndice II §II1–II5 + `PLADIS-template.docx` + sumário | **II-P1** |
| Conferir **fechamento do PLADIS** | Apêndice II §II1 | **II-P2** |
| **Cruzar física → STCW/RA** (gerar RAs novos) | Apêndice III | **III-P1** (triagem) → consultar `mc-7.0X-extrato.md` → **III-P2** (cruzamento) |

---

## 4. INVARIANTES (valem em TODA tarefa)

- **Bloom em tudo:** todo RA, questão e item recebe código B1–B6 (Mestre §2). Não rebaixar nem inflar o nível do verbo de origem.
- **Alinhamento construtivo:** todo item aponta para **exatamente um** RA. Se não aponta, sai (Mestre §1).
- **RAs de FIS-03:** vêm de `FIS_3_RA.md`. Não inventar.
- **Faixas SP realistas:** contexto naval instancia os padrões SP1–SP12 com números das faixas do Mestre §6. Nunca números inventados. Distrator de ME nasce de erro conceitual previsível (§6), nunca aleatório.
- **Regra de fonte (Delft/NTNU):** se houver material TU Delft OCW / NTNU anexado, **adaptar** vence criar do zero (Mestre §6).
- **Anti-IA por design:** todo instrumento de continuada tem ≥1 mecanismo do Mestre §8 (síncrono individualizado / defesa oral / dado local).
- **Não publicar avaliação:** provas, blueprints e banco Dokion NUNCA viram `.qmd`/Quarto (Apêndice Q §Q1).
- **Régua = par de aulas** (`N-(N+1)`), não semana, ao tratar de cronograma/PLADIS (Apêndice II).
- **Quando faltar dado de fonte:** marcar `[VERIFICAR]` — nunca inventar.

---

## 5. CONVENÇÕES QUARTO (Apêndice Q + decisão local de estrutura)

- **Estrutura por tópico do sumário (decisão local — substitui o nome `aula-NN` do Q2):**
  `unidades/unidade-N-slug/N-MM-topico.qmd` — 1 arquivo por tópico da Parte B do sumário
  oficial (`_docs/31. FIS-3.pdf`), tópico com zero à esquerda (`1-01`, `4-16`). O comentário
  no topo de cada arquivo lista os objetivos (OE) do tópico, copiados de `_docs/FIS_3_RA.md` —
  nunca editar esse comentário, nunca cobrir OE de outro tópico.
- **Aulas são badges, não arquivos:** o shortcode `{{< aula 3-4 >}}` marca onde um encontro
  (par de aulas, Apêndice II) começa dentro do tópico. Posicionamento livre pelo professor;
  puramente informativo — o cronograma oficial continua sendo o PLADIS.
- **Padrão de escrita de nota de aula:** `AULA-TEMPLATE.md` (raiz). Todo agente que escrever
  ou completar nota de aula segue o "ritmo" da Seção 3 dele e o contrato de placeholders
  `<< >>` da Seção 5. Texto do professor fora de placeholder é INTOCÁVEL.
- Listas: `lista-NN.qmd` (Q2). `_site/` é gerado — nunca editar nem comitar.
- Códigos `UEn` e `OEn.m-Bk` no `categories` do YAML de cada tópico.
- **Paridade HTML/PDF obrigatória:** toda visualização interativa tem equivalente estático matplotlib no `{python}`, mesmos parâmetros (Q4).
- Escolha de lib JS **pela tabela Q4**, não por estética. Interatividade sem propósito didático é proibida; toda visualização tem pergunta orientadora (Q5.1).
- **Offline-first:** libs em `libs/` (Q6). Pyodide nunca no header global; só em página dedicada.
- `format: pdf` é obrigatório (apostila impressa é entregável).

---

## 6. FLUXO SEMANAL (referência rápida)

```
foto do quadro / texto livre com << placeholders >> → IA completa via AULA-TEMPLATE.md
→ professor revisa → unidades/unidade-N-slug/N-MM-topico.qmd
→ quarto render → quarto publish (gh-pages, já configurado)
```

Checklists completos: Mestre §13, Apêndice Q §Q8, Apêndice II §II7, Apêndice III §III7.
