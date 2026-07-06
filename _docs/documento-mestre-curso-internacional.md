# DOCUMENTO MESTRE — Curso de Física em Padrão Internacional
**Contexto:** Física básica e disciplinas de base para engenharia · Escola de formação de oficiais da Marinha Mercante (instituição militar) · Professor com didática consolidada em quadro; lacuna está no design documentado do curso.
**Função deste documento:** ser a fonte única de verdade. Qualquer modelo de IA (mesmo os mais baratos) deve conseguir executar tarefas do curso recebendo este arquivo + uma instrução curta da Seção 12. Nenhuma decisão pedagógica deve ser delegada ao modelo — todas já estão tomadas aqui. O modelo só preenche, gera variações e formata.
**Referências de benchmarking:** primária — **TU Delft OpenCourseWare** (ocw.tudelft.nl: *Offshore Hydromechanics*, *Marine Engineering* — alinhamento de domínio naval/offshore e estilo *project-led*); secundária — **NTNU** (tradição marítima norueguesa; hidrodinâmica de Faltinsen); complementares — MIT OCW (estrutura de problem sets) e Yale Open Courses/Shankar (didática de quadro).

---

## 0. COMO USAR ESTE DOCUMENTO

1. **Com modelos baratos:** cole este arquivo inteiro no contexto + um prompt da Seção 12. Não peça criatividade pedagógica ao modelo; peça execução dentro dos templates.
2. **Ordem de implantação:** Seção 13 (checklist). Resumo: Syllabus → Blueprint de provas → Continuada → Listas → Dokion → Notas de aula.
3. **Regra de ouro:** se algo gerado pelo modelo contradisser este documento, o documento vence.

---

## 1. FUNDAMENTO ÚNICO: DESIGN REVERSO + ALINHAMENTO CONSTRUTIVO

Todo o curso é desenhado de trás pra frente:

```
1. RESULTADOS DE APRENDIZAGEM (o que o aluno será capaz de fazer)
        ↓
2. EVIDÊNCIAS ACEITÁVEIS (avaliações que provam isso)
        ↓
3. ATIVIDADES (aulas, listas, trabalhos que preparam para as evidências)
```

**Critério de alinhamento (teste de 30 segundos):** toda questão de prova, item de lista e trabalho deve apontar para exatamente um resultado de aprendizagem (RA) do syllabus. Se não aponta, ou a questão sai, ou o RA estava faltando.

**Consequências práticas:**
- Avaliações são definidas ANTES do semestre começar (datas, formato, pesos, blueprints). Nada de prova montada "próximo ao período".
- Trabalhos deixam de ser improvisados: o menu da Seção 8 já está agendado no mapa da Seção 4.
- A aula de quadro continua livre e sua — o que muda é a estrutura ao redor dela.

---

## 2. TAXONOMIA DE BLOOM OPERACIONAL PARA FÍSICA

Use SEMPRE estes 6 níveis com estes códigos. Todo RA, questão e item de lista recebe um código.

| Código | Nível | Verbos para redigir RAs e questões | Exemplo em contexto naval |
|---|---|---|---|
| B1 | Lembrar | definir, enunciar, identificar, listar | Enunciar o princípio de Arquimedes |
| B2 | Compreender | explicar, interpretar, classificar, estimar ordem de grandeza | Explicar por que um navio carregado tem calado maior |
| B3 | Aplicar | calcular, resolver, determinar, aplicar | Calcular o empuxo sobre um casco de volume submerso conhecido |
| B4 | Analisar | comparar, deduzir, decompor, prever comportamento | Analisar como a transferência de lastro altera a posição do metacentro |
| B5 | Avaliar | julgar, justificar, criticar, validar resultado | Avaliar se um plano de carregamento mantém GM dentro do limite e justificar |
| B6 | Criar | projetar, formular, propor, modelar | Propor um modelo simplificado para o período de balanço (roll) do navio |

**Distribuições-padrão (usar como default em qualquer instrumento):**

