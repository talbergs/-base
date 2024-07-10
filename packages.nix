pkgs@{ ... }:
with pkgs; [
  php83Packages.psysh
  pv
  just # < A scripting dashboard
  # boots-and-belt
  yewtube # yt binary
  gnupg
  libreoffice
  onlyoffice-bin
  gnu-shepherd
  entr
  cntr
  dig
  npins
  nix-output-monitor
  nvd
  mysql
  wlr-randr
  translate-shell
  nixfmt-rfc-style
  alejandra
  wireguard-tools
  wf-recorder
  drawio
  zip
  freetube
  firefox
  mycli
  pciutils
  busybox
  tldr
  brave
  jira-cli-go
  slurp
  zathura
  grim
  kubernetes
  awscli2
  thunderbird
  lua-language-server
  grc # needed for fish plugin
  fd # needed for another fish plugin
  neovide
  xdg-utils
  cliphist
  nh
  # just run
  # nix-shell -p 'python3.withPackages(ps: with ps; [ pytorch jupyterlab ])' --run jupyter-lab
  pyright
  yt-dlp
  youtube-tui
  ffmpeg
  python3
  python3Packages.pip
  python3Packages.numpy
  # python3Packages.pytorch
  # python3Packages.virtualenv
  # python3Packages.tensorboard
  # python3Packages.matplotlib
  # python3Packages.torchvision
  # python3Packages.jupyterlab
  # python3Packages.ipython
  # python3Packages.python-lsp-server
  terminus-nerdfont
  go
  gopls
  brightnessctl
  tree-sitter
  terraform-ls
  # nodePackages.intelephense
  fzf
  pamixer
  nodejs
  zig
  avizo
  php
  swaylock
  wob
  lua
  fuzzel
  libnotify
  river-luatile
  # fish
  swaybg
  swayidle
  wev
  mpv
  transmission_4-gtk
  rivercarro
  river
  foot
  jq
  yq
  jqp
  htop
  bat
  fontpreview
  dejavu_fonts
  ollama # ollama run orca-mini
  gitleaks
  keepassxc
  keepmenu
  bitwarden
  pipewire
  ripgrep
  wl-clip-persist
  sysz
  pavucontrol
  wl-clipboard
  tree
]
