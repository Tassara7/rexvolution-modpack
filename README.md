# Rexvolution (modpack)

Minecraft 26.3 + NeoForge 26.3.0.98, distribuído com [packwiz](https://packwiz.infra.link/).

## Para jogar (amigos)
1. Instale o [Prism Launcher](https://prismlauncher.org/).
2. Baixe `Rexvolution-Prism.zip` e arraste para o Prism (ou Adicionar instância > Importar).
3. Clique em Jogar. A cada abertura o pack se atualiza sozinho.

## Para atualizar o pack (dono)
- Jar próprio novo (ex.: Rexvolution): copie para `mods/` no lugar do antigo.
- Mod do CurseForge/Modrinth: `packwiz cf add <nome>` ou `packwiz mr add <nome>`.
- Depois de qualquer mudança: `packwiz refresh`, suba a versão em `pack.toml`, commit e push.
- O zip do Prism só precisa ser refeito se mudar o ícone, a memória ou o endereço do repositório:
  `.\prism\montar-instancia-prism.ps1 -Repo "usuario/repositorio"`
