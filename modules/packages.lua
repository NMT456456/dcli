local packages = {
	-- gõ tiếng việt
	"fcitx5-lotus-bin",
	-- "fcitx5-config-qt", // chỉ cài một lần khi chạy lần đầu
	-- sudo systemctl enable --now fcitx5-lotus-server@$(whoami).service || (sudo systemd-sysusers && sudo systemctl enable --now fcitx5-lotus-server@$(whoami).service)

	-- CLI
	"fastfetch",
	"bat",
	"superfile",
	"btop",
	"zsh-autosuggestions",
	"zsh-syntax-highlighting",
	"eza",
	"fzf",
	"zoxide",

	-- Packages
	"kitty",
	"cliphist",

	-- Fonts
	"ttf-jetbrains-mono-nerd",
}

return {
	description = "CLI tools packages",
	packages = packages,
}
