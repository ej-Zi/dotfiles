local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = "#"

vim.api.nvim_create_autocmd("TermClose", {
   callback = function()
      vim.cmd("close")
   end
})

require("lazy").setup("plugins")

require'nvim-treesitter.configs'.setup {
    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
        disable = {"latex"},
        additional_vim_regex_highlighting = {"latex"},
    }
}

require("telescope").setup{
    defaults = {
        file_ignore_patterns = {
            "node_modules"
        }
    },
    extensions = {
        fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
        }
    }
}

require("telescope").load_extension("fzf")

require("neo-tree").setup({
    close_if_last_window = true,
    default_component_configs = {
        git_status = {
            symbols = {
                modified = "M",
                untracked = "?",
            }
        },
    },
    window = {
        width = 30,
        mappings = {
            ["P"] = {"toggle_preview", config = {use_image_nvim = true}},
        }
    },
    filesystem = {
        bind_to_cwd = true,
        cwd_target = {
            sidebar = "tab",
            current = "window"
        },
    },
})

require("scrollbar").setup()

require("colorizer").setup()

require("ibl").setup{scope = {enabled = false}}

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

