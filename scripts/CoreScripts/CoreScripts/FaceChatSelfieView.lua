--!nonstrict
--[[
*current requirements for showing Self View:
	-player has to have an avatar with Head and Animator. Head can be either an object inside body with FaceControls or an object called "Head".
	-avatar parent not nil
	-CoreGuiType.SelfView is not set to false.
	It gets set to false when either calling SetCoreGuiEnabled(CoreGuiType.CoreGuiType.SelfView), false
	or SetCoreGuiEnabled(CoreGuiType.All, false)
	the later is the case in many experiences
	(in that case the developer would have to call SetCoreGuiEnabled(CoreGuiType.CoreGuiType.SelfView), true)
	then if they want to disable all toggleable CoreGuiTypes but then enable just Self View)

*currently the Self View gets hidden if no usable head found, this may be changed based on feedback from Product

TODO: this is just an in between state checkin for MVP preview
this will see further refactors over the next PRs before MVP release
bigger changes before mvp release next up:

*bigger changes before full version release:
(-add new SelfViewService for further customization (position, size, color, override head name (so it can use a head not named "Head", lighting settings etc))
-potentially changing this to do the ui in roact (pros/ cons to evaluate)
-reduce full rebuilds of clone as much as possible
(potentially size change for bodyparts could be done in place instead of doing full rebuild)
]]

--TODO: set to false before release or add a new logging level flag or setting
local debug = false

function debugPrint(text)
	if debug then
		print(text)
	end
end

local newTrackerStreamAnimation = nil
local cloneStreamTrack = nil

local EngineFeatureAnimatorAndADFRefactor = game:GetEngineFeature("AnimatorAndADFRefactor")
local EngineFeaturePlayerViewRemoteEventSupport = game:GetEngineFeature("PlayerViewRemoteEventSupport")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local CollectionService = game:GetService("CollectionService")
local VRService = game:GetService("VRService")
local FFlagSelfViewCameraDefaultButtonInViewPort = game:DefineFastFlag("SelfViewCameraDefaultButtonInViewPort", false)
local FFlagSelfViewLookUpHumanoidByType = game:DefineFastFlag("SelfViewLookUpHumanoidByType", false)
local FFlagSelfViewHumanoidNilCheck = game:DefineFastFlag("SelfViewHumanoidNilCheck", false)
local FFlagSelfViewMoreNilChecks = game:DefineFastFlag("SelfViewMoreNilChecks", false)
local FFlagSelfViewAvoidErrorOnWrongFaceControlsParenting =
	game:DefineFastFlag("SelfViewAvoidErrorOnWrongFaceControlsParenting", false)
local FFlagSelfViewUpdatedCamFraming = game:DefineFastFlag("SelfViewUpdatedCamFraming", false)
local FFlagSelfViewGetRidOfFalselyRenderedFaceDecal =
	game:DefineFastFlag("SelfViewGetRidOfFalselyRenderedFaceDecal", false)
local FFlagSelfViewRemoveVPFWhenClosed = game:DefineFastFlag("SelfViewRemoveVPFWhenClosed", false)
local FFlagSelfViewTweaksPass = game:DefineFastFlag("SelfViewTweaksPass", false)
local FFlagInExperienceUpsellSelfViewFix = game:DefineFastFlag("InExperienceUpsellSelfViewFix", false)
local FFlagRemoveVoiceJoiceDisconnectFix = game:DefineFastFlag("RemoveVoiceJoiceDisconnectFix", false)
local FFlagFixUpdateMicIconCallBeforeReady = game:DefineFastFlag("FixUpdateMicIconCallBeforeReady", false)
local FFlagSelfViewAvatarJointUpgrade = game:DefineFastFlag("SelfViewAvatarJointUpgrade", false)

local CorePackages = game:GetService("CorePackages")
local CharacterUtility = require(CorePackages.Packages.Thumbnailing).CharacterUtility
local CFrameUtility = require(CorePackages.Packages.Thumbnailing).CFrameUtility
local CoreGui = game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")
local RobloxGui = CoreGui.RobloxGui
local RunService = game:GetService("RunService")
local MouseIconOverrideService = require(CorePackages.Workspace.Packages.CoreScriptsCommon).MouseIconOverrideService
local Symbol = require(CorePackages.Workspace.Packages.AppCommonLib).Symbol
local INGAME_SELFVIEW_CUSOR_OVERRIDE_KEY = Symbol.named("SelfieViewCursorOverride")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local AppStorageService = game:GetService("AppStorageService")
local SocialService = game:GetService("SocialService")
local UserInputService = game:GetService("UserInputService")
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local VoiceConstants = require(RobloxGui.Modules.VoiceChat.Constants)
local FaceAnimatorService = game:FindService("FaceAnimatorService")
local VideoCaptureService = game:FindService("VideoCaptureService")
local Analytics = require(RobloxGui.Modules.SelfView.Analytics).new()
local log = require(CorePackages.Workspace.Packages.CoreScriptsInitializer).CoreLogger:new(script.Name)
local TrackerMenu = require(RobloxGui.Modules.Tracker.TrackerMenu)
local TrackerPromptType = require(RobloxGui.Modules.Tracker.TrackerPromptType)
local DEFAULT_POSITION = UDim2.fromOffset(15, 25)
local DEFAULT_SIZE = UDim2.new(0.15, 0, 0.4, 0)
local DEFAULT_BUTTONS_BAR_HEIGHT = 36
local DEFAULT_SELF_VIEW_FRAME_COLOR = Color3.new(1, 1, 1)
local BACKGROUND_TRANSPARENCY = 0.65
local SCREEN_BORDER_OFFSET = 3
local SELF_VIEW_POSITION_OFFSET = 24
local SELF_VIEW_NAME = "SelfView"
local IS_STUDIO = RunService:IsStudio()
local toggleSelfViewSignal = require(RobloxGui.Modules.SelfView.toggleSelfViewSignal)
local getCamMicPermissions = require(RobloxGui.Modules.Settings.getCamMicPermissions)
local VoiceAnalytics = require(RobloxGui.Modules.Settings.Analytics.VoiceAnalytics)
local selfViewPublicApi = require(RobloxGui.Modules.SelfView.publicApi)
local GetFFlagAvatarChatServiceEnabled =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAvatarChatServiceEnabled
local AvatarChatService = if GetFFlagAvatarChatServiceEnabled() then game:GetService("AvatarChatService") else nil
local PermissionsProtocol = require(CorePackages.Workspace.Packages.PermissionsProtocol).PermissionsProtocol.default
local getFFlagDoNotPromptCameraPermissionsOnMount =
	require(RobloxGui.Modules.Flags.getFFlagDoNotPromptCameraPermissionsOnMount)
local GetFFlagJoinWithoutMicPermissions =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagJoinWithoutMicPermissions

local getFFlagEnableAlwaysAvailableCamera = require(RobloxGui.Modules.Flags.getFFlagEnableAlwaysAvailableCamera)
local FFlagMockFTUXAlwaysAvailableCameraUser = game:DefineFastFlag("MockOpenSelfViewForCameraUser", false)
local GetFFlagRemoveInGameChatBubbleChatReferences =
	require(RobloxGui.Modules.Flags.GetFFlagRemoveInGameChatBubbleChatReferences)
local globalShowSelfViewFunction = nil
local FIntSelfViewTooltipLifetime = game:DefineFastInt("SelfViewTooltipLifetime", 10)
local mountSelfViewOnCloseTooltip = require(RobloxGui.Modules.SelfView.mountSelfViewOnCloseTooltip)
local mountSelfViewOnOpenTooltip = require(RobloxGui.Modules.SelfView.mountSelfViewOnOpenTooltip)
local mountedOnOpenTooltipInstance = nil

local isCamEnabledForUserAndPlace = require(RobloxGui.Modules.Settings.isCamEnabledForUserAndPlace)
local displayCameraDeniedToast = require(RobloxGui.Modules.InGameChat.BubbleChat.Helpers.displayCameraDeniedToast)
if GetFFlagRemoveInGameChatBubbleChatReferences() then
	displayCameraDeniedToast = require(RobloxGui.Modules.VoiceChat.Helpers.displayCameraDeniedToast)
end

local UIBlox = require(CorePackages.Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local VIDEO_IMAGE = Images["icons/controls/video"]
local VIDEO_OFF_IMAGE = Images["icons/controls/videoOff"]
local MIC_OFF_IMAGE = Images["icons/controls/microphoneMute"]
local MIC_INACTIVE_IMAGE = Images["icons/controls/microphone_small"]
local MIC_NAME = "MicButton"
local CAM_NAME = "CamButton"
local inExperienceCoreGui

local DEFAULT_SELF_VIEW_CAM_OFFSET = Vector3.new(0, 0.105, -0.25)
local DEFAULT_SELF_VIEW_NO_HEAD_CAM_OFFSET = Vector3.new(0, 1.5, 0)
local DEFAULT_CAM_DISTANCE = 2
local DEFAULT_CAM_DISTANCE_NO_HEAD = 2.5
local DEFAULT_CAM_X_ROT = -0.04
local cloneCharacterName = "SelfAvatar"
--FoV smaller is closer up
local SELF_VIEW_CAMERA_FIELD_OF_VIEW = 52.5
--gets value populated with actual headHeight once we have it, default value is just a fallback value while no proper usable head is found
local headHeight = 1.31
-- seconds to wait to update the clone after something in the original has changed
local UPDATE_CLONE_CD = 0.35
--when no usable clone for 5 sec it will hide Self View (not doing it instantly as to not have it flicker on off while swapping avatars)
local AUTO_HIDE_CD = 5
local updateCloneCurrentCoolDown = 0

local GetFFlagVoiceChatUILogging = require(RobloxGui.Modules.Flags.GetFFlagVoiceChatUILogging)
local GetFFlagEnableVoiceMuteAnalytics = require(RobloxGui.Modules.Flags.GetFFlagEnableVoiceMuteAnalytics)
local GetFFlagEnableShowVoiceUI = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableShowVoiceUI

local voiceAnalytics
if GetFFlagEnableVoiceMuteAnalytics() then
	voiceAnalytics = VoiceAnalytics.new(AnalyticsService, "LegacySelfView")
end

local renderSteppedConnection = nil
local playerCharacterAddedConnection = nil
local playerCharacterRemovingConnection = nil
local trackStoppedConnections = {}
local videoAnimationPropertyChangedSingalConnection = nil
local audioAnimationPropertyChangedSingalConnection = nil
local videoCaptureServiceStartedConnection = nil
local videoCaptureServiceStoppedConnection = nil
local videoCaptureServiceDevicesChangedConnection = nil
local playerScreenOrientationConnection = nil
local voiceJoinProgressChangedConnection = nil

local cloneAnimator = nil
local cloneAnimationTracks = {}
local orgAnimationTracks = {}
local cachedHeadColor = nil
local cachedHeadSize = nil
local currentTrackerMode = nil
local cachedMode = nil
local viewportFrame = nil
local viewportCamera = nil
local selfViewFrame = nil
--fallback default value, actual value gets populated once parts found:
local boundsSize = Vector3.new(1.1721, 1.1811, 1.1578)
local cloneAnchor = nil
local clone = nil
local headRef = nil
local headClone = nil
local headCloneNeck = nil
local headCloneRootFrame = nil
local frame = nil
local bottomButtonsFrame = nil
local micIcon = nil
local camIcon = nil
local indicatorCircle = nil
--red circle, shown when both cam and mic on
local INDICATOR_ON_IMAGE = "rbxasset://textures/SelfView/SelfView_icon_indicator_on.png"
--green circle, shown when only either cam or mic on, not both on
local INDICATOR_OFF_IMAGE = "rbxasset://textures/SelfView/SelfView_icon_indicator_off.png"
--state
local isOpen = false
local foundStreamTrack = nil
local gotUsableClone = false
local noUsableCloneOffset = nil
local initialized = false
local cloneCamUpdateCounter = 0
local selfViewSessionStarted = false
local cachedViewSessionStarted = false
local didOverrideMouse = false
local isVoiceConnecting = true
--TODO: increase cloneCamUpdatePosEvery once we add easing to the cam framing code
local cloneCamUpdatePosEvery = 1
local hasCameraPermissions = false
local hasMicPermissions = false
local voiceChatServiceEnabled = false

local function getShouldShowMicButton()
	if GetFFlagEnableShowVoiceUI() then
		local showVoiceUI = VoiceChatServiceManager.voiceUIVisible
		if GetFFlagJoinWithoutMicPermissions() then
			-- This makes sure that the mic button is still shown when the user is connecting to voice chat, but hidden when the user gets banned
			return showVoiceUI
				and voiceChatServiceEnabled
				and (not VoiceChatServiceManager:VoiceChatEnded() or isVoiceConnecting)
		elseif getFFlagEnableAlwaysAvailableCamera() then
			return showVoiceUI and hasMicPermissions
		else
			return showVoiceUI and hasMicPermissions and not VoiceChatServiceManager:VoiceChatEnded()
		end
	else
		if GetFFlagJoinWithoutMicPermissions() then
			-- This makes sure that the mic button is still shown when the user is connecting to voice chat, but hidden when the user gets banned
			return voiceChatServiceEnabled and (not VoiceChatServiceManager:VoiceChatEnded() or isVoiceConnecting)
		elseif getFFlagEnableAlwaysAvailableCamera() then
			return hasMicPermissions
		else
			return hasMicPermissions and not VoiceChatServiceManager:VoiceChatEnded()
		end
	end
end

local cachedHasCameraPermissions = false
local cachedHasMicPermissions = false
local lastReportedCamState = false
local toggleSelfViewSignalConnection
local noDynamicHeadEquippedInfoShown = false
local localPlayerHasDynamicHead = nil

local selfViewVisibleConnection = nil
local selfViewHiddenConnection = nil
local r15bodyPartsToShow = {
	"Head",
	"UpperTorso",
	"LowerTorso",
	"Torso",
	"LeftFoot",
	"LeftLowerLeg",
	"LeftUpperLeg",
	"RightFoot",
	"RightLowerLeg",
	"RightUpperLeg",
	"LeftHand",
	"LeftLowerArm",
	"LeftUpperArm",
	"RightHand",
	"RightLowerArm",
	"RightUpperArm",
}

--table which gets populated with the initial transparency of body parts
--so we can maintain that transparency even if later it gets changed for the game world avatar when entering vehicles or similar
local partsOrgTransparency = {}

local ALWAYS_TRANSPARENT_PART_TAG = "__RBX__LOCKED_TRANSPARENT"

local r6bodyPartsToShow = {
	"Head",
	"Left Arm",
	"Left Leg",
	"Right Arm",
	"Right Leg",
	"Torso",
}

local ALLOWLISTED_INSTANCE_TYPES = {
	Accessory = "Accessory",
	Animator = "Animator",
	Attachment = "Attachment",
	AnimationConstraint = FFlagSelfViewAvatarJointUpgrade and "AnimationConstraint" or nil,
	BallSocketConstraint = FFlagSelfViewAvatarJointUpgrade and "BallSocketConstraint" or nil,
	BodyColors = "BodyColors",
	CharacterMesh = "CharacterMesh",
	Decal = "Decal",
	FaceControls = "FaceControls",
	Humanoid = "Humanoid",
	HumanoidDescription = "HumanoidDescription",
	MeshPart = "MeshPart",
	Motor6D = "Motor6D",
	NumberValue = "NumberValue",
	Pants = "Pants",
	Part = "Part",
	Shirt = "Shirt",
	ShirtGraphic = "ShirtGraphic",
	SpecialMesh = "SpecialMesh",
	StringValue = "StringValue",
	SurfaceAppearance = "SurfaceAppearance",
	Vector3Value = "Vector3Value",
	WrapTarget = "WrapTarget",
	Weld = "Weld",
	WrapLayer = "WrapLayer",
	--additional items needed for having some accessories work:
	WeldConstraint = "WeldConstraint",
	AccessoryWeld = "AccessoryWeld",
	--PackageLink is here since one can't nill out the parent of a PackageLink
	PackageLink = "PackageLink",
	Folder = "Folder",
	--some games like Winds of Fortune connect things like hair with constraints so we keep those in
	RigidConstraint = "RigidConstraint",
}

--we want to trigger UpdateClone which recreates the clone fresh as rarely as possible (performance optimization),
--so for triggering dirty on DescendantAdded or DescendantRemoving we only trigger it for things which make a visual difference
--as to avoid unnecessary refreshes (e.g. Sound objects etc getting added to player avatar should not cause recreating the clone)
local TYPES_TRIGGERING_DIRTY_ON_ADDREMOVE = {
	Accessory = "Accessory",
	CharacterMesh = "CharacterMesh",
	Decal = "Decal",
	MeshPart = "MeshPart",
	Pants = "Pants",
	Part = "Part",
	Shirt = "Shirt",
	ShirtGraphic = "ShirtGraphic",
	SpecialMesh = "SpecialMesh",
	SurfaceAppearance = "SurfaceAppearance",
}

log:trace("Self View 08-13-2024__1!!")

local observerInstances = {}
local Observer = {
	AnimationPlayed = "AnimationPlayed",
	AnimationPlayedCoreScript = "AnimationPlayedCoreScript",
	DescendantAdded = "DescendantAdded",
	DescendantRemoving = "DescendantRemoving",
	HeadSize = "HeadSize",
	Color = "Color",
	CharacterAdded = "CharacterAdded",
	CharacterRemoving = "CharacterRemoving",
	HumanoidStateChanged = "HumanoidStateChanged",
}

function getShouldDisplaySelfieView()
	local shouldDisplaySelfieView = false

	if FFlagMockFTUXAlwaysAvailableCameraUser then
		return true
	end

	-- todo: remove pcall when ShowSelfieViewForCameraUser added to appstorageservice
	pcall(function()
		local savedState = AppStorageService:GetItem("ShowSelfieViewForCameraUser")
		if savedState == "true" then
			shouldDisplaySelfieView = true
		end
	end)

	return shouldDisplaySelfieView
end

function setSelfieViewDisplayInAppStorage(newState)
	-- todo: remove pcall when ShowSelfieViewForCameraUser added to appstorageservice
	pcall(function()
		AppStorageService:SetItem("ShowSelfieViewForCameraUser", if newState then "true" else "false")
	end)
end

function shouldDisplaySelfViewTooltip(tooltipName)
	if not getFFlagEnableAlwaysAvailableCamera() or not isCamEnabledForUserAndPlace() then
		-- If always available camera is not on or user is not a camera user, never render tooltips
		return false
	end

	if GetFFlagEnableShowVoiceUI() and not bottomButtonsFrame then
		-- If there are no buttons being displayed, don't show the tooltip
		return false
	end

	local shouldDisplayTooltip = false

	if FFlagMockFTUXAlwaysAvailableCameraUser then
		return true
	end

	pcall(function()
		shouldDisplayTooltip = AppStorageService:GetItem(tooltipName) == "true"
	end)
	return shouldDisplayTooltip
end

function displaySelfieViewByDefault()
	if
		getFFlagEnableAlwaysAvailableCamera()
		and isCamEnabledForUserAndPlace()
		and getShouldDisplaySelfieView()
		and globalShowSelfViewFunction ~= nil
	then
		globalShowSelfViewFunction(true)
	end
end

function getRelativePosition(uiObject)
	if not uiObject.Parent then
		return uiObject.Size
	end
	local screenSize = uiObject.Parent.AbsoluteSize
	return UDim2.new(uiObject.AbsolutePosition.X / screenSize.X, 0, uiObject.AbsolutePosition.Y / screenSize.Y, 0)
end

function getRelativeSize(uiObject)
	if not uiObject.Parent then
		return uiObject.Size
	end
	local screenSize = uiObject.Parent.AbsoluteSize
	debugPrint(
		"uiObject.AbsoluteSize.X:"
			.. tostring(uiObject.AbsoluteSize.X)
			.. ",uiObject.AbsoluteSize.Y:"
			.. tostring(uiObject.AbsoluteSize.Y)
			.. ",screenSize.X:"
			.. tostring(screenSize.X)
			.. ",screenSize.Y:"
			.. tostring(screenSize.Y)
	)
	return UDim2.new(uiObject.AbsoluteSize.X / screenSize.X, 0, uiObject.AbsoluteSize.Y / screenSize.Y, 0)
end

function startSelfViewSession()
	selfViewPublicApi.setSelfViewIsOpenAndVisible(true)
	local relativePosition = getRelativePosition(frame)
	local relativeSize = getRelativeSize(frame)
	Analytics:reportSelfViewSessionStarted(
		math.floor(frame.AbsolutePosition.X),
		math.floor(frame.AbsolutePosition.Y),
		math.floor(frame.AbsoluteSize.X),
		math.floor(frame.AbsoluteSize.Y),
		relativePosition.X,
		relativePosition.Y,
		relativeSize.X,
		relativeSize.Y
	)
	debugPrint(
		"selfViewPublicApi.getSelfViewIsOpenAndVisible(): " .. tostring(selfViewPublicApi.getSelfViewIsOpenAndVisible())
	)
end

function stopSelfViewSession()
	selfViewPublicApi.setSelfViewIsOpenAndVisible(false)
	Analytics:reportSelfViewSessionStopped()
	debugPrint(
		"selfViewPublicApi.getSelfViewIsOpenAndVisible(): " .. tostring(selfViewPublicApi.getSelfViewIsOpenAndVisible())
	)
end

function getShouldBeEnabledCoreGuiSetting()
	--debugPrint("Self View: getShouldBeEnabledCoreGuiSetting(): StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView): "..tostring(StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView)))
	return true
