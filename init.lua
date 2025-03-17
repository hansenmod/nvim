require("core.keymaps")
require("config.lazy")
require("core.coc")
require("core.nvim_conf")
require("core.function")
require('mason').setup({
		       ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
	    })




