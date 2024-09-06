local keymap = vim.keymap.set

keymap("n", "<leader>fe", "<cmd>Telescope file_browser<cr>", { desc = "File browser" })
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Files" })
keymap("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Recent files" })
keymap("n", "<leader>fw", "<cmd>Telescope live_grep<cr>", { desc = "Words" })
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Buffers" })
keymap("n", "<leader>fm", "<cmd>Telescope noice<cr>", { desc = "Messages" })
keymap("n", "<leader>fq", "<cmd>Telescope quickfix<cr>", { desc = "Quickfix" })
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Help" })
keymap("n", "<leader>fc", "<cmd>Telescope commands<cr>", { desc = "Commands" })
keymap("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", { desc = "Keymaps" })
keymap("n", "<leader>fp", "<cmd>Telescope lazy<cr>", { desc = "Installed Lazy plugins" })
keymap("n", "<leader>fgc", "<cmd>Telescope git_commits<cr>", { desc = "Commits" })
keymap("n", "<leader>fgb", "<cmd>Telescope git_branches<cr>", { desc = "Branches" })
keymap("n", "<leader>fgf", "<cmd>Telescope git_files<cr>", { desc = "Files in index & working tree" })
keymap("n", "<leader>fgs", "<cmd>Telescope git_status<cr>", { desc = "Current changes per file" })

local spectre = require("spectre")
keymap("n", "<leader>ss", function() spectre.toggle() end, { desc = "Spectre" })
keymap("n", "<leader>sw", function() spectre.open_visual({ select_word = true }) end, { desc = "Search current word" })
keymap("n", "<leader>sp", function() spectre.open_file_search({ select_word = true }) end,
  { desc = "Search in current file" })

keymap("n", "<leader>ex", "<cmd>Oil<cr>", { desc = "Open parent directory (Oil)" })
keymap("n", "<leader>ee", "<cmd>Neotree left<cr>", { desc = "Open parent directory (Neotree)" })
keymap("n", "<leader>el", "<cmd>Neotree reveal left<cr>", { desc = "Navigate to file location (Neotree)" })

local persistence = require("persistence")
keymap("n", "<leader>qs", function() persistence.load() end, { desc = "Restore session" })
keymap("n", "<leader>ql", function() persistence.load({ last = true }) end, { desc = "Restore last session" })
keymap("n", "<leader>qd", function() persistence.stop() end, { desc = "Stop Persistence" })

local mini_bufremove = require("mini.bufremove")
keymap("n", "<leader>bd", function() mini_bufremove.delete(0, false) end, { desc = "Delete buffer" })
keymap("n", "<leader>bD", function() mini_bufremove.delete(0, true) end, { desc = "Delete buffer without saving" })
keymap("n", "<leader>bw", function() mini_bufremove.wipeout(0, false) end, { desc = "Wipe out buffer" })
keymap("n", "<leader>bW", function() mini_bufremove.wipeout(0, true) end, { desc = "Wipe out buffer without saving" })

keymap("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics" })
keymap("n", "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", { desc = "Buffer diagnostics" })
keymap("n", "<leader>xs", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = "Symbols" })
keymap("n", "<leader>xl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", { desc = "LSP" })
keymap("n", "<leader>xL", "<cmd>Trouble loclist toggle<cr>", { desc = "Location list" })
keymap("n", "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix list" })

keymap("n", "<leader>xo", "<cmd>AerialToggle!<cr>", { desc = "Code outline view" })
keymap("n", "<leader>xu", "<cmd>UndotreeToggle<cr>", { desc = "Undo tree" })
keymap("n", "<leader>xt", "<cmd>Twilight<cr>", { desc = "Twilight" })

keymap("n", "<leader>tg", "<cmd>ToggleTermCmdExec lazygit<cr>", { desc = "Lazygit" })
keymap("n", "<leader>tn", "<cmd>ToggleTermCmdExec cpi-navigator<cr>", { desc = "CPI Navigator" })
keymap("n", "<leader>tll", "<cmd>ToggleTermCmdExec cpilint-wrapper.sh inspect-local-iflows<cr>",
  { desc = "Inspect local changed iFlows (CPILint)" })
keymap("n", "<leader>tfs", "<cmd>ToggleTermCmdExec flashpipe-wrapper.sh snapshot-tenant-to-repo<cr>",
  { desc = "Snapshot tenant (FlashPipe)" })
keymap("n", "<leader>tfu", "<cmd>ToggleTermCmdExec flashpipe-wrapper.sh sync-repo-latest-commit-to-tenant<cr>",
  { desc = "Sync local changes to tenant (FlashPipe)" })

keymap("n", "<C-s>", "<cmd>write<cr>", { desc = "Save file" })
keymap("n", "<C-f>", "<cmd>Format<cr>", { desc = "Format" })
keymap("n", "<C-x>", "<cmd>Oil --float<cr>", { desc = "Open parent directory (float) (Oil)" })
keymap("n", "<C-e>", "<cmd>Neotree reveal float<cr>", { desc = "Navigate to file location (float) (Neotree)" })

function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  keymap("t", "<Esc>", [[<C-\><C-n>:q<cr>]], opts)
  keymap("t", "jk", [[<C-\><C-n>]], opts)
  keymap("t", "<C-h>", [[<cmd>wincmd h<cr>]], opts)
  keymap("t", "<C-j>", [[<cmd>wincmd j<cr>]], opts)
  keymap("t", "<C-k>", [[<cmd>wincmd k<cr>]], opts)
  keymap("t", "<C-l>", [[<cmd>wincmd l<cr>]], opts)
  keymap("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
