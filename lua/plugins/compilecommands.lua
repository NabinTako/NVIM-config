return {
	"leosmaia21/gcompilecommands.nvim",
	opts = {
		tmp_file_path = "$HOME/tmp/compilecommandsNEOVIM.json",
	},
	ft = {
		"h",
		"hpp",
		"c",
		"cpp",
		"objc",
		"objcpp",
		"cuda",
		"proto",
	}, -- lazy load plugin only on C and C++ filetypes
}
