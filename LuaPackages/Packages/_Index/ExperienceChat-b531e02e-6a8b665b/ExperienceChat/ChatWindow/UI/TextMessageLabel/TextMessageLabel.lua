local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local ProjectRoot = ExperienceChat.Parent

local Roact = require(ProjectRoot.Roact)

local Config = require(ExperienceChat.Config)

local TextMessageLabel = Roact.Component:extend("TextMessageLabel")
TextMessageLabel.defaultProps = {}

function appendVerifiedBadge(name: string): string
	return name .. Config.VERIFIED_EMOJI
end

function TextMessageLabel:render()
	local text = self.props.message.text or ""
	local prefixText = self.props.message.prefixText or ""
	local chatWindowSettings = self.props.chatWindowSettings

	if self.props.isUserVerified then
		prefixText = appendVerifiedBadge(prefixText)
	end

	return Roact.createElement("TextLabel", {
		AutomaticSize = Enum.AutomaticSize.XY,
		BackgroundTransparency = 1,
		FontFace = chatWindowSettings.FontFace,
		RichText = true,
		Size = UDim2.new(1, 0, 0, 0),
		Text = if string.len(prefixText) == 0 then text else prefixText .. ": " .. text,
		TextColor3 = chatWindowSettings.TextColor3,
		TextSize = chatWindowSettings.TextSize,
		TextStrokeColor3 = chatWindowSettings.TextStrokeColor3,
		TextStrokeTransparency = self.props.textStrokeTransparency or 0.5,
		TextTransparency = self.props.textTransparency or 0,
		TextWrapped = true,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
		LayoutOrder = self.props.LayoutOrder,
	}, {
		TextMessageButton = if string.len(prefixText) ~= 0
			then Roact.createElement("TextButton", {
				AutomaticSize = Enum.AutomaticSize.XY,
				BackgroundTransparency = 1,
				FontFace = chatWindowSettings.FontFace,
				RichText = true,
				Size = UDim2.new(0, 0, 0, 0),
				Text = prefixText .. ": ",
				TextSize = Config.ChatWindowTextSize,
				TextStrokeTransparency = 1,
				TextTransparency = 1,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,

				[Roact.Event.Activated] = function()
					self.props.onTextMessageLabelButtonActivated(self.props.message)
				end,
			})
			else nil,
	})
end

return TextMessageLabel
