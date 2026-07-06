# DOCUMENTO MESTRE — APÊNDICE III: Cruzamento Física-pura → STCW / Model Course → RA Navalizado
**Função:** pegar um tópico de física como ele aparece no **sumário oficial / livro-texto** (ex.: "gravitação universal") e ancorá-lo nas **competências STCW** e nos **objetivos de aprendizagem dos Model Courses IMO 7.03 (náutica) e 7.04 (máquinas)**, produzindo **RAs navalizados** no padrão do Documento Mestre (Seção 3). Resolve o caso dos tópicos de física de base que NÃO têm função STCW com o mesmo nome, mas reaparecem aplicados (gravitação → navegação astronômica e marés; cinemática → manobra; etc.).
**Pré-requisito de leitura:** Documento Mestre (Seções 1, 2, 3, 6). Opcional: Apêndice II (régua por aulas) e Apêndice I (ciclos).
**Regra de hierarquia:** em **redação final do RA** (formato, código Bloom, critério), o Documento Mestre (Seções 2–3) VENCE. Este apêndice manda apenas no **método de cruzamento e nas fontes**. Em pesos/ciclos, o Apêndice I vence; em régua de aulas, o Apêndice II vence.
**Autossuficiência:** este apêndice foi escrito para ser executado por um modelo barato (ex.: Sonnet ou Haiku) recebendo SOMENTE: (a) este arquivo, (b) o sumário oficial da disciplina, e — nas etapas finais — (c) as tabelas extraídas do NotebookLM. Nenhum histórico de conversa é necessário.

> **Nota de método (v1.1, jul/2026) — NotebookLM aposentado.** Os Model Courses 7.03 e
> 7.04 agora estão no próprio repositório (`_docs/*.pdf`) e seus learning objectives de
> física já foram destilados, literais e com numeração original, para
> `_docs/mc-7.03-extrato.md` e `_docs/mc-7.04-extrato.md`. Onde este apêndice disser
> "rodar o prompt no NotebookLM" / "colar a tabela de volta", leia: **consultar o
> extrato correspondente** (busca de texto pelo termo-âncora da Seção III3). Os Prompts
> A–C da Seção III4 continuam valendo como *especificação do formato* de qualquer
> extração nova (ex.: STCW cru, livro-texto) — que agora é feita na própria sessão,
> lendo a fonte do repositório, sem ida-e-volta manual. Todo o resto (grupos, tabela de
> âncoras, hierarquia, III5–III7) permanece inalterado.

---

## III0. REGRA DE OURO (igual à dos demais documentos)

Nenhuma decisão pedagógica é delegada ao modelo. O modelo **consulta a tabela de âncoras da Seção III3** — ele NÃO raciocina a ponte física→naval por conta própria, NÃO inventa competência STCW, NÃO inventa objetivo de model course. Onde a tabela não cobrir, marca `[VERIFICAR]` e segue. Toda a inteligência está neste documento; o modelo só preenche, consulta e formata.

---

## III1. O PROBLEMA QUE ESTE APÊNDICE RESOLVE

Tópicos de física pura caem em dois grupos:

- **Grupo A — com função STCW direta:** estabilidade, propulsão, eletricidade de bordo, termodinâmica de máquinas. O termo do livro ≈ o termo do model course. Cruzamento trivial: ver Seção III3, coluna "direto".
- **Grupo B — sem função STCW com o mesmo nome:** gravitação universal, cinemática, dinâmica, oscilações, ondas, óptica, calor. O termo do livro NÃO aparece no 7.03/7.04 — mas a **aplicação** dele aparece. Gravitação "some" como palavra e "reaparece" dentro de navegação astronômica, marés e estabilidade.

O erro a evitar: pedir ao NotebookLM "gravitação universal" e receber "não consta". A solução: **buscar pelo fenômeno operacional onde a física vive**, não pelo nome do capítulo. A Seção III3 dá esses fenômenos prontos.

---

## III2. PROTOCOLO DE 3 PASSOS (o fluxo completo)

