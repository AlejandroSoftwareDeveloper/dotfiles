-- To copy to system clipboard use "+y
-- To paste press p

-- themes & transparency
-- Gestor de paquetes nvim 0.12+
vim.pack.add({
	{ src = "https://github.com/folke/tokyonight.nvim" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/echasnovski/mini.nvim" },
	{ src = "https://github.com/echasnovski/mini.files" },
	{ src = "https://github.com/echasnovski/mini.diff" },
	{ src = "https://github.com/echasnovski/mini.pick" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
    { src = 'https://github.com/neovim/nvim-lspconfig' },
    { src = 'https://github.com/L3MON4D3/LuaSnip' },
	{ src = 'https://github.com/mason-org/mason.nvim' },
	{ src = 'https://github.com/mason-org/mason-lspconfig.nvim' },
	{ src = 'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim' },
	{ src = 'https://github.com/nvim-lualine/lualine.nvim' },
})


require("mini.pick").setup({})
require("mini.diff").setup({})
require("mini.extra").setup({})
require("mini.files").setup({}) -- configurar
require("lualine").setup({})
require("nvim-treesitter.configs").setup({ 
    -- Autoinstall languages that are not installed
    auto_install = true,

    highlight = {
        enable = true,
    },
    build = ':TSUpdate',
    ensure_installed = {
        'python',
        'lua',
        'bash',
        'c',
        'html',
        'asm',
        -- 'diff',
        -- 'luadoc',
      },
})

require("oil").setup({
	view_options = {
		show_hidden = true,
	},
})

require("mason").setup({})
require("mason-lspconfig").setup({})
require("mason-tool-installer").setup({
    ensure_installed = {
        "pyright",
        "lua_ls",
        "stylua",
    }
})
require('luasnip').setup({ enable_autosnippets = true })
require('luasnip.loaders.from_lua').load({ paths = '~/.config/nvim/snippets/' })

vim.lsp.enable({ "lua_ls", "pyright" }) -- Para activar el hover C-w C-d
vim.cmd.colorscheme("tokyonight-night")

-- Descomentar para poner un background
-- vim.api.nvim_set_hl(0,"Normal",{ bg = "none" })
-- vim.api.nvim_set_hl(0,"NormalNC",{ bg = "none" })
-- vim.api.nvim_set_hl(0,"EndOfBuffer",{ bg = "none" })

-- Ajustes basicos
vim.o.number = true -- Linea vertical numerica
vim.o.relativenumber = true -- Linea vertical numerica relativa
vim.o.cursorline = true -- Marca la line donde esta el cursor
vim.o.scrolloff = 10 -- Muestra 10 lineas donde arriba y abajo del cursor
vim.o.sidescrolloff = 8 -- Muestra 8 lineas a la derecha e izquierda del cursor
vim.o.wrap = false -- No dobla las lineas cuando se pasa del limite de la pantalla

-- Identacion
vim.o.tabstop = 4 -- Ancho de la tabulacion
vim.o.shiftwidth = 4 -- Ancho de la tabulacion
vim.o.softtabstop = 4 -- Ancho de la tabulacion suave
vim.o.expandtab = true -- Usa espacios en vez de tabs
vim.o.smartindent = true -- Auto indentado inteligente
vim.o.autoindent = true -- Copia el indentado desde la linea actual

-- Ajuste de busqueda
vim.o.ignorecase = true -- Busqueda insensitiva
vim.o.smartcase = true -- Busqueda insensitiva si hayy mayuscula en la busqueda
vim.o.hlsearch = true -- No mostrar los resultados senalizado
vim.o.incsearch = true -- Muestra resultado mientras tecleas

-- Ajustes visuales
vim.o.syntax = "ON" -- Activa el visualizador sintactico
vim.o.winborder = "rounded" -- Activa bordes de las ventanas flotantes
vim.o.termguicolors = true -- Habilita los 24-bit de colores
vim.o.signcolumn = "yes" -- Muestra siempre la columna de simbolos
vim.o.showmatch = true -- Muestra las llaves, parentesis, y corchetes de cierre
vim.o.matchtime = 2 -- (No funciona) Muestra por tiempo la pareja de cierre del caso anterior
vim.o.cmdheight = 1 -- Altura de la linea de comandos
vim.o.completeopt = "menuone,noinsert,noselect" -- Opciones de completamiento
vim.o.colorcolumn = "100" -- Muestra una linea vertical cuando haya 100 carateres
vim.o.showmode = false -- No muestre los modos en la linea de comandos
vim.o.pumheight = 10 -- ALtura de 10 la ventana pum de menu
vim.o.pumblend = 10 -- Transparencia del pum en 10
vim.o.winblend = 0 -- Pone flotante la ventana trasnparente
vim.o.conceallevel = 0 -- No oculta el marcador
vim.o.concealcursor = "" -- No oculta el marcador de la linea del cursor
vim.o.lazyredraw = true -- No repintes durante macros
vim.o.synmaxcol = 300 -- Limite de senalizacion de syntasis

-- Configuraciones de comportamiento
vim.o.autowrite = false -- No escribe de forma automatica
vim.o.autoread = true -- Carga automaticamente los archivos del editor
vim.o.swapfile = false
vim.o.hidden = true -- Permite los buffers ocultos
vim.o.errorbells = false -- Desactivada la campana de errores
vim.o.backspace = "indent,eol,start" -- Desactivada la campana de errores
vim.o.mouse = "a" -- Activa el mouse

-- Tecla leader
vim.g.mapleader = " "

-- Atajos de teclados
vim.keymap.set("n", "<Esc>", ":nohlsearch<CR>", { desc = "Elimina la senalizacion de busqueda", silent = true })
vim.keymap.set( "n", "<C-o>", ":update<CR> :source<CR>",
	{ desc = "Actualiza y recarga el archivo de configuracion", silent = true })
vim.keymap.set("n", "<C-s>", ":write<CR>")
vim.keymap.set("n", "<C-q>", ":quit<CR>")

-- Atajos de movimiento keymaps
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window",  silent = true })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window", silent = true })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window", silent = true })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window", silent = true })

