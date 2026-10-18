# Ferramenta para gerar as 20 imagens de uma vez

Usa o **Google AI Studio (modo Build)**, não o Flow: o Flow não cria apps nem tem fila de prompts nativa.

## 1. Prompt para criar o app (colar no AI Studio > Build)

```
Crie um app web chamado "Gerador de Cenários da Denise". Interface em português do Brasil, limpa e simples, tema claro com tons de marfim, verde esmeralda e terracota.

OBJETIVO: gerar até 20 imagens de uma mesma personagem em cenários diferentes, de uma vez, a partir de um único texto colado, usando o modelo de imagem Gemini 2.5 Flash Image (Nano Banana) com imagens de referência.

TELA:
1. Área para enviar de 1 a 3 fotos de referência da personagem (arrastar e soltar), com miniaturas e botão de remover.
2. Uma caixa de texto grande onde eu colo o prompt único. O formato é: um bloco "[BASE]" com o texto de identidade e, depois, blocos numerados "[1] Título", "[2] Título"... cada um com as linhas "LOOK:" e "SETTING:". O app deve ler esse formato (ignorando linhas em branco extras) e mostrar quantos cenários foram detectados.
3. Opções: proporção 9:16 (padrão; também 1:1 e 4:5), quantidade de variações por cenário (1 ou 2, padrão 1), pausa entre chamadas em segundos (padrão 4), botão "Gerar todos" e botão "Parar".

COMO GERAR: para cada cenário, montar o prompt final como: texto do [BASE] + " LOOK: " + texto do LOOK + " SETTING: " + texto do SETTING. Enviar esse texto junto com TODAS as fotos de referência enviadas, para o modelo gemini-2.5-flash-image, pedindo saída em imagem na proporção escolhida. Processar um cenário por vez, em fila, com a pausa configurada. Se uma chamada falhar (erro de cota, limite de taxa ou imagem bloqueada), tentar de novo até 2 vezes com espera maior e, se continuar falhando, marcar o cenário como "falhou" mostrando a mensagem de erro em português, e seguir para o próximo.

RESULTADO: uma grade de cartões, um por cenário, com número, título, barra de progresso/estado (na fila, gerando, pronto, falhou), a imagem gerada, e botões "Baixar", "Gerar de novo" (só esse cenário) e "Ver prompt". Botão "Baixar todas" que gera um arquivo ZIP com os nomes 01-titulo.png, 02-titulo.png etc. Clicar na imagem abre em tamanho grande.

REGRAS: nunca inventar texto nas imagens; o app não altera o prompt do usuário além da montagem descrita. Guardar as fotos de referência e o texto colado no navegador (localStorage) para não perder ao recarregar. Mostrar um aviso discreto: "Imagens geradas por IA. A personagem Denise é virtual."

Quando terminar, gere o código completo e explique em poucas linhas como usar.
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
