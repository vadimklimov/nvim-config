local command = vim.api.nvim_create_user_command

-- Format code
command(
  "Format",
  function(args)
    local range = nil

    if args.count ~= -1 then
      local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
      range = {
        start = { args.line1, 0 },
        ["end"] = { args.line2, end_line:len() },
      }
    end

    require("conform").format({ async = true, lsp_fallback = true, range = range })
  end,
  { range = true }
)

-- Find and replace in all files
command(
  "FindReplaceAll",
  function(args)
    local cmd_template = "cfdo %%s/%s/%s/g | update | bdelete"

    local search_value = args.fargs[1]
    local replace_value = args.fargs[2]

    if not search_value or not replace_value then
      vim.notify("Search and replace values are required", vim.log.levels.ERROR)
      return
    end

    local cmd = string.format(cmd_template, search_value, replace_value)
    vim.cmd(cmd)
  end,
  { nargs = "*" }
)

-- Execute terminal command
command(
  "ToggleTermCmdExec",
  function(args)
    local Terminal = require("toggleterm.terminal").Terminal
    local cmd = table.concat(args.fargs, " ")
    local term = Terminal:new({
      cmd = cmd,
      hidden = false,
      close_on_exit = false,
    })
    term:toggle()
  end,
  { nargs = "+" }
)
