# Como usar no Google AI Studio

1. Abra [aistudio.google.com](https://aistudio.google.com) e crie um chat novo.
2. Em **System instructions**, cole o texto de `INSTRUCOES_SISTEMA.md`.
3. No campo de mensagem, use o botão **+** para anexar `COZINHA_LUCRATIVA_CONTEXTO_COMPLETO.txt`.
4. Salve o prompt com um nome (por exemplo "Cozinha Lucrativa — Base") para reaproveitar depois.

## Quando o conteúdo mudar

O AI Studio não lê o GitHub sozinho. Depois de editar um módulo, gere o pacote de novo e anexe o arquivo novo:

```sh
./ai-studio/gerar_pacote.sh
```

Se mudar uma regra no `CLAUDE.md` ou no contexto mestre, atualize também `INSTRUCOES_SISTEMA.md`.