--  Y hasta EOL
vim.keymap.set("n", "Y", "y$", { desc = "Copia desde la poccion actual hasta el final de la linea", silent = true })

-- Navegacion adicionales
vim.keymap.set("n", "n", "nzzzv", { desc = "Muestra el proximo resultado de busqueda (centrado)", silent = true })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Muestra el resultado anterior de busqueda (centrado)", silent = true })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Navega hacia abajo y centra el contenido.", silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Navega hacia arriba y centra el contenido.", silent = true })

-- Mueve las lineas arriba y abajo
vim.keymap.set( "n", "<A-j>", ":m .+1<CR>==",
	{ desc = "Mueve el contenido de la linea hacia abajo (modo normal)", silent = true }
)

vim.keymap.set( "n", "<A-k>", ":m .-2<CR>==",
	{ desc = "Mueve el contenido de la linea hacia arriba (modo normal)", silent = true }
)

vim.keymap.set( "v", "<A-j>", ":m '>+1<CR>gv=gv",
	{ desc = "Mueve el contenido de la linea hacia abajo (modo visual)", silent = true }
)

vim.keymap.set( "v", "<A-k>", ":m '<-2<CR>gv=gv",
	{ desc = "Mueve el contenido de la linea hacia arriba (modo visual)", silent = true }
)

-- Identado a la derecha e izquierda
vim.keymap.set("v", "<", "<gv", { desc = "Mueve el contenido de la linea hacia arriba (modo normal)", silent = true })
vim.keymap.set("v", ">", ">gv", { desc = "Mueve el contenido de la linea hacia abajo (modo normal)", silent = true })

-- Navegacion de buffers
vim.keymap.set("n", "<Tab>", ":bnext <CR>", { desc = "Navega hacia el proximo buffer.", silent = true })
vim.keymap.set("n", "<S-Tab>", ":bprev<CR>", { desc = "Navega hacia el buffer anterior.", silent = true })
vim.keymap.set("n", "<leader>b", ":Pick buffers<CR>", { desc = "Muestra la lista de buffers.", silent = true })

-- Eliminacion de buffers excepto el actual
vim.keymap.set({"n","i","v"}, "<leader>wq", ":%bd|e# <CR>", { desc = "Cierra todos los buffers excepto el actual.", silent = true })

-- Reemplaza todas las coincidencias en el archivo actual
vim.keymap.set("v", "<leader>r", '"hy:%s/<C-r>h//g<left><left>')

-- Sale del modo insercion sin presionar escape
vim.keymap.set("i", "kj", "<Esc>")
vim.keymap.set("i", "jk", "<Esc>")

-- Cerrado automatico de pares, como llaves comillas, ect...
vim.keymap.set("i", '"', '""<left>')
vim.keymap.set("i", "'", "''<left>")
vim.keymap.set("i", "{", "{}<left>")
vim.keymap.set("i", "{;", "{};<left><left>")
vim.keymap.set("i", "(", "()<left>")
vim.keymap.set("i", "[", "[]<left>")
vim.keymap.set("i", "/*", "/**/<left><left>")

-- Atajos de teclados
vim.keymap.set("n", "-", ":Oil<CR>", { silent = true })
vim.keymap.set("n", "<leader>e", ":lua MiniFiles.open()<CR>", { silent = true })

-- Version de miniextra
-- vim.keymap.set('n','<leader>f',':lua MiniExtra.pickers.explorer()<CR>',{silent = true})
vim.keymap.set("n", "<leader>f", ":Pick files<CR>", { silent = true })
vim.keymap.set("n", "<Leader>h", ":Pick help<CR>", { silent = true })

-- vim commands
-- vim.cmd(":hi statusline guibg=NONE")

-- Lua Snippets
-- Terminar despues 
local ls = require('luasnip')

vim.keymap.set({"i"}, "<Tab>", function() ls.expand() end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})

vim.keymap.set({"i", "s"}, "<C-E>", function() 
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, {silent = true})
