--!strict
local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Roact = require(Packages.Roact)

local Localization = require(ExperienceChat.Localization)
local Config = require(ExperienceChat.Config)
local getOtherDisplayNameInWhisperChannel = require(ExperienceChat.getOtherDisplayNameInWhisperChannel)

local function component(props)
	local targetTextChannelDisplayName = props.targetTextChannelDisplayName or ""

	return Roact.createElement("TextButton", {
		AutomaticSize = Enum.AutomaticSize.XY,
		TextColor3 = if string.find(targetTextChannelDisplayName, "RBXTeam")
			-- TODO: Use reducer to reduce TextChannel->Color
			then props.localPlayer.TeamColor.Color
			else Config.ChatInputBarTextColor3,
		BackgroundTransparency = 1,
		Font = Config.ChatInputBarFont,
		Text = targetTextChannelDisplayName,
		TextSize = Config.ChatInputBarTextSize,
		TextWrapped = true,
		TextTransparency = props.transparency,
		Size = UDim2.fromScale(0, 1),
		Visible = targetTextChannelDisplayName ~= "",

		[Roact.Change.AbsoluteSize] = props.onAbsoluteSizeChanged,
		[Roact.Event.Activated] = props.onChannelChipActivated,
	})
end

local TextChannelDisplayNames = {
	["RBXTeam"] = "CoreScripts.TextChat.TeamChat.PrefixText",
	["RBXWhisper"] = "CoreScripts.TextChat.WhisperChat.PrefixText.Outgoing",
}

return Localization.connect(function(props)
	local targetTextChannelDisplayName
	if props.targetTextChannel then
		for k, v in pairs(TextChannelDisplayNames) do
			if string.match(props.targetTextChannel.Name, k) then
				if k == "RBXWhisper" then
					local otherDisplayName =
						getOtherDisplayNameInWhisperChannel(props.targetTextChannel, props.localPlayer)
					if otherDisplayName then
						targetTextChannelDisplayName = { v, { RBX_NAME = otherDisplayName } }
					end
				else
					targetTextChannelDisplayName = v
				end
			end
		end
	end

	return {
		targetTextChannelDisplayName = targetTextChannelDisplayName,
	}
end)(component)