```
SUMÁRIO OFICIAL
      │
      ▼
PASSO 1 — TRIAGEM (modelo barato, aqui)
  Extrai tópicos do sumário, agrupa por tema, marca Grupo A ou B (Seção III3).
  Para cada tema, gera o PROMPT pronto para o NotebookLM (Seção III4),
  já preenchido com os termos-âncora corretos.
      │
      ▼
PASSO 2 — EXTRAÇÃO (você, no NotebookLM)
  Roda o prompt gerado. Cola a tabela crua de volta no chat.
  Fonte por tema:
   - Grupo A → Prompt A (Model Course 7.03/7.04) [+ Prompt B só se vago]
   - Grupo B → Prompt A nos FENÔMENOS-âncora + Prompt C (livro, p/ exercícios)
      │
      ▼
PASSO 3 — CRUZAMENTO + RAs (modelo barato, aqui)
  Monta a tabela-produto (Seção III5) e redige os RAs navalizados
  no formato da Seção 3 do Mestre. Marca lacunas com [VERIFICAR].
```

**Regra de fonte (qual prompt usar):**
- Grupo A → **Prompt A** (objetivos do model course já vêm prontos, quase = RA). Prompt B (STCW cru) só como desempate quando o objetivo do model course estiver vago.
- Grupo B → **Prompt A** apontado para os **fenômenos-âncora** da Seção III3 (não para o nome do tópico) + **Prompt C** no livro para colher os exercícios que virarão SPs e listas.
- Nunca os três ao mesmo tempo. Sem overkill.

---

## III3. TABELA DE ÂNCORAS (o coração do apêndice — consultar SEMPRE)

> Como ler: para cada tópico de física do sumário, esta tabela diz o **grupo**, o(s) **fenômeno(s) operacional(is)** onde ele reaparece, o **termo-âncora exato** a usar no prompt do NotebookLM, e a **tabela STCW provável**. O modelo NÃO adivinha — copia daqui.

| Tópico de física (livro/sumário) | Grupo | Fenômeno operacional onde reaparece | Termo-âncora p/ NotebookLM (7.03/7.04) | Tabela STCW provável |
|---|---|---|---|---|
| Gravitação universal / campo g / Kepler | B | Navegação astronômica (posição por astros); marés (atração Lua/Sol); peso e g na estabilidade | `celestial navigation`; `tides / tidal calculations`; `ship stability` | A-II/1 (náutica); A-II/1 estab. |
| Cinemática (MRU, MRUV, vetores) | B | Manobra e governo; velocidade relativa; CPA/TCPA; distância de parada | `manoeuvring`; `relative motion / collision avoidance`; `stopping distance` | A-II/1 |
| Dinâmica (Newton, atrito, momento) | B | Amarração e ancoragem; reboque; forças no casco | `mooring`; `anchoring`; `towing` | A-II/1 |
| Estática / torque / equilíbrio | A | Estabilidade; guindastes e lança de carga; planos de carregamento | `ship stability`; `cargo handling and stowage`; `derrick / crane` | A-II/1 |
| Hidrostática / empuxo / densidade | A | Flutuabilidade, calado, estabilidade; lastro | `buoyancy / displacement`; `ship stability`; `ballast` | A-II/1 |
| Hidrodinâmica / Bernoulli / vazão | A | Bombas, lastro, porão; resistência ao avanço | `pumping systems / bilge / ballast`; `resistance and propulsion` | A-III/1 |
| Oscilações / MHS / ressonância | B | Período de balanço (roll); vibração de máquinas | `rolling period / ship motions`; `machinery vibration` | A-II/1; A-III/1 |
| Ondas (mecânicas, propagação) | B | Marés e ondas do mar; sonar/eco; rádio (qualitativo) | `tides and waves`; `echo sounder`; `ship motions` | A-II/1 |
| Termodinâmica (ciclos, rendimento, calor) | A | Praça de máquinas; motores diesel; trocadores; caldeiras | `marine diesel engines`; `heat exchangers`; `boilers / thermodynamic cycle` | A-III/1 |
| Eletricidade / circuitos / potência | A | Geração e distribuição de bordo; geradores; motores elétricos | `electrical equipment`; `generators and distribution`; `electric motors` | A-III/1 |
| Eletromagnetismo / indução / motores | A | Geradores, motores DC/AC; propulsão elétrica | `electrical machines`; `electric propulsion` | A-III/1 |
| Óptica / luz | B | Luzes de navegação; auxílios visuais; faróis (qualitativo) | `navigation lights`; `aids to navigation` | A-II/1 |
| Calor / dilatação / transferência | A/B | Trocadores e refrigeração (A); dilatação estrutural (B) | `refrigeration`; `heat transfer`; `thermal expansion` | A-III/1 |

