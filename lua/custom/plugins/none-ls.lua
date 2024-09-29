return {
  'nvimtools/none-ls.nvim',
  requires = { 'nvim-lua/plenary.nvim' },
  dependencies = {
    'nvimtools/none-ls-extras.nvim',
    'jayp0521/mason-null-ls.nvim', -- ensure dependencies are installed
  },
  config = function()
    local none_ls = require 'null-ls'

    -- Setup null-ls with prettier for formatting
    none_ls.setup {
      sources = {
        none_ls.builtins.formatting.prettier.with {
          command = 'prettier', -- or 'prettierd'
          extra_args = { '--config-precedence', 'prefer-file' },
        },
        -- Additional formatters and linters
        none_ls.builtins.formatting.stylua,
        -- none_ls.builtins.diagnostics.eslint,
      },
      on_attach = function(client, bufnr)
        if client.server_capabilities.documentFormattingProvider then
          -- Auto format on save
          vim.api.nvim_create_autocmd('BufWritePre', {
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format { async = true }
            end,
          })
        end
      end,
    }

    -- Manual keybinding for formatting
    vim.api.nvim_set_keymap('n', '<leader>p', '<cmd>lua vim.lsp.buf.format({ async = true })<CR>', { noremap = true, silent = true })

    -- Ensure dependencies are installed
    require('mason-null-ls').setup {
      ensure_installed = {
        'prettier', -- ts/js formatter
        'stylua', -- lua formatter
        'eslint', -- ts/js linter
      },
      automatic_installation = true,
    }

    -- Create an augroup for LSP formatting
    local augroup = vim.api.nvim_create_augroup('LspFormatting', {})
    none_ls.setup {
      sources = {
        none_ls.builtins.formatting.prettier.with { filetypes = { 'html', 'json', 'yaml', 'markdown', 'js', 'jsx', 'ts', 'tsx' } },
        none_ls.builtins.formatting.stylua,
      },
      on_attach = function(client, bufnr)
        if client.supports_method 'textDocument/formatting' then
          vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
          vim.api.nvim_create_autocmd('BufWritePre', {
            group = augroup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format { async = false }
            end,
          })
        end
      end,
    }
  end,
}