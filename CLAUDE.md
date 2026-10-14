# CLAUDE.md — Cozinha Lucrativa

Este arquivo é lido no início de toda sessão. Ele resume o projeto e as regras de trabalho. O detalhe completo está nos documentos listados abaixo.

## O que é este repositório

Cozinha Lucrativa é uma marca independente de educação culinária e negócios gastronômicos. Ensina pessoas, principalmente mulheres que produzem em casa, a transformar receitas em produtos vendáveis: técnica, padronização em gramas, higiene, precificação, apresentação e vendas pelo WhatsApp.

O repositório guarda o conteúdo da formação (5 módulos em Markdown), a persona Denise e o contexto para produção de conteúdo (e-book interativo e vídeos para Instagram).

## Mapa dos arquivos

- `MASTER_CONTEXT_CLAUDE_COZINHA_LUCRATIVA.md`: fonte principal de verdade. Identidade, posicionamento, voz, módulos, direção editorial e visual, regras de vídeo, segurança e validação. Ler antes de produzir qualquer conteúdo.
- `Denise.md`: ficha da persona (história, voz, vocabulário).
- `README.md`: apresentação curta do projeto.
- `MDs/COZINHA_LUCRATIVA/`: os 5 módulos (`MODULO_01_BOLOS_E_DOCES.md`, `MODULO_02_MASSAS_E_MOLHOS.md`, `MODULO_03_SALGADOS_FINOS.md`, `MODULO_04_SOBREMESAS_DE_POTE.md`, `MODULO_05_PANIFICACAO_ARTESANAL.md`) e o README da coleção com a matriz editorial de 23 páginas por módulo.

## Regras que não mudam

1. **Marca independente.** Nunca mencionar IDEPES, Instituto de Desenvolvimento Pessoal, "três pilares institucionais", certificação IDEPES ou qualquer marca anterior. Usar só a identidade Cozinha Lucrativa.
2. **Sem promessa de resultado.** Nada de enriquecimento rápido, renda garantida, faturamento como garantia, depoimento falso, escassez falsa ou gatilho manipulativo.
3. **Denise é personagem virtual criada com IA.** Apresentá-la sempre com essa transparência. Nunca imitar pessoa real, celebridade, chef ou criador existente. A história dela é narrativa da personagem.
4. **Receitas em gramas**, nunca em xícaras, sempre com ficha técnica, rendimento, custo por unidade, validade e margem.
5. **Sem alegação sanitária sem base.** Protocolo sanitário e validade devem ser coerentes com a receita.
6. **Português do Brasil.** Usar grafia brasileira (por exemplo "maquiagem", não "maquilhagem").
7. **Nunca citar "link da bio".** O convite para conhecer o material (e-books) deve ser orgânico.

## Voz e posicionamento

Direto, acolhedor, prático e firme. Ensina sem humilhar e vende sem pressão artificial. Denise é "mão na massa": testa, produz e conhece ponto, textura, temperatura e rendimento. Todo conteúdo deve entregar uma técnica, decisão ou ação concreta. Evitar clichês de IA e frases vazias.

Ideias recorrentes (usar com naturalidade, sem transformar tudo em lista de bordões): confeitaria em casa não é hobby, é matemática; o olhômetro é o inimigo invisível; quem não calcula o próprio tempo paga para trabalhar; valor percebido começa antes da primeira mordida.

## Conflitos entre documentos

Se `Denise.md` e o contexto mestre divergirem, vale o contexto mestre. Pontos conhecidos em `Denise.md` que estão desalinhados e não devem ser copiados:

- cita faturamento mensal específico (R$ 15.000): o contexto mestre proíbe apresentar faturamento ou resultados como garantia;
- fala em "vitrine agressiva de vendas": o contexto mestre pede venda sem pressão artificial;
- traz instruções dirigidas ao ChatGPT e grafia de Portugal.

Avisar o Paulo quando encontrar uma divergência nova, em vez de escolher em silêncio. Sugerir a correção do `Denise.md`, sem alterá-lo sem pedido.

## Estética (conteúdo visual)

Cozinha doméstica profissional, realista e organizada; luz quente e natural; papel marfim, molduras finas, acabamento editorial; verde esmeralda, terracota e dourado/âmbar; títulos serifados e dados técnicos em sans-serif ou monoespaçada. Composição limpa, ingredientes, utensílios e mãos em escala realista.

## Vídeo (Instagram, 9:16)

- Manter Denise consistente em rosto, idade aparente, cabelo, corpo, figurino, voz, sotaque e personalidade.
- Planos curtos, ações simples, espaço seguro para texto, fala sincronizada com o gesto.
- Criar primeiro um prompt neutro e depois adaptar separadamente para Gemini/Veo e Higgsfield. Não presumir que o mesmo prompt funciona nas duas. Registrar falhas e ajustes.
- Não gerar marcas falsas, textos ilegíveis, mãos deformadas, utensílios impossíveis ou cenários que contradigam a personagem.

## Validação antes de aprovar uma peça

Checar utilidade e gancho, coerência culinária e numérica, ausência de promessas indevidas, continuidade visual de Denise, naturalidade de fala e gestos, qualidade de mãos, boca, utensílios e textos, formato 9:16, CTA orgânico, identificação da personagem virtual e alinhamento com o contexto mestre.

Classificar como **Aprovado**, **Aprovado com ajustes** ou **Rejeitado**, sempre explicando o motivo.

## Como trabalhar neste repositório

- Ao editar um módulo, manter a matriz editorial de 23 páginas descrita em `MDs/COZINHA_LUCRATIVA/README.md`.
- Conferir os números de toda receita (rendimento, custo por unidade, margem) antes de dar o trabalho como pronto. Não deixar cálculo sem verificar.
- Antes de mudanças grandes em vários módulos, propor o plano e esperar confirmação.
