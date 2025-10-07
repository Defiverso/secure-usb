# Secure USB Vault

Este repositório contém uma coleção de binários do **VeraCrypt** para diferentes sistemas operacionais, permitindo criar e gerenciar **vaults** de forma segura diretamente de um pendrive.

---

## Estrutura do Repositório

```

secure-usb/
├─ bin/        # Binários do VeraCrypt para diferentes sistemas
├─ vaults/     # Pasta onde suas identidades e arquivos criptografados ficam armazenados
├─ README.md

```

- **bin/**: contém os arquivos do VeraCrypt:
  - `VeraCrypt-X.XX.XX-x86_64.AppImage` (Linux)
  - `VeraCrypt_X.XX.XX.dmg` (macOS macFUSE)
  - `VeraCrypt_FUSE-T_X.XX.XX.dmg` (macOS FUSE-T)
  - `VeraCrypt Portable X.XX.XX.exe` (Windows)
- **vaults/**: pasta onde os arquivos de identidade e dados criptografados devem ser armazenados.

---

## Instruções de Uso

1. **Baixe os arquivos diretamente do repositório GitHub** para o seu pendrive.

```bash
git clone https://github.com/Defiverso/secure-usb.git /path/to/your/usb
```

2. **Apague os binários que não serão utilizados** para economizar espaço (por exemplo, se você usar apenas Windows, pode apagar os arquivos `.dmg` e `.AppImage`).
3. **Certifique-se de ter permissões de administrador** no sistema antes de executar o VeraCrypt.
4. Abra o binário correspondente ao seu sistema operacional na pasta `bin/`.
5. Todos os arquivos e identidades devem ser armazenados dentro da pasta `vaults/` do pendrive.

---

## Avisos Importantes

- A pasta `vaults/` deve ser mantida segura; ela contém suas identidades e dados criptografados.
- Sua senha do vault deve ser forte e guardada em um local seguro. Não é possível recuperar sua senha do vault.
- Sempre faça backup dos vaults antes de modificar ou mover arquivos.
- Executar o VeraCrypt pode requerer senha de administrador dependendo do sistema operacional.

---
