# Produção dos 5 Reels de Denise — fichas e prompts

Complementa `ROTEIROS_5_REELS_DENISE.md` (roteiro por tempo, texto na tela, áudio, legenda e hashtags). Este arquivo traz o que falta para produzir: ficha de cada vídeo, takes, prompt neutro, prompts para Gemini/Veo, adaptação para Higgsfield e negativos.

## 1. Notas técnicas (conferidas na documentação do Google)

- **Veo 3.1:** clipes de 4, 6 ou 8 segundos, formato 9:16 disponível, áudio nativo sempre ligado, falas entre aspas no prompt. Até 3 imagens de referência para preservar a personagem, mas só em clipes de 8 s. Vídeos gerados ficam guardados por 2 dias: baixar na hora.
- **Gemini Omni Flash:** aceita 9:16, imagem de referência para consistência de personagem e edição em várias etapas. A documentação diz que o inglês é totalmente suportado e que outros idiomas podem variar.
- **Consequência para a série:** cada vídeo de 20 s é montado com 3 ou 4 takes de 8 s, aparados na edição. Todos os takes de Denise usam as imagens de referência.
- **Voz em português:** a voz do Veo pode variar entre takes ou sair com sotaque estrangeiro. No teste de continuidade, se a voz mudar, gerar os takes só com som ambiente e gravar a voz de Denise à parte, uma única vez, para os 5 vídeos.
- **Fontes:** [Veo 3.1 na Gemini API](https://ai.google.dev/gemini-api/docs/veo) e [Gemini Omni Flash](https://ai.google.dev/gemini-api/docs/omni). Os limites mudam; conferir antes de gerar.

## 2. Teste de continuidade (fazer antes dos 5)

1. Gerar 3 imagens de referência de Denise: rosto de frente, rosto de três quartos e plano médio na cozinha, todas com o figurino da ficha.
2. Gerar um take de 8 s só com ela olhando para a câmera e dizendo uma frase curta.
3. Aprovar rosto, cabelo, avental, mãos e voz. Só então gerar os takes dos 5 vídeos, sempre com as mesmas imagens de referência.

## 3. Blocos fixos (já colados dentro dos prompts)

- **Denise:** a 38-year-old Caucasian woman with straight shoulder-length hair, light natural makeup, delicate gold jewelry, wearing a black canvas apron over a dark blouse with subtle flour and cocoa dust
- **Cozinha:** warm professional home kitchen, wooden counter, ivory linen cloth, emerald green and terracotta accents, soft golden window light
- **Estilo:** realistic, cinematic, vertical 9:16, shallow depth of field, natural skin texture, real-scale utensils, no on-screen text
- **Negativo padrão** (campo de negative prompt, se existir; senão, no fim do prompt como "Avoid: ..."): on-screen text, captions, subtitles, watermark, logos, brand names, unreadable writing, distorted or extra fingers, deformed utensils, impossible objects, plastic skin, generic stock-model look, celebrity likeness, different face between shots, different outfit, cartoon style

---

## Vídeo 1 — "Eu tinha duzentos reais e uma receita"

- **Objetivo:** inspirar mostrando que Denise começou com pouco.
- **Público:** quem cozinha bem, ainda não vende e acha que precisa de muito para começar.
- **Duração:** 20 s (3 takes de 8 s: 7 + 4 + 8 na edição).
- **Gancho:** "Me demitiram. Eu tinha duzentos reais e uma receita."
- **Ações de Denise:** segura notas e colher de pau, pesa farinha, olha firme e fala calma, fecha com sorriso lento.
- **Cenário e figurino:** cozinha padrão e avental padrão.
- **Objetos:** duas notas dobradas em foco raso (sem texto legível), colher de pau, balança digital com visor desfocado, bolo no forno, caixa branca com fita.
- **Cortes:** T1 gancho e balança, T2 inserts do forno e da caixa, T3 fala final.
- **Texto na tela (na edição):** "Eu comecei assim." sobre o T2.
- **Áudio:** som de ambiente, trilha instrumental suave que cresce no T3.
- **CTA:** "Qual receita sua todo mundo pede? Conta aqui."

**Prompt neutro:** Close nas mãos de Denise com duas notas dobradas e uma colher de pau; foco desloca para o rosto dela, que olha para a câmera e diz a frase de abertura. Corte para farinha caindo numa balança digital. Depois, inserts de um bolo saindo do forno e mãos fechando uma caixa com fita. Final em plano médio, Denise firme e acolhedora, que termina num sorriso lento.

**Veo — T1 (8 s):** Vertical 9:16, 8 seconds. Close-up of a woman's hands holding two folded banknotes, softly blurred with no legible text, and a wooden spoon above a wooden counter. Focus pulls up to Denise, a 38-year-old Caucasian woman with straight shoulder-length hair, light natural makeup, delicate gold jewelry, black canvas apron over a dark blouse with subtle flour dust. She looks straight into the camera and says in Brazilian Portuguese, calm and firm: "Me demitiram. Eu tinha duzentos reais e uma receita." Cut to hands pouring flour onto a digital kitchen scale, display blurred. Warm professional home kitchen, wooden counter, soft golden window light. Slow push-in. Audio: quiet room tone, flour pouring. Realistic, cinematic, shallow depth of field, no on-screen text.

**Veo — T2 (8 s):** Vertical 9:16, 8 seconds. Two shots in a warm home kitchen. First: a golden homemade cake lifted out of an oven by hands in oven mitts, steam rising. Second: hands in dark apron sleeves closing a white cake box and tying a thin ribbon. Gentle slow motion, shallow depth of field, soft golden light. Audio: oven door, steam, paper rustle, no dialogue, no music. Realistic, cinematic, no on-screen text.

**Veo — T3 (8 s):** Vertical 9:16, 8 seconds. Medium shot of Denise, a 38-year-old Caucasian woman with straight shoulder-length hair, light natural makeup, delicate gold jewelry, black canvas apron over a dark blouse with subtle flour dust, hands resting on a wooden counter in a warm professional home kitchen with golden window light. Calm and firm, looking into the camera, she says in Brazilian Portuguese: "Você tem mais que isso. Tem a receita, o talento e quem já elogiou." A short pause, then a slow warm smile as she says: "O resto se aprende." Static camera with a very slow push-in. Audio: quiet room tone, no music. Realistic, no on-screen text.

**Higgsfield:** referência visual: imagem de Denise de frente na cozinha. Pose inicial: mãos à frente segurando as notas e a colher. Coreografia: ergue o olhar no fim da primeira frase, baixa as mãos no corte. Câmera: push-in lento, depois plano médio estático. Transição: corte seco para as mãos na balança. Expressão: séria e firme no início, sorriso lento no final. Ritmo: pausas curtas e respiração entre as frases.

**Negativo extra:** readable banknote text or serial numbers, extra cash.

---

## Vídeo 2 — "O elogio que ninguém paga"

- **Objetivo:** fazer a pessoa se reconhecer no "você devia vender" e ver o talento como algo com valor.
- **Público:** quem ouve elogios sobre a comida e responde "é só hobby".
- **Duração:** 20 s (4 takes de 8 s: 5 + 5 + 4 + 7 na edição).
- **Gancho:** "'Você devia vender.' Quantas vezes você ouviu isso?"
- **Ações de Denise:** corta o bolo, olha para a câmera, apoia as mãos no balcão sem sorrir, depois suaviza.
- **Cenário e figurino:** cozinha padrão e avental padrão.
- **Objetos:** bolo, faca, bolo embrulhado, forminhas de festa, prato limpo com garfo.
- **Cortes:** T1 corte do bolo e gancho, T2 montagem só de mãos, T3 frase firme, T4 frase acolhedora.
- **Texto na tela (na edição):** "E você respondeu: 'ah, é só um hobby.'" sobre o T2.
- **Áudio:** quase silêncio na montagem, trilha entra em "Elogio é de graça".
- **CTA:** "Marca quem sempre diz que você devia vender."

**Prompt neutro:** Denise corta um bolo, a fatia cai e ela olha para a câmera fazendo a pergunta. Montagem só de mãos: bolo entregue a uma vizinha, forminhas numa festa, um prato vazio e limpo. Denise apoia as mãos no balcão e diz a frase firme, sem sorrir. Em seguida o rosto suaviza e ela fecha com a frase acolhedora.

**Veo — T1 (8 s):** Vertical 9:16, 8 seconds. Close-up of a knife cutting a homemade cake on a wooden counter, a slice falling to the side. The camera rises to Denise, a 38-year-old Caucasian woman with straight shoulder-length hair, light natural makeup, delicate gold jewelry, black canvas apron over a dark blouse with subtle flour dust, who looks up into the camera and says in Brazilian Portuguese, warm and direct: "'Você devia vender.' Quantas vezes você ouviu isso?" Warm professional home kitchen, soft golden window light. Slow push-in. Audio: knife on cake, quiet room tone. Realistic, cinematic, shallow depth of field, no on-screen text.

**Veo — T2 (8 s):** Vertical 9:16, 8 seconds. Three quick shots, hands only. First: hands handing a wrapped cake across a kitchen doorway to a blurred neighbor. Second: cupcake liners on a party table with blurred balloons. Third: an empty clean plate with a fork resting on it. Warm natural light, shallow depth of field, gentle handheld feel. Audio: fork on plate, soft muffled laughter, a pot lid, no dialogue, no music. Realistic, no on-screen text.

**Veo — T3 (8 s):** Vertical 9:16, 8 seconds. Medium shot of Denise, a 38-year-old Caucasian woman with straight shoulder-length hair, light natural makeup, delicate gold jewelry, black canvas apron over a dark blouse with subtle flour dust, both hands flat on a wooden counter in a warm professional home kitchen. Serious, no smile, steady eye contact with the camera. She says in Brazilian Portuguese, firm: "Elogio é de graça. O seu talento, não." Then she holds the gaze in silence. Static camera. Audio: quiet room tone. Realistic, cinematic, no on-screen text.

**Veo — T4 (8 s):** Vertical 9:16, 8 seconds. Close medium shot of Denise, a 38-year-old Caucasian woman with straight shoulder-length hair, light natural makeup, delicate gold jewelry, black canvas apron over a dark blouse with subtle flour dust, in a warm kitchen with golden window light. Her face softens into a warm smile as she says in Brazilian Portuguese, gentle and sure: "Eu também ouvi. Um dia respondi: então eu vendo. Quando estiver pronta, eu te mostro como." Slow push-in. Audio: quiet room tone, soft music beginning. Realistic, no on-screen text.

**Higgsfield:** referência visual: Denise de frente com o avental. Pose inicial: faca no bolo. Coreografia: a fatia cai, ela levanta o olhar; no T3 apoia as mãos no balcão e segura o olhar; no T4 relaxa os ombros. Câmera: close na faca, sobe até o rosto; depois plano médio estático. Transição: corte seco nas montagens. Expressão: pergunta direta, depois firme, depois acolhedora. Ritmo: pausas de 1 s antes de cada frase de impacto.

**Negativo extra:** visible faces of the neighbor or guests in sharp focus.

---

## Vídeo 3 — "Você faz isso de olhos fechados"

- **Objetivo:** mostrar que a pessoa já domina o que faz e que existe gente que gostaria de provar.
- **Público:** quem tem uma receita que faz "no automático" e nunca pensou em vender.
- **Duração:** 20 s (4 takes de 8 s: 7 + 5 + 6 + 3 na edição).
- **Gancho:** Denise sova a massa de olhos fechados e abre os olhos devagar.
- **Ações de Denise:** sova com precisão, abre os olhos, fala firme, termina com sorriso lento.
- **Cenário e figurino:** cozinha padrão e avental padrão.
- **Objetos:** massa de pão, bancada enfarinhada, fatia de pão ou bolo quente.
- **Cortes:** T1 olhos fechados e primeira frase, T2 mordida de um rosto desfocado, T3 frase principal, T4 "Hora de se apresentar."
- **Texto na tela (na edição):** "Tem gente que pagaria por isso." sobre o T2.
- **Áudio:** som da massa e respiração, trilha suave a partir da mordida.
- **CTA:** "Qual receita você faz de olhos fechados? Escreve aqui."

**Prompt neutro:** Denise sova uma massa de olhos fechados, calma e precisa; abre os olhos devagar e diz a primeira frase. Corte para mãos oferecendo um pedaço de pão a uma pessoa desfocada, que morde e fecha os olhos de prazer. Denise volta, firme, e diz a frase principal. Fecha em close, com um sorriso lento e a chamada final.

**Veo — T1 (8 s):** Vertical 9:16, 8 seconds. Denise, a 38-year-old Caucasian woman with straight shoulder-length hair, light natural makeup, delicate gold jewelry, black canvas apron over a dark blouse with subtle flour dust, kneads bread dough on a floured wooden counter with her eyes closed, serene and precise, in a warm professional home kitchen with soft golden window light. For the first four seconds only the sound of kneading. Then she slowly opens her eyes, looks into the camera and says in Brazilian Portuguese, calm: "Você faz isso de olhos fechados." Slow push-in. Audio: dough kneading, quiet room tone. Realistic, cinematic, shallow depth of field, no on-screen text.

**Veo — T2 (8 s):** Vertical 9:16, 8 seconds. Hands in dark apron sleeves offer a warm slice of fresh bread to a person whose face is out of focus. The person takes a bite and, still blurred, closes their eyes with a pleased smile. Warm natural light, very shallow depth of field, slow motion. Audio: crust crunch, a soft satisfied "hmm", gentle room tone, no dialogue. Realistic, no on-screen text.

**Veo — T3 (8 s):** Vertical 9:16, 8 seconds. Medium shot of Denise, a 38-year-old Caucasian woman with straight shoulder-length hair, light natural makeup, delicate gold jewelry, black canvas apron over a dark blouse with subtle flour dust, hands on a floured wooden counter in a warm kitchen. Steady eye contact, firm and kind, she says in Brazilian Portuguese: "E tem gente que pagaria para comer. Só que essa gente ainda não sabe que você existe." Static camera. Audio: quiet room tone, soft music. Realistic, no on-screen text.

**Veo — T4 (8 s):** Vertical 9:16, 8 seconds. Close-up of Denise, a 38-year-old Caucasian woman with straight shoulder-length hair, light natural makeup, delicate gold jewelry, black canvas apron over a dark blouse with subtle flour dust. A slow warm smile as she says in Brazilian Portuguese: "Hora de se apresentar." She holds the smile for two seconds. Warm golden light, shallow depth of field. Audio: soft music, quiet room tone. Realistic, no on-screen text.

**Higgsfield:** referência visual: Denise de olhos fechados com as mãos na massa. Pose inicial: mãos afundadas na massa. Coreografia: ritmo constante de sova, olhos se abrem no tempo certo da frase. Câmera: push-in lento. Transição: corte para a mordida e volta. Expressão: serenidade, depois firmeza, depois sorriso. Ritmo: 4 s de silêncio antes da primeira fala.

**Negativo extra:** eyes open during the first four seconds of the kneading shot (se falhar, usar olhos baixos e relaxados).

---

## Vídeo 4 — "Mesmo doce, outro valor"

- **Objetivo:** ensinar valor percebido de forma visual.
- **Público:** quem faz doces bons e vende (ou pensa em vender) sem cuidar da apresentação.
- **Duração:** 20 s (3 takes de 8 s: 4 + 7 + 8 na edição).
- **Gancho:** "Esse doce custa três reais."
- **Ações de Denise:** mostra o brigadeiro na palma, levanta o olhar, amarra a fita, fala o fechamento.
- **Cenário e figurino:** cozinha padrão e avental padrão.
- **Objetos:** brigadeiro com granulado, caixinha marfim com fita verde esmeralda e etiqueta lisa em branco.
- **Cortes:** T1 brigadeiro solto, T2 mesma peça embalada, T3 fita e fala final.
- **Texto na tela (na edição):** "R$ 3" no T1 e "Mesma receita." no T2.
- **Áudio:** silêncio no primeiro plano, trilha entra no corte para a caixinha, som de papel e fita.
- **CTA:** "Salva esse vídeo para lembrar quando for embalar seu próximo doce."

**Prompt neutro:** Denise mostra um brigadeiro na palma e fala o custo. Corte seco: o mesmo brigadeiro numa caixinha elegante com fita e etiqueta lisa; ela levanta o olhar e diz que mudou só uma coisa. Mãos amarram a fita em câmera lenta enquanto a câmera sobe até Denise, que fecha com a frase sobre valor percebido.

**Veo — T1 (8 s):** Vertical 9:16, 8 seconds. Close-up of an open palm holding a single round chocolate brigadeiro covered in chocolate sprinkles. The camera rises slightly to Denise, a 38-year-old Caucasian woman with straight shoulder-length hair, light natural makeup, delicate gold jewelry, black canvas apron over a dark blouse with subtle cocoa dust, who looks into the camera and says in Brazilian Portuguese, direct: "Esse doce custa três reais." Warm professional home kitchen, soft golden window light, shallow depth of field. Audio: quiet room tone. Realistic, cinematic, no on-screen text.

**Veo — T2 (8 s):** Vertical 9:16, 8 seconds. The same brigadeiro now inside a small elegant ivory gift box with an emerald green ribbon and a blank tag, on a wooden counter. Hands in dark apron sleeves close the lid. Denise, a 38-year-old Caucasian woman with straight shoulder-length hair, light natural makeup, delicate gold jewelry, black canvas apron over a dark blouse, looks up into the camera and says in Brazilian Portuguese, calm and sure: "Esse também. Mudou só uma coisa." Warm kitchen, soft golden light, shallow depth of field. Audio: paper and box sounds, soft music. Realistic, no on-screen text.

**Veo — T3 (8 s):** Vertical 9:16, 8 seconds. Slow-motion close-up of hands tying an emerald green ribbon around an ivory gift box for four seconds. The camera then tilts up slowly to Denise, a 38-year-old Caucasian woman with straight shoulder-length hair, light natural makeup, delicate gold jewelry, black canvas apron over a dark blouse with subtle cocoa dust, who says in Brazilian Portuguese, firm and warm: "Valor percebido começa antes da primeira mordida." Warm professional home kitchen, soft golden window light. Audio: ribbon and paper sounds, then soft music. Realistic, cinematic, shallow depth of field, no on-screen text.

**Higgsfield:** referência visual: brigadeiro na palma e caixinha marfim com fita esmeralda. Pose inicial: palma aberta. Pose final: Denise com a caixinha pronta nas mãos. Coreografia: levanta o olhar na virada, amarra a fita devagar. Câmera: close na palma, corte seco, tilt up até o rosto. Transição: corte seco entre os dois doces. Expressão: direta, depois segura. Ritmo: 1 s de pausa depois de "três reais".

**Negativo extra:** readable text on the tag or box, different candy shape between shots.

---

## Vídeo 5 — "O sorriso que vale"

- **Objetivo:** emocionar e fechar a série: cozinhar com amor e viver disso não são opostos.
- **Público:** quem cozinha por amor e tem medo de que cobrar tire a magia.
- **Duração:** 20 s (4 takes de 8 s: 4 + 6 + 5 + 5 na edição).
- **Gancho:** "Existe um momento que ninguém vê."
- **Ações de Denise:** fecha a caixa, passa a caixa, olha firme, sorri devagar.
- **Cenário e figurino:** cozinha padrão e avental padrão.
- **Objetos:** caixa de doces marfim, tampa, luz quente.
- **Cortes:** T1 caixa fechando (voz em off), T2 a caixa passa de mão e é aberta, T3 frase principal, T4 frase de fechamento.
- **Texto na tela:** nenhum no corpo do vídeo; no final, o nome da marca na edição.
- **Áudio:** quase sem trilha nos primeiros 10 s, música emotiva suave nas falas finais.
- **CTA:** "Conta aqui: qual foi o sorriso que mais te marcou?"

**Prompt neutro:** Em silêncio, mãos de Denise fecham uma caixa de doces e alisam a tampa, enquanto uma voz baixa diz a primeira frase. A caixa passa de mão em mão; do outro lado a tampa se abre e um rosto desfocado se ilumina num sorriso. Denise olha para a câmera e diz a frase principal; fecha com um sorriso lento e a frase final.

**Veo — T1 (8 s):** Vertical 9:16, 8 seconds. Slow entry shot toward the hands of a woman in a black canvas apron closing an ivory gift box on a wooden counter, smoothing the lid with her palm, then pausing. Warm professional home kitchen, soft golden light. A soft female voice-over, low and calm, says in Brazilian Portuguese: "Existe um momento que ninguém vê." Audio: quiet room tone, paper, almost no music. Realistic, cinematic, shallow depth of field, no on-screen text.

**Veo — T2 (8 s):** Vertical 9:16, 8 seconds. An ivory gift box passes from one pair of hands to another across a counter. On the receiving side the lid opens and a person with a softly blurred face lights up in a slow genuine smile in warm light. Very shallow depth of field, slow motion. Audio: paper, a gentle breath, a soft pleased "hmm", no dialogue, almost no music. Realistic, no on-screen text.

**Veo — T3 (8 s):** Vertical 9:16, 8 seconds. Medium shot of Denise, a 38-year-old Caucasian woman with straight shoulder-length hair, light natural makeup, delicate gold jewelry, black canvas apron over a dark blouse with subtle flour dust, in a warm professional home kitchen with soft golden window light. Calm and firm, steady eye contact, she says in Brazilian Portuguese: "Esse sorriso é o seu melhor argumento. Aprenda a cobrar por ele." Static camera. Audio: quiet room tone, soft music. Realistic, cinematic, no on-screen text.

**Veo — T4 (8 s):** Vertical 9:16, 8 seconds. Close-up of Denise, a 38-year-old Caucasian woman with straight shoulder-length hair, light natural makeup, delicate gold jewelry, black canvas apron over a dark blouse with subtle flour dust. A slow warm smile as she says in Brazilian Portuguese, soft and sure: "Cozinhar com amor e viver disso não são opostos." She holds the smile for two seconds. Warm golden light, shallow depth of field. Audio: emotional soft music, quiet room tone. Realistic, no on-screen text.

**Higgsfield:** referência visual: caixa marfim fechada e Denise de frente. Pose inicial: mãos na tampa. Pose final: sorriso aberto em close. Coreografia: alisa a tampa e pausa; no T4 respira antes de falar. Câmera: entrada lenta, depois estática e close. Transição: corte da caixa fechando para a caixa abrindo. Expressão: contida, firme, depois emocionada. Ritmo: o mais lento da série, 4 s de silêncio no início.

**Negativo extra:** sharp or identifiable face on the person receiving the box.

---

## 4. Ordem de trabalho

1. Teste de continuidade de Denise (seção 2).
2. Gerar os takes do Vídeo 1 como piloto e ajustar os prompts com o que falhar.
3. Aprovar cada peça com a validação do `CLAUDE.md` (Aprovado, Aprovado com ajustes ou Rejeitado, com o motivo).
4. Registrar falhas e ajustes de cada geração, separando Veo e Higgsfield.
