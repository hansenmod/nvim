function RunPythonInHSplit()
    vim.cmd("set splitbelow")        -- Ensure new splits open below
    vim.cmd("split")                 -- Create a horizontal split
    vim.cmd("terminal python3 %")    -- Open terminal and run the current file
end
