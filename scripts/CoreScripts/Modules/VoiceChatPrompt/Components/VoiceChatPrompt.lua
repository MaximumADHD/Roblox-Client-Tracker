local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)

local VoiceChatPromptFrame = require(script.Parent.VoiceChatPromptFrame)

local PROMPT_DISPLAY_ORDER = 9

local VoiceChatPrompt = Roact.PureComponent:extend("VoiceChatPrompt")

VoiceChatPrompt.validateProps = t.strictInterface({
	promptSignal = t.optional(t.RBXScriptSignal),
	errorText = t.optional(t.string),
	bannedUntil = t.optional(t.string),
	onContinueFunc = t.optional(t.callback),
	onReadyForSignal = t.optional(t.callback),
	Analytics = t.optional(t.table),
})

function VoiceChatPrompt:render()
	return Roact.createElement("ScreenGui", {
		AutoLocalize = false,
		DisplayOrder = PROMPT_DISPLAY_ORDER,
		IgnoreGuiInset = true,
		OnTopOfCoreBlur = true,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	}, {
		Content = Roact.createElement(VoiceChatPromptFrame, self.props)
	})
end

return VoiceChatPrompt
