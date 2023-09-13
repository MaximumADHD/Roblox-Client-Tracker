local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local React = require(Packages.React)

local Config = require(ExperienceChat.Config)

return function(props)
	return React.createElement("TextButton", {
		AutomaticSize = Enum.AutomaticSize.XY,
		TextColor3 = Config.ChatInputBarTextColor3,
		BackgroundTransparency = 1,
		Font = Config.ChatInputBarFont,
		Text = props.targetTextChannelDisplayName or "",
		TextSize = Config.ChatInputBarTextSize,
		TextWrapped = true,
		TextTransparency = props.transparency or 1,
		Size = UDim2.fromScale(0, 1),
		Visible = props.targetTextChannelDisplayName ~= "",

		[React.Change.AbsoluteSize] = props.onAbsoluteSizeChanged,
		[React.Event.Activated] = props.onChannelChipActivated,
	})
end
