return {
    "ej-Zi/vim-fishify",

    ---colorschemes----------------
    "Mofiqul/dracula.nvim",
    "catppuccin/nvim",
    "pineapplegiant/spaceduck",
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    'yorickpeterse/vim-paper',
    --------------------------------

    "petertriho/nvim-scrollbar",

    ---eye candy-------------------
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {}
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    "NvChad/nvim-colorizer.lua",
    --------------------------------

    ---formatting quality of life---
    {
        "numToStr/Comment.nvim",
        opts={},
        lazy=false
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },
    --------------------------------

    ---LSP, Syntax------------------
    {
        "nvim-treesitter/nvim-treesitter",
        build=":TSUpdate"
    },
    {
        "neoclide/coc.nvim",
        branch="release"
    },
    "dense-analysis/ale",
    --------------------------------

    {
        "lervag/vimtex",
        lazy = false,
        init = function()
        -- VimTeX configuration goes here
        end
    },

    ---file management---------------
    {
        "nvim-telescope/telescope.nvim",
        dependencies={"nvim-lua/plenary.nvim"}
    },
    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build="make"
    },
    {
       "nvim-neo-tree/neo-tree.nvim",
       branch = "v3.x",
       dependencies = {
         "nvim-lua/plenary.nvim",
         "nvim-tree/nvim-web-devicons",
         "MunifTanjim/nui.nvim",
       }
    },
    -----------------------------------

    ---git---------------------------
    "APZelos/blamer.nvim",
    {
        'akinsho/git-conflict.nvim',
        version = "*",
        config = true
    },
    ---------------------------------
    
    {
        'brianhuster/live-preview.nvim',
            dependencies = {
                -- You can choose one of the following pickers
                'nvim-telescope/telescope.nvim',
                -- 'ibhagwan/fzf-lua',
                -- 'echasnovski/mini.pick',
            },
    } 
}