end

function updateSelfViewButtonVisibility()
	local numButtonsShowing = 0
	if getFFlagDoNotPromptCameraPermissionsOnMount() then
		if isCamEnabledForUserAndPlace() then
			numButtonsShowing += 1
		end
	else
		if hasCameraPermissions then
			numButtonsShowing += 1
		end
	end
	if getShouldShowMicButton() then
		numButtonsShowing += 1
	end
	--frame should only be nil here when this gets called before Self View got initialized (which should only happen in early voice chat fail in studio)
	--we catch that case to avoid output window spam
	if frame ~= nil then
		local micButton = frame:FindFirstChild(MIC_NAME, true)
		local camButton = frame:FindFirstChild(CAM_NAME, true)
		-- If Camera is not available, the mic button should fill the Self View.
		local sizeXScale = if numButtonsShowing == 2 then 0.5 else 1

		if micButton then
			micButton.Size = UDim2.new(sizeXScale, -4, 1, -4)
			micButton.Visible = getShouldShowMicButton()
		end
		if camButton then
			camButton.Size = UDim2.new(sizeXScale, -4, 1, -4)

			local isCameraButtonVisible = hasCameraPermissions
			if getFFlagDoNotPromptCameraPermissionsOnMount() then
				isCameraButtonVisible = isCamEnabledForUserAndPlace()
			end
			camButton.Visible = isCameraButtonVisible
		end
	end
end

local LOCAL_STATE_MAP = {}
-- VoiceChatState Enum is not available on devices where Voice Chat isn't supported.
if game:GetEngineFeature("VoiceChatSupported") then
	LOCAL_STATE_MAP = {
		[(Enum :: any).VoiceChatState.Joining] = VoiceChatServiceManager.VOICE_STATE.CONNECTING,
		[(Enum :: any).VoiceChatState.JoiningRetry] = VoiceChatServiceManager.VOICE_STATE.CONNECTING,
		[(Enum :: any).VoiceChatState.Joined] = VoiceChatServiceManager.VOICE_STATE.MUTED,
		[(Enum :: any).VoiceChatState.Leaving] = VoiceChatServiceManager.VOICE_STATE.MUTED,
		[(Enum :: any).VoiceChatState.Failed] = VoiceChatServiceManager.VOICE_STATE.ERROR,
	}
end

--[[
	If the user has Microphone permissions, init Voice Chat Service Manager
	and respective listeners.
]]
function initVoiceChatServiceManager()
	do
		local cachedMicState = VoiceChatServiceManager.VOICE_STATE.MUTED
		if getFFlagEnableAlwaysAvailableCamera() then
			--correct default state is connecting, fix was needed to make it update icon when switching from connecting to muted when showing self view on experience start
			cachedMicState = VoiceChatServiceManager.VOICE_STATE.CONNECTING
		end
		local cachedLevel = 0

		local function updateMicIcon(state, level)
			if state == cachedMicState and level == cachedLevel then
				return
			end

			cachedMicState = state
			cachedLevel = level

			if GetFFlagEnableShowVoiceUI() then
				if micIcon then
					if state == VoiceChatServiceManager.VOICE_STATE.MUTED then
						micIcon.Size = UDim2.fromOffset(32, 32)
						micIcon.Image = MIC_OFF_IMAGE.Image
						if micIcon.ImageRectOffset ~= MIC_OFF_IMAGE.ImageRectOffset then
							micIcon.ImageRectOffset = MIC_OFF_IMAGE.ImageRectOffset
						end
						micIcon.ImageRectSize = MIC_OFF_IMAGE.ImageRectSize
					else
						local icon = VoiceChatServiceManager:VoiceStateToIcon(state, level, "New")
						micIcon.Size = UDim2.fromOffset(16, 20)
						micIcon.Image = icon
						micIcon.ImageRectOffset = Vector2.new(0, 0)
						micIcon.ImageRectSize = Vector2.new(0, 0)
					end

					micIcon.Position = UDim2.new(0.5, 0, 0.5, 0)

					if state == VoiceChatServiceManager.VOICE_STATE.INACTIVE then
						micIcon.Size = UDim2.fromOffset(19, 19)
						micIcon.Image = MIC_INACTIVE_IMAGE.Image
						micIcon.ImageRectOffset = MIC_INACTIVE_IMAGE.ImageRectOffset
						micIcon.ImageRectSize = MIC_INACTIVE_IMAGE.ImageRectSize
					elseif state == VoiceChatServiceManager.VOICE_STATE.TALKING then
						micIcon.Position = UDim2.new(0.5, 0, 0.5, -1)
					end
				end
			else
				if state == VoiceChatServiceManager.VOICE_STATE.MUTED then
					micIcon.Size = UDim2.fromOffset(32, 32)
					micIcon.Image = MIC_OFF_IMAGE.Image
					if micIcon.ImageRectOffset ~= MIC_OFF_IMAGE.ImageRectOffset then
						micIcon.ImageRectOffset = MIC_OFF_IMAGE.ImageRectOffset
					end
					micIcon.ImageRectSize = MIC_OFF_IMAGE.ImageRectSize
				else
					local icon = VoiceChatServiceManager:VoiceStateToIcon(state, level, "New")
					micIcon.Size = UDim2.fromOffset(16, 20)
					micIcon.Image = icon
					micIcon.ImageRectOffset = Vector2.new(0, 0)
					micIcon.ImageRectSize = Vector2.new(0, 0)
				end

				micIcon.Position = UDim2.new(0.5, 0, 0.5, 0)

				if state == VoiceChatServiceManager.VOICE_STATE.INACTIVE then
					micIcon.Size = UDim2.fromOffset(19, 19)
					micIcon.Image = MIC_INACTIVE_IMAGE.Image
					micIcon.ImageRectOffset = MIC_INACTIVE_IMAGE.ImageRectOffset
					micIcon.ImageRectSize = MIC_INACTIVE_IMAGE.ImageRectSize
				elseif state == VoiceChatServiceManager.VOICE_STATE.TALKING then
					micIcon.Position = UDim2.new(0.5, 0, 0.5, -1)
				end
			end
		end

		local voiceIndicatorRenderSteppedBound = false
		local function updateVoiceIndicatorRenderStepped(isMuted)
			if isMuted then
				if voiceIndicatorRenderSteppedBound then
					RunService:UnbindFromRenderStep("SelfViewVoiceIndicatorRenderStepped")
					voiceIndicatorRenderSteppedBound = false
				end
			else
				if not voiceIndicatorRenderSteppedBound then
					-- Generate a fake volume level for now
					RunService:BindToRenderStep(
						"SelfViewVoiceIndicatorRenderStepped",
						Enum.RenderPriority.First.Value + 1,
						function()
							updateMicIcon(cachedMicState, math.random())
						end
					)
					voiceIndicatorRenderSteppedBound = true
				end
			end
		end

		VoiceChatServiceManager.talkingChanged.Event:Connect(function(isTalking)
			if isTalking then
				updateMicIcon(VoiceChatServiceManager.VOICE_STATE.TALKING, cachedLevel)
			else
				updateMicIcon(VoiceChatServiceManager.VOICE_STATE.INACTIVE, cachedLevel)
			end
		end)

		VoiceChatServiceManager.muteChanged.Event:Connect(function(muted)
			updateVoiceIndicatorRenderStepped(muted)
			debugPrint("Self View: VoiceChatServiceManager.muteChanged.Event, muted: " .. tostring(muted))
			local voiceState = muted and VoiceChatServiceManager.VOICE_STATE.MUTED
				or VoiceChatServiceManager.VOICE_STATE.INACTIVE
			updateMicIcon(voiceState, cachedLevel)
		end)

		VoiceChatServiceManager:asyncInit()
			:andThen(function()
				local voiceService = VoiceChatServiceManager:getService()
				if voiceService then
					if GetFFlagJoinWithoutMicPermissions() then
						voiceChatServiceEnabled = true
					end
					--trigger opening self view here (too) so it shows mic button (, too, if cam also enabled), needed here again to show both buttons on self view showing on place start
					displaySelfieViewByDefault()
					if FFlagInExperienceUpsellSelfViewFix then
						hasMicPermissions = true -- If asyncInit resolves, then we know the user has mic permissions
						local localMuted = VoiceChatServiceManager.localMuted
						if localMuted ~= nil then
							isVoiceConnecting = false
							updateVoiceIndicatorRenderStepped(localMuted)
							updateMicIcon(
								if localMuted
									then VoiceChatServiceManager.VOICE_STATE.MUTED
									else VoiceChatServiceManager.VOICE_STATE.INACTIVE,
								cachedLevel
							)
							updateSelfViewButtonVisibility()
						end
					end
					voiceService.StateChanged:Connect(function(_oldState, newState)
						local voiceManagerState = VoiceChatServiceManager:GetVoiceStateFromEnum(newState)
						if voiceManagerState then
							local inConnectingState = voiceManagerState
								== VoiceChatServiceManager.VOICE_STATE.CONNECTING
							if not inConnectingState and isVoiceConnecting then
								isVoiceConnecting = false
							end
							updateMicIcon(voiceManagerState, cachedLevel)
						elseif newState == (Enum :: any).VoiceChatState.Ended then
							updateSelfViewButtonVisibility()
						end
					end)
					if GetFFlagEnableShowVoiceUI() then
						VoiceChatServiceManager.showVoiceUI.Event:Connect(function()
							updateSelfViewButtonVisibility()
							ReInit(Players.LocalPlayer)
						end)
						VoiceChatServiceManager.hideVoiceUI.Event:Connect(function()
							updateSelfViewButtonVisibility()
							if bottomButtonsFrame then
								bottomButtonsFrame:Destroy()
							end
							bottomButtonsFrame = nil
							ReInit(Players.LocalPlayer)
						end)
					end
				end
			end)
			:catch(function()
				if GetFFlagVoiceChatUILogging() then
					log:warning("Failed to init VoiceChatServiceManager")
				end
			end)
	end
end

local vCInitialized = false
-- Check that the user's device has given Roblox mic and camera permissions.
function getPermissions()
	log:trace("Self View: getPermissions()")

	local callback = function(response)
		hasCameraPermissions = response.hasCameraPermissions
		hasMicPermissions = response.hasMicPermissions
		updateSelfViewButtonVisibility()

		if hasMicPermissions and not vCInitialized then
			initVoiceChatServiceManager()
			vCInitialized = true
		end
	end
	getCamMicPermissions(callback, nil, nil, "FaceChatSelfieView.getPermissions")
end

-- Check that the user's device has given Roblox mic permissions and request if not granted.
function getMicPermission()
	local callback = function(response)
		hasMicPermissions = response.hasMicPermissions
		if GetFFlagJoinWithoutMicPermissions() then
			if not vCInitialized then
				initVoiceChatServiceManager()
				vCInitialized = true
			end
		else
			if hasMicPermissions and not vCInitialized then
				initVoiceChatServiceManager()
				vCInitialized = true
			end
		end
	end
	getCamMicPermissions(
		callback,
		{ PermissionsProtocol.Permissions.MICROPHONE_ACCESS :: string },
		nil,
		"FaceChatSelfieView.getMicPermission"
	)
end

-- Check that the user's device has given Roblox camera permissions without requesting if not granted.
function getCameraPermissionWithoutRequest()
	local callback = function(response)
		hasCameraPermissions = response.hasCameraPermissions
	end

	local shouldNotRequestPerms = true
	getCamMicPermissions(callback, { PermissionsProtocol.Permissions.CAMERA_ACCESS :: string }, shouldNotRequestPerms)
end

local function removeChild(model, childName)
	local child = model:FindFirstChild(childName)
	if child then
		child:Destroy()
	end
end

function setCloneDirty(dirty)
	--debugPrint("Self View: setCloneDirty(), dirty: " .. tostring(dirty))
	if dirty then
		updateCloneCurrentCoolDown = UPDATE_CLONE_CD
	else
		updateCloneCurrentCoolDown = 0
	end
end

-- DRAGGING --
local connections = {}
local dragging = false
local function disconnectListeners()
	for _, connection in connections do
		connection:Disconnect()
	end
	connections = {}
end

function constrainTargetPositionToScreen(uiObject, screenSize, targetPosition)
	if uiObject == nil then
		return
	end

	local newPosition = {
		X = targetPosition.X,
		Y = targetPosition.Y,
	}
	newPosition.X = math.min(newPosition.X, (screenSize.X - SCREEN_BORDER_OFFSET) - uiObject.AbsoluteSize.X)
	newPosition.Y = math.min(newPosition.Y, (screenSize.Y - SCREEN_BORDER_OFFSET) - uiObject.AbsoluteSize.Y)
	newPosition.X = math.max(SCREEN_BORDER_OFFSET, newPosition.X)
	newPosition.Y = math.max(SCREEN_BORDER_OFFSET, newPosition.Y)

	return UDim2.fromOffset(newPosition.X, newPosition.Y)
end

-- Update the position of the Self View frame based on dragging.
local function processDrag(frame, inputPosition, dragStartPosition, frameStartPosition)
	if not frame.Parent then
		return
	end

	local delta = (inputPosition - dragStartPosition)
	local newPosition = {
		X = (delta + frameStartPosition).X,
		Y = (delta + frameStartPosition).Y,
	}
	-- Constrain the location to the screen.
	local screenSize = frame.Parent.AbsoluteSize
	frame.Position = constrainTargetPositionToScreen(frame, screenSize, newPosition)
end

local function mouseEntered()
	if not VRService.VREnabled then
		didOverrideMouse = true
		MouseIconOverrideService.push(INGAME_SELFVIEW_CUSOR_OVERRIDE_KEY, Enum.OverrideMouseIconBehavior.ForceShow)
	end
end

local function mouseLeft()
	if didOverrideMouse then
		didOverrideMouse = false
		MouseIconOverrideService.pop(INGAME_SELFVIEW_CUSOR_OVERRIDE_KEY)
	end
end

-- Listen for drag input from the user
local function inputBegan(frame, inputObj)
	local inputType = inputObj.UserInputType

	-- We only care about left clicks / touches
	if inputType ~= Enum.UserInputType.MouseButton1 and inputType ~= Enum.UserInputType.Touch then
		return
	end

	if dragging then
		return
	end
	dragging = true

	local dragStartPosition = inputObj.Position
	local frameStartPosition = Vector3.new(frame.AbsolutePosition.X, frame.AbsolutePosition.Y, 0)

	disconnectListeners()
	local changedConnection = UserInputService.InputChanged:Connect(function(inputObject)
		if not dragging then
			return
		end

		-- Reset AnchorPoint back to (0, 0) in the case that the frame's anchor point has been adjusted
		frame.AnchorPoint = Vector2.new(0, 0)

		local inputType = inputObject.UserInputType

		-- Multiple touches should not affect dragging the Self View. Only the original touch.
		--the check inputType == Enum.UserInputType.Touch is so it does not block mouse dragging
		if inputType == Enum.UserInputType.Touch and inputObject ~= inputObj then
			return
		end

		-- We only care about mouse movements / touches
		if inputType ~= Enum.UserInputType.MouseMovement and inputType ~= Enum.UserInputType.Touch then
			return
		end

		-- In case of other component listening to changes
		if inputObject.UserInputState ~= Enum.UserInputState.Change then
			return
		end

		processDrag(frame, inputObject.Position, dragStartPosition, frameStartPosition)
	end)
	table.insert(connections, changedConnection)

	local inputEndedConnection = UserInputService.InputEnded:Connect(function(inputObject)
		local inputType = inputObject.UserInputType
		if inputType ~= Enum.UserInputType.MouseButton1 and inputType ~= Enum.UserInputType.Touch then
			return
		end
		dragging = false

		disconnectListeners()

		frame.Position = getRelativePosition(frame)

		local value = frame.AbsolutePosition.X .. "," .. frame.AbsolutePosition.Y
		AppStorageService:SetItem("SelfViewPosition", value)
	end)
	table.insert(connections, inputEndedConnection)

	local focusLostConnection = UserInputService.WindowFocusReleased:Connect(function()
		disconnectListeners()
	end)
	table.insert(connections, focusLostConnection)
end
-- END DRAGGING --

function createCloneAnchor()
	if cloneAnchor ~= nil then
		cloneAnchor:Destroy()
		cloneAnchor = nil
	end

	local worldModel = Instance.new("WorldModel")
	worldModel.Parent = viewportFrame
	-- define clone anchor
	cloneAnchor = worldModel
end

function connectToScreenOrientationChange()
	local LocalPlayer = Players.LocalPlayer
	if not LocalPlayer then
		Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
		LocalPlayer = Players.LocalPlayer
	end
	if not LocalPlayer then
		--shouldn't happen unless catastrophic loading failure
		return
	end
	local playerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
	while not playerGui do
		LocalPlayer.ChildAdded:wait()
		playerGui = LocalPlayer:FindFirstChildOfClass("PlayerGui")
	end

	playerScreenOrientationConnection = playerGui
		:GetPropertyChangedSignal("CurrentScreenOrientation")
		:Connect(function()
			if frame and frame.Parent then
				local screenSize = frame.Parent.AbsoluteSize
				local frameStartPosition = Vector3.new(frame.AbsolutePosition.X, frame.AbsolutePosition.Y, 0)
				frame.Position = constrainTargetPositionToScreen(frame, screenSize, frameStartPosition)
				frame.Position = getRelativePosition(frame)
			end
		end)
end

function clearObserver(observerId)
	if observerInstances[observerId] then
		observerInstances[observerId]:Disconnect()
		observerInstances[observerId] = nil
	end
end

local function clearAllObservers()
	for observerInstance in observerInstances do
		clearObserver(observerInstance)
	end
end

function clearCloneCharacter()
	if clone then
		clone:Destroy()
		clone = nil
	end

	if cloneAnchor == nil then
		return
	end

	local noRefClone = cloneAnchor:FindFirstChild(cloneCharacterName)
	if noRefClone then
		noRefClone:Destroy()
	end

	createCloneAnchor()
end

function clearClone()
	debugPrint("Self View: clearClone()")
	-- clear listeners
	stopRenderStepped()
	clearObserver(Observer.AnimationPlayed)
	clearObserver(Observer.AnimationPlayedCoreScript)
	if videoAnimationPropertyChangedSingalConnection then
		videoAnimationPropertyChangedSingalConnection:Disconnect()
		videoAnimationPropertyChangedSingalConnection = nil
	end

	if audioAnimationPropertyChangedSingalConnection then
		audioAnimationPropertyChangedSingalConnection:Disconnect()
		audioAnimationPropertyChangedSingalConnection = nil
	end

	if videoCaptureServiceStartedConnection then
		videoCaptureServiceStartedConnection:Disconnect()
		videoCaptureServiceStartedConnection = nil
	end

	if videoCaptureServiceStoppedConnection then
		videoCaptureServiceStoppedConnection:Disconnect()
		videoCaptureServiceStoppedConnection = nil
	end

	if videoCaptureServiceDevicesChangedConnection then
		videoCaptureServiceDevicesChangedConnection:Disconnect()
		videoCaptureServiceDevicesChangedConnection = nil
	end

	foundStreamTrack = nil
	cachedMode = nil
	cloneAnimator = nil
	cloneAnimationTracks = {}
	-- clear objects
	clearCloneCharacter()
end

function clearViewportFrame()
	if viewportFrame then
		viewportFrame:Destroy()
	end
	if selfViewFrame then
		selfViewFrame:Destroy()
	end
end

local function setIsOpen(shouldBeOpen)
	debugPrint("Self View: setIsOpen(): " .. tostring(shouldBeOpen))
	isOpen = shouldBeOpen
	setSelfieViewDisplayInAppStorage(shouldBeOpen)

	if isOpen then
		ReInit(Players.LocalPlayer)
	else
		headRef = nil
		cachedHeadColor = nil
		cachedHeadSize = nil
		clearAllObservers()
		clearObserver(Observer.CharacterAdded)
		clearObserver(Observer.CharacterRemoving)
		clearClone()
		if playerScreenOrientationConnection then
			playerScreenOrientationConnection:Disconnect()
			playerScreenOrientationConnection = nil
		end

		if not FFlagRemoveVoiceJoiceDisconnectFix and voiceJoinProgressChangedConnection then
			voiceJoinProgressChangedConnection:Disconnect()
			voiceJoinProgressChangedConnection = nil
		end

		prepMicAndCamPropertyChangedSignalHandler()

		indicatorCircle.Visible = debug

		trackSelfViewSessionAsNeeded()

		if FFlagSelfViewRemoveVPFWhenClosed then
			clearViewportFrame()
		end
	end
end

function createViewportFrame()
	local numButtonsShowing = 0
	local viewportFrameSize = UDim2.new(1, 0, 1, -(DEFAULT_BUTTONS_BAR_HEIGHT - 1))
	if GetFFlagEnableShowVoiceUI() then
		if getFFlagDoNotPromptCameraPermissionsOnMount() and FFlagSelfViewCameraDefaultButtonInViewPort then
			if isCamEnabledForUserAndPlace() then
				numButtonsShowing += 1
			end
		else
			if hasCameraPermissions then
				numButtonsShowing += 1
			end
		end
		if getShouldShowMicButton() then
			numButtonsShowing += 1
		end

		if numButtonsShowing == 0 then
			viewportFrameSize = UDim2.new(1, 0, 1, 0)
		else
			viewportFrameSize = UDim2.new(1, 0, 1, -(DEFAULT_BUTTONS_BAR_HEIGHT - 1))
		end
	end

	selfViewFrame = Instance.new("Frame")
	selfViewFrame.Name = "SelfViewFrame"
	selfViewFrame.Position = UDim2.new(0, 0, 0, 0)
	selfViewFrame.Size = UDim2.new(1, 0, 1, 0)
	selfViewFrame.BackgroundTransparency = 1
	selfViewFrame.Parent = frame

	viewportFrame = Instance.new("ViewportFrame")
	viewportFrame.Position = UDim2.new(0, 0, 0, 0)
	viewportFrame.Size = if GetFFlagEnableShowVoiceUI()
		then viewportFrameSize
		else UDim2.new(1, 0, 1, -(DEFAULT_BUTTONS_BAR_HEIGHT - 1))
	viewportFrame.BackgroundColor3 = Color3.new(0, 0, 0)
	viewportFrame.BorderColor3 = Color3.new(0.6, 0.5, 0.4)
	viewportFrame.BorderSizePixel = 2
	viewportFrame.BackgroundTransparency = BACKGROUND_TRANSPARENCY
	viewportFrame.Parent = selfViewFrame

	viewportFrame.Ambient = Color3.new(0.7529411765, 0.7098039216, 0.7137254902)
	viewportFrame.LightColor = Color3.new(1, 0.9960784314, 0.9960784314)
	viewportFrame.LightDirection = Vector3.new(9.5, -12, 7.5)
	viewportFrame.BackgroundColor3 = Color3.new(0.0990616, 0.138109, 0.452827)
	viewportFrame.IsMirrored = true

	local uiCorner = Instance.new("UICorner")
	uiCorner.Parent = selfViewFrame

	uiCorner = Instance.new("UICorner")
	uiCorner.Parent = viewportFrame

	local uiStroke = Instance.new("UIStroke")
	uiStroke.Parent = selfViewFrame
	uiStroke.Thickness = 3
	uiStroke.Color = DEFAULT_SELF_VIEW_FRAME_COLOR

	uiStroke = Instance.new("UIStroke")
	uiStroke.Parent = viewportFrame
	uiStroke.Thickness = 2.5
	uiStroke.Color = DEFAULT_SELF_VIEW_FRAME_COLOR

	viewportCamera = Instance.new("Camera")

	viewportCamera.FieldOfView = SELF_VIEW_CAMERA_FIELD_OF_VIEW

	viewportFrame.CurrentCamera = viewportCamera
	viewportCamera.Parent = viewportFrame

	return viewportFrame
end

function getViewportFrame()
	if viewportFrame then
		clearViewportFrame()
	end
	viewportFrame = createViewportFrame()
	return viewportFrame
end

