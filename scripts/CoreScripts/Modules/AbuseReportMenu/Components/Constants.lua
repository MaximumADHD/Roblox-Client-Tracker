local root = script:FindFirstAncestor("AbuseReportMenu")
local Types = require(root.Components.Types)

local Constants = {}

Constants.AbuseReportMenuRootName = "AbuseReportMenuNewRoot"

Constants.AbuseReportMenuPlaceholderFrame = "AbuseReportMenuPlaceholderFrame"

Constants.ModalBaseSelectorDialogRootName = "ModalBaseSelectorDialog"

Constants.ReportModes = {
	Classic = "Classic",
	SelectInScene = "SelectInScene",
}

Constants.ReportTypes = {
	Person = "Person",
	Experience = "Experience",
}
-- Abuse Types

Constants.PlayerAbuseTypes = {
	Swearing = "Swearing",
	Username = "Inappropriate Username",
	Bullying = "Bullying",
	Scamming = "Scamming",
	Dating = "Dating",
	Cheating = "Cheating/Exploiting",
	Personal = "Personal Question",
	Links = "Offsite Links",
}

-- Voice report does not include offsite links
Constants.PlayerVoiceAbuseTypes = {
	Swearing = "Swearing",
	Username = "Inappropriate Username",
	Bullying = "Bullying",
	Scamming = "Scamming",
	Dating = "Dating",
	Cheating = "Cheating/Exploiting",
	Personal = "Personal Question",
}

Constants.InappropriateContentAbuseReason = "Inappropriate Content"

Constants.AbuseMethods = {
	TextChat = "Text Chat",
	VoiceChat = "Voice Chat",
	Other = "Other",
	Avatar = "Avatar",
}

Constants.AbuseMethodToVectorMapping = {
	[Constants.AbuseMethods.TextChat] = "chat",
	[Constants.AbuseMethods.VoiceChat] = "voice",
	[Constants.AbuseMethods.Other] = "other",
	[Constants.AbuseMethods.Avatar] = "avatar",
}

Constants.AnalyticsAbuseMethods = {
	Chat = "Chat",
	Voice = "Voice",
	Other = "Other",
	Game = "Game",
}

Constants.AbuseMethodToAnalyticsMapping = {
	[Constants.AbuseMethods.TextChat] = Constants.AnalyticsAbuseMethods.Chat,
	[Constants.AbuseMethods.VoiceChat] = Constants.AnalyticsAbuseMethods.Voice,
	[Constants.AbuseMethods.Other] = Constants.AnalyticsAbuseMethods.Other,
	[Constants.AbuseMethods.Avatar] = Constants.AnalyticsAbuseMethods.Other,
}

Constants.AbuseMethodSublabel = {
	TextChat = "This person typed a mean word in text chat",
	VoiceChat = "This person was screaming on top of their lungs",
	Other = "This person is following me, wearing a bad shirt, etc.",
	Avatar = "This person's avatar is wearing offensive clothing",
}

Constants.PlayerMenuActions = {
	UpdateAbuseReason = "UpdateAbuseReason",
	UpdateComment = "UpdateComment",
	UpdateMethodOfAbuse = "UpdateMethodOfAbuse",
	UpdateAbuser = "UpdateAbuser",
	UpdatedSelectedChatAndOrderedMessages = "UpdatedSelectedChatAndOrderedMessages",
	UpdatePlayerNameMap = "UpdatePlayerNameMap",
	SetVoiceEnabled = "SetVoiceEnabled",
	ClearState = "ClearState",
	SetShowModalSelector = "SetShowModalSelector",
	SetMenuOpenTimestamp = "SetMenuOpenTimestamp",
	SetPreselectedPlayer = "SetPreselectedPlayer",
}

Constants.ReportAnythingActions = {
	ClearAll = "ClearAll",
	ClearAnnotationFlowProperties = "ClearAnnotationFlowProperties",
	SetScreenshotId = "SetScreenshotId",
	SetScreenshotContentId = "SetScreenshotContentId",
	SetAnnotationPoints = "SetAnnotationPoints",
	SetIdentificationResults = "SetIdentificationResults",
	CompleteAttachment = "CompleteAttachment",
	SetAnnotationAreaDimensions = "SetAnnotationAreaDimensions",
	SetAnnotationCircleRadius = "SetAnnotationCircleRadius",
	SetAnnotationOptionSeen = "SetAnnotationOptionSeen",
}

Constants.AnalyticsActions = {
	Reset = "Reset",
	SetMenuOpenedTimestamp = "SetMenuOpenedTimestamp",
	IncrementExperiencePersonChanged = "IncrementExperiencePersonChanged",
	IncrementTypeofabuseChanged = "IncrementTypeofabuseChanged",
	IncrementPersonChanged = "IncrementPersonChanged",
	IncrementReasonChanged = "IncrementReasonChanged",
	IncrementCaptureScene = "IncrementCaptureScene",
	IncrementChatLineChanged = "IncrementChatLineChanged",
	SetMemoryRequirementMet = "SetMemoryRequirementMet", -- if device meets memory requirement for Highlight Mode/Select in Scene
	SetViewportInformation = "SetViewportInformation",
	SetSubmissionCompleted = "SetSubmissionCompleted",
	SetTypeOfAbuseSelection = "SetTypeOfAbuseSelection",
	SetReasonSelection = "SetReasonSelection",
	SetCommentAdded = "SetCommentAdded",
	SwitchToExperienceInitialSelections = "SwitchToExperienceInitialSelections",
	SwitchToPersonInitialSelections = "SwitchToPersonInitialSelections",
}

Constants.ReportSuccessToast = {
	ReportAnythingGeneric = "We’ve received your report and will take action soon if needed. Your feedback helps keep our community safe.",
	ChatGeneric = "Thanks for your report! Our moderators will review the chat logs and evaluate what happened.",
	Cheating = "Thanks for your report! We've recorded your report for evaluation.",
	BadUserName = "Thanks for your report! Our moderators will evaluate the username.",
	Place = "Thanks for your report! Our moderators will review the place and make a determination.",
}

local localizationKeys: { [string]: string } = {
	-- Report Types
	ReportType = "Feature.ReportAbuse.Label.ReportType",
	Person = "Feature.ReportAbuse.Label.Person",
	Experience = "Feature.ReportAbuse.Label.Experience",

	-- Report Modes
	SelectInScene = "Feature.ReportAbuse.Action.SelectInScene",
	BuildAReport = "Feature.ReportAbuse.Action.BuildAReport",

	-- Abuse Types
	[Constants.AbuseMethods.TextChat] = "Feature.ReportAbuse.Label.TextChat",
	[Constants.AbuseMethods.VoiceChat] = "Feature.SettingsHub.MethodOfAbuse.VoiceChat.Title",
	[Constants.AbuseMethods.Other] = "Feature.SettingsHub.MethodOfAbuse.Other.Title",
	[Constants.AbuseMethods.Avatar] = "Feature.ReportAbuse.Label.Avatar",

	-- Experience Abuse Methods
	[Constants.InappropriateContentAbuseReason] = "Feature.ReportAbuse.Label.Content",

	-- Player Abuse Methods (non-voice)
	[Constants.PlayerAbuseTypes.Swearing] = "Feature.ReportAbuse.Problem.Swearing",
	[Constants.PlayerAbuseTypes.Username] = "Feature.ReportAbuse.ProblemSurface.Username",
	[Constants.PlayerAbuseTypes.Bullying] = "Feature.ReportAbuse.Problem.Bullying",
	[Constants.PlayerAbuseTypes.Scamming] = "Feature.ReportAbuse.Problem.Scamming",
	[Constants.PlayerAbuseTypes.Dating] = "Feature.ReportAbuse.Problem.Dating",
	[Constants.PlayerAbuseTypes.Cheating] = "Feature.ReportAbuse.Problem.Cheating",
	[Constants.PlayerAbuseTypes.Personal] = "Feature.ReportAbuse.Problem.Personal",
	[Constants.PlayerAbuseTypes.Links] = "Feature.ReportAbuse.Problem.Links",

	-- Voice report does not include offsite links, need to map PlayerVoiceAbuseTypes to localization keys
	[Constants.PlayerVoiceAbuseTypes.Swearing] = "Feature.ReportAbuse.Problem.Swearing",
	[Constants.PlayerVoiceAbuseTypes.Username] = "Feature.ReportAbuse.ProblemSurface.Username",
	[Constants.PlayerVoiceAbuseTypes.Bullying] = "Feature.ReportAbuse.Problem.Bullying",
	[Constants.PlayerVoiceAbuseTypes.Scamming] = "Feature.ReportAbuse.Problem.Scamming",
	[Constants.PlayerVoiceAbuseTypes.Dating] = "Feature.ReportAbuse.Problem.Dating",
	[Constants.PlayerVoiceAbuseTypes.Cheating] = "Feature.ReportAbuse.Problem.Cheating",
	[Constants.PlayerVoiceAbuseTypes.Personal] = "Feature.ReportAbuse.Problem.Personal",

	-- Other Menu Items (buttons, labels, text box entry, etc.)
	ReasonForAbuse = "Feature.SettingsHub.Label.ReasonForAbuse",
	AttachScreenshot = "Feature.SettingsHub.Label.AttachScreenshot",
	SceneCaptured = "Feature.SettingsHub.Label.SceneCaptured",
	CaptureScene = "Feature.SettingsHub.Action.CaptureScene",
	MethodOfAbuse = "Feature.SettingsHub.Label.MethodOfAbuse",
	WhichChat = "Feature.SettingsHub.Label.WhichChatOptional",
	WhichPerson = "Feature.SettingsHub.Label.WhichPlayer",
	ChooseOne = "Feature.SettingsHub.Label.ChooseOne",
	ReportCommentPlaceholder = "Feature.SettingsHub.Label.ReportComment",
	SubmitButton = "Feature.ReportAbuse.Action.Submit",
	FooterInformation1 = "Feature.ReportAbuse.Message.OSACopy1",
	FooterInformation2 = "Feature.ReportAbuse.Message.ReportInformationCopy", -- more verbose version of FooterInformation1 (for UK legal compliance)
}