**Regras de uso da tabela:**
- Um tópico do livro pode ter **vários** fenômenos-âncora (gravitação tem 3). Gerar um prompt por fenômeno OU um prompt com a lista de termos-âncora — ver Prompt A.
- "Grupo A/B" misto (ex.: calor): tratar cada faceta na coluna correspondente.
- Se o tópico do sumário NÃO está nesta tabela: marcar `[VERIFICAR — âncora não mapeada]` e tratar como Grupo B genérico (ancorar via aplicação naval mais próxima ou via livro apenas). NÃO inventar competência STCW.
- A coluna "Tabela STCW provável" é orientação, não verdade final — confirma-se na extração (Prompt A traz o vínculo real).

---

## III4. PROMPTS PRONTOS (com formato de saída embutido)

> O modelo (Passo 1) entrega estes prompts ao usuário JÁ PREENCHIDOS com os termos-âncora da Seção III3. O usuário só copia para o NotebookLM. O separador ` | ` é proposital: cola limpo e é processável linha a linha.

### Prompt A — Objetivos do Model Course 7.03/7.04 (fonte principal de RA)
```
Atue como extrator. Na fonte [Model Course 7.04 / 7.03], localize a seção de
detailed teaching syllabus correspondente a: [TERMO(S)-ÂNCORA].
Liste TODOS os learning objectives daquela(s) seção(ões). Não resuma, não
traduza, não agrupe — transcreva na ordem do documento. Onde faltar dado,
escreva 'não consta'. Devolva EXATAMENTE neste formato:

FONTE: Model Course 7.0_ | ÂNCORA: ___ | TABELA STCW: A-__/1
---
[num do objetivo] | [texto literal do objetivo: states/explains/calculates...] | [STCW vinculada ou 'não consta'] | [horas/profundidade ou 'não consta']
[num do objetivo] | ...
```

### Prompt B — STCW crua (só desempate, quando o objetivo de A vier vago)
```
Atue como extrator. Da Tabela [A-II/1 ou A-III/1] do Código STCW, transcreva
apenas as linhas da competência [COMPETÊNCIA]. Texto literal, sem interpretar.
Se não existir, escreva 'não consta'. Devolva EXATAMENTE neste formato:

FONTE: STCW Código Tabela A-__/1 | COMPETÊNCIA: ___
---
COMPETENCE: [texto]
KUP (knowledge, understanding, proficiency): [texto]
MÉTODOS (demonstrating competence): [texto]
CRITÉRIOS (evaluating competence): [texto]
```

### Prompt C — Exercícios do livro (para SPs da Seção 6 e listas da Seção 9)
```
Atue como extrator. Dos capítulos sobre [TÓPICO], liste todos os exercícios de
fim de capítulo. Não resolva, não invente. Devolva EXATAMENTE neste formato:

FONTE: [livro, cap. __] | TÓPICO: ___
---
[nº] | [enunciado em 1 linha] | [grandezas/conceitos físicos] | [recordar/aplicar/analisar]
[nº] | ...
```

---

## III5. TABELA-PRODUTO E REDAÇÃO DOS RAs (Passo 3)

Com as extrações coladas, o modelo monta a tabela de cruzamento:

| Subtópico do livro | Objetivo do Model Course (nº + verbo) | Competência STCW (tabela) | RA proposto [Bn] |
|---|---|---|---|
| {ex.: energia potencial gravitacional} | {ex.: 7.03 obj. X — "explains altitude of a celestial body"} | A-II/1 — celestial navigation | RA_ [B_]: ... |

