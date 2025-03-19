require("core.keymaps")
require("config.lazy")
require("core.nvim_conf")
	require("core.coc")
require("core.function")
local status, mason = pcall(require, "mason")
if not status then
	vim.notify("not fonunt mason")
	return
end
local list = {"stylua","latexindent","isort", "black"}
local mason_registry = require("mason-registry")
mason.setup()
local ensure_installed = function()
	for _, name in pairs(list) do
		if not mason_registry.is_installed(name) then
			local package = mason_registry.get_package(name)
			package:install()
		end
	end
end
mason_registry.refresh(vim.schedule_wrap(ensure_installed))