local function createViewport()
	--TODO: this UI setup could be changed to roact setup before MVP release, to evaluate pros/ cons
	--(also regarding aspect this may tween towards worldspace UI above player head once closed in progressed iteration)

	local numButtonsShowing = 0
	if getFFlagDoNotPromptCameraPermissionsOnMount() and FFlagSelfViewCameraDefaultButtonInViewPort then
		if isCamEnabledForUserAndPlace() then
			numButtonsShowing += 1
		end
	else
		if hasCameraPermissions then
			numButtonsShowing += 1
		end
	end
	if getShouldShowMicButton() then
		numButtonsShowing += 1
	end

	if frame then
		frame:Destroy()
	end

	frame = Instance.new("Frame")
	frame.Name = SELF_VIEW_NAME
	frame.Parent = inExperienceCoreGui
	--setting frame active so one doesn't accidentally use mobile touch dpad or cam controls on mobile while dragging Self View around
	frame.Active = true
	--setting frame size before setting it's position since the size is used in dragging position restrict to screen size evaluation
	frame.Size = DEFAULT_SIZE
	local position = DEFAULT_POSITION

	frame.BackgroundTransparency = 1
	frame.InputBegan:Connect(function(input)
		inputBegan(frame, input)
	end)

	frame.MouseEnter:Connect(function()
		mouseEntered()
	end)
	frame.MouseLeave:Connect(function()
		mouseLeft()
	end)

	-- TODO AVBURST-10067 Disconnect event when applicable.
	--gets enabled once we have a usable avatar
	frame.Visible = false

	local aspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	aspectRatioConstraint.Parent = frame
	aspectRatioConstraint.AspectRatio = 0.833
	aspectRatioConstraint.AspectType = "ScaleWithParentSize"
	aspectRatioConstraint.DominantAxis = "Width"

	local sizeConstraint = Instance.new("UISizeConstraint")
	sizeConstraint.Parent = frame
	sizeConstraint.MaxSize = Vector2.new(140, 140)
	sizeConstraint.MinSize = Vector2.new(95, 95)

	-- Remove pcall when the key SelfViewPosition is in AppStorageService.
	pcall(function()
		local savedPosition = AppStorageService:GetItem("SelfViewPosition")
		if savedPosition then
			local pos = string.split(savedPosition, ",")
			local newPosition = UDim2.fromOffset(pos[1], pos[2])
			newPosition = {
				X = pos[1],
				Y = pos[2],
			}
			local screenSize = frame.Parent.AbsoluteSize
			position = constrainTargetPositionToScreen(frame, screenSize, newPosition)
		end
	end)
	frame.Position = position
	frame.Position = getRelativePosition(frame)

	local uiPadding
	local uiListLayout
	local micButton
	local uiCorner
	local camButton

	if not GetFFlagEnableShowVoiceUI() or numButtonsShowing ~= 0 then
		bottomButtonsFrame = Instance.new("Frame")
		bottomButtonsFrame.Name = "BottomButtonsFrame"
		bottomButtonsFrame.Position = UDim2.new(0, 0, 1, -(DEFAULT_BUTTONS_BAR_HEIGHT - 1))
		bottomButtonsFrame.Size = UDim2.new(1, 0, 0, DEFAULT_BUTTONS_BAR_HEIGHT)
		bottomButtonsFrame.BackgroundColor3 = DEFAULT_SELF_VIEW_FRAME_COLOR
		bottomButtonsFrame.BackgroundTransparency = 0
		bottomButtonsFrame.BorderSizePixel = 0
		bottomButtonsFrame.Parent = frame

		uiPadding = Instance.new("UIPadding")
		uiPadding.Parent = bottomButtonsFrame
		uiPadding.PaddingBottom = UDim.new(0, 0)
		uiPadding.PaddingLeft = UDim.new(0, 0)
		uiPadding.PaddingRight = UDim.new(0, 0)
		uiPadding.PaddingTop = UDim.new(0, 3)

		uiListLayout = Instance.new("UIListLayout")
		uiListLayout.Parent = bottomButtonsFrame
		uiListLayout.Padding = UDim.new(0, 5)
		uiListLayout.FillDirection = Enum.FillDirection.Horizontal
		uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
		uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder

		local sizeXScale = if numButtonsShowing == 2 then 0.5 else 1
		micButton = Instance.new("ImageButton")
		micButton.Name = MIC_NAME
		micButton.Parent = bottomButtonsFrame
		micButton.Position = UDim2.new(0, 0, 0, 0)
		micButton.Size = UDim2.new(sizeXScale, -4, 1, -4)
		micButton.Image = "rbxasset://textures/SelfView/whiteRect.png"
		micButton.ImageColor3 = Color3.new(0.294117, 0.294117, 0.294117)
		micButton.BackgroundTransparency = 1
		micButton.LayoutOrder = 0
		micButton.ZIndex = 2
		micButton.Visible = getShouldShowMicButton()
		micButton.Activated:Connect(function()
			local voiceService = VoiceChatServiceManager:getService()
			debugPrint(
				"Self View: micButton.Activated(), voiceService:"
					.. tostring(voiceService)
					.. ",hasMicPermissions:"
					.. tostring(hasMicPermissions)
			)
			if voiceService and getShouldShowMicButton() then
				if isVoiceConnecting then
					VoiceChatServiceManager:ShowVoiceChatLoadingMessage()
					return
				end
				VoiceChatServiceManager:ToggleMic("LegacySelfView")
				Analytics:setLastCtx("SelfView")
				if voiceAnalytics then
					voiceAnalytics:onToggleMuteSelf(not VoiceChatServiceManager.localMuted)
				end
			end
		end)

		local uiCorner = Instance.new("UICorner")
		uiCorner.Parent = micButton

		camButton = Instance.new("ImageButton")
		camButton.Name = CAM_NAME
		camButton.Parent = bottomButtonsFrame
		camButton.Position = UDim2.new(0, 0, 0, 0)
		camButton.Size = UDim2.new(sizeXScale, -4, 1, -4)
		camButton.Image = "rbxasset://textures/SelfView/whiteRect.png"
		camButton.ImageColor3 = Color3.new(0.294117, 0.294117, 0.294117)
		camButton.BackgroundTransparency = 1
		camButton.LayoutOrder = 1
		camButton.ZIndex = 3

		local isCameraButtonVisible = hasCameraPermissions
		if getFFlagDoNotPromptCameraPermissionsOnMount() then
			isCameraButtonVisible = isCamEnabledForUserAndPlace()
		end
		camButton.Visible = isCameraButtonVisible
		camButton.Activated:Connect(function()
			debugPrint("Self View: camButton.Activated(), hasCameraPermissions:" .. tostring(hasCameraPermissions))
			local toggleVideo = function()
				if not FaceAnimatorService or not FaceAnimatorService:IsStarted() then
					updateVideoButton(false)
					return
				end
				FaceAnimatorService.VideoAnimationEnabled = not FaceAnimatorService.VideoAnimationEnabled
				Analytics:setLastCtx("SelfView")
			end

			if getFFlagDoNotPromptCameraPermissionsOnMount() then
				if hasCameraPermissions then
					-- User has given camera device permissions
					toggleVideo()
				else
					-- User has not given camera permissions so request them
					local callback = function(response)
						hasCameraPermissions = response.hasCameraPermissions

						if response.hasCameraPermissions then
							-- User authorized in the permission prompt
							toggleVideo()
						else
							-- User denied in the permission prompt
							displayCameraDeniedToast()
							updateVideoButton(false)
						end
					end

					getCamMicPermissions(callback, { PermissionsProtocol.Permissions.CAMERA_ACCESS :: string })
				end
			else
				if hasCameraPermissions then
					toggleVideo()
				else
					updateVideoButton(false)
				end
			end
		end)

		uiCorner = Instance.new("UICorner")
		uiCorner.Parent = camButton

		micIcon = Instance.new("ImageLabel")
		micIcon.Name = "MicIcon"
		micIcon.Parent = micButton
		micIcon.AnchorPoint = Vector2.new(0.5, 0.5)
		micIcon.Position = UDim2.new(0.5, 0, 0.5, 0)
		if isVoiceConnecting then
			micIcon.Size = UDim2.fromOffset(16, 20)
			micIcon.Image = VoiceChatServiceManager:GetIcon("Connecting", "New")
			micIcon.ImageRectOffset = Vector2.new(0, 0)
			micIcon.ImageRectSize = Vector2.new(0, 0)
		else
			micIcon.Size = UDim2.new(0, 32, 0, 32)
			micIcon.Image = MIC_OFF_IMAGE.Image
			micIcon.ImageRectOffset = MIC_OFF_IMAGE.ImageRectOffset
			micIcon.ImageRectSize = MIC_OFF_IMAGE.ImageRectSize
		end
		micIcon.BackgroundTransparency = 1
		micIcon.ZIndex = 2

		camIcon = Instance.new("ImageLabel")
		camIcon.Name = "CamIcon"
		camIcon.Parent = camButton
		camIcon.AnchorPoint = Vector2.new(0.5, 0.5)
		camIcon.Position = UDim2.new(0.5, 0, 0.5, 0)
		camIcon.Size = UDim2.new(0, 32, 0, 32)
		camIcon.Image = VIDEO_OFF_IMAGE.Image
		camIcon.ImageRectOffset = VIDEO_OFF_IMAGE.ImageRectOffset
		camIcon.ImageRectSize = VIDEO_OFF_IMAGE.ImageRectSize
		camIcon.BackgroundTransparency = 1
		camIcon.ZIndex = 2
	end

	if FFlagSelfViewRemoveVPFWhenClosed then
		if isOpen then
			getViewportFrame()
		end

		indicatorCircle = Instance.new("ImageLabel")
		indicatorCircle.Name = "IndicatorCircle"
		indicatorCircle.Parent = frame
		indicatorCircle.Position = UDim2.new(1, -25, 0, 4)
		indicatorCircle.Size = UDim2.new(0, 22, 0, 22)
		indicatorCircle.Image = INDICATOR_OFF_IMAGE
		indicatorCircle.BackgroundTransparency = 1
		indicatorCircle.Visible = false
		indicatorCircle.ZIndex = 4

		local closeButton = Instance.new("ImageButton")
		closeButton.Name = "CloseButton"
		closeButton.AnchorPoint = Vector2.new(0, 0.5)
		closeButton.Parent = frame
		closeButton.Position = UDim2.fromOffset(0, 16)
		closeButton.Size = UDim2.new(0, 34, 0, 34)
		closeButton.Image = "rbxasset://textures/SelfView/whiteRect.png"
		closeButton.ImageTransparency = 1
		closeButton.BackgroundTransparency = 1
		closeButton.BackgroundColor3 = Color3.new(0.137254, 0.137254, 0.137254)
		closeButton.ZIndex = 2

		local closeButtonIcon = Instance.new("ImageLabel")
		closeButtonIcon.Name = "CloseButtonIcon"
		closeButtonIcon.Parent = closeButton
		closeButtonIcon.AnchorPoint = Vector2.new(0.5, 0.5)
		closeButtonIcon.Position = UDim2.new(0, 17, 0, 17)
		closeButtonIcon.Size = UDim2.new(0, 32, 0, 32)
		closeButtonIcon.Image = "rbxasset://textures/SelfView/SelfView_icon_close.png"
		closeButtonIcon.ImageTransparency = 0
		closeButtonIcon.BackgroundTransparency = 1
		closeButtonIcon.ZIndex = 2

		local faceIcon = Instance.new("ImageLabel")
		faceIcon.Name = "FaceIcon"
		faceIcon.Parent = frame
		faceIcon.AnchorPoint = Vector2.new(0.5, 0.5)
		faceIcon.Position = UDim2.new(0, 17, 0, 17)
		faceIcon.Size = UDim2.new(0, 32, 0, 32)
		faceIcon.Image = "rbxasset://textures/SelfView/SelfView_icon_faceToggle_on.png"
		faceIcon.BackgroundTransparency = 1
		faceIcon.ZIndex = 2
		faceIcon.Visible = false
		faceIcon.Parent = closeButton

		local function setButtonButtonsVisibility()
			-- Show the mic and cam buttons if the user has given permissions
			if isOpen then
				if not GetFFlagEnableShowVoiceUI() or numButtonsShowing ~= 0 then
					micButton.Visible = true
					camButton.Visible = true
				end
				closeButton.Visible = true
			--[[
				Allow for debugging in studio. This shows the mic option when
				studio normally does not have this option.
			]]
			elseif IS_STUDIO and debug then
				if not GetFFlagEnableShowVoiceUI() or numButtonsShowing ~= 0 then
					micButton.Visible = true
					camButton.Visible = true
				end
				closeButton.Visible = true
			else
				if not GetFFlagEnableShowVoiceUI() or numButtonsShowing ~= 0 then
					micButton.Visible = false
					camButton.Visible = false
				end
				closeButton.Visible = false
			end
		end

		local function showSelfView(newState, position, anchorPoint)
			setIsOpen(newState)
			setButtonButtonsVisibility()

			if not FFlagSelfViewRemoveVPFWhenClosed then
				selfViewFrame.Visible = newState
			end
			if not GetFFlagEnableShowVoiceUI() or numButtonsShowing ~= 0 then
				bottomButtonsFrame.Visible = newState
			end
			closeButtonIcon.Visible = newState
			faceIcon.Visible = not newState
			closeButton.BackgroundTransparency = newState and 1 or 0.5

			if isOpen then
				if not GetFFlagEnableShowVoiceUI() or numButtonsShowing ~= 0 then
					micButton.Position = UDim2.new(0, 0, 0, 0)
					micButton.Size = UDim2.new(0.5, -4, 1, -4)
					micButton.ImageTransparency = 0

					camButton.Position = UDim2.new(0, 0, 0, 0)
					camButton.Size = UDim2.new(0.5, -4, 1, -4)
					camButton.ImageTransparency = 0
				end
				indicatorCircle.Position = UDim2.new(1, -25, 0, 4)

				if position ~= nil then
					frame.Position = position
				end
				if anchorPoint ~= nil then
					frame.AnchorPoint = anchorPoint
				end
				frame.Active = true
				frame.Visible = true

				if shouldDisplaySelfViewTooltip("ShowSelfieViewOpenedTooltip") then
					mountedOnOpenTooltipInstance = mountSelfViewOnOpenTooltip({
						fallbackText = "Use your camera to make your avatar smile and move just like you",
						translationKey = "Feature.Avatar.Message.FTUXSelfieViewOpenedTooltip",
						anchorPoint = frame.AnchorPoint,
						position = frame.Position,
						size = frame.Size,
						bottomButtonsFramePosition = bottomButtonsFrame.Position,
						bottomButtonsFrameSize = bottomButtonsFrame.Size,
						aspectRatio = aspectRatioConstraint.AspectRatio,
						maxSize = sizeConstraint.MaxSize,
						minSize = sizeConstraint.MinSize,
						tooltipLifetime = FIntSelfViewTooltipLifetime,
					})
					pcall(function()
						AppStorageService:SetItem("ShowSelfieViewOpenedTooltip", "false")
					end)
				end
			else
				if not GetFFlagEnableShowVoiceUI() or numButtonsShowing ~= 0 then
					micButton.Position = UDim2.new(0, 40, 0, -1)
					micButton.Size = UDim2.new(0, 34, 0, 34)
					micButton.ImageTransparency = 0.3

					camButton.Position = UDim2.new(0, 80, 0, -1)
					camButton.Size = UDim2.new(0, 34, 0, 34)
					camButton.ImageTransparency = 0.3
				end

				indicatorCircle.Position = UDim2.new(0, 20, 0, -10)
				frame.Active = false
				frame.Visible = false

				if cloneStreamTrack then
					local onTrackStoppedConnection = nil
					local tempCloneStreamTrack = cloneStreamTrack
					local tempNewTrackerStreamAnimation = newTrackerStreamAnimation
					onTrackStoppedConnection = cloneStreamTrack.Stopped:Connect(function()
						tempCloneStreamTrack:Destroy()

						if tempNewTrackerStreamAnimation then
							tempNewTrackerStreamAnimation:Destroy()
						end

						onTrackStoppedConnection:Disconnect()
					end)

					cloneStreamTrack:Stop(0.0)
					cloneStreamTrack = nil
				elseif newTrackerStreamAnimation then
					newTrackerStreamAnimation:Destroy()
					newTrackerStreamAnimation = nil
				end

				if shouldDisplaySelfViewTooltip("ShowSelfieViewClosedTooltip") then
					mountSelfViewOnCloseTooltip({
						fallbackText = "You can find your camera and self-view controls here",
						translationKey = "Feature.Avatar.Message.FTUXSelfieViewClosedTooltip",
						tooltipLifetime = FIntSelfViewTooltipLifetime,
					})
					pcall(function()
						AppStorageService:SetItem("ShowSelfieViewClosedTooltip", "false")
					end)
				end
			end

			if not GetFFlagEnableShowVoiceUI() or numButtonsShowing ~= 0 then
				bottomButtonsFrame.Visible = isOpen
			end
		end

		globalShowSelfViewFunction = showSelfView

		closeButton.Activated:Connect(function()
			showSelfView(not isOpen)
		end)

		if toggleSelfViewSignalConnection then
			toggleSelfViewSignalConnection:disconnect()
		end
		toggleSelfViewSignalConnection = toggleSelfViewSignal:connect(function()
			showSelfView(not isOpen)
		end)

		if selfViewVisibleConnection then
			selfViewVisibleConnection:Disconnect()
			selfViewVisibleConnection = nil
		end
		if selfViewHiddenConnection then
			selfViewHiddenConnection:Disconnect()
			selfViewHiddenConnection = nil
		end
		selfViewVisibleConnection = SocialService.SelfViewVisible:Connect(function(selfViewPosition)
			-- Calling showSelfView when self view is already visible is no-op
			if not isOpen then
				-- use current position
				local newSelfViewPosition = nil
				local anchorPoint = nil
				if selfViewPosition == Enum.SelfViewPosition.TopLeft then
					newSelfViewPosition = UDim2.new(0, SELF_VIEW_POSITION_OFFSET, 0, SELF_VIEW_POSITION_OFFSET)
					anchorPoint = Vector2.new(0, 0)
				elseif selfViewPosition == Enum.SelfViewPosition.TopRight then
					newSelfViewPosition = UDim2.new(1, -SELF_VIEW_POSITION_OFFSET, 0, SELF_VIEW_POSITION_OFFSET)
					anchorPoint = Vector2.new(1, 0)
				elseif selfViewPosition == Enum.SelfViewPosition.BottomLeft then
					newSelfViewPosition = UDim2.new(0, SELF_VIEW_POSITION_OFFSET, 1, -SELF_VIEW_POSITION_OFFSET)
					anchorPoint = Vector2.new(0, 1)
				elseif selfViewPosition == Enum.SelfViewPosition.BottomRight then
					newSelfViewPosition = UDim2.new(1, -SELF_VIEW_POSITION_OFFSET, 1, -SELF_VIEW_POSITION_OFFSET)
					anchorPoint = Vector2.new(1, 1)
				end
				showSelfView(true, newSelfViewPosition, anchorPoint)
				if newSelfViewPosition ~= nil then
					local value = frame.AbsolutePosition.X .. "," .. frame.AbsolutePosition.Y
					AppStorageService:SetItem("SelfViewPosition", value)
				end
			end
		end)
		selfViewHiddenConnection = SocialService.SelfViewHidden:Connect(function()
			-- Calling hideSelfView when self view is not visible is no-op
			if isOpen then
				if getFFlagEnableAlwaysAvailableCamera() and mountedOnOpenTooltipInstance then
					-- If we have mounted a tooltip and the developer calls this API, we want to unmount the tooltip
					mountedOnOpenTooltipInstance.unmount()
					mountedOnOpenTooltipInstance = nil
				end
				showSelfView(false)
			end
		end)

		uiCorner = Instance.new("UICorner")
		uiCorner.Parent = closeButton

		if not FFlagSelfViewRemoveVPFWhenClosed then
			uiCorner = Instance.new("UICorner")
			uiCorner.Parent = selfViewFrame

			uiCorner = Instance.new("UICorner")
			uiCorner.Parent = viewportFrame

			local uiStroke = Instance.new("UIStroke")
			uiStroke.Parent = selfViewFrame
			uiStroke.Thickness = 3
			uiStroke.Color = DEFAULT_SELF_VIEW_FRAME_COLOR

			uiStroke = Instance.new("UIStroke")
			uiStroke.Parent = viewportFrame
			uiStroke.Thickness = 2.5
			uiStroke.Color = DEFAULT_SELF_VIEW_FRAME_COLOR
		end

		createCloneAnchor()

		if not FFlagSelfViewRemoveVPFWhenClosed then
			viewportCamera = Instance.new("Camera")

			viewportCamera.FieldOfView = SELF_VIEW_CAMERA_FIELD_OF_VIEW

			viewportFrame.CurrentCamera = viewportCamera
			viewportCamera.Parent = viewportFrame
		end

		if not playerScreenOrientationConnection then
			connectToScreenOrientationChange()
		end
	else
		local selfViewFrame = Instance.new("Frame")
		selfViewFrame.Name = "SelfViewFrame"
		selfViewFrame.Position = UDim2.new(0, 0, 0, 0)
		selfViewFrame.Size = UDim2.new(1, 0, 1, 0)
		selfViewFrame.BackgroundTransparency = 1
		selfViewFrame.Parent = frame

		viewportFrame = Instance.new("ViewportFrame")
		viewportFrame.Position = UDim2.new(0, 0, 0, 0)
		viewportFrame.Size = UDim2.new(1, 0, 1, -(DEFAULT_BUTTONS_BAR_HEIGHT - 1))
		viewportFrame.BackgroundColor3 = Color3.new(0, 0, 0)
		viewportFrame.BorderColor3 = Color3.new(0.6, 0.5, 0.4)
		viewportFrame.BorderSizePixel = 2
		viewportFrame.BackgroundTransparency = BACKGROUND_TRANSPARENCY
		viewportFrame.Parent = selfViewFrame

		viewportFrame.Ambient = Color3.new(0.7529411765, 0.7098039216, 0.7137254902)
		viewportFrame.LightColor = Color3.new(1, 0.9960784314, 0.9960784314)
		viewportFrame.LightDirection = Vector3.new(9.5, -12, 7.5)
		viewportFrame.BackgroundColor3 = Color3.new(0.0990616, 0.138109, 0.452827)
		viewportFrame.IsMirrored = true

		indicatorCircle = Instance.new("ImageLabel")
		indicatorCircle.Name = "IndicatorCircle"
		indicatorCircle.Parent = frame
		indicatorCircle.Position = UDim2.new(1, -25, 0, 4)
		indicatorCircle.Size = UDim2.new(0, 22, 0, 22)
		indicatorCircle.Image = INDICATOR_OFF_IMAGE
		indicatorCircle.BackgroundTransparency = 1
		indicatorCircle.Visible = false
		indicatorCircle.ZIndex = 4

		local closeButton = Instance.new("ImageButton")
		closeButton.Name = "CloseButton"
		closeButton.AnchorPoint = Vector2.new(0, 0.5)
		closeButton.Parent = frame
		closeButton.Position = UDim2.fromOffset(0, 16)
		closeButton.Size = UDim2.new(0, 34, 0, 34)
		closeButton.Image = "rbxasset://textures/SelfView/whiteRect.png"
		closeButton.ImageTransparency = 1
		closeButton.BackgroundTransparency = 1
		closeButton.BackgroundColor3 = Color3.new(0.137254, 0.137254, 0.137254)
		closeButton.ZIndex = 2

		local closeButtonIcon = Instance.new("ImageLabel")
		closeButtonIcon.Name = "CloseButtonIcon"
		closeButtonIcon.Parent = closeButton
		closeButtonIcon.AnchorPoint = Vector2.new(0.5, 0.5)
		closeButtonIcon.Position = UDim2.new(0, 17, 0, 17)
		closeButtonIcon.Size = UDim2.new(0, 32, 0, 32)
		closeButtonIcon.Image = "rbxasset://textures/SelfView/SelfView_icon_close.png"
		closeButtonIcon.ImageTransparency = 0
		closeButtonIcon.BackgroundTransparency = 1
		closeButtonIcon.ZIndex = 2

		local faceIcon = Instance.new("ImageLabel")
		faceIcon.Name = "FaceIcon"
		faceIcon.Parent = frame
		faceIcon.AnchorPoint = Vector2.new(0.5, 0.5)
		faceIcon.Position = UDim2.new(0, 17, 0, 17)
		faceIcon.Size = UDim2.new(0, 32, 0, 32)
		faceIcon.Image = "rbxasset://textures/SelfView/SelfView_icon_faceToggle_on.png"
		faceIcon.BackgroundTransparency = 1
		faceIcon.ZIndex = 2
		faceIcon.Visible = false
		faceIcon.Parent = closeButton

		local function setButtonButtonsVisibility()
			if isOpen then
				if not GetFFlagEnableShowVoiceUI() or numButtonsShowing ~= 0 then
					micButton.Visible = true
					camButton.Visible = true
				end
				closeButton.Visible = true
			--[[
				Allow for debugging in studio. This shows the mic option when
				studio normally does not have this option.
			]]
			elseif IS_STUDIO and debug then
				if not GetFFlagEnableShowVoiceUI() or numButtonsShowing ~= 0 then
					micButton.Visible = true
					camButton.Visible = true
				end
				closeButton.Visible = true
			else
				if not GetFFlagEnableShowVoiceUI() or numButtonsShowing ~= 0 then
					micButton.Visible = false
					camButton.Visible = false
				end
				closeButton.Visible = false
			end
		end

		local function showSelfView(newState, position, anchorPoint)
			setIsOpen(newState)
			setButtonButtonsVisibility()

			if not FFlagSelfViewRemoveVPFWhenClosed then
				selfViewFrame.Visible = newState
			end
			if not GetFFlagEnableShowVoiceUI() or numButtonsShowing ~= 0 then
				bottomButtonsFrame.Visible = newState
			end
			closeButtonIcon.Visible = newState
			faceIcon.Visible = not newState
			closeButton.BackgroundTransparency = newState and 1 or 0.5

			if isOpen then
				if not GetFFlagEnableShowVoiceUI() or numButtonsShowing ~= 0 then
					micButton.Position = UDim2.new(0, 0, 0, 0)
					micButton.Size = UDim2.new(0.5, -4, 1, -4)
					micButton.ImageTransparency = 0

					camButton.Position = UDim2.new(0, 0, 0, 0)
					camButton.Size = UDim2.new(0.5, -4, 1, -4)
					camButton.ImageTransparency = 0
				end

				indicatorCircle.Position = UDim2.new(1, -25, 0, 4)

				if position ~= nil then
					frame.Position = position
				end
				if anchorPoint ~= nil then
					frame.AnchorPoint = anchorPoint
				end
				frame.Active = true
				frame.Visible = true

				if shouldDisplaySelfViewTooltip("ShowSelfieViewOpenedTooltip") then
					mountedOnOpenTooltipInstance = mountSelfViewOnOpenTooltip({
						fallbackText = "Use your camera to make your avatar smile and move just like you",
						translationKey = "Feature.Avatar.Message.FTUXSelfieViewOpenedTooltip",
						anchorPoint = frame.AnchorPoint,
						position = frame.Position,
						size = frame.Size,
						bottomButtonsFramePosition = bottomButtonsFrame.Position,
						bottomButtonsFrameSize = bottomButtonsFrame.Size,
						aspectRatio = aspectRatioConstraint.AspectRatio,
						maxSize = sizeConstraint.MaxSize,
						minSize = sizeConstraint.MinSize,
						tooltipLifetime = FIntSelfViewTooltipLifetime,
					})
					pcall(function()
						AppStorageService:SetItem("ShowSelfieViewOpenedTooltip", "false")
					end)
				end
			else
				if not GetFFlagEnableShowVoiceUI() or numButtonsShowing ~= 0 then
					micButton.Position = UDim2.new(0, 40, 0, -1)
					micButton.Size = UDim2.new(0, 34, 0, 34)
					micButton.ImageTransparency = 0.3

					camButton.Position = UDim2.new(0, 80, 0, -1)
					camButton.Size = UDim2.new(0, 34, 0, 34)
					camButton.ImageTransparency = 0.3
				end

				indicatorCircle.Position = UDim2.new(0, 20, 0, -10)
				frame.Active = false
				frame.Visible = false

				if cloneStreamTrack then
					local onTrackStoppedConnection = nil
					local tempCloneStreamTrack = cloneStreamTrack
					local tempNewTrackerStreamAnimation = newTrackerStreamAnimation
					onTrackStoppedConnection = cloneStreamTrack.Stopped:Connect(function()
						tempCloneStreamTrack:Destroy()

						if tempNewTrackerStreamAnimation then
							tempNewTrackerStreamAnimation:Destroy()
						end

						onTrackStoppedConnection:Disconnect()
					end)

					cloneStreamTrack:Stop(0.0)
					cloneStreamTrack = nil
				elseif newTrackerStreamAnimation then
					newTrackerStreamAnimation:Destroy()
					newTrackerStreamAnimation = nil
				end

				if shouldDisplaySelfViewTooltip("ShowSelfieViewClosedTooltip") then
					mountSelfViewOnCloseTooltip({
						fallbackText = "You can find your camera and self-view controls here",
						translationKey = "Feature.Avatar.Message.FTUXSelfieViewClosedTooltip",
						tooltipLifetime = FIntSelfViewTooltipLifetime,
					})
					pcall(function()
						AppStorageService:SetItem("ShowSelfieViewClosedTooltip", "false")
					end)
				end
			end

			if not GetFFlagEnableShowVoiceUI() or numButtonsShowing ~= 0 then
				bottomButtonsFrame.Visible = isOpen
			end
		end

		globalShowSelfViewFunction = showSelfView

		closeButton.Activated:Connect(function()
			showSelfView(not isOpen)
		end)

		if toggleSelfViewSignalConnection then
			toggleSelfViewSignalConnection:disconnect()
		end
		toggleSelfViewSignalConnection = toggleSelfViewSignal:connect(function()
			showSelfView(not isOpen)
		end)

		if selfViewVisibleConnection then
			selfViewVisibleConnection:Disconnect()
			selfViewVisibleConnection = nil
		end
		if selfViewHiddenConnection then
			selfViewHiddenConnection:Disconnect()
			selfViewHiddenConnection = nil
		end
		selfViewVisibleConnection = SocialService.SelfViewVisible:Connect(function(selfViewPosition)
			-- Calling showSelfView when self view is already visible is no-op
			if not isOpen then
				-- use current position
				local newSelfViewPosition = nil
				local anchorPoint = nil
				if selfViewPosition == Enum.SelfViewPosition.TopLeft then
					newSelfViewPosition = UDim2.new(0, SELF_VIEW_POSITION_OFFSET, 0, SELF_VIEW_POSITION_OFFSET)
					anchorPoint = Vector2.new(0, 0)
				elseif selfViewPosition == Enum.SelfViewPosition.TopRight then
					newSelfViewPosition = UDim2.new(1, -SELF_VIEW_POSITION_OFFSET, 0, SELF_VIEW_POSITION_OFFSET)
					anchorPoint = Vector2.new(1, 0)
				elseif selfViewPosition == Enum.SelfViewPosition.BottomLeft then
					newSelfViewPosition = UDim2.new(0, SELF_VIEW_POSITION_OFFSET, 1, -SELF_VIEW_POSITION_OFFSET)
					anchorPoint = Vector2.new(0, 1)
				elseif selfViewPosition == Enum.SelfViewPosition.BottomRight then
					newSelfViewPosition = UDim2.new(1, -SELF_VIEW_POSITION_OFFSET, 1, -SELF_VIEW_POSITION_OFFSET)
					anchorPoint = Vector2.new(1, 1)
				end
				showSelfView(true, newSelfViewPosition, anchorPoint)
				if newSelfViewPosition ~= nil then
					local value = frame.AbsolutePosition.X .. "," .. frame.AbsolutePosition.Y
					AppStorageService:SetItem("SelfViewPosition", value)
				end
			end
		end)
		selfViewHiddenConnection = SocialService.SelfViewHidden:Connect(function()
			-- Calling hideSelfView when self view is not visible is no-op
			if isOpen then
				if getFFlagEnableAlwaysAvailableCamera() and mountedOnOpenTooltipInstance then
					-- If we have mounted a tooltip and the developer calls this API, we want to unmount the tooltip
					mountedOnOpenTooltipInstance.unmount()
					mountedOnOpenTooltipInstance = nil
				end
				showSelfView(false)
			end
		end)

		uiCorner = Instance.new("UICorner")
		uiCorner.Parent = closeButton

		if not FFlagSelfViewRemoveVPFWhenClosed then
			uiCorner = Instance.new("UICorner")
			uiCorner.Parent = selfViewFrame

			uiCorner = Instance.new("UICorner")
			uiCorner.Parent = viewportFrame

			local uiStroke = Instance.new("UIStroke")
			uiStroke.Parent = selfViewFrame
			uiStroke.Thickness = 3
			uiStroke.Color = DEFAULT_SELF_VIEW_FRAME_COLOR

			uiStroke = Instance.new("UIStroke")
			uiStroke.Parent = viewportFrame
			uiStroke.Thickness = 2.5
			uiStroke.Color = DEFAULT_SELF_VIEW_FRAME_COLOR
		end

		createCloneAnchor()

		if not FFlagSelfViewRemoveVPFWhenClosed then
			viewportCamera = Instance.new("Camera")

			viewportCamera.FieldOfView = SELF_VIEW_CAMERA_FIELD_OF_VIEW

			viewportFrame.CurrentCamera = viewportCamera
			viewportCamera.Parent = viewportFrame
		end

		if not playerScreenOrientationConnection then
			connectToScreenOrientationChange()
		end
	end
