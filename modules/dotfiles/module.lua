local packages = {}

return {
	description = "Dotfiles manager",
	dotfiles_sync = true,
	dotfiles = {
		{ source = ".zshrc", target = "~/.zshrc" },
		{ source = ".zprofile", target = "~/.zprofile" },
		{ source = ".p10k.zsh", target = "~/.p10k.zsh" },
	},
	packages = packages,
}