| Instrumento | B1–B2 | B3 | B4 | B5–B6 |
|---|---|---|---|---|
| Lista de exercícios | 25% | 45% | 20% | 10% |
| Prova | 20% | 40% | 30% | 10% |
| Trabalho/projeto | 0% | 20% | 40% | 40% |

---

## 3. TEMPLATE DE SYLLABUS (PADRÃO INTERNACIONAL)

> Para gerar um syllabus, copie este template e preencha. Campos `{assim}` são variáveis.

```markdown
# {DISCIPLINA} — Syllabus {SEMESTRE/ANO}
**Professor:** {nome} · **Carga horária:** {X}h · **Pré-requisitos:** {lista}
**Turma:** {curso/ano} · **Contato/atendimento:** {horário e local fixos semanais}

## 1. Descrição
{2–4 frases: o que a disciplina cobre e por que importa para o oficial
da marinha mercante. Conectar explicitamente à atividade profissional.}

## 2. Resultados de Aprendizagem (RAs)
Ao final, o aluno será capaz de:
- RA1 [B3]: {verbo de Bloom + objeto + condição + critério}
- RA2 [B4]: ...
- (6 a 10 RAs por disciplina. Cada RA tem código Bloom.)

Exemplo bem escrito:
"RA3 [B4]: Analisar a estabilidade transversal de uma embarcação a
partir da curva de estabilidade estática, identificando GM, ângulo de
alagamento e braço de endireitamento máximo, com erro ≤ 5%."

## 3. Mapa de Avaliação
(tabela da Seção 4, preenchida)

## 4. Cronograma Semanal
| Sem | Tópico | RAs | Entregas/Avaliações | Lista |
|---|---|---|---|---|
| 1 | {tópico} | RA1 | — | L1 publicada |
| ... | | | | |
(Toda avaliação aparece aqui COM DATA desde o dia 1.)

## 5. Política de Avaliação
- Composição da nota: {ex.: 2 provas 30% cada + continuada 40%}
- Critério de aprovação institucional: {regra da escola}
- Recuperação/2ª chamada: {regra}
- Integridade acadêmica: provas individualizadas via plataforma
  (instâncias únicas por aluno); trabalhos com defesa oral;
  uso de IA: {permitido como ferramenta de estudo / vedado em
  avaliações — explicitar}.

## 6. Materiais
- Notas de aula próprias (publicadas após cada semana — Seção 10)
- Livro-texto: {ref} (apoio, não obrigatório)
- Listas de exercícios (Seção 9)
- Simulações: {PhET etc., com versões offline baixadas previamente}

## 7. Metodologia
Aula expositiva-dialogada em quadro; slides apenas ilustrativos;
resolução de situações-problema do contexto marítimo; componente
computacional ({Python/planilha}) na continuada.
```

---

## 4. MAPA DE AVALIAÇÃO (TABELA MODELO)

Esta tabela é o coração do curso. Preencher antes do semestre. Cada linha é um instrumento.

| Cód | Instrumento | Semana | Peso | RAs medidos | Formato | Correção |
|---|---|---|---|---|---|---|
| P1 | Prova 1 | 8 | 25% | RA1–RA4 | 8 ME + 1 discursiva integradora | Cartão + rubrica |
| P2 | Prova 2 | 16 | 25% | RA5–RA8 | 8 ME + 1 discursiva integradora | Cartão + rubrica |
| C1 | Quiz Dokion | 4 | 5% | RA1–RA2 | 6 ME individualizadas | Automática |
| C2 | Estudo de caso + defesa | 6 | 10% | RA3 | Escrito curto + defesa oral 5 min | Rubrica |
| C3 | Quiz Dokion | 11 | 5% | RA5 | 6 ME individualizadas | Automática |
| C4 | Projeto computacional | 13 | 15% | RA6–RA7 | Notebook/planilha + demo em sala | Rubrica |
| C5 | Quiz Dokion | 15 | 5% | RA7–RA8 | 6 ME individualizadas | Automática |
| L | Listas (compleção) | contínuo | 10% | todos | Autoavaliação verificada por amostragem | Amostral |

