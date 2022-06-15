local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local ProjectRoot = ExperienceChat.Parent
local UIBlox = require(ProjectRoot.UIBlox)

return {
	ChatInputBarFont = Enum.Font.GothamMedium,
	ChatInputBarTextColor3 = UIBlox.App.Style.Colors.White,
	ChatInputBarTextSize = 14,

	ChatInputBarBackgroundColor = UIBlox.App.Style.Colors.Carbon,
	ChatInputBarBackgroundTransparency = 0.2,

	ChatInputBarBorderColor3 = UIBlox.App.Style.Colors.White,
	ChatInputBarBorderTransparency = 0.8,

	ChatWindowPosition = UDim2.new(0, 8, 0, 4),
	ChatWindowSize = UDim2.fromScale(0.4, 0.25),
	ChatWindowMessageLimit = 500,

	ChatWindowFont = Enum.Font.GothamMedium,
	ChatWindowTextColor3 = UIBlox.App.Style.Colors.White,
	ChatWindowTextSize = 14,

	ChatWindowBackgroundColor3 = UIBlox.App.Style.Colors.Carbon,
	ChatWindowBackgroundTransparency = 0.3,

	ChatWindowBackgroundFadeOutTime = 3.5,
	ChatWindowTextFadeOutTime = 30,

	ChatWindowMaxWidth = 475,
	ChatWindowMaxHeight = 275,

	TextChannelDisplayNames = {
		["RBXGeneral"] = "",
		["RBXSystem"] = "",
		["RBXTeam"] = "Team",
	},

	DefaultChannelNames = {
		["RBXGeneral"] = true,
		["RBXSystem"] = true,
	},
}
