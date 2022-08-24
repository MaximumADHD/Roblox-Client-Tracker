local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local ContentProvider = game:GetService("ContentProvider")

local UIBlox = require(CorePackages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local SlideFromTopToast = UIBlox.App.Dialog.Toast
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local AppDarkTheme = require(CorePackages.AppTempCommon.LuaApp.Style.Themes.DarkTheme)
local AppFont = require(CorePackages.AppTempCommon.LuaApp.Style.Fonts.Gotham)

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)

local TrackerPromptType = require(RobloxGui.Modules.Tracker.TrackerPromptType)

local TOAST_DURATION = 5
local PROMPT_DISPLAY_ORDER = 10

local TrackerPrompt = Roact.PureComponent:extend("TrackerPrompt")

TrackerPrompt.validateProps = t.strictInterface({
	promptType = t.optional(t.string),
})

local PromptTitle = {
	[TrackerPromptType.None] = "",
	[TrackerPromptType.VideoNoPermission] = RobloxTranslator:FormatByKey("Feature.FaceChat.Heading.VideoNoPermission"),
	[TrackerPromptType.NotAvailable] = RobloxTranslator:FormatByKey("Feature.FaceChat.Heading.NotAvailable"),
}
local PromptSubTitle = {
	[TrackerPromptType.None] = "",
	[TrackerPromptType.VideoNoPermission] = RobloxTranslator:FormatByKey("Feature.FaceChat.Subtitle.VideoNoPermission"),
	[TrackerPromptType.NotAvailable] = RobloxTranslator:FormatByKey("Feature.FaceChat.Subtitle.NotAvailable"),
}

function TrackerPrompt:init()
	self.promptStyle = {
		Theme = AppDarkTheme,
		Font = AppFont,
	}

	self.promptType = self.props.promptType
end

function TrackerPrompt:render()
	self.promptType = self.props.promptType

	return Roact.createElement("ScreenGui", {
		AutoLocalize = false,
		DisplayOrder = PROMPT_DISPLAY_ORDER,
		IgnoreGuiInset = true,
		OnTopOfCoreBlur = true,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	}, {
		Content = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = self.promptStyle,
		}, {
			TrackerPrompt = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
			}, {
				Toast = self.promptType ~= TrackerPromptType.None and Roact.createElement(SlideFromTopToast, {
					duration = TOAST_DURATION,
					toastContent = {
						iconImage = Images["icons/status/alert"],
						toastTitle = PromptTitle[self.promptType],
						toastSubtitle = PromptSubTitle[self.promptType],
						onDismissed = function() end,
					},
				})
			})
		})
	})
end

return TrackerPrompt