**Regras do mapa:**
- Soma dos pesos = 100%. Nenhum RA pode ficar sem instrumento que o meça.
- Nenhuma semana com dois instrumentos pesados.
- Quizzes Dokion são a espinha da continuada: baratos de corrigir, individualizados, frequentes.
- **Calibração estilo Delft (project-led):** opção recomendada — elevar projeto computacional + Desafio Naval para 20–25% do peso total (reduzindo proporcionalmente as provas), aproximando o curso do modelo de engenharia da referência primária. Decisão por disciplina, registrada no syllabus.

---

## 5. BLUEPRINT DE PROVA + TEMPLATE DE PROVA HÍBRIDA

### 5.1 Blueprint (preencher ANTES de redigir qualquer questão)

| Tópico | B1–B2 | B3 | B4 | B5–B6 | Total |
|---|---|---|---|---|---|
| {Tópico A} | 1 ME | 2 ME | 1 ME | — | 4 |
| {Tópico B} | 1 ME | 1 ME | 1 ME | — | 3 |
| {Tópico C} | — | 1 ME | — | — | 1 |
| Integradora | — | — | — | 1 D | 1 |
| **Total** | 2 | 4 | 2 | 1 | 9 |

ME = múltipla escolha (correção por cartão/Dokion). D = discursiva.

### 5.2 Estrutura da prova (template fixo)

```
PROVA {N} — {DISCIPLINA} — {DATA}
Aluno: ______________ Matrícula: ________ Turma: ____

PARTE A — Múltipla escolha (X,X pts — 0,X cada)
[8 questões conforme blueprint. 5 alternativas. Cartão-resposta
ao final da folha, em posição fixa para correção por gabarito
perfurado OU instância Dokion.]

PARTE B — Situação-problema integradora (X,X pts)
[1 questão discursiva que exige combinar 2–3 tópicos da prova,
SEMPRE em contexto naval real. Estrutura obrigatória em itens:
 (a) modelagem/hipóteses  (b) desenvolvimento  (c) resultado
 (d) análise crítica do resultado.
Os itens (a)–(d) mapeiam 1:1 nos critérios da rubrica 5.3.]

Constantes e formulário: [fornecidos — a prova mede física,
não memória de fórmulas, exceto quando o RA for B1.]
```

**Regra da integradora:** ela cobre deliberadamente o que a parte ME não alcançou (B5–B6) e/ou os RAs mais importantes da prova. É escrita PRIMEIRO, antes das ME.

### 5.3 Rubrica analítica da discursiva (universal — reutilizar em toda prova)

Pontuação do item = peso × nível. Corrigir os 4 critérios em sequência por pilha de provas (todos os (a), depois todos os (b)...) — reduz tempo e viés.

| Critério (peso) | 4 — Proficiente | 3 — Adequado | 2 — Parcial | 1 — Insuficiente |
|---|---|---|---|---|
| (a) Modelagem (30%) | Identifica grandezas, hipóteses simplificadoras explícitas e diagrama correto | Modelo correto, hipóteses implícitas | Modelo parcialmente correto | Modelo incorreto ou ausente |
| (b) Desenvolvimento (30%) | Encadeamento físico-matemático correto e justificado | Correto com lacunas de justificativa | Erros que não destroem a lógica | Desenvolvimento incoerente |
| (c) Resultado (20%) | Valor correto, unidades, algarismos significativos | Correto com deslize de unidade/AS | Erro numérico com método certo | Incorreto por erro de método |
| (d) Análise crítica (20%) | Valida ordem de grandeza, discute limites do modelo no contexto naval | Valida plausibilidade | Comentário genérico | Ausente |

---

## 6. PADRÕES GERADORES DE SITUAÇÕES-PROBLEMA NAVAIS

> Estes padrões eliminam a "artificialidade de IA": o modelo barato NÃO inventa o contexto — ele instancia um padrão abaixo com números realistas das faixas dadas. Verossimilhança vem das faixas, não da imaginação do modelo.

