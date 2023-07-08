# SCRIBE SCRIPT

scribe é meu script bash que desenvolvi para facililar o processo de criação de bibliotecas em C/C++ no LINUX.
Ele faz o processo de compilação dos arquivos de origem da biblioteca e então os compila num .so, depois adiciona o .so na lib do sistema e o cabeçalho no include do sistema.

### Instalção

1. clone o repositorio
```bash
    git clone https://github.com/WilkerSebastian/scribe.git
```

2. entre no diretorio scribe
```bash
    cd scribe
```

3. modifique a permissão do script par apoder executar
```bash
    sudo chmod +x ./install.sh
```

4. execute o script de instalção
```bash
    sudo ./install.sh
```

5. reinicie o terminal
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