local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local ContentProvider = game:GetService("ContentProvider")

local UIBlox = require(CorePackages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local SlideFromTopToast = UIBlox.App.Dialog.Toast
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local GetFFlagEnableStyleProviderCleanUp =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableStyleProviderCleanUp
local AppDarkTheme = if GetFFlagEnableStyleProviderCleanUp()
	then nil
	else require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
local AppFont = if GetFFlagEnableStyleProviderCleanUp()
	then nil
	else require(CorePackages.Workspace.Packages.Style).Fonts.Gotham
local renderWithCoreScriptsStyleProvider = require(RobloxGui.Modules.Common.renderWithCoreScriptsStyleProvider)

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)

local TrackerPromptType = require(RobloxGui.Modules.Tracker.TrackerPromptType)

local FFlagTrackerPromptNewCopyForCameraPerformanceEnabled = game:DefineFastFlag("TrackerPromptNewCopyForCameraPerformanceEnabled", false)

local TOAST_DURATION = 8
local PROMPT_DISPLAY_ORDER = 10

local TrackerPrompt = Roact.PureComponent:extend("TrackerPrompt")

TrackerPrompt.validateProps = t.strictInterface({
	promptType = t.optional(t.string),
})

local PromptTitle = {
	[TrackerPromptType.None] = "",
	[TrackerPromptType.VideoNoPermission] = RobloxTranslator:FormatByKey("Feature.FaceChat.Heading.UnableToAccessCamera"),
	[TrackerPromptType.NotAvailable] = RobloxTranslator:FormatByKey("Feature.FaceChat.Heading.NotAvailable"),
	[TrackerPromptType.FeatureDisabled] = RobloxTranslator:FormatByKey("Feature.FaceChat.Heading.FacialAnimation"),
	[TrackerPromptType.LODCameraRecommendDisable] = if FFlagTrackerPromptNewCopyForCameraPerformanceEnabled
		then RobloxTranslator:FormatByKey("Feature.FaceChat.Heading.LowPerformanceDetected")
		else RobloxTranslator:FormatByKey("Feature.FaceChat.Heading.VideoPerformancePromptDisable"),
	[TrackerPromptType.NoDynamicHeadEquipped] = RobloxTranslator:FormatByKey("Feature.FaceChat.Heading.PromptNoDynamicHeadEquipped"),
	[TrackerPromptType.VideoUnsupported] = RobloxTranslator:FormatByKey("Feature.FaceChat.Heading.VideoUnsupported"),
	[TrackerPromptType.UnsupportedDevice] = RobloxTranslator:FormatByKey("Feature.FaceChat.Heading.NotAvailable"),
}
local PromptSubTitle = {
	[TrackerPromptType.None] = "",
	[TrackerPromptType.VideoNoPermission] = RobloxTranslator:FormatByKey("Feature.FaceChat.Subtitle.UnableToAccessCamera"),
	[TrackerPromptType.NotAvailable] = RobloxTranslator:FormatByKey("Feature.FaceChat.Subtitle.NotAvailable"),
	[TrackerPromptType.FeatureDisabled] = RobloxTranslator:FormatByKey("Feature.FaceChat.Subtitle.FeatureDisabled"),
	[TrackerPromptType.LODCameraRecommendDisable] = RobloxTranslator:FormatByKey("Feature.FaceChat.Subtitle.VideoPerformancePromptDisable"),
	[TrackerPromptType.NoDynamicHeadEquipped] = RobloxTranslator:FormatByKey("Feature.FaceChat.Subtitle.PromptNoDynamicHeadEquipped"),
	[TrackerPromptType.VideoUnsupported] = RobloxTranslator:FormatByKey("Feature.FaceChat.Subtitle.VideoUnsupported"),
	[TrackerPromptType.UnsupportedDevice] = RobloxTranslator:FormatByKey("Feature.FaceChat.Subtitle.UnsupportedDevice"),
}

function TrackerPrompt:init()
	if not GetFFlagEnableStyleProviderCleanUp() then
		self.promptStyle = {
			Theme = AppDarkTheme,
			Font = AppFont,
		}
	end
	self.promptType = self.props.promptType
end

function TrackerPrompt:render()
	self.promptType = self.props.promptType
	local trackerPrompt = Roact.createElement("Frame", {
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
		}),
	})
	local content
	if GetFFlagEnableStyleProviderCleanUp() then
		content = renderWithCoreScriptsStyleProvider({
			TrackerPrompt = trackerPrompt,
		})
	else
		content = Roact.createElement(UIBlox.Core.Style.Provider, {
			style = self.promptStyle,
		}, {
			TrackerPrompt = trackerPrompt,
		})
	end

	return Roact.createElement("ScreenGui", {
		AutoLocalize = false,
		DisplayOrder = PROMPT_DISPLAY_ORDER,
		IgnoreGuiInset = true,
		OnTopOfCoreBlur = true,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	}, {
		Content = content,
	})
end

return TrackerPrompt
