
--@type vim.lsp.Config
return {
     cmd = { "toolbelt.sh" },
     filetypes = { "pants" },
     root_markers = {
          "pants.toml",
          ".git",
     },
}

--https://github.com/neovim/neovim/pull/38831
