{ config, lib, pkgs, ... }: {
  programs.neovim = {
    enable = true;
    vimAlias = true;

    plugins = with pkgs.vimPlugins; [
      ale
      coc-emmet
      coc-nvim
      emmet-vim
      fugitive
      fzf-vim
      nerdcommenter
      tagbar
      ultisnips
      vim-airline
      vim-airline-themes
      vim-colors-solarized
      vim-easy-align
      vim-nix
      vim-obsession
      vim-scriptease
      vim-startify
      vim-surround
      vimspector
      vimtex

    ];

    extraConfig = builtins.concatStringsSep "\n" [
      # leave this first
      (builtins.readFile ./vimrc)

      (builtins.readFile ./autocommand.vim)
      (builtins.readFile ./functions.vim)
      (builtins.readFile ./plugin/airline.vim)
      (builtins.readFile ./plugin/ale.vim)
      (builtins.readFile ./plugin/coc.vim)
      (builtins.readFile ./plugin/emmet.vim)
      (builtins.readFile ./plugin/fugitive.vim)
      (builtins.readFile ./plugin/fzf.vim)
      (builtins.readFile ./plugin/latex.vim)
      (builtins.readFile ./plugin/nerdcommenter.vim)
      (builtins.readFile ./plugin/roam.vim)
      (builtins.readFile ./plugin/solarized.vim)
      (builtins.readFile ./plugin/surround.vim)
      (builtins.readFile ./plugin/tagbar.vim)
      (builtins.readFile ./plugin/ultisnips.vim)
      (builtins.readFile ./plugin/viewdoc.vim)
      (builtins.readFile ./plugin/vimtex.vim)
    ];
  };
}