end

function toggleIndicator(mode)
	debugPrint(
		"Self View: toggleIndicator(), mode: "
			.. tostring(mode)
			.. ",hasMicPermissions:"
			.. tostring(hasMicPermissions)
			.. ",hasCameraPermissions:"
			.. tostring(hasCameraPermissions)
	)
	if indicatorCircle then
		indicatorCircle.Visible = (
			(mode == Enum.TrackerMode.Audio or mode == Enum.TrackerMode.AudioVideo)
			and getShouldShowMicButton()
			and (debug or (bottomButtonsFrame and bottomButtonsFrame.Visible))
		)
			or (
				(mode == Enum.TrackerMode.Video or mode == Enum.TrackerMode.AudioVideo)
				and hasCameraPermissions
				and (debug or (bottomButtonsFrame and bottomButtonsFrame.Visible))
			)
		if mode == Enum.TrackerMode.AudioVideo or mode == Enum.TrackerMode.Audio then
			indicatorCircle.Image = INDICATOR_ON_IMAGE
		else
			indicatorCircle.Image = INDICATOR_OFF_IMAGE
		end
	end
end

function showNoDynamicHeadInfoIfNeeded()
	--show prompt when no facecontrols
	if noDynamicHeadEquippedInfoShown then
		return
	end
	if localPlayerHasDynamicHead == false then
		noDynamicHeadEquippedInfoShown = true
		TrackerMenu:showPrompt(TrackerPromptType.NoDynamicHeadEquipped)
	end
