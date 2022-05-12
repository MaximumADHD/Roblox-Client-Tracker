local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Roact = require(Packages.Roact)

local Config = require(ExperienceChat.Config)

return function(props)
	local targetTextChannelDisplayName = ""
	if props.targetTextChannel then
		for k, v in pairs(Config.TextChannelDisplayNames) do
			if string.match(props.targetTextChannel.Name, k) then
				targetTextChannelDisplayName = v
			end
		end
	end

	return Roact.createElement("TextLabel", {
		AutomaticSize = Enum.AutomaticSize.XY,
		TextColor3 = if string.find(targetTextChannelDisplayName, "RBXTeam")
			-- TODO: Use reducer to reduce TextChannel->Color
			then props.localPlayer.TeamColor.Color
			else Config.ChatInputBarTextColor3,
		BackgroundTransparency = 1,
		Font = Config.ChatInputBarFont,
		Text = "[" .. targetTextChannelDisplayName .. "]",
		TextSize = Config.ChatInputBarTextSize,
		TextWrapped = true,
		TextTransparency = props.transparency,
		Size = UDim2.fromScale(0, 1),
		Visible = targetTextChannelDisplayName ~= "",

		[Roact.Change.AbsoluteSize] = props.onAbsoluteSizeChanged,
	})
end
