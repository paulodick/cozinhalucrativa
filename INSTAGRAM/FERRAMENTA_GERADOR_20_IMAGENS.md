# Estúdio de Avatares IA: ferramenta de geração em massa

Usa o **Google AI Studio (modo Build)**, não o Flow: o Flow não cria apps nem tem fila de prompts nativa.

## 1. Prompt para criar o app (colar no AI Studio > Build)

Versão 2: gerador de avatares genérico, com criação de avatar, banco local, formatos e aprovação por imagem.

```
Crie um aplicativo web completo chamado "Estúdio de Avatares IA", em português do Brasil, para criar avatares de IA e gerar imagens em massa (até 20 por lote) mantendo sempre a mesma pessoa em cenários, roupas e formatos diferentes.

STACK E VISUAL
React + TypeScript + Tailwind, SDK @google/genai, IndexedDB (biblioteca idb) como banco local e JSZip para arquivos ZIP. Visual elegante e claro, tons de marfim, verde esmeralda e terracota, títulos serifados, responsivo, acessível, com estados de carregamento, vazio e erro bem tratados.

1. TELA INICIAL
Dois cartões grandes lado a lado: "Criar Avatar" e "Usar Avatar Existente" (este fica desabilitado, com uma dica, se ainda não houver avatares). Abaixo, uma fileira com os avatares salvos (miniatura 3x4 + nome). Menu superior: Início, Avatares, Galeria, Configurações.

2. CRIAR AVATAR (página própria)
Campos: "Nome do Avatar" (obrigatório e único); caixa grande de prompt para descrever o avatar (idade aparente, traços, cabelo, estilo); caixa opcional "Regras fixas do avatar"; duas opções marcadas por padrão: "A roupa, a maquiagem e as joias podem variar nas cenas" e "O penteado pode variar, mas a cor e o comprimento do cabelo ficam iguais".
Abaixo, três caixas de upload (arrastar e soltar) para avatares pré-existentes, todas opcionais: "Rosto 3x4", "Corpo inteiro" e "Perfil lateral". Cada imagem enviada conta como já aprovada naquele item. Ao enviar fotos, exigir o aceite de: "Confirmo que este avatar é uma personagem virtual ou que tenho autorização da pessoa retratada."
Geração em três etapas, nesta ordem: (1) Rosto 3x4, proporção 3:4, olhar frontal, fundo cinza claro de estúdio, luz suave; (2) Corpo inteiro, em pé e de frente, fundo neutro; (3) Perfil lateral do rosto, 90 graus, fundo neutro. As etapas 2 e 3 usam a etapa 1 aprovada, e as fotos enviadas, como referência de identidade. Cada etapa mostra a imagem e os botões "Aprovar", "Regenerar" e "Trocar por foto enviada". Se as três imagens vierem de upload, pular a geração e ir direto ao salvamento. Com as três aprovadas, o botão "Salvar avatar" grava nome, prompt, regras, opções e as 3 imagens no banco. Permitir editar, regenerar uma etapa isolada e excluir o avatar (com confirmação).

3. USAR AVATAR EXISTENTE (página própria)
Seletor com o nome e a miniatura 3x4 de cada avatar. Ao escolher, mostrar as 3 imagens-base em uma tira lateral.
Entrada dos prompts em duas abas: "Campo único" (colar tudo de uma vez) e "Um campo por imagem" (até 20 campos editáveis, com adicionar, remover e reordenar). O campo único aceita um bloco opcional [BASE], seguido de blocos numerados como "[1] Título", "LOOK:" e "SETTING:". Também aceita parágrafos separados por linha em branco, por "---" ou em lista numerada. Mostrar "N cenários detectados" e converter tudo nos campos individuais, editáveis, antes de gerar. Avisar se passar de 20.
Opções: formato e resolução (seção 4); variações por cenário (1 por padrão); modo "Revisar uma a uma" (padrão: gera uma imagem e espera a decisão) ou "Gerar tudo e revisar depois"; pausa entre chamadas (4 s por padrão); botões Iniciar, Pausar e Parar.
Geração em fila, uma por vez. Cada chamada envia ao modelo as 3 imagens-base do avatar, uma instrução de identidade montada automaticamente, o texto do cenário e o formato. A instrução de identidade diz: manter rosto, olhos, nariz, boca, formato do rosto, tom de pele, idade aparente, proporções do corpo, cor e comprimento do cabelo idênticos às referências; não copiar roupa, penteado nem fundo das referências; sem texto, logotipos ou marcas d'água; mãos naturais com cinco dedos. Se "roupa pode variar" estiver ligado, roupa, maquiagem e joias seguem a descrição da cena. Se "penteado pode variar" estiver ligado, só o penteado muda, sempre com a mesma cor e o mesmo comprimento do cabelo, para parecer da mesma época.
Cada cenário vira um cartão com número, título, estado (Na fila, Gerando, Aguardando decisão, Aprovada, Pendente, Falhou), a imagem e os botões "Aprovar", "Regenerar", "Deixar pendente" (recusa e pula para o próximo) e "Ver/editar prompt". Os pendentes ficam destacados e podem ser retomados depois com "Gerar pendentes". Ao aprovar, a imagem final é salva no banco (com avatar, prompt, formato, resolução e data) e habilita "Baixar" (PNG ou JPG, à escolha). Botão "Baixar aprovadas (ZIP)". Nome dos arquivos: avatar-01-titulo-9x16.png. A fila e os estados também ficam no banco, para retomar depois de recarregar a página.

4. FORMATOS (seletor com a descrição ao lado de cada opção; padrão 9:16)
- 9:16, 1080×1920: Reels, Stories, TikTok, Shorts e Status do WhatsApp
- 4:5, 1080×1350: Feed do Instagram (retrato) e Facebook
- 1:1, 1080×1080: Feed do Instagram, WhatsApp e foto de perfil
- 3:4, 1080×1440: retratos, Pinterest e capas de e-book
- 2:3, 1080×1620: Pinterest e pôsteres
- 16:9, 1920×1080: YouTube, miniaturas, apresentações e sites
- 1.91:1, 1200×628: links no Facebook e LinkedIn
Resolução: "Padrão do modelo", "HD" e "Full HD" (máximo 1080 no lado menor, 1920 no maior). Se o modelo escolhido aceitar parâmetro de tamanho maior, use a resolução nativa dele. Caso contrário, ampliar com canvas em alta qualidade e marcar a imagem como "ampliada", para que fique claro que não é resolução nativa.

5. GALERIA E CONFIGURAÇÕES
Galeria com todas as imagens aprovadas, filtros por avatar e por formato, ver em tamanho grande, baixar, excluir e "Gerar de novo com o mesmo prompt".
Configurações: modelo de imagem (campo de texto, padrão gemini-2.5-flash-image, aceitando outro ID de modelo), chave de API (usar a do ambiente do AI Studio; se não houver, campo local), pausa entre chamadas, número de tentativas e formato padrão de arquivo. Botões "Exportar backup" e "Importar backup" (ZIP com avatares, imagens e prompts), porque o armazenamento do navegador pode ser apagado.

6. ROBUSTEZ
Tentar de novo até 2 vezes com espera crescente (backoff) em erros de cota, limite de taxa ou resposta sem imagem. Em imagem bloqueada por segurança, marcar "Falhou" com mensagem clara em português e seguir para o próximo. Nenhum erro pode travar a fila. Botão Cancelar sempre disponível. Validar tudo que o usuário digita.

7. TRANSPARÊNCIA
Rodapé fixo: "Imagens geradas por IA." Guardar no banco que cada imagem é gerada por IA. Não alterar o prompt do usuário além da montagem descrita acima.

ENTREGA
Código completo e funcionando, com instruções curtas de uso. No final, liste em poucas linhas o que depende de cota, custo ou do modelo escolhido, e quais suposições você fez.
```