Constants.localizationKeys = localizationKeys

Constants.InitialIdentificationResults = {
	identifiedAvatars = {},
	identifiedAds = {},
	avatarIDStats = {
		totalPlayers = 0,
		checkedPlayers = 0,
		duration = 0,
	},
	adIDStats = {
		totalPlayers = 0,
		checkedPlayers = 0,
		duration = 0,
	},
} :: Types.IdentificationResults

Constants.ReportAnythingInitialState = {
	identificationResults = Constants.InitialIdentificationResults,
	screenshotId = "",
	screenshotContentId = "",
	attachCompleted = false,
	annotationPoints = {},
} :: Types.ReportAnythingState

Constants.AnalyticsInitialState = {
	menuEverShown = false,
	menuOpenedUnixTimestampMilliseconds = 0,
	experiencePersonChangeCount = 0,
	typeofabuseChangeCount = 0,
	personChangeCount = 0,
	reasonChangeCount = 0,
	captureSceneCount = 0,
	chatLineChangeCount = 0,
	viewportSizeX = -1,
	viewportSizeY = -1,
	isPortraitMode = false,
	isSubmissionCompleted = false,
	typeofabuseSelection = nil,
	reasonSelection = nil,
	commentAdded = false,
	experiencePersonSelection = nil,
	memoryRequirementMet = -1, -- if device meets memory requirement for Highlight Mode/Select in Scene
} :: Types.AnalyticsState

Constants.AnalyticsPersonInitialSelections = {
	typeofabuseSelection = nil,
	reasonSelection = nil,
	commentAdded = false,
	experiencePersonSelection = string.lower(Constants.ReportTypes.Person),
}

Constants.AnalyticsExpeirenceInitialSelections = {
	typeofabuseSelection = Constants.AnalyticsAbuseMethods.Game,
	reasonSelection = Constants.InappropriateContentAbuseReason,
	commentAdded = false,
	experiencePersonSelection = string.lower(Constants.ReportTypes.Experience),
}

Constants.AbuseVector = {
	Voice = "voice",
}

Constants.MenuItemHeight = 42
Constants.MenuItemHeightTight = 36
Constants.FreeCommentsMenuItemHeight = 60
Constants.FieldLabelSize = 18
Constants.LeftContainerWidth = 240
Constants.RightContainerWidth = 300
Constants.MenuItemDynamicWidthOffset = 100

Constants.FieldLabelSizeSmall = 16
Constants.LeftContainerWidthSmall = 100
Constants.RightContainerWidthSmall = 180

Constants.SmallLayoutThreshold = 540

Constants.ReportMenuFontStyle = "Header1"
Constants.ReportMenuButtonSize = 36

Constants.ReportMenuButtonSizeConsole = 48

Constants.InitPersonUIState = {
	reportType = Constants.ReportTypes.Person,
	comment = "",
	playerObjects = {},
	menuContainerWidth = 0,
	allegedAbuserId = nil,
	allegedAbuser = nil,
	abuseReason = nil,
	methodOfAbuse = nil,
	isVoiceEnabled = nil,
	menuOpenedUnixTimestampMilliseconds = nil,
	modalSelectorCellData = nil,
	isModalSelectorShown = nil,
	preselectedPlayer = nil,
	selectedMessage = nil,
	orderedMessages = {},
}

Constants.InitExperienceUIState = {
	reportType = Constants.ReportTypes.Experience,
	comment = "",
	abuseReason = Constants.InappropriateContentAbuseReason,
	menuContainerWidth = 0,
	-- other initially nil values not listed
}

Constants.ChatLineReportingVariant = {
	IGM_CLRv1 = "IGM_CLRv1",
}

return Constants
