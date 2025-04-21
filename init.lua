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
local list = { "stylua", "latexindent", "isort", "black",'jq' }
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
local function pcre_grep(pattern)
  local cmd = { "rg", "--pcre2", "--vimgrep", pattern }
  local result = vim.fn.systemlist(cmd)
  if #result == 0 then
    print("No match found.")
    return
  end
  -- 打开 quickfix 并填入结果
  vim.fn.setqflist({}, ' ', { title = 'PCRE Search', lines = result })
  vim.cmd("copen")
end

vim.api.nvim_create_user_command("PcreGrep", function()
  local pattern = vim.fn.input("PCRE Search: ")
  pcre_grep(pattern)
end, {})
