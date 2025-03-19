vim.g.mapleader = " "
local keymap = vim.keymap

keymap.set("v", "u", "k")
keymap.set("v", "n", "h")
keymap.set("v", "e", "j")
keymap.set("v", "i", "l")

keymap.set("n", "=", "n")
keymap.set("n", "-", "N")

keymap.set("n","f","e")
keymap.set("v", "Y", '"+y')

keymap.set("n", "u", "k")
keymap.set("n", "n", "h")
keymap.set("n", "e", "j")
keymap.set("n", "i", "l")
keymap.set("n", "E", "10j")
keymap.set("n", "I", "10l")
keymap.set("n", "U", "10k")
keymap.set("n", "N", "10h")

keymap.set("n", "<C-u>", "10<C-y>")
keymap.set("n", "<C-e>", "10<C-e>")

keymap.set("v", "s", "<Nop>")
keymap.set("n", "s", "<Nop>")

keymap.set("n", "si", "<C-w>v")
keymap.set("n", "se", "<C-w>s")

keymap.set("n", "<leader>h", ":nohl<CR>")

keymap.set("n", "l", "u")

keymap.set("n", "k", "i")

keymap.set("n", "q", ":q!<CR>")
keymap.set("n", "Q", ":wq!<CR>")

keymap.set("n", "W", ":w<CR>")

keymap.set("n", "<up>", ":res +5<CR>")
keymap.set("n", "<down>", ":res -5<CR>")

keymap.set("n", "<LEADER>w", "<C-w>w")
keymap.set("n", "<LEADER>u", "<C-w>k")
keymap.set("n", "<LEADER>n", "<C-w>h")
keymap.set("n", "<LEADER>i", "<C-w>l")
keymap.set("n", "<LEADER>e", "<C-w>j")

keymap.set("n", "<LEADER>gg", ":LazyGit<CR>")

keymap.set("n", "r", ":lua RunPythonInHSplit()<CR>")

keymap.set("n", "<localleader>k", "<Plug>(YCMToggleInlayHints)")

keymap.set("i", "<C-e>", "pumvisible() ? '<C-n>' : '<Tab>'", { expr = true, noremap = true, silent = true })
keymap.set("i", "<C-u>", "pumvisible() ? '<C-p>' : '<S-Tab>'", { expr = true, noremap = true, silent = true })
keymap.set("n", "<leader>b", "", {
	noremap = true,
	silent = true,
	callback = function()
		local conform = require("conform")
		conform.format({
			bufnr = buffer_id,
			async = true,
			lsp_fallback = true,
		})
	end,
})

keymap.set("n", "tn", ":-tabnext<CR>")
keymap.set("n", "ti", ":+tabnext<CR>")

keymap.set("n", "tu", ":tabe<CR>")
keymap.set("n", "tU", ":tab split<CR>")

keymap.set("n", "<C-t>", ":FZF<CR>")

keymap.set("n", "<C-t>", ":FZF<CR>")

keymap.set("n", "<leader>n", function()
	local filename = vim.fn.input("New file name: ")
	if filename ~= "" then
		vim.fn.mkdir(vim.fn.fnamemodify(filename, ":h"), "p") -- 创建父目录
		vim.cmd("tabe ")
		vim.cmd("e " .. filename) -- 创建并打开文件
	else
		print("No file name provided.")
	end
end, { noremap = true, silent = true })

vim.api.nvim_create_autocmd("FileType", {
	pattern = "tex",
	callback = function()
		vim.keymap.set("n", "r", ":VimtexCompile<CR>", { noremap = true, silent = true, buffer = true })
	end,
})
