local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Roact = require(Packages.Roact)

local Config = require(ExperienceChat.Config)

local ChannelChip = Roact.Component:extend("ChannelChip")
ChannelChip.defaultProps = {
	targetTextChannelDisplayName = "",
	transparency = 0,
	onAbsoluteSizeChanged = function() end,
	onChannelChipActivated = function() end,
}

function ChannelChip:render()
	return Roact.createElement("TextButton", {
		AutomaticSize = Enum.AutomaticSize.XY,
		TextColor3 = Config.ChatInputBarTextColor3,
		BackgroundTransparency = 1,
		Font = Config.ChatInputBarFont,
		Text = self.props.targetTextChannelDisplayName,
		TextSize = Config.ChatInputBarTextSize,
		TextWrapped = true,
		TextTransparency = self.props.transparency,
		Size = UDim2.fromScale(0, 1),
		Visible = self.props.targetTextChannelDisplayName ~= "",

		[Roact.Change.AbsoluteSize] = self.props.onAbsoluteSizeChanged,
		[Roact.Event.Activated] = self.props.onChannelChipActivated,
	})
end

return ChannelChip
