function RunPythonInHSplit()
	if vim.bo.filetype == "python" then
		vim.cmd("set splitbelow") -- 确保新分屏在下方打开
		vim.cmd("split") -- 创建水平分屏
		vim.cmd("terminal python3 %") -- 在终端中运行当前 Python 文件
	end
	if vim.bo.filetype == "lua" then
		vim.cmd("set splitbelow") -- 确保新分屏在下方打开
		vim.cmd("split") -- 创建水平分屏
		vim.cmd("terminal lua %") -- 在终端中运行当前 Python 文:件
	end
	if vim.bo.filetype == "tex" then
		vim.cmd("terminal VimtexCompile %")
	end
end