## 1b. Versão em inglês do prompt do app (toda a interface em português do Brasil)

```
Build a complete web app called "Estúdio de Avatares IA" (AI Avatar Studio) for creating AI avatars and bulk-generating images (up to 20 per batch) of the same person in different scenes, outfits and formats, with a consistent identity.

LANGUAGE: Write all code, comments and variable names in English. EVERYTHING the user sees must be in Brazilian Portuguese (pt-BR): button names, menu items, tab names, dropdown options, field labels, placeholders, tooltips, status badges, dialogs, confirmations, empty states, toasts and error messages. No English text may appear anywhere in the interface. Use the exact pt-BR strings given in quotes below; for anything not quoted, write natural pt-BR yourself. Keep all UI strings in one translations file, so other languages can be added later.

STACK AND LOOK
React + TypeScript + Tailwind, the @google/genai SDK, IndexedDB (idb library) as the local database, and JSZip for ZIP files. Elegant, clean, light design: ivory, emerald green and terracotta tones, serif headings, responsive and accessible, with well-handled loading, empty and error states.

1. HOME SCREEN
Two large cards side by side: "Criar Avatar" and "Usar Avatar Existente" (the second is disabled, with a hint, when no avatars exist yet). Below, a row of saved avatars (3x4 thumbnail + name). Top menu: "Início", "Avatares", "Galeria", "Configurações".

2. CREATE AVATAR (its own page)
Fields: "Nome do Avatar" (required, unique); a large prompt box labeled "Descrição do avatar (prompt)" with a helpful pt-BR placeholder, to describe the avatar (apparent age, features, hair, style); an optional "Regras fixas do avatar" box; two options checked by default: "A roupa, a maquiagem e as joias podem variar nas cenas" and "O penteado pode variar, mas a cor e o comprimento do cabelo ficam iguais".
Below, three optional drag-and-drop upload boxes for pre-existing avatars: "Rosto 3x4", "Corpo inteiro" and "Perfil lateral". Each uploaded image counts as already approved for that slot. When photos are uploaded, require the checkbox: "Confirmo que este avatar é uma personagem virtual ou que tenho autorização da pessoa retratada."
Generation runs in three steps, in this order: (1) Face 3x4, 3:4 ratio, frontal gaze, light gray studio background, soft light; (2) Full body, standing and facing the camera, neutral background; (3) Side profile of the face, 90 degrees, neutral background. Steps 2 and 3 use the approved step 1, plus any uploaded photos, as the identity reference. Each step shows the image with the buttons "Aprovar", "Regenerar" and "Trocar por foto enviada". If all three images come from uploads, skip generation and go straight to saving. Once all three are approved, the "Salvar avatar" button stores name, prompt, rules, options and the 3 images in the database. Allow editing ("Editar"), regenerating a single step, and deleting ("Excluir avatar") with the confirmation "Tem certeza que deseja excluir este avatar? Esta ação não pode ser desfeita." and the buttons "Cancelar" and "Excluir".

3. USE EXISTING AVATAR (its own page)
A selector showing each avatar's name and 3x4 thumbnail. After choosing one, show its 3 base images in a side strip.
Prompt input in two tabs: "Campo único" (paste everything at once) and "Um campo por imagem" (up to 20 editable fields, with add, remove and reorder). The single field accepts an optional [BASE] block followed by numbered blocks such as "[1] Title", "LOOK:" and "SETTING:". It must also accept paragraphs separated by a blank line, by "---", or a numbered list. Show "N cenários detectados" and convert everything into the individual, editable fields before generating. Warn when there are more than 20.
Options, with these labels: "Formato" and "Resolução" (section 4); "Variações por cenário" (default 1); "Modo": "Revisar uma a uma" (default: generate one image and wait for the decision) or "Gerar tudo e revisar depois"; "Pausa entre chamadas (segundos)" (default 4); buttons "Iniciar", "Pausar" and "Parar".
Generation runs as a queue, one at a time. Each call sends the model the avatar's 3 base images, an automatically built identity instruction, the scene text and the format. The identity instruction says: keep face, eyes, nose, mouth, face shape, skin tone, apparent age, body proportions, and hair color and length identical to the references; do not copy clothing, hairstyle or background from the references; no text, logos or watermarks; natural hands with five fingers. If "clothing can vary" is on, clothing, makeup and jewelry follow the scene description. If "hairstyle can vary" is on, only the hairstyle changes, always keeping the same hair color and length so all images look like they were taken in the same period.
Each scene becomes a card with its number, title, status ("Na fila", "Gerando", "Aguardando decisão", "Aprovada", "Pendente", "Falhou"), the image, and the buttons "Aprovar", "Regenerar", "Deixar pendente" (rejects and skips to the next one) and "Ver/editar prompt". Pending cards are highlighted and can be resumed later with "Gerar pendentes". On approval, the final image is saved to the database (with avatar, prompt, format, resolution and date) and enables "Baixar" (PNG or JPG, user's choice). Add a "Baixar aprovadas (ZIP)" button. File names: avatar-01-title-9x16.png (slugified Portuguese title, no accents). The queue and statuses are also stored in the database so the work resumes after a page reload.

4. FORMATS (selector with a description next to each option; default 9:16)
- 9:16, 1080×1920: "Reels, Stories, TikTok, Shorts e Status do WhatsApp"
- 4:5, 1080×1350: "Feed do Instagram (retrato) e Facebook"
- 1:1, 1080×1080: "Feed do Instagram, WhatsApp e foto de perfil"
- 3:4, 1080×1440: "Retratos, Pinterest e capas de e-book"
- 2:3, 1080×1620: "Pinterest e pôsteres"
- 16:9, 1920×1080: "YouTube, miniaturas, apresentações e sites"
- 1.91:1, 1200×628: "Links no Facebook e LinkedIn"
Resolution: "Padrão do modelo", "HD" and "Full HD" (maximum 1080 on the short side, 1920 on the long side). If the chosen model accepts a larger size parameter, use its native resolution. Otherwise, upscale with a high-quality canvas and label the image "ampliada", so it is clear that it is not native resolution.

5. GALLERY AND SETTINGS
Gallery ("Galeria") with all approved images, filters "Filtrar por avatar" and "Filtrar por formato", full-size view ("Ampliar"), "Baixar", "Excluir", and "Gerar de novo com o mesmo prompt". Empty state: "Nenhuma imagem aprovada ainda."
Settings ("Configurações"): "Modelo de imagem" (text field, default gemini-2.5-flash-image, accepting any other model ID), "Chave de API" (use the one from the AI Studio environment; if none, a local field), "Pausa entre chamadas (segundos)", "Tentativas em caso de erro" and "Formato de arquivo padrão" (options "PNG" and "JPG"), plus a "Salvar configurações" button. Buttons "Exportar backup" and "Importar backup" (ZIP with avatars, images and prompts), because browser storage can be cleared.

6. ROBUSTNESS
Retry up to 2 times with increasing backoff on quota errors, rate limits or responses with no image. When an image is blocked for safety reasons, mark it "Falhou" with a clear pt-BR message and move on to the next one. No error may freeze the queue. A cancel button is always available. Validate all user input.

7. TRANSPARENCY
Fixed footer: "Imagens geradas por IA. Use apenas avatares virtuais ou com autorização." Store in the database that each image is AI-generated. Do not change the user's prompt beyond the assembly described above.

DELIVERY
Complete, working code with short usage instructions in pt-BR. At the end, list briefly what depends on quota, cost or the chosen model, and which assumptions you made.
```

