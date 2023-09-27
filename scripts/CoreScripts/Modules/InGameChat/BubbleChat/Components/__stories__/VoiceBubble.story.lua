local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(CorePackages.Packages.Roact)
local VoiceBubble = require(script.Parent.Parent.VoiceBubble)
local VoiceIndicator = require(Modules.VoiceChat.Components.VoiceIndicator)
local Constants = require(script.Parent.Parent.Parent.Constants)

local Story = Roact.PureComponent:extend("Story")

function Story:render()
	return Roact.createElement(VoiceBubble, {
		chatSettings = self.props.chatSettings,
		renderInsert = function()
			return Roact.createElement(VoiceIndicator, {
				voiceState = Constants.VOICE_STATE.TALKING,
				userId = "12345",
				onClicked = function()
					print("Indicator clicked")
				end,
			})
		end,
		insertSize = Vector2.new(28, 28),
	})
end

return Story