end

function updateVideoButton(enabled)
	if enabled then
		if camIcon then
			camIcon.Image = VIDEO_IMAGE.Image
			camIcon.ImageRectOffset = VIDEO_IMAGE.ImageRectOffset
			camIcon.ImageRectSize = VIDEO_IMAGE.ImageRectSize
		end
		showNoDynamicHeadInfoIfNeeded()
	else
		if camIcon then
			camIcon.Image = VIDEO_OFF_IMAGE.Image
			camIcon.ImageRectOffset = VIDEO_OFF_IMAGE.ImageRectOffset
			camIcon.ImageRectSize = VIDEO_OFF_IMAGE.ImageRectSize
		end
	end
end

local onUpdateTrackerMode = function()
	currentTrackerMode = Enum.TrackerMode.None --"NONE"
	if FaceAnimatorService.AudioAnimationEnabled and not FaceAnimatorService.VideoAnimationEnabled then
		currentTrackerMode = Enum.TrackerMode.Audio --"A2C"
	elseif
		not FaceAnimatorService.AudioAnimationEnabled
		and FaceAnimatorService.VideoAnimationEnabled
		and FaceAnimatorService:IsStarted()
	then
		currentTrackerMode = Enum.TrackerMode.Video --"V2C"
	elseif
		FaceAnimatorService.AudioAnimationEnabled
		and FaceAnimatorService.VideoAnimationEnabled
		and FaceAnimatorService:IsStarted()
	then
		currentTrackerMode = Enum.TrackerMode.AudioVideo --"AV2C"
	end
	log:trace(
		"Self View: onUpdateTrackerMode(), currentTrackerMode: "
			.. tostring(currentTrackerMode)
			.. ",cachedMode:"
			.. tostring(cachedMode)
	)

	updateVideoButton(
		(currentTrackerMode == Enum.TrackerMode.AudioVideo or currentTrackerMode == Enum.TrackerMode.Video)
			and hasCameraPermissions
	)

	toggleIndicator(currentTrackerMode)

	local cameraPermissionsChanged = false
	local modeChanged = false

	--if clone was setup with no streamtrack but now currentTrackerMode changed to one of the modes which could deliver a stream track, queue refresh of Self View
	if
		not foundStreamTrack and (cachedMode == Enum.TrackerMode.None and currentTrackerMode ~= Enum.TrackerMode.None)
	then
		setCloneDirty(true)
	end
	if cachedHasCameraPermissions ~= hasCameraPermissions or cachedHasMicPermissions ~= hasMicPermissions then
		debugPrint(
			"Self View: cachedHasCameraPermissions ~= hasCameraPermissions or cachedHasMicPermissions ~= hasMicPermissions"
		)
		if cachedHasCameraPermissions ~= hasCameraPermissions then
			cameraPermissionsChanged = true
		end

		debugPrint("Self View: permissions changed, triggering clone refresh in case we get a streamtrack")
		setCloneDirty(true)
	end

	if cachedMode ~= currentTrackerMode then
		modeChanged = true
	end

	if modeChanged or cameraPermissionsChanged then
		local newReportedCamState = false

		if
			hasCameraPermissions
			and (currentTrackerMode == Enum.TrackerMode.Video or currentTrackerMode == Enum.TrackerMode.AudioVideo)
		then
			newReportedCamState = true
		end

		if
			not hasCameraPermissions
			or (currentTrackerMode ~= Enum.TrackerMode.Video and currentTrackerMode ~= Enum.TrackerMode.AudioVideo)
		then
			newReportedCamState = false
		end

		if newReportedCamState ~= lastReportedCamState then
			Analytics:reportCamState(newReportedCamState)
			lastReportedCamState = newReportedCamState
		end
	end

	cachedHasCameraPermissions = hasCameraPermissions
	cachedHasMicPermissions = hasMicPermissions
	cachedMode = currentTrackerMode
end

local function syncTrack(animator, track)
	if FFlagSelfViewTweaksPass then
		if not isOpen or viewportFrame == nil then
			return
		end
	end
	if not animator or not track.Animation then
		return
	end

	-- create the track
	local cloneTrack = nil
	if track.Animation:IsA("Animation") then
		--regular animation sync handled further below
	elseif track.Animation:IsA("TrackerStreamAnimation") then
		newTrackerStreamAnimation = Instance.new("TrackerStreamAnimation")
		if game:GetEngineFeature("UseNewLoadStreamAnimationAPI") then
			cloneStreamTrack =
				animator:LoadStreamAnimationV2(newTrackerStreamAnimation, Players.LocalPlayer, false, false)
		else
			cloneStreamTrack =
				animator:LoadStreamAnimationForSelfieView_deprecated(newTrackerStreamAnimation, Players.LocalPlayer)
		end
		cloneTrack = cloneStreamTrack
		foundStreamTrack = true
		debugPrint("foundStreamTrack = true")
	else
		warn("No animation to clone in SelfView")
	end

	-- check state
	if cloneTrack then
		-- play track
		cloneTrack:Play()
		cloneTrack.Priority = track.Priority
		-- listen for track changes
		trackStoppedConnections[track] = track.Stopped:Connect(function()
			cloneTrack:Stop(0)
			if trackStoppedConnections[track] then
				trackStoppedConnections[track]:Disconnect()
			end
		end)
	end
end

-- Finds the FaceControls instance attached to the rig
function getFaceControls(rig)
	if rig == nil then
		return
	end
	return rig:FindFirstChildWhichIsA("FaceControls", true)
end

function getNeck(character, head)
	if character == nil or head == nil then
		return nil
	end

	local descendants = character:GetDescendants()
	debugPrint("Self VIew: getNeck()")
	for _, child in descendants do
		if child:IsA("Motor6D") then
			if child.Part1 == head or child.Name == "Neck" then
				return child
			end
		end
	end

	--in case no neck found it could be using AnimationConstraint, do fallback neck loockup for that
	if FFlagSelfViewUpdatedCamFraming then
		for _, child in descendants do
			if child:IsA("AnimationConstraint") then
				if child.Parent == head and (child.Attachment0.Name == "NeckRigAttachment" or child.Name == "Neck") then
					return child
				end
			end
		end
	end
	return nil
end

function findObjectOfNameAndTypeName(name, typeName, character)
	if character == nil then
		return nil
	end
	local descendants = character:GetDescendants()
	for _, child in descendants do
		if FFlagSelfViewTweaksPass then
			if child:IsA(typeName) and child.Name == name then
				return child
			end
		else
			if child.Name == name and child:IsA(typeName) then
				return child
			end
		end
	end
end

function getHead(character)
	if not character then
		return nil
	end

	local head = nil

	--lookup for dynamic heads
	local faceControls = getFaceControls(character)
	if faceControls ~= nil then
		if FFlagSelfViewAvoidErrorOnWrongFaceControlsParenting then
			if faceControls.Parent then
				if faceControls.Parent.ClassName == "MeshPart" or faceControls.Parent.ClassName == "Part" then
					head = faceControls.Parent
				end
			end
		else
			head = faceControls.Parent
		end
	end

	--fallback lookup attempts in case non dynamic head avatar
	if not head then
		--first doing an attempt like this
		head = findObjectOfNameAndTypeName("Head", "MeshPart", character)

		--last resort fallback attempt, could return other object types in worst case (like a Pose called Head if the avatar has AnimSaves in it)
		if not head then
			--having the fallback of just returning any object type which is called "Head" was too loose as it could be some object type which doesn't have features we need later on and cause errors then
			--so we only fall back to looking for a Head Part if Head MeshPart was not found.
			head = findObjectOfNameAndTypeName("Head", "Part", character)
		end
	end

	debugPrint("Self View: fn getHead(), head: " .. tostring(head))

	return head
end

function getAnimator(character, timeOut)
	if character == nil then
		return nil
	end

	local animator = nil

	local humanoid = nil
	if timeOut > 0 then
		if FFlagSelfViewLookUpHumanoidByType then
			if FFlagSelfViewHumanoidNilCheck then
				local maybeHumanoid = character:WaitForChild("Humanoid", timeOut)
				if maybeHumanoid then
					if maybeHumanoid:IsA("Humanoid") then
						humanoid = maybeHumanoid
					else
						humanoid = character:FindFirstChildWhichIsA("Humanoid")
					end
				else
					humanoid = character:FindFirstChildWhichIsA("Humanoid")
				end
			else
				local maybeHumanoid = character:WaitForChild("Humanoid", timeOut)
				if maybeHumanoid:IsA("Humanoid") then
					humanoid = maybeHumanoid
				else
					humanoid = character:FindFirstChildWhichIsA("Humanoid")
				end
			end
		else
			humanoid = character:WaitForChild("Humanoid", timeOut)
		end
	else
		if FFlagSelfViewLookUpHumanoidByType then
			humanoid = character:FindFirstChildWhichIsA("Humanoid")
		else
			humanoid = character:FindFirstChild("Humanoid")
		end
	end

	if humanoid ~= nil then
		if timeOut > 0 then
			animator = humanoid:WaitForChild("Animator", timeOut)
		else
			animator = humanoid:FindFirstChild("Animator")
		end
	end

	if animator == nil then
		--fallback for different character setup:
		animator = character:FindFirstChildWhichIsA("Animator", true)
	end

	return animator
end

local function disableScripts(instance)
	for _, child in instance:GetChildren() do
		if child:IsA("Script") then
			child.Disabled = true
			child.Parent = nil
		end

		disableScripts(child)
	end
end

local function removeUI(instance)
	for _, child in instance:GetChildren() do
		if
			child:IsA("GuiObject")
			or child:IsA("ScreenGui")
			or child:IsA("BillboardGui")
			or child:IsA("AdGui")
			or child:IsA("SurfaceGui")
		then
			child.Parent = nil
		end

		removeUI(child)
	end
end

local function removeInstancesStrict(instance)
	for _, child in instance:GetChildren() do
		if not ALLOWLISTED_INSTANCE_TYPES[child.ClassName] then
			child.Parent = nil
		end

		removeInstancesStrict(child)
	end
end

-- Remove unnecessary elements from the Clone
local function sanitize(clone)
	if not clone then
		return
	end

	removeInstancesStrict(clone)
end

function removeTagsFromSelfViewClone(clone)
	if clone == nil then
		return
	end

	local clonesTags = CollectionService:GetTags(clone)
	for _, v in ipairs(clonesTags) do
		--log:trace("removing tag:"..v)
		if FFlagSelfViewGetRidOfFalselyRenderedFaceDecal then
			if v ~= "NoFace" then
				CollectionService:RemoveTag(clone, v)
			end
		else
			CollectionService:RemoveTag(clone, v)
		end
	end

	for _, part in ipairs(clone:GetDescendants()) do
		local descendantTags = CollectionService:GetTags(part)
		for _, v2 in ipairs(descendantTags) do
			--log:trace("removing tag2:"..v2)
			if FFlagSelfViewGetRidOfFalselyRenderedFaceDecal then
				if v2 ~= "NoFace" then
					CollectionService:RemoveTag(part, v2)
				end
			else
				CollectionService:RemoveTag(part, v2)
			end
		end
	end
end

