local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)
local InGameMenuPolicy = require(script.Parent.Parent.Parent.InGameMenu.InGameMenuPolicy)

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
	policyMapper = t.optional(t.callback),
})

function VoiceChatPrompt:render()
	return Roact.createElement("ScreenGui", {
		AutoLocalize = false,
		DisplayOrder = PROMPT_DISPLAY_ORDER,
		IgnoreGuiInset = true,
		OnTopOfCoreBlur = true,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	}, {
		PolicyProvider = Roact.createElement(InGameMenuPolicy.Provider, {
			policy = { self.props.policyMapper or InGameMenuPolicy.Mapper },
		}, {Content = Roact.createElement(VoiceChatPromptFrame, self.props)})
	})
end

return VoiceChatPrompt
