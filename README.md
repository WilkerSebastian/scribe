# SCRIBE SCRIPT

O Scribe é o meu script bash que desenvolvi para facilitar o processo de criação de bibliotecas em C/C++ no LINUX. Ele automatiza o processo de compilação dos arquivos de origem da biblioteca, cria um arquivo .so, adiciona o .so à biblioteca do sistema e o cabeçalho ao sistema de inclusão.

### Instalação

1. Clone o repositório
```bash
    git clone https://github.com/WilkerSebastian/scribe.git
```

2. Acesse o diretório scribe
```bash
    cd scribe
```

3. Modifique as permissões do script para permitir a execução:
```bash
    sudo chmod +x ./install.sh
```

4. Execute o script de instalação:
```bash
    sudo ./install.sh
```

5. Reinicie o terminal
```bash
    source ~/.bashrc
```

### Como usar

estrutura base
```bash
    sudo scribe <biblioteca.h> [<arquivos de origem>...]
```

exemplo com arquivos
```bash
    sudo scribe lib.h foo1.c foo2.c foo3.c
```

exemplo com pastas
```bash
    sudo scribe lib.h ./src/*.c
```