local function updateClone(player)
	debugPrint("Self View: updateClone()")

	clearClone()

	gotUsableClone = false

	if not player then
		return
	end

	--we set it up here so it is already ready for before player's character loaded
	startRenderStepped(player)

	if not player or not player.Character then
		return
	end

	--need to wait here for character else sometimes error on respawn
	local character = player.Character or player.CharacterAdded:Wait()

	--should not be possible, but very rarely it can happen that player character is nil here despite the above check, in that case return
	if not character then
		return
	end

	debugPrint("Self View: updateClone(): character:" .. tostring(character))

	local animator = getAnimator(character, 10)

	clearCloneCharacter()

	-- create clone
	local previousArchivableValue = character.Archivable
	character.Archivable = true

	local orgHead = getHead(character)

	clone = character:Clone()

	if FFlagSelfViewMoreNilChecks and clone == nil then
		return
	end

	if not FFlagSelfViewTweaksPass then
		--remove tags in Self View clone of avatar as it may otherwise cause gameplay issues
		removeTagsFromSelfViewClone(clone)
	end

	--resetting the joints orientations in the clone since it can happen that body/head IK like code was applied on the player avatar
	--and we want to start with default pose setup in clone, else issues with clone avatar (parts) orientation etc
	for _, part in ipairs(clone:GetDescendants()) do
		if part:IsA("Motor6D") then
			part.C0 = CFrame.new(part.C0.Position)
			part.C1 = CFrame.new(part.C1.Position)
		end
	end

	--it could happen that the head was made transparent during gameplay, which is in some experiences done when entering a car for example
	--we still want to show the self view avatar's head in that case (also because sometimes exiting vehicles would not cause a refresh of the self view and the head would stay transparent then)
	--but we also want to respect it if the head was transparent to begin with on first usage like for a headless head look
	for _, part in ipairs(clone:GetDescendants()) do
		if part:IsA("Decal") then
			part.Transparency = 0
		elseif part:IsA("MeshPart") then
			if (part.Parent and part.Parent:IsA("Accessory")) or (table.find(r15bodyPartsToShow, part.Name)) then
				if not table.find(partsOrgTransparency, part.MeshId) then
					partsOrgTransparency[part.MeshId] = part.Transparency
				else
					part.Transparency = partsOrgTransparency[part.MeshId]
				end
			end
		elseif part:IsA("Part") then
			if (part.Parent and part.Parent:IsA("Accessory")) or (table.find(r15bodyPartsToShow, part.Name)) then
				part.Transparency = 0
			end

			if FFlagSelfViewTweaksPass then
				if CollectionService:HasTag(part, ALWAYS_TRANSPARENT_PART_TAG) then
					part.Transparency = 1
				end
			end
		end
	end

	if FFlagSelfViewTweaksPass then
		--remove tags in Self View clone of avatar as it may otherwise cause gameplay issues
		removeTagsFromSelfViewClone(clone)
	end

	clone.Name = cloneCharacterName

	-- remove unneeded cloned assets
	--(removing these already here as otherwise on fast respawn the Animate script in the clone can execute some stuff already before removal)
	removeChild(clone, "Animate")
	removeChild(clone, "Health")

	sanitize(clone)

	for index, script in pairs(clone:GetDescendants()) do
		if script:IsA("BaseScript") then
			script:Destroy()
		end
	end

	character.Archivable = previousArchivableValue

	if clone == nil then
		debugPrint("Self View: updateClone: no clone could be created")
		--TODO: we'll add error tracking pre release
		return
	end

	clone.Parent = cloneAnchor
	--product question: should we show the Self View only if there is also a usable (standard) Animator or also for avatars which don't use animator?
	--in that case it could have no streamtrack and we could also support "cloning" anims by copying cframes over
	--if Self View only wanted to be shown if Animator exists, comment below line out (then it will
	--only see it as gotUsableClone when also Animator found)
	gotUsableClone = true

	local cframe = nil
	--focus clone
	local cloneRootPart = clone:FindFirstChild("HumanoidRootPart")
	if cloneRootPart then
		debugPrint("Self View: cloneRootPart: " .. cloneRootPart.Name)
		cloneRootPart.CFrame = CFrame.new(Vector3.new(0, 0, 0))
		--focus viewport frame camera on upper body
		--viewportCamera.CFrame = cloneRootPart.CFrame * CFrame.new(0,1.5,-2) * CFrame.Angles(math.rad(10),math.rad(180),0)--comment out for work in progress

		if orgHead then
			--we want to focus the cam on head + hat accessories bounding box
			--and we don't use rig:GetBoundingBox() because when Game Settings/Avatar/Collision is set to inner box,
			--it does not return the visual mesh's bounding box
			--and hence is then too small for some heads (like Piggy)
			local head = getHead(clone)
			if not FFlagSelfViewMoreNilChecks or head then
				local headTargetCFrame = CFrameUtility.CalculateTargetCFrame(head.CFrame)
				local minHeadExtent, maxHeadExtent = CharacterUtility.CalculateHeadExtents(clone, headTargetCFrame)
				local oMin, oMax =
					Vector3.new(minHeadExtent.X, minHeadExtent.Y, minHeadExtent.Z),
					Vector3.new(maxHeadExtent.X, maxHeadExtent.Y, maxHeadExtent.Z)
				boundsSize = (oMax - oMin)

				headHeight = head.Size.Y
				local width = math.min(boundsSize.X, boundsSize.Y)
				width = math.min(boundsSize.X, boundsSize.Z)

				local dummyModel = Instance.new("Model")
				dummyModel.Parent = clone
				character.Archivable = true
				headClone = head:Clone()
				headClone.CanCollide = false
				headClone.Parent = dummyModel

				headCloneNeck = getNeck(clone, headClone)
				local rootPart = headClone
				headCloneRootFrame = rootPart.CFrame
				headClone:Destroy()
				local center = headCloneRootFrame.Position
					+ headCloneRootFrame.LookVector * (width * DEFAULT_CAM_DISTANCE)
				viewportCamera.CFrame =
					CFrame.lookAt(center + DEFAULT_SELF_VIEW_CAM_OFFSET, headCloneRootFrame.Position)
				viewportCamera.Focus = headCloneRootFrame
				character.Archivable = previousArchivableValue
				dummyModel:Destroy()
			end
		else
			--when no head was found which is a Part or MeshPart:
			--basic fallback to focus the avatar in the viewportframe
			local center = cloneRootPart.Position + cloneRootPart.CFrame.LookVector * DEFAULT_CAM_DISTANCE_NO_HEAD
			viewportCamera.CFrame = CFrame.lookAt(center + DEFAULT_SELF_VIEW_NO_HEAD_CAM_OFFSET, cloneRootPart.Position)
			viewportCamera.CFrame = CFrame.new(viewportCamera.CFrame.Position)
				* CFrame.Angles(math.rad(DEFAULT_CAM_X_ROT), math.rad(180), 0)
		end
	end

	--curious: despite we check further above if clone == nil, noticed in some games above it was not nil and then by reaching here it is nil...
	--so checking it again before using it again just to go sure.
	if clone == nil then
		debugPrint("Self View: updateClone: no clone could be created")
		--TODO: we'll add error tracking pre release
		return
	end

	debugPrint("Self View: clone:" .. tostring(clone))
	local cloneHumanoid = nil
	if FFlagSelfViewLookUpHumanoidByType then
		cloneHumanoid = clone:FindFirstChildWhichIsA("Humanoid")
	else
		cloneHumanoid = clone:FindFirstChild("Humanoid")
	end
	if cloneHumanoid then
		cloneHumanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	end
	cloneAnimator = getAnimator(clone, 0)

	-- --prep sync streaming tracks
	if cloneAnimator then
		if not EngineFeatureAnimatorAndADFRefactor then
			-- clear cloned tracks
			local clonedTracks = cloneAnimator:GetPlayingAnimationTracks()
			local coreScriptTracks = cloneAnimator:GetPlayingAnimationTracksCoreScript()

			for index, track in ipairs(clonedTracks) do
				if track ~= nil then
					track:Stop(0)
					track:Destroy()
				end
			end

			for index, track in ipairs(coreScriptTracks) do
				if track ~= nil then
					track:Stop(0)
					track:Destroy()
				end
			end

			if newTrackerStreamAnimation then
				newTrackerStreamAnimation:Destroy()
				newTrackerStreamAnimation = nil
			end
		end

		if animator then
			if EngineFeatureAnimatorAndADFRefactor then
				cloneAnimator:SynchronizeWith(animator)
			else
				-- clone tracks manually
				for index, track in ipairs(animator:GetPlayingAnimationTracksCoreScript()) do
					syncTrack(cloneAnimator, track)
				end

				observerInstances[Observer.AnimationPlayedCoreScript] = animator.AnimationPlayedCoreScript:Connect(
					function(track)
						syncTrack(cloneAnimator, track)
					end
				)
			end

			gotUsableClone = true

			--usable clone was set up, cancel potential additional refresh
			setCloneDirty(false)
		else
			debugPrint("Self View: updateClone: no animator (original)!")
			-- TODO: we'll add error tracking pre release
		end
	else
		debugPrint("Self View: updateClone: cloneAnimator is NIL")
		--TODO: we'll add error tracking pre release
	end
end

local function hasProperty(object, prop)
	local t = object[prop] --this is just done to check if the property existed, if it did nothing would happen, if it didn't an error will pop, the object[prop] is a different way of writing object.prop, (object.Transparency or object["Transparency"])
end

function updateCachedHeadColor(headRefParam)
	if headRefParam == nil then
		return
	end

	local hasHeadColor = pcall(function()
		hasProperty(headRefParam, "Color")
	end)

	if hasHeadColor then
		cachedHeadColor = headRefParam.Color
		local hasHeadSize = pcall(function()
			hasProperty(headRefParam, "Size")
		end)
		if hasHeadSize then
			cachedHeadSize = headRefParam.Size
		end
	end
end

--we add this so after custom switch to ragdoll behaviour and getting back up done by some devs the self view refreshes to show the avatar fine again
function addHumanoidStateChangedObserver(humanoid)
	if not humanoid then
		return
	end
	if not observerInstances[Observer.HumanoidStateChanged] then
		observerInstances[Observer.HumanoidStateChanged] = humanoid.StateChanged:Connect(function(_oldState, newState)
			--debugPrint("1_oldState: " .. tostring(_oldState) .. ",newState: " .. tostring(newState))
			--come back from ragdoll state:
			if _oldState == Enum.HumanoidStateType.PlatformStanding and newState == Enum.HumanoidStateType.Running then
				setCloneDirty(true)
			end
			if newState == Enum.HumanoidStateType.GettingUp then
				setCloneDirty(true)
			end
		end)
	end
end

local function characterAdded(character)
	if FFlagSelfViewTweaksPass then
		if not isOpen or viewportFrame == nil then
			return
		end
	end
	headRef = getHead(character)
	updateCachedHeadColor(headRef)

	--avoid multi events
	clearObserver(Observer.DescendantAdded)
	clearObserver(Observer.DescendantRemoving)
	clearObserver(Observer.HeadSize)
	clearObserver(Observer.Color)

	local humanoid = nil
	if FFlagSelfViewLookUpHumanoidByType then
		humanoid = character:FindFirstChildWhichIsA("Humanoid")
	else
		humanoid = character:FindFirstChild("Humanoid")
	end
	if humanoid then
		addHumanoidStateChangedObserver(humanoid)
	end

	-- listen for updates on the original character's structure
	observerInstances[Observer.DescendantAdded] = character.DescendantAdded:Connect(function(descendant)
		if FFlagSelfViewTweaksPass then
			if not isOpen or viewportFrame == nil then
				return
			end
		end
		--debugPrint("Self View: descendant added,descendant.Name: "..descendant.Name)
		if descendant.Name == "Head" then
			headRef = getHead(character)

			updateCachedHeadColor(headRef)

			if not noDynamicHeadEquippedInfoShown then
				if descendant:IsA("MeshPart") then
					local faceControls = descendant:WaitForChild("FaceControls", 0.5)
					if faceControls == nil then
						localPlayerHasDynamicHead = false
					else
						localPlayerHasDynamicHead = true
					end
				end
			end
		end

		if FFlagSelfViewLookUpHumanoidByType then
			if descendant:IsA("Humanoid") then
				local humanoid = descendant
				addHumanoidStateChangedObserver(humanoid)
			end
		else
			if descendant.Name == "Humanoid" or descendant:IsA("Humanoid") then
				local humanoid = descendant
				addHumanoidStateChangedObserver(humanoid)
			end
		end

		--we only want to refresh the avatar self view clone on descendant added if the descendant is actually visible
		--this is to avoid unneccessary refreshes in case of a dev for example adding a Sound object to the avatar or some part which is for gameplay logic and turned transparent
		if descendant:IsA("MeshPart") or descendant:IsA("Part") or descendant:IsA("Decal") then
			if descendant.Transparency < 1 then
				setCloneDirty(true)
			end
		elseif TYPES_TRIGGERING_DIRTY_ON_ADDREMOVE[descendant.ClassName] then
			setCloneDirty(true)
		end
	end)
	observerInstances[Observer.DescendantRemoving] = character.DescendantRemoving:Connect(function(descendant)
		if FFlagSelfViewTweaksPass then
			if not isOpen or viewportFrame == nil then
				return
			end
		end

		--these checks are to avoid unnecessary additional refreshes
		if descendant and (descendant:IsA("MeshPart") or descendant:IsA("Accessory")) then
			if descendant:IsA("MeshPart") then
				debugPrint("MeshId:" .. tostring(descendant.MeshId))
				if descendant.MeshId == "" then
					return
				end
			end
		end
		--we only want to refresh the avatar self view clone on descendant removed if the descendant was actually visible
		--this is to avoid unneccessary refreshes
		if descendant:IsA("MeshPart") or descendant:IsA("Part") or descendant:IsA("Decal") then
			if descendant.Transparency < 1 then
				setCloneDirty(true)
			end
		elseif TYPES_TRIGGERING_DIRTY_ON_ADDREMOVE[descendant.ClassName] then
			setCloneDirty(true)
		end
	end)

	setCloneDirty(true)
end

function connectToVoiceJoinProgressChanged()
	if FFlagInExperienceUpsellSelfViewFix and not voiceJoinProgressChangedConnection then
		voiceJoinProgressChangedConnection = VoiceChatServiceManager.VoiceJoinProgressChanged.Event:Connect(
			function(state)
				if state == VoiceConstants.VOICE_JOIN_PROGRESS.Joined then
					initVoiceChatServiceManager()
				end
			end
		)
	end
end

function ReInit(player)
	debugPrint("Self View: ReInit()")
	gotUsableClone = false
	headRef = getHead(player.Character)
	updateCachedHeadColor(headRef)

	setCloneDirty(false)
	clearObserver(Observer.CharacterAdded)
	clearObserver(Observer.CharacterRemoving)
	clearClone()
	createViewport()
	playerAdded(player)
	startRenderStepped(player)
	connectToVoiceJoinProgressChanged()
end

local function onCharacterAdded(character)
	playerCharacterAddedConnection:Disconnect()
	ReInit(Players.LocalPlayer)
	clearObserver(Observer.HumanoidStateChanged)
	local humanoid = nil
	if FFlagSelfViewLookUpHumanoidByType then
		humanoid = character:FindFirstChildWhichIsA("Humanoid")
	else
		humanoid = character:FindFirstChild("Humanoid")
	end
	if humanoid then
		addHumanoidStateChangedObserver(humanoid)
	end
end

--not making this a local function, else on respawn of avatar the function is not available yet when wanting to call it again from the ReInit function
--weird that not all functions are already loaded before executing anything..
--currently it would not be needed yet to have this triggered on playerAdded as we currently only use the self view for the local player
--but we already implement this way as in the future we'll want to show self views for other players, too so it should be easier to build
--towards that starting from this.
function playerAdded(player)
	if player ~= nil and player == Players.LocalPlayer then
		debugPrint("Self View: playerAdded()")

		if playerCharacterAddedConnection ~= nil then
			playerCharacterAddedConnection:Disconnect()
			playerCharacterAddedConnection = nil
			clearObserver(Observer.CharacterAdded)
		end

		local currentCharacter = player.Character or player.CharacterAdded:Wait()

		--handle respawn:
		playerCharacterAddedConnection = player.CharacterAdded:Connect(onCharacterAdded)

		characterAdded(currentCharacter)

		observerInstances[Observer.CharacterAdded] = player.CharacterAdded:Connect(characterAdded)
		observerInstances[Observer.CharacterRemoving] = player.CharacterRemoving:Connect(function()
			clearObserver(Observer.DescendantAdded)
			clearObserver(Observer.DescendantRemoving)
			clearObserver(Observer.HeadSize)
			clearObserver(Observer.Color)
			updateClone(nil)
			clearObserver(Observer.CharacterRemoving)
		end)
	end
end

function stopRenderStepped()
	if renderSteppedConnection then
		renderSteppedConnection:Disconnect()
		renderSteppedConnection = nil
	end
end

function updateClonePartsColor(headRefColor)
	local hasHeadColor = pcall(function()
		hasProperty(headRef, "Color")
	end)

	if hasHeadColor and headRef.Color ~= cachedHeadColor then
		local character = Players.LocalPlayer.Character

		if not character then
			return
		end

		if not clone then
			return
		end

		for index, part in pairs(character:GetChildren()) do
			if part:IsA("MeshPart") then
				local clonePart = clone:FindFirstChild(part.Name)
				if clonePart and clonePart:IsA("MeshPart") then
					if clonePart.Color and part.Color then
						clonePart.Color = part.Color
					end
				end
			end
		end
	end

	cachedHeadColor = headRefColor
end

function prepMicAndCamPropertyChangedSignalHandler()
	debugPrint("Self View: prepMicAndCamPropertyChangedSignalHandler()")
	if not videoAnimationPropertyChangedSingalConnection then
		videoAnimationPropertyChangedSingalConnection = FaceAnimatorService
			:GetPropertyChangedSignal("VideoAnimationEnabled")
			:Connect(function()
				onUpdateTrackerMode()
			end)
	end

	if not audioAnimationPropertyChangedSingalConnection then
		audioAnimationPropertyChangedSingalConnection = FaceAnimatorService
			:GetPropertyChangedSignal("AudioAnimationEnabled")
			:Connect(function()
				onUpdateTrackerMode()
			end)
	end

	if not videoCaptureServiceStartedConnection then
		videoCaptureServiceStartedConnection = VideoCaptureService.Started:Connect(function()
			debugPrint("Self View: VideoCaptureService.Started event")
			getPermissions()
			onUpdateTrackerMode()
		end)
	end

	if not videoCaptureServiceStoppedConnection then
		videoCaptureServiceStoppedConnection = VideoCaptureService.Stopped:Connect(function()
			debugPrint("Self View: VideoCaptureService.Stopped event")
			getPermissions()
			onUpdateTrackerMode()
		end)
	end

	if not videoCaptureServiceDevicesChangedConnection then
		videoCaptureServiceDevicesChangedConnection = VideoCaptureService.DevicesChanged:Connect(function()
			getPermissions()
			onUpdateTrackerMode()
		end)
	end
end

function trackSelfViewSessionAsNeeded()
	if frame then
		selfViewSessionStarted = frame.Visible and isOpen
		if selfViewSessionStarted and cachedViewSessionStarted ~= selfViewSessionStarted then
			startSelfViewSession()
		end
		if not selfViewSessionStarted and cachedViewSessionStarted ~= selfViewSessionStarted then
			stopSelfViewSession()
		end
		cachedViewSessionStarted = selfViewSessionStarted
	end