## 2. Prompt único com as 20 instruções (colar na caixa de texto do app)

```
[BASE]
Using the attached reference photos, create a photorealistic image of the same woman, Denise (about 38). Keep her face, eyes, nose, mouth, face shape, skin tone, body proportions, natural hair color and shoulder-length hair cut exactly identical to the references, so she is clearly the same person. Her clothing, makeup and jewelry change in every image and are described under LOOK; the hairstyle may also change (down, waves, ponytail, bun, braid, clip), but always with the same hair color and the same shoulder-length cut, so every photo looks taken in the same period. Do not copy the clothes, hairstyle or background of the reference photos. Vertical 9:16, waist-up medium shot, Denise slightly off-center with safe space for captions, looking toward the camera with a calm, confident, welcoming expression. Photorealistic, natural skin texture, warm natural light, shallow depth of field, natural hands with five fingers, realistic utensils. No text, logos, watermarks or legible writing.

[1] Fogão de barro
LOOK: a terracotta cotton blouse with rolled sleeves under a brown linen apron, hair in a short loose low braid over one shoulder, minimal natural makeup, a wooden bead bracelet and no other jewelry.
SETTING: a rustic countryside kitchen with a traditional whitewashed clay wood-burning stove, a blackened cast-iron pot simmering, soft wisps of smoke, copper utensils on the wall. Denise stirs the pot with a long wooden spoon and glances at the camera. Warm firelight mixed with soft window daylight.

[2] Jardim ao entardecer
LOOK: a flowy sage-green linen dress with a thin cream apron, hair down in soft waves with a small side clip, light peach makeup, delicate gold hoop earrings.
SETTING: a lush green garden at golden hour, a rustic wooden table with a cake on a ceramic stand and fresh herbs. Denise stands behind the table with her hands resting on it.

[3] Escritório em casa
LOOK: a tailored cream blazer over a white silk blouse, no apron, hair in a sleek low ponytail, polished makeup with a soft red lip, a gold wristwatch and small pearl earrings.
SETTING: a bright home office with a wooden desk, an open laptop (screen not visible), a notebook, a small digital kitchen scale and a few kraft boxes. Denise is seated at the desk, pen in hand, looking up at the camera.

[4] Banca de feira
LOOK: a white-and-blue striped linen shirt with a denim apron, hair in a high messy bun with loose strands, fresh natural makeup, a thin gold necklace.
SETTING: an outdoor farmers' market stall with a wooden counter, linen cloth, glass jars and kraft boxes of sweets, string lights overhead. Denise arranges the boxes and smiles toward the camera.

[5] Embalando pedidos
LOOK: a soft pink knit cardigan over a white tee with a kraft-colored apron, hair half-up with a tortoiseshell clip, light makeup, small gold stud earrings.
SETTING: a wooden table beside a sunny window covered with kraft gift boxes, ribbon spools and blank labels. Denise ties a ribbon around a box.

[6] Varanda com ervas
LOOK: a mustard sleeveless blouse and light jeans, hair in a top knot wrapped with a silk scarf, glowy makeup with a coral lip, gold hoop earrings.
SETTING: a sunny apartment balcony with potted herbs, a small bistro table, a cup of coffee and a tray of brigadeiros. Denise holds the tray with both hands.

[7] Pomar pela manhã
LOOK: a light denim shirt with rolled sleeves, hair in a high ponytail, almost bare-faced fresh makeup, no jewelry except a thin ring.
SETTING: an orange orchard in soft morning light. Denise holds a wicker basket full of oranges and looks toward the camera.

[8] Sítio com chimarrão
LOOK: a warm deep-green knit sweater under a checkered kitchen apron, hair in one short loose side braid, minimal makeup, small silver stud earrings.
SETTING: a southern Brazilian countryside kitchen with a rustic wooden table, a chimarrão gourd and a kettle, a freshly baked loaf of bread. Denise kneads dough on the table.

[9] Balcão de confeitaria
LOOK: a black chef-style apron over a crisp white shirt, hair in a neat low bun, subtle makeup with a berry lip, small gold studs and a thin gold chain.
SETTING: a small artisanal pastry shop counter with a glass display of cakes and tarts, no signage. Denise stands behind the counter with her hands on the glass.

[10] Despensa organizada
LOOK: a chambray work shirt with an olive apron, hair pinned up with a claw clip, natural makeup, no jewelry except a simple ring.
SETTING: a tidy pantry with wooden shelves, glass jars with blank labels, and flour sacks. Denise holds a jar up to check its contents.

[11] Cozinha à noite
LOOK: a burgundy long-sleeve top with a dark apron, hair in loose waves swept to one side, evening makeup with a defined eye, gold drop earrings.
SETTING: a cozy home kitchen at night, warm pendant lights, the window dark. Denise decorates a cake with a piping bag, focused, then looks up.

[12] Forno a lenha no quintal
LOOK: a rolled-sleeve gray linen shirt with a leather-strap apron, hair tied back with a bandana, sun-kissed natural makeup, no jewelry.
SETTING: a backyard with a brick wood-fired oven. Denise pulls golden loaves out of the oven with a long wooden peel.

[13] Cais no lago
LOOK: a cozy oatmeal knit sweater and a light scarf, hair loose and slightly tousled by the breeze, soft barely-there makeup, small gold hoops.
SETTING: a wooden dock beside a calm lake at sunrise, a picnic basket and a thermos beside her. Denise sits holding a ceramic cup.

[14] Terraço de café
LOOK: a floral midi blouse with puffed sleeves, hair in a half-up twist, rosy makeup with a soft pink lip, pearl earrings and a delicate bracelet.
SETTING: a cozy café terrace with plants. Denise sits at a small table with a notebook and a slice of cake, relaxed smile.

[15] Gravando conteúdo
LOOK: an emerald satin-look blouse under a cream apron, hair in polished loose curls, camera-ready makeup with highlighter, gold hoops and a statement ring.
SETTING: a kitchen counter with a phone on a small tripod and a soft ring light filming a plated dessert (phone screen not visible). Denise presents the dessert toward the camera.

[16] Aula prática
LOOK: a crisp white chef's jacket with rolled sleeves, no readable embroidery, hair in a neat bun, light makeup, no dangling jewelry.
SETTING: a bright teaching kitchen with a long worktable and aprons on hooks; a few students softly blurred in the background. Denise demonstrates piping on a cake.

[17] Entrega na porta
LOOK: a white blouse with a soft beige cardigan, hair in a low side ponytail, fresh makeup, a delicate gold necklace.
SETTING: the front door of a charming house with a potted plant. Denise hands a kraft gift box toward the camera, as if to the customer.

[18] Terraço ao pôr do sol
LOOK: a fitted black top with a lightweight camel blazer, hair sleek and straight at shoulder length, bold makeup with a rich dark-red lip, statement gold earrings.
SETTING: a rooftop terrace at sunset, the city skyline softly blurred. Denise holds a coffee cup and a notebook, thoughtful and confident.

[19] Horta
LOOK: an olive utility shirt over a white tee and denim, hair in a short low braid, bare-faced fresh look, no jewelry.
SETTING: a vegetable garden with raised beds. Denise cuts fresh basil with small scissors and looks up at the camera.

[20] Atacarejo
LOOK: a soft coral t-shirt with a light jacket, hair in a loose ponytail with a scrunchie, light makeup, small gold studs.
SETTING: an aisle of a wholesale food store with bulk sacks of flour and sugar, no readable text or brands. Denise pushes a cart and reads the back of a plain package.
```
