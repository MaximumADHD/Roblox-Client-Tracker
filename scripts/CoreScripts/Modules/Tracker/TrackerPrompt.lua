local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local HttpService = game:GetService("HttpService")
local GuiService = game:GetService("GuiService")
local ContentProvider = game:GetService("ContentProvider")

local UIBlox = require(CorePackages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local SlideFromTopToast = UIBlox.App.Dialog.Toast
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local renderWithCoreScriptsStyleProvider = require(RobloxGui.Modules.Common.renderWithCoreScriptsStyleProvider)

local Roact = require(CorePackages.Roact)
local t = require(CorePackages.Packages.t)

local TrackerPromptType = require(RobloxGui.Modules.Tracker.TrackerPromptType)

local FFlagTrackerPromptNewCopyForCameraPerformanceEnabled = game:DefineFastFlag("TrackerPromptNewCopyForCameraPerformanceEnabled", false)
local FStringCameraUnavailableUrl = game:DefineFastString("CameraUnavailableUrl", "https://help.roblox.com/hc/articles/17877687557396")

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
	[TrackerPromptType.CameraUnavailable] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.CameraUnavailable"),
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
	[TrackerPromptType.CameraUnavailable] = RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.CameraUnavailable"),
}

local CustomWebviewType: { [string]: number } = {
	FullScreen = 0,
	FormSheet = 2,
}
local OPEN_CUSTOM_WEBVIEW = 20
local function openWebview(url)
	local notificationData = HttpService:JSONEncode({
		title = if game:GetEngineFeature("SetWebViewTitle") then RobloxTranslator:FormatByKey("Feature.SettingsHub.Prompt.CameraUnavailable") else nil,
		presentationStyle = CustomWebviewType.FormSheet,
		visible = true,
		url = url,
	})

	GuiService:BroadcastNotification(notificationData, OPEN_CUSTOM_WEBVIEW)
end

function TrackerPrompt:init()
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
				onActivated = function()
					if self.promptType == TrackerPromptType.CameraUnavailable then
						openWebview(FStringCameraUnavailableUrl)
					end
				end,
			},
		}),
	})

	local content = renderWithCoreScriptsStyleProvider({
		TrackerPrompt = trackerPrompt,
	})

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