**Como redigir o RA (puxa da Seção 3 do Mestre):**
- Formato obrigatório: `RAx [Bn]: verbo de Bloom + objeto + condição + critério`.
- O **verbo Bloom** sai do verbo do objetivo do model course (states→B1; explains→B2; calculates→B3; analyses→B4), conforme Seção 2 do Mestre. Não rebaixar nem inflar o nível.
- A **condição/critério** ancora no contexto naval do fenômeno (ex.: "a partir da tábua de marés real do porto", "com erro ≤ 5%").
- Cada RA aponta para **exatamente um** objetivo de aprendizagem (teste de alinhamento de 30s, Seção 1 do Mestre). Se um objetivo do model course não tem tópico de física correspondente no livro, marcar `[VERIFICAR — sem âncora no livro]`.
- Meta de quantidade: 6–10 RAs por disciplina (Seção 3 do Mestre).

**Saída final que o modelo entrega ao usuário:**
1. A tabela-produto acima (completa).
2. A lista de RAs prontos para colar no syllabus (Seção 3 do Mestre).
3. Lista de `[VERIFICAR]` para conferência humana.

---

## III6. PROMPTS DESTE APÊNDICE (para rodar o fluxo com modelo barato)

### III-P1 — Triagem do sumário (Passo 1)
```
Anexei: (1) este Apêndice III, (2) o sumário oficial da disciplina [DISCIPLINA].
Faça a TRIAGEM conforme a Seção III2 (Passo 1):
(a) extraia os tópicos do sumário e agrupe-os por tema;
(b) classifique cada tema como Grupo A ou Grupo B consultando a tabela de
    âncoras (Seção III3) — NÃO invente classificação;
(c) para cada tema, gere o prompt pronto para o NotebookLM (Seção III4),
    JÁ PREENCHIDO com os termos-âncora e a tabela STCW provável da Seção III3,
    indicando se uso Prompt A, B ou C (regra de fonte da Seção III2);
(d) onde o tópico não estiver na tabela de âncoras, marque
    [VERIFICAR — âncora não mapeada].
Saída: uma lista por tema, cada uma com sua classificação + prompt pronto.
```

### III-P2 — Cruzamento e RAs (Passo 3)
```
Anexei: (1) este Apêndice III, (2) a(s) tabela(s) extraída(s) do NotebookLM
para o tema [TEMA].
Monte a tabela-produto da Seção III5 e redija os RAs navalizados no formato
da Seção 3 do Documento Mestre (verbo Bloom + objeto + condição + critério),
um RA por objetivo de aprendizagem. Use o verbo do objetivo do model course
para fixar o nível Bloom (Seção 2 do Mestre). Marque [VERIFICAR] onde faltar
âncora. Entregue: (1) tabela-produto, (2) lista de RAs prontos p/ syllabus,
(3) lista de [VERIFICAR].
```

---

## III7. CHECKLIST DE USO

- [ ] 1. Ter o sumário oficial da disciplina em mãos.
- [ ] 2. Rodar III-P1 (triagem) → recebe os prompts prontos por tema.
- [ ] 3. Para cada tema, rodar o prompt indicado no NotebookLM (A, B ou C).
- [ ] 4. Colar a(s) tabela(s) crua(s) de volta e rodar III-P2 (cruzamento + RAs).
- [ ] 5. Resolver os [VERIFICAR] (conferência humana — você).
- [ ] 6. Colar os RAs no syllabus (Seção 3 do Mestre) e seguir o checklist da Seção 13.

**Critério de sucesso:** todo tópico de física do sumário ou virou RA navalizado ancorado em objetivo de model course / competência STCW, ou está conscientemente marcado como física de base sem âncora (Grupo B puro) — nada fica solto nem inventado.

---

*Apêndice III v1.0 — junho/2026 — integra-se ao Documento Mestre v1.2, Apêndice I v1.0, Apêndice II v1.0 e Apêndice Q v1.0. Fontes externas (STCW, Model Courses 7.03/7.04, livro-texto) consultadas via NotebookLM, nunca anexadas ao chat de execução.*