end

function frameShouldBeVisible(step, gotUsableClone)
	-- The user should determine if they want Self View open or not.
	if not isOpen then
		return false
	end

	local shouldBeEnabledCoreGuiSetting = getShouldBeEnabledCoreGuiSetting()

	if not shouldBeEnabledCoreGuiSetting then
		return false
	end

	if gotUsableClone then
		return true
	end

	--Self View nabled via coreguisetting but don't have a usable clone, hide after a timeout
	--hiding after timeout instead of right away as it doesn't feel nice when it goes on and off while quickly swapping avatar parts

	if noUsableCloneOffset == nil then
		noUsableCloneOffset = 0
	end
	noUsableCloneOffset = noUsableCloneOffset + step
	debugPrint("Self View: noUsableCloneOffset: " .. tostring(noUsableCloneOffset))

	if noUsableCloneOffset > AUTO_HIDE_CD then
		noUsableCloneOffset = nil
		return false
	end

	--no usable clone but countup not done yet
	return true
end

function startRenderStepped(player)
	debugPrint("Self View: startRenderStepped()")
	stopRenderStepped()

	prepMicAndCamPropertyChangedSignalHandler()

	onUpdateTrackerMode()

	-- Do not connect to RenderStepped if the Self View is not open.
	if not isOpen then
		return
	end

	renderSteppedConnection = RunService.RenderStepped:Connect(function(step)
		--GetPropertyChangedSignal for head color/size change fired reliably in a simple test place for animation props
		--but it did not fire reliably in a more involved test place, so as fallback for now we also check manually for changes..

		gotUsableClone = false

		if Players.LocalPlayer then
			local character = Players.LocalPlayer.Character

			if not character or character.Parent == nil then
				return
			end

			if headRef == nil or headRef.Parent ~= character then
				headRef = getHead(character)
			end

			if headRef then
				local animator = getAnimator(character, 0)

				--manual sync of canned animation tracks
				if cloneAnimator ~= nil and animator ~= nil then
					gotUsableClone = true

					if not EngineFeatureAnimatorAndADFRefactor then
						local playingAnims = cloneAnimator:GetPlayingAnimationTracks()
						for _, track in pairs(playingAnims) do
							if track ~= nil then
								track:Stop(0)
							end
						end

						local orgPlayingTracks = animator:GetPlayingAnimationTracks()

						local anim = nil
						orgAnimationTracks = {}
						for index, value in ipairs(orgPlayingTracks) do
							anim = value.Animation
							if anim then
								if anim:IsA("Animation") then
									--avoid error "LoadAnimation requires the asset id to not be empty"
									if anim.AnimationId ~= "" then
										orgAnimationTracks[anim.AnimationId] = value
										if not cloneAnimationTracks[anim.AnimationId] then
											cloneAnimationTracks[anim.AnimationId] = cloneAnimator:LoadAnimation(anim)
										end
										local cloneAnimationTrack = cloneAnimationTracks[anim.AnimationId] --cloneAnimator:LoadAnimation(anim)

										cloneAnimationTrack:Play()
										cloneAnimationTrack.TimePosition = value.TimePosition
										cloneAnimationTrack.Priority = value.Priority
										cloneAnimationTrack:AdjustWeight(value.WeightCurrent, 0.1)
									end
								end
							end
						end

						--clear meanwhile not anymore playing track
						for trackId in cloneAnimationTracks do
							local track = cloneAnimationTracks[trackId]
							if track then
								anim = track.Animation
								if anim then
									if not orgAnimationTracks[anim.AnimationId] then
										if cloneAnimationTracks[anim.AnimationId] ~= nil then
											cloneAnimationTracks[anim.AnimationId]:Stop(0)
										end
										cloneAnimationTracks[anim.AnimationId] = nil
									end
								end
							end
						end

						for index, track in ipairs(animator:GetPlayingAnimationTracksCoreScript()) do
							local playingAnims = cloneAnimator:GetPlayingAnimationTracksCoreScript()
							for i, trackS in pairs(playingAnims) do
								if trackS.Animation:IsA("TrackerStreamAnimation") then
									trackS.Priority = track.Priority
									trackS:AdjustWeight(track.WeightCurrent, 0)
								end
							end
						end
					end
				end
			end

			local camOrientationWeight = 0.5
			local trackerData = nil
			-- When a device has accelerometer, we make self view orientation a hybrid of:
			-- 1. Face rotation
			-- 2. Camera orientation

			local platformEnum = UserInputService:GetPlatform()
			if platformEnum == Enum.Platform.IOS or platformEnum == Enum.Platform.Android then
				if cloneAnimator ~= nil then
					local playingAnims = cloneAnimator:GetPlayingAnimationTracksCoreScript()
					for i, trackS in pairs(playingAnims) do
						if trackS.Animation:IsA("TrackerStreamAnimation") then
							-- poll tracker data
							_, trackerData, _ = trackS:GetTrackerData()
						end
					end
				end
			end

			--Self View viewportframe camera updating to focus the avatar nicely during anims
			cloneCamUpdateCounter = cloneCamUpdateCounter + 1
			if cloneCamUpdateCounter == cloneCamUpdatePosEvery then
				cloneCamUpdateCounter = 0

				if clone then
					if not headClone then
						headClone = getHead(clone)
						if headClone then
							headCloneNeck = getNeck(clone, headClone)
						end
					end
					if headClone then
						headCloneRootFrame = headClone.CFrame
					end
				end

				if viewportCamera and headClone then
					local center = headClone.Position
					local centerLowXimpact = headClone.Position

					local headDuringAnimCFrame = headClone.CFrame

					if headCloneNeck then
						local PartParent = headCloneNeck.Part0
						local PartChild = headCloneNeck.Part1
						local CParent = headCloneNeck.C0
						local Child = headCloneNeck.C1
						local Transform = headCloneNeck.Transform

						if PartParent and CParent then
							headDuringAnimCFrame = PartParent.CFrame * CParent * Transform * Child:Inverse()

							centerLowXimpact = (
								Vector3.new(
									headDuringAnimCFrame.Position.X * 0.25,
									(
										headClone.CFrame.Position.Y
										+ headDuringAnimCFrame.Position.Y
										+ (headDuringAnimCFrame.Position.Y * 0.75)
									) * 0.33333,
									headDuringAnimCFrame.Position.Z
								)
							)
							center = (
								Vector3.new(
									headDuringAnimCFrame.Position.X * 0.6,
									(
										headClone.CFrame.Position.Y
										+ headDuringAnimCFrame.Position.Y
										+ (headDuringAnimCFrame.Position.Y * 0.75)
									) * 0.33333,
									headDuringAnimCFrame.Position.Z
								)
							)
						end
					else
						debugPrint("Self View: no neck found")
					end

					if FFlagSelfViewUpdatedCamFraming then
						--if webcam is on (FaceAnimatorService.VideoAnimationEnabled) we use the Iris style self view cam framing
						if
							FaceAnimatorService
							and FaceAnimatorService.VideoAnimationEnabled
							and (trackerData ~= nil or EngineFeaturePlayerViewRemoteEventSupport)
						then
							if EngineFeaturePlayerViewRemoteEventSupport then
								local cframe = game:GetService("PlayerViewService"):GetDeviceCameraCFrameForSelfView()
								local boundingBox = cframe.Position
								local x, y, z = cframe:ToEulerAnglesYXZ()
								local rotation = CFrame.fromEulerAnglesYXZ(x, y, z)
								local distanceRatio = 0

								if boundingBox.Z > 0.0 then
									distanceRatio = math.clamp(0.5 - (boundingBox.Z * 3), -0.5, 0.5)
								end

								local distance = -(boundsSize.Z + 1)
								-- Round to 2 decimal points
								local offset = Vector3.new(
									0,
									0.105,
									math.floor((distance + (distanceRatio * distance)) * 100) / 100
								)

								viewportCamera.CFrame = viewportCamera.CFrame:lerp(
									CFrame.lookAt(rotation * (center + offset), centerLowXimpact),
									0.5
								)
							else
								local offset = Vector3.new(0, 0.105, -(boundsSize.Z + 1))
								local x, y, z = trackerData:ToEulerAnglesXYZ()
								-- Cam orientation will be an inverse of the head rotation
								local angle = CFrame.Angles(
									-x * camOrientationWeight,
									-y * camOrientationWeight,
									-z * camOrientationWeight
								)
								viewportCamera.CFrame = CFrame.lookAt(angle * (center + offset), centerLowXimpact)
							end
						else
							--self view cam framing for when webcam off (no camera tracked framing info coming in)
							local offset = Vector3.new(0, (headHeight * 0.25) - 1.25, -(boundsSize.Z + 1) + 0.125)
							--for supporting new movement setup we do the calc using game world avatar head
							local character = Players.LocalPlayer.Character
							if character then
								local headGameWorld = character:FindFirstChild("Head")
								if headGameWorld then
									local hrpGameWorld = character:FindFirstChild("HumanoidRootPart")
									if hrpGameWorld then
										local calc = hrpGameWorld.CFrame:Inverse() * headGameWorld.CFrame

										local targetPos = Vector3.new(
											(calc.Position.x * 0.15) + 0.125,
											calc.Position.y,
											calc.Position.z * 0.05
										)
										viewportCamera.CFrame =
											CFrame.lookAt(center + offset + targetPos, centerLowXimpact)
										viewportCamera.Focus = headClone.CFrame
									end
								end
							end
						end
					else
						if
							trackerData ~= nil or EngineFeaturePlayerViewRemoteEventSupport
						then
							if EngineFeaturePlayerViewRemoteEventSupport then
								local cframe = game:GetService("PlayerViewService"):GetDeviceCameraCFrameForSelfView()
								local boundingBox = cframe.Position
								local x, y, z = cframe:ToEulerAnglesYXZ()
								local rotation = CFrame.fromEulerAnglesYXZ(x, y, z)
								local distanceRatio = 0

								if boundingBox.Z > 0.0 then
									distanceRatio = math.clamp(0.5 - (boundingBox.Z * 3), -0.5, 0.5)
								end

								local distance = -(boundsSize.Z + 1)
								-- Round to 2 decimal points
								local offset = Vector3.new(
									0,
									0.105,
									math.floor((distance + (distanceRatio * distance)) * 100) / 100
								)

								viewportCamera.CFrame = viewportCamera.CFrame:lerp(
									CFrame.lookAt(rotation * (center + offset), centerLowXimpact),
									0.5
								)
							else
								local offset = Vector3.new(0, 0.105, -(boundsSize.Z + 1))
								local x, y, z = trackerData:ToEulerAnglesXYZ()
								-- Cam orientation will be an inverse of the head rotation
								local angle = CFrame.Angles(
									-x * camOrientationWeight,
									-y * camOrientationWeight,
									-z * camOrientationWeight
								)
								viewportCamera.CFrame = CFrame.lookAt(angle * (center + offset), centerLowXimpact)
							end
						else
							local offset = Vector3.new(0, (headHeight * 0.25), -(boundsSize.Z + 1))
							viewportCamera.CFrame = CFrame.lookAt(center + offset, centerLowXimpact)
							viewportCamera.Focus = headClone.CFrame
						end
					end
				end
			end

			if headRef then
				if headRef.Size ~= cachedHeadSize then
					cachedHeadSize = headRef.Size
					setCloneDirty(true)
				end

				local hasHeadColor = pcall(function()
					hasProperty(headRef, "Color")
				end)

				if hasHeadColor and headRef.Color ~= cachedHeadColor then
					updateClonePartsColor(headRef.Color)
				end
			end
		end

		if cachedHasCameraPermissions ~= hasCameraPermissions or cachedHasMicPermissions ~= hasMicPermissions then
			onUpdateTrackerMode()
		end

		if updateCloneCurrentCoolDown > 0 then
			updateCloneCurrentCoolDown = updateCloneCurrentCoolDown - step
			if updateCloneCurrentCoolDown <= 0 then
				debugPrint("Self View: updateCloneCurrentCoolDown <= 0")
				updateClone(player)
				updateCloneCurrentCoolDown = 0
			end
		end

		if frame then
			if gotUsableClone then
				noUsableCloneOffset = nil
			end

			local shouldBeVisible = frameShouldBeVisible(step, gotUsableClone)
			if frame.Visible ~= shouldBeVisible then
				frame.Visible = shouldBeVisible
			end

			trackSelfViewSessionAsNeeded()
		end

		--debugPrint("Self View: renderstepped, hasCameraPermissions: "..tostring(hasCameraPermissions)..",hasMicPermissions:"..tostring(hasMicPermissions))
	end)
end

function triggerAnalyticsReportExperienceSettings(settings)
	Analytics:reportExperienceSettings(
		true,
		AvatarChatService:IsEnabled(settings, Enum.AvatarChatServiceFeature.UniverseVideo)
			and AvatarChatService:IsEnabled(settings, Enum.AvatarChatServiceFeature.PlaceVideo),
		AvatarChatService:IsEnabled(settings, Enum.AvatarChatServiceFeature.UniverseAudio)
			and AvatarChatService:IsEnabled(settings, Enum.AvatarChatServiceFeature.PlaceAudio)
	)

	Analytics:reportUserAccountSettings(
		AvatarChatService:IsEnabled(settings, Enum.AvatarChatServiceFeature.UserVideo),
		AvatarChatService:IsEnabled(settings, Enum.AvatarChatServiceFeature.UserAudio)
	)
end

function Initialize(player)
	inExperienceCoreGui = Instance.new("ScreenGui")
	inExperienceCoreGui.Name = "InExperienceCoreGui"
	inExperienceCoreGui.Parent = CoreGui
	--SelfView should be behind both the Settings and Chat Menu (< -1 DisplayOrder).
	inExperienceCoreGui.DisplayOrder = -2
	inExperienceCoreGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	local shouldBeEnabledCoreGuiSetting = getShouldBeEnabledCoreGuiSetting()

	Analytics:reportSelfViewEnabledInCoreGuiState(shouldBeEnabledCoreGuiSetting)

	if not shouldBeEnabledCoreGuiSetting and not debug then
		return
	end

	if GetFFlagAvatarChatServiceEnabled() then
		if AvatarChatService.ClientFeaturesInitialized then
			triggerAnalyticsReportExperienceSettings(AvatarChatService.ClientFeatures)
		else
			local clientFeaturesChangedListener
			clientFeaturesChangedListener = AvatarChatService:GetPropertyChangedSignal("ClientFeatures")
				:Connect(function()
					triggerAnalyticsReportExperienceSettings(AvatarChatService.ClientFeatures)
					clientFeaturesChangedListener:Disconnect()
				end)
		end
	end

	if FFlagFixUpdateMicIconCallBeforeReady then
		createViewport()
	end

	if getFFlagDoNotPromptCameraPermissionsOnMount() then
		getMicPermission()
		getCameraPermissionWithoutRequest()
		updateSelfViewButtonVisibility()
	else
		getPermissions()
	end
	if not FFlagFixUpdateMicIconCallBeforeReady then
		createViewport()
	end

	playerAdded(player)

	Players.PlayerAdded:Connect(playerAdded)
	Players.PlayerRemoving:Connect(function(player)
		if player == Players.LocalPlayer then
			clearObserver(Observer.HumanoidStateChanged)
			clearObserver(Observer.CharacterAdded)
			clearObserver(Observer.CharacterRemoving)
			clearClone()

			if FFlagRemoveVoiceJoiceDisconnectFix and voiceJoinProgressChangedConnection then
				voiceJoinProgressChangedConnection:Disconnect()
				voiceJoinProgressChangedConnection = nil
			end
		end
	end)

	connectToVoiceJoinProgressChanged()

	startRenderStepped(player)

	initialized = true

	--trigger opening self view here so it shows if cam enabled (before even voice enabled, as to be independent of voice/mic enabled/available)
	displaySelfieViewByDefault()
end

Initialize(Players.LocalPlayer)
