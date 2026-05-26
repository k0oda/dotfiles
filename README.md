# dotfiles

Personal system configuration, managed with [chezmoi].
Fedora · niri · DankMaterialShell · Neovim · Zed · kitty · zsh

---

## Stack

| Layer | Tool |
|---|---|
| Distro | Fedora |
| Compositor | [niri] |
| Shell | [DankMaterialShell] |
| Terminal | [kitty] |
| Editor | [Neovim] + [Zed] |
| Shell | [Zsh] + [Oh My Zsh] |
| Prompt | [Oh My Posh] |
| Fonts | FiraCode Nerd Font, JetBrains Mono Nerd Font |
| Icons | [WhiteSur] |

---

## Install
 
**1. Install DankMaterialShell**
 
```sh
curl -fsSL https://install.danklinux.com | sh
```
 
**2. Install chezmoi**

```sh
sh -c "$(curl -fsLS get.chezmoi.io/lb)"
```

**3. Init, review, apply**

```sh
chezmoi init k0oda
chezmoi diff
chezmoi apply
```

Or in one shot:

```sh
chezmoi init --apply k0oda
```

During init, chezmoi will ask a few questions:

| Prompt | Default | What it enables |
|---|---|---|
| `dev` | `true` | dev toolchain, luarocks, extra flatpaks |
| `containers` | `true` | Docker CE, lazydocker |
| `gaming` | `true` | Steam, Wine, Faugus Launcher, Gamescope |

---

## What happens on first apply

The bootstrap scripts run in this order — all before dotfiles are placed:

```
before_01  ->  COPR repos, Docker CE repo, RPM Fusion, Flathub
before_02  ->  dnf / flatpak / go packages (filtered by features)
─────────────────────────────────────────────────────
           ->  dotfiles applied
─────────────────────────────────────────────────────
after_01   ->  WhiteSur icon theme installed
after_02   ->  DMS plugins installed
after_03   ->  keyd config deployed & service started
```

Config directories for `niri` and `DankMaterialShell` are skipped automatically
if aren't installed.

---

## External dependencies

Fetched automatically by chezmoi via `.chezmoiexternal.toml`:

- **FiraCode** and **JetBrains Mono** Nerd Fonts - always latest GitHub release
- **WhiteSur icon theme** — git repo, refreshed weekly
- **oh-my-zsh** + plugins

---

[chezmoi]: https://www.chezmoi.io/
[niri]: https://github.com/YaLTeR/niri
[DankMaterialShell]: https://danklinux.com/
[kitty]: https://sw.kovidgoyal.net/kitty/
[Neovim]: https://neovim.io/
[Zed]: https://zed.dev/
[Zsh]: https://www.zsh.org/
[Oh My Zsh]: https://ohmyz.sh/
[Oh My Posh]: https://ohmyposh.dev/
[WhiteSur]: https://github.com/vinceliuice/WhiteSur-icon-theme
