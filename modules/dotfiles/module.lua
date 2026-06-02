local packages = {}

return {
	description = "Dotfiles manager",
	dotfiles_sync = true,
	dotfiles = {
		{ source = ".zshrc", target = "~/.zshrc" },
		{ source = ".p10k.zsh", target = "~/.p10k.zsh" },
		{ source = "coccoc-flags.conf", target = "~/.config/coccoc-flags.conf" },
	},
	packages = packages,
}