| # | Padrão | Física | Faixas realistas (ordem de grandeza) |
|---|---|---|---|
| SP1 | Flutuabilidade e calado após carga/descarga | Empuxo, densidade | Navio 5–80 mil t; ρ água doce 1000 / salgada 1025 kg/m³ |
| SP2 | Estabilidade transversal (GM, transferência de pesos) | Torque, CG | GM 0,3–2 m; pesos movidos 10–500 t |
| SP3 | Período de balanço (roll) | MHS, momento de inércia | T 8–25 s; boca 15–40 m |
| SP4 | Propulsão e resistência ao avanço | Potência, arrasto | 10–25 nós; potência 5–80 MW |
| SP5 | Guindaste/lança de carga | Estática, torque, tração em cabos | Cargas 1–50 t; lanças 10–40 m |
| SP6 | Amarração e ancoragem | Decomposição de forças, atrito, catenária (simplif.) | Trações 10–100 t |
| SP7 | Maré e profundidade sob a quilha (UKC) | Funções senoidais, cinemática | Amplitudes 0,5–3 m (usar tábuas reais do porto local) |
| SP8 | Colisão/abalroamento e frenagem (crash stop) | Cinemática, impulso, energia | Distância de parada 5–15 comprimentos do navio |
| SP9 | Bombas, porão e lastro | Hidrostática, vazão, Bernoulli | Vazões 100–2000 m³/h |
| SP10 | Termodinâmica de praça de máquinas | Ciclos, rendimento, trocadores | Rendimento 35–50%; combustível HFO/MGO |
| SP11 | Eletricidade de bordo | Circuitos, potência, geradores | 440 V / 60 Hz; geradores 0,5–3 MW |
| SP12 | Navegação e cinemática relativa | Vetores, velocidade relativa | Correntes 0,5–4 nós; CPA/TCPA |

**Regra de fonte (prioridade Delft):** antes de instanciar um padrão SP do zero, verificar se existe problema adaptável no TU Delft OCW (*Offshore Hydromechanics*, *Marine Engineering*) ou em material aberto da NTNU. Adaptação de problema validado por instituição de referência VENCE geração nova — basta traduzir, ajustar números às faixas acima e reescrever no formato (a)(b)(c)(d) ou ME.

**Receita de instanciação (para a Seção 12):** padrão SPx + nível Bloom + RA alvo + faixa numérica → questão com (a)(b)(c)(d) se discursiva, ou enunciado + 5 alternativas com distratores derivados de erros conceituais típicos se ME.

**Regra de distratores ME:** cada distrator deve nascer de um erro previsível (trocar ρ doce/salgada, esquecer conversão nó→m/s, inverter braço de alavanca, usar diâmetro como raio). Distrator aleatório é proibido.

---

## 7. (RESERVADA — fusão com Seção 6; manter numeração estável para referência cruzada)

---

## 8. PLANO DE AVALIAÇÃO CONTINUADA ANTI-IA

Princípio: **IA-proof por design, não por vigilância.** Três mecanismos, sempre pelo menos um por instrumento:

1. **Síncrono e individualizado** — quizzes Dokion em sala (instância única por aluno, timer curto).
2. **Defesa oral** — qualquer produto escrito/computacional vale no máximo 40% do item; os 60% restantes vêm de defesa de 5 min com pergunta sorteada na hora (banco de perguntas de defesa por trabalho, 10+ perguntas). IA não defende oralmente.
3. **Dados locais** — medições feitas em sala/laboratório/simulador da escola, ou dados do porto local (tábua de marés real, navio real atracado). IA não tem acesso ao dado bruto.

**Menu de instrumentos da continuada** (escolher 4–5 por semestre no mapa da Seção 4):

| Instrumento | Mecanismo anti-IA | Correção |
|---|---|---|
| Quiz Dokion (6 ME, 15 min, em sala) | 1 | Automática |
| Estudo de caso naval + defesa | 2 + 3 | Rubrica 5.3 adaptada + checklist de defesa |
| Projeto computacional (notebook Python/planilha) + demo ao vivo com alteração de parâmetro pedida na hora | 2 | Rubrica + demo |
| Relatório de medição em laboratório/simulador | 3 | Rubrica curta (3 critérios) |
| Apresentação com sorteio de seção (aluno só sabe na hora QUAL parte apresenta — obriga domínio do todo) | 2 | Checklist |

