return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
        "3rd/image.nvim",
	},
	config = function()
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
		vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
		require("neo-tree").setup({
		    enabled_git_status = true,
            close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
            window = {
   			 mappings = {
      				["P"] = { "toggle_preview", config = { use_float = false, use_image_nvim = true } },
    				}
  				}
			})

		
	end,
}