**Componente computacional (dor #4):** padrão recomendado — 1 projeto por semestre em Python (Google Colab ou Jupyter offline) instanciando um SP da Seção 6: ex. simular curva de estabilidade (SP2), crash stop (SP8) ou maré (SP7). Entregável: notebook + demo ao vivo onde o professor pede para mudar um parâmetro e interpretar.

---

## 9. LISTAS DE EXERCÍCIOS ESCALONADAS (estilo problem set)

Estrutura fixa de toda lista (10–14 questões):

```
BLOCO 1 — CONCEITUAL (3–4 questões, B1–B2, sem cálculo)
  Perguntas de "por quê", estimativas de ordem de grandeza,
  julgamento de afirmações V/F com justificativa.
BLOCO 2 — PROCEDURAL (5–7 questões, B3, dificuldade crescente)
  Aplicação direta → aplicação com conversão/etapa extra →
  aplicação com dado implícito.
BLOCO 3 — DESAFIO ★ (1–2 questões, B4–B6, contexto naval SP)
  Situação-problema completa. Marcar com ★. Opcional para nota
  de compleção, mas é daqui que saem as integradoras de prova
  (versão modificada) — incentivo natural para fazer.
```

Regras: toda questão tem código [RAx][By]; gabarito numérico publicado 1 semana depois (resposta final apenas, não resolução — preservar o trabalho); 1 lista por semana ou por tópico; compleção verificada por amostragem (2 questões sorteadas vistadas em sala).

---

## 10. NOTAS DE AULA PRÓPRIAS (template OCW)

Resolve: curso sem livro-texto, dependência de internet, e documenta sua didática.

Template por aula (2–5 páginas, Markdown → PDF):

```markdown
# Aula {N} — {Título}   [RAs: {códigos}]
## 1. Ideia central (3–5 frases — a intuição física que você dá no quadro)
## 2. Desenvolvimento (as deduções do quadro, na MESMA ordem da aula)
## 3. Exemplo resolvido naval (1 SP da Seção 6, resolvido no padrão a-b-c-d)
## 4. Erros clássicos (2–3 — os mesmos que geram distratores de ME)
## 5. Conexão com a próxima aula (1 frase)
```

**Produção sem custo de tempo:** fotografe o quadro ao fim da aula → modelo barato transcreve para o template → você revisa 10 min. Em 1 semestre a apostila da disciplina está pronta. Simulações usadas: baixar versão offline (PhET permite) e listar na nota de aula.

**Diários de papel (dor #1):** não eliminável (obrigação institucional), mas minimizável: Dokion exporta CSV de notas/presença formatado na ordem do diário → transcrição vira ato mecânico de 5 min, sem cálculo manual. Ver Seção 11.

---

## 11. SPEC DE EVOLUÇÃO DO DOKION

O Dokion já resolve individualização e correção automática. Para virar o motor pedagógico deste documento, evoluir nesta ordem:

### 11.1 Schema — novos campos em `questions`
```sql
bloom_level    smallint NOT NULL CHECK (bloom_level BETWEEN 1 AND 6),
difficulty     smallint NOT NULL DEFAULT 2 CHECK (difficulty BETWEEN 1 AND 3),
context_tag    text,            -- ex.: 'SP2', 'SP7' (Seção 6) ou NULL
learning_outcome text,          -- ex.: 'RA3' (liga questão ao syllabus)
distractor_notes text           -- erro conceitual por trás de cada distrator
```

### 11.2 Blueprint como `test_config`
Modo automático passa de "N questões por tópico" para **matriz tópico × bloom_level** (a tabela 5.1 vira JSON):
```json
{ "blueprint": [
  {"topic": "estabilidade", "bloom": [3], "count": 2},
  {"topic": "estabilidade", "bloom": [4], "count": 1},
  {"topic": "empuxo", "bloom": [1,2], "count": 1}
]}
```
A função Postgres de sorteio filtra por `topic AND bloom_level = ANY(...)`. Mudança pequena, ganho enorme: a prova passa a ser pedagogicamente balanceada por construção.

### 11.3 Relatórios que fecham o ciclo
- **Por RA/tópico × Bloom:** % de acerto da turma → diz exatamente o que reensinar (assessment FOR learning).
- **Export diário institucional:** CSV `matricula, nome, presenca, nota` na ordem alfabética/numérica do diário de papel.
- **Por questão:** índice de dificuldade (% acerto) e discriminação (acerto do quartil superior − inferior) → curadoria do banco; questão com discriminação < 0,2 é revisada ou descartada.

### 11.4 Fora de escopo por ora (não construir ainda)
Câmera/microfone, recomendação por ML, cobrança — conforme roadmap do projeto. A defesa oral (Seção 8) cobre o anti-IA dos trabalhos sem precisar de proctoring.

---

## 12. PROMPTS PRONTOS PARA MODELOS BARATOS

> Sempre anexar ESTE documento + o prompt. Substituir `{variáveis}`.

**P1 — Gerar syllabus:**
"Usando o template da Seção 3 e as regras das Seções 1–2 e 4 do documento anexo, gere o syllabus de {disciplina}, {X}h, {N} semanas, tópicos: {lista}. Redija 8 RAs com códigos Bloom e preencha o mapa de avaliação no padrão da Seção 4. Não invente políticas: use as do template."

**P2 — Gerar blueprint + prova:**
"Usando as Seções 5 e 6, gere a Prova {N} de {disciplina} cobrindo {RAs}. Se eu anexar material do TU Delft OCW ou NTNU, ADAPTE esses problemas para a integradora (regra de fonte da Seção 6) antes de criar do zero. Primeiro apresente o blueprint (tabela 5.1 preenchida), depois a questão integradora (padrão {SPx}, itens a–d), depois as 8 ME com 5 alternativas e distratores justificados conforme a regra de distratores. Formate no template 5.2."

**P3 — Gerar questões para o banco Dokion:**
"Usando a Seção 6 (incluindo a regra de fonte: se eu anexar material Delft/NTNU, adapte-o em vez de criar do zero), gere {N} questões ME sobre {tópico}, nível {Bx}, padrão {SPy}, com os campos da Seção 11.1 preenchidos (bloom_level, difficulty, context_tag, learning_outcome, distractor_notes). Saída em JSON."

**P4 — Gerar lista de exercícios:**
"Usando a Seção 9, gere a Lista {N} sobre {tópico(s)}, RAs {códigos}, com a estrutura Bloco 1/2/3, códigos [RA][B] em cada questão, desafios ★ baseados em {SPx} — priorizando adaptação de material Delft/NTNU anexado, conforme a regra de fonte da Seção 6. Inclua gabarito numérico ao final."

**P5 — Transcrever quadro em nota de aula:**
"Transcreva as fotos de quadro anexas para o template da Seção 10, aula sobre {tópico}, RAs {códigos}. Mantenha a ordem do quadro. Onde a foto estiver ilegível, marque [REVISAR] em vez de inventar."

**P6 — Gerar roteiro de defesa oral:**
"Usando a Seção 8 (mecanismo 2), gere 12 perguntas de defesa oral para o trabalho '{descrição}', distribuídas em B2 (4), B4 (4) e B5 (4), cada uma respondível em ≤ 2 min por quem fez o trabalho e difícil para quem não fez."

**P7 — Adaptar rubrica:**
"Adapte a rubrica 5.3 para o instrumento '{descrição}', mantendo 4 critérios × 4 níveis e os pesos somando 100%."

---

## 13. CHECKLIST DE IMPLANTAÇÃO

**Antes do próximo semestre (ordem):**
- [ ] 1. Escrever os RAs da disciplina-piloto (Seção 3.2) — fazer você mesmo, é a alma do curso
- [ ] 2. Preencher o mapa de avaliação com datas (Seção 4)
- [ ] 3. Publicar o syllabus completo no dia 1 (P1)
- [ ] 4. Gerar blueprints das 2 provas (P2) — já na semana 1, mesmo que as questões venham depois
- [ ] 5. Montar listas das 4 primeiras semanas (P4)

**Durante o semestre:**
- [ ] 6. Popular o banco Dokion continuamente (P3) — meta: 15 ME/tópico
- [ ] 7. Fotografar quadro e gerar notas de aula semanalmente (P5)
- [ ] 8. Rodar quizzes Dokion nas semanas do mapa
- [ ] 9. Trabalhos com defesa oral (P6) nas semanas do mapa

**Dokion (paralelo, conforme roadmap do projeto):**
- [ ] 10. Campos da Seção 11.1 junto com o schema do banco de questões (etapa 4a do roadmap)
- [ ] 11. Blueprint no test_config (etapa 5 do roadmap)
- [ ] 12. Relatórios e export de diário (pós-validação do núcleo)

**Critério de sucesso do semestre-piloto:** zero avaliação improvisada; tempo de correção da prova ≤ 50% do atual; toda nota rastreável a um RA.

---

## 14. DESAFIO NAVAL — GINCANA ANUAL DE FÍSICA

Competição interturmas com 3 categorias (uma por disciplina), mesmo dia, equipes de 3–4 alunos. Entra no mapa de avaliação como instrumento da continuada (~10%).

**Princípio de pontuação (anti-IA por construção):**
```
Nota = 50% Desempenho medido + 30% Memorial de cálculo + 20% Defesa oral
Desempenho normalizado: equipe / melhor equipe da categoria.
Bônus de previsão: +1,0 ponto se |previsto − medido| / medido ≤ 15%.
```
O memorial é entregue ANTES do evento (previsão lacrada). IA pode até ajudar a calcular — mas não constrói, não mede e não defende. A física local (material real, atrito real, água real) é o juiz.

### 14.1 Categoria Física 1 — Guindaste de Carga (estática)

**Desafio:** lança (boom) de palitos de picolé fixada à borda da mesa por grampo padrão (fornecido pela organização). Içar a maior carga possível a uma distância horizontal mínima de 30 cm da borda. Vence a maior razão **carga içada / peso próprio da estrutura**.

**Restrições:** ≤ 100 palitos + cola branca/quente; massa da lança ≤ 150 g; carga aplicada por balde + areia/água em incrementos; pode usar barbante como tirante (estrutura estaiada permitida — é a decisão de projeto central).

**Cálculos obrigatórios do memorial (vão na rubrica 14.4):**
- Diagrama de corpo livre da lança completa e do nó mais solicitado
- Análise de torque em relação ao apoio: previsão da carga de colapso
- Tração no tirante e compressão na lança (decomposição vetorial)
- Identificação do modo de falha previsto (flambagem da lança, ruptura do tirante, falha do nó colado) com justificativa
- Razão carga/peso prevista

**Montagem sugerida (organização):** mesa firme + grampo sargento padrão; balde leve pendurado por gancho em ponto marcado da lança; adição de areia com copo medidor (incrementos de ~200 g); trena fixada para verificar os 30 cm; celular filmando o colapso (resolve disputa e vira material de aula sobre modos de falha).

### 14.2 Categoria Física 2 — Regata de Estabilidade (fluidos)

**Desafio:** casco que carrega a maior carga útil sem alagar nem emborcar, sobrevivendo a uma "prova de mar". Vence a maior razão **carga embarcada / massa do casco**, entre os sobreviventes da prova de mar.

**Restrições:** dimensões máximas 30 × 15 × 15 cm; material livre exceto isopor maciço (proibido — trivializa); carga = arruelas/moedas padronizadas, posicionamento livre (lastro é decisão de projeto); prova de mar = 10 ondas geradas por placa oscilada manualmente em curso padrão, ou plano inclinável a 15° por 10 s (mais reprodutível).

**Cálculos obrigatórios do memorial:**
- Volume deslocado e calado previstos para casco vazio e carregado (Arquimedes)
- Carga máxima teórica antes da borda livre zerar
- Posição do centro de gravidade do conjunto carregado (somatório de momentos)
- Estimativa do metacentro para casco simplificado (caixa: BM = I/V, I = momento de inércia da área de linha-d'água) e do GM resultante
- Critério de projeto declarado: que GM mínimo a equipe adotou e por quê (trade-off: GM alto = estável mas balanço brusco)

**Montagem sugerida:** caixa d'água/calha transparente ≥ 1 m (transparente: a turma VÊ o calado subir); régua adesiva na parede do tanque; arruelas idênticas pesadas previamente; para a prova de mar, placa de PVC com curso limitado por batentes (padroniza a onda) ou rampa com transferidor.

### 14.3 Categoria Física 3 — Regata Elétrica (eletromagnetismo)

**Desafio:** mini-embarcação com propulsão elétrica e **energia padronizada** (mesma fonte para todos, fornecida pela organização: ex. 2×AA novas, ou supercapacitor 10 F carregado a 5 V — melhor, pois a energia é exatamente calculável: E = ½CV²). Vence o menor tempo num percurso de 2 m em raia, com classificação paralela de eficiência (J/m para quem instrumentar).

**Restrições:** casco ≤ 30 cm; motor DC comum (3–6 V) com hélice, OU propulsor eletromagnético próprio (bônus ×1,2 no desempenho para quem construir o motor); sem controle remoto — trim e leme fixos (manter a raia é projeto, não pilotagem).

**Cálculos obrigatórios do memorial:**
- Energia disponível da fonte (½CV² ou estimativa para pilhas) e potência média do motor (P = V·I, medida em bancada com multímetro)
- Estimativa do empuxo do propulsor (medição estática: motor preso, dinamômetro/balança) e previsão da velocidade terminal igualando empuxo ao arrasto (F = ½ρCdAv², com Cd estimado e justificado)
- Previsão do tempo no percurso
- Esquema elétrico do circuito com correntes e quedas de tensão
- Se motor próprio: explicação da força de Laplace/torque na espira com diagrama de campo

**Montagem sugerida:** mesma calha da Física 2 com raias de barbante; largada por chave liga-desliga acionada pelo árbitro; cronometragem por 2 celulares (média); bancada de medição prévia com multímetro e balança para o ensaio estático de empuxo (a medição de bancada é parte do evento — e é dado local, anti-IA).

### 14.4 Rubrica do memorial de cálculo (universal às 3 categorias — vale 30%)

| Critério (peso) | 4 — Proficiente | 3 — Adequado | 2 — Parcial | 1 — Insuficiente |
|---|---|---|---|---|
| (a) Modelagem (25%) | Diagramas corretos (corpo livre / linha-d'água / circuito), hipóteses explícitas | Modelo correto, hipóteses implícitas | Modelo parcialmente correto | Modelo errado ou ausente |
| (b) Cálculos obrigatórios (35%) | TODOS os itens da categoria, corretos e encadeados | Todos presentes, erros menores | Itens faltando ou erros relevantes | Maioria ausente |
| (c) Previsão quantitativa (20%) | Valor previsto com estimativa de incerteza e fonte de cada dado | Valor previsto justificado | Previsão sem justificativa | Sem previsão numérica |
| (d) Decisões de projeto (20%) | Escolhas justificadas pela física (trade-offs explícitos) | Justificadas parcialmente | Descritas sem justificativa | Não documentadas |

**Defesa oral (20%):** 5 min pós-evento; pergunta sorteada do banco P6, sempre incluindo "por que o medido divergiu do previsto?" — a pergunta mais física de todas.

**Calendário sugerido:** lançamento do regulamento na semana 4 · memorial lacrado na semana 10 · evento na semana 12 · defesas na semana 13. Reaproveitamento didático: fotos e dados do evento viram questões SP de prova no semestre seguinte (dado local, impossível de achar pronto).

---

*Documento mestre v1.2 — junho/2026 — padrão de referência: TU Delft. Atualizar a cada semestre com lições aprendidas.*
