--[[
	This Roact component contains 3 buttons that deal with enabling/disabling
	permissions.

	- Device Microphone
	- Device Camera
	- Mute All
]]
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local FaceAnimatorService = game:GetService("FaceAnimatorService")
local StarterGui = game:GetService("StarterGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local VideoCaptureService = game:GetService("VideoCaptureService")

local Roact = require(CorePackages.Roact)
local UIBlox = require(CorePackages.UIBlox)
local t = require(CorePackages.Packages.t)
local PermissionsProtocol = require(CorePackages.Workspace.Packages.PermissionsProtocol).PermissionsProtocol.default

local toggleSelfViewSignal = require(RobloxGui.Modules.SelfView.toggleSelfViewSignal)
local selfViewVisibilityUpdatedSignal = require(RobloxGui.Modules.SelfView.selfViewVisibilityUpdatedSignal)
local getCamMicPermissions = require(RobloxGui.Modules.Settings.getCamMicPermissions)
local isCamEnabledForUserAndPlace = require(RobloxGui.Modules.Settings.isCamEnabledForUserAndPlace)
local displayCameraDeniedToast = require(RobloxGui.Modules.InGameChat.BubbleChat.Helpers.displayCameraDeniedToast)
local SelfViewAPI = require(RobloxGui.Modules.SelfView.publicApi)
local VoiceChatPromptType = require(RobloxGui.Modules.VoiceChatPrompt.PromptType)

local ExternalEventConnection = UIBlox.Utility.ExternalEventConnection
local Images = UIBlox.App.ImageSet.Images

local Modules = CoreGui.RobloxGui.Modules
local PermissionButton = require(Modules.Settings.Components.PermissionButton)
local RecordingIndicator = require(Modules.Settings.Components.RecordingIndicator)
local VoiceChatServiceManager = require(Modules.VoiceChat.VoiceChatServiceManager).default
local VoiceConstants = require(Modules.VoiceChat.Constants)
local log = require(RobloxGui.Modules.Logger):new(script.Name)

local GetFFlagInvertMuteAllPermissionButton = require(RobloxGui.Modules.Flags.GetFFlagInvertMuteAllPermissionButton)
local FFlagAvatarChatCoreScriptSupport = require(RobloxGui.Modules.Flags.FFlagAvatarChatCoreScriptSupport)
local GetFFlagUpdateSelfieViewOnBan = require(RobloxGui.Modules.Flags.GetFFlagUpdateSelfieViewOnBan)
local GetFFlagShowMicConnectingIconAndToast = require(RobloxGui.Modules.Flags.GetFFlagShowMicConnectingIconAndToast)
local FFlagMuteNonFriendsEvent = require(RobloxGui.Modules.Flags.FFlagMuteNonFriendsEvent)
local getFFlagDoNotPromptCameraPermissionsOnMount =
require(RobloxGui.Modules.Flags.getFFlagDoNotPromptCameraPermissionsOnMount)
local GetFFlagRemoveInGameChatBubbleChatReferences =
	require(RobloxGui.Modules.Flags.GetFFlagRemoveInGameChatBubbleChatReferences)
local GetFFlagJoinWithoutMicPermissions = require(RobloxGui.Modules.Flags.GetFFlagJoinWithoutMicPermissions)
local GetFFlagEnableInExpVoiceUpsell = require(RobloxGui.Modules.Flags.GetFFlagEnableInExpVoiceUpsell)
local GetFFlagPassShouldRequestPermsArg = require(RobloxGui.Modules.Flags.GetFFlagPassShouldRequestPermsArg)

if GetFFlagRemoveInGameChatBubbleChatReferences() then
	displayCameraDeniedToast = require(RobloxGui.Modules.VoiceChat.Helpers.displayCameraDeniedToast)
end

local Analytics = require(RobloxGui.Modules.SelfView.Analytics).new()
local VOICE_JOIN_PROGRESS = VoiceConstants.VOICE_JOIN_PROGRESS

local PermissionsButtons = Roact.PureComponent:extend("PermissionsButtons")

local PADDING_SIZE = 24
local SMALL_PADDING_SIZE = 10
local DIVIDER_HEIGHT = 24
local Y_HEIGHT = 38

local VIDEO_IMAGE = Images["icons/controls/video"]
local VIDEO_OFF_IMAGE = Images["icons/controls/videoOff"]
local MIC_IMAGE = Images["icons/controls/microphone"]
local MIC_OFF_IMAGE = Images["icons/controls/microphoneMute"]
local SELF_VIEW_IMAGE = Images["icons/controls/selfie"]
local SELF_VIEW_OFF_IMAGE = Images["icons/controls/selfieOff"]
local MUTE_ALL_IMAGE = Images["icons/controls/headphone"]
local UNMUTE_ALL_IMAGE = Images["icons/controls/headphoneDeafen"]
local JOIN_VOICE_IMAGE = Images["icons/controls/publicAudioJoin"]

PermissionsButtons.validateProps = t.strictInterface({
	isPortrait = t.boolean,
	isSmallTouchScreen = t.boolean,
	isTenFootInterface = t.boolean,
	ZIndex = t.number,
	LayoutOrder = t.number,
	shouldFillScreen = t.boolean,
	selfViewOpen = t.boolean,
	useNewMenuTheme = t.boolean,
})

local function createDivider(layoutOrder)
	return Roact.createElement("Frame", {
		LayoutOrder = layoutOrder,
		Size = UDim2.new(0, 2, 0, DIVIDER_HEIGHT),
		BorderSizePixel = 0,
		BackgroundTransparency = 0.2,
	}, {
		UICorner = Roact.createElement("UICorner", {
			CornerRadius = UDim.new(0.5, 0),
		}),
	})
end

function PermissionsButtons:init()
	-- @TODO: Remove VideoCaptureService.Active when FaceAnimatorService.VideoAnimationEnabled gives correct values for voice-enabled experiences
	-- Note that we have to add VideoCaptureService.Active here because FaceAnimatorService.VideoAnimationEnabled returns true for voice-enabled experiences
	local isUsingCamera = FaceAnimatorService
		and FaceAnimatorService:IsStarted()
		and FaceAnimatorService.VideoAnimationEnabled
		and VideoCaptureService.Active
	local microphoneEnabled = if VoiceChatServiceManager.localMuted ~= nil
			and not VoiceChatServiceManager.localMuted
		then true
		else false

	local showSelfView = FFlagAvatarChatCoreScriptSupport
		and StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView)
		and (self.state.hasCameraPermissions or self.state.hasMicPermissions)
	if getFFlagDoNotPromptCameraPermissionsOnMount() then
		showSelfView = FFlagAvatarChatCoreScriptSupport
			and StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView)
			and (isCamEnabledForUserAndPlace() or self.state.hasMicPermissions or self.state.hasCameraPermissions)
	end
	self:setState({
		allPlayersMuted = false,
		microphoneEnabled = microphoneEnabled,
		isVoiceConnecting = VoiceChatServiceManager.localMuted == nil,
		voiceServiceInitialized = false,
		cameraEnabled = isUsingCamera,
		selfViewOpen = self.props.selfViewOpen,
		showSelfView = showSelfView,
		hasCameraPermissions = false,
		hasMicPermissions = false,
	})

	if GetFFlagShowMicConnectingIconAndToast() then
		VoiceChatServiceManager:asyncInit()
			:andThen(function()
				local voiceService = VoiceChatServiceManager:getService()
				if voiceService then
					self:setState({
						voiceServiceInitialized = true,
					})

					-- Before we enable and join voice through the upsell, mic permissions state should be false. However
					-- after enabling and connecting to voice, the user should have provided mic permissions. We should
					-- confirm that we have mic permissions so we can change that state and update the UI accordingly.
					if GetFFlagEnableInExpVoiceUpsell() and GetFFlagPassShouldRequestPermsArg() and not self.state.hasMicPermissions then
						self:getMicPermission(false)
					end
				end
			end)
			:catch(function()
				log:warning("VoiceChatServiceManager failed to initialize")
			end)
	end

	self.selfViewVisibilityUpdatedSignal = selfViewVisibilityUpdatedSignal:connect(function()
		self:setState({
			selfViewOpen = SelfViewAPI.getSelfViewIsOpenAndVisible(),
		})
	end)

	-- Mute all players in the lobby
	self.toggleMuteAll = function()
		-- Ensure VCS is initialized.
		local voiceService = VoiceChatServiceManager:getService()
		if not voiceService then
			return
		end

		local newAllPlayersMuted = not self.state.allPlayersMuted
		VoiceChatServiceManager:MuteAll(newAllPlayersMuted, VoiceConstants.VOICE_CONTEXT_TYPE.IN_GAME_MENU)
		self:setState({
			allPlayersMuted = newAllPlayersMuted,
		})
	end

	-- Sets only the icon
	self.toggleMuteAllIcon = function(allPlayersMuted)
		local newAllPlayersMuted = allPlayersMuted
		self:setState({
			allPlayersMuted = newAllPlayersMuted,
		})
	end

	-- toggle mic permissions
	self.toggleMic = function()
		if GetFFlagShowMicConnectingIconAndToast() and self.state.isVoiceConnecting then
			VoiceChatServiceManager:ShowVoiceChatLoadingMessage()
			return
		end
		-- Ensure VCS is initialized.
		local voiceService = VoiceChatServiceManager:getService()
		if not voiceService then
			return
		end

		VoiceChatServiceManager:ToggleMic("InGameMenuPermissionsBar")

		Analytics:setLastCtx("inExperienceEscapeMenu")

		self:setState({
			microphoneEnabled = not VoiceChatServiceManager.localMuted,
		})
	end

	-- toggle video permissions
	self.toggleVideo = function()
		if not FaceAnimatorService or not FaceAnimatorService:IsStarted() then
			return
		end

		FaceAnimatorService.VideoAnimationEnabled = not FaceAnimatorService.VideoAnimationEnabled

		Analytics:setLastCtx("inExperienceEscapeMenu")

		self:setState({
			cameraEnabled = FaceAnimatorService.VideoAnimationEnabled,
		})
	end

	-- toggle video permissions and request device permissions if denied
	self.onVideoButtonPressed = function()
		if getFFlagDoNotPromptCameraPermissionsOnMount() and not self.state.hasCameraPermissions then
			-- If the user has not granted permissions
			local callback = function(response)
				self:setState({
					hasCameraPermissions = response.hasCameraPermissions,
				})
				if response.hasCameraPermissions then
					self:toggleVideo()
				else
					displayCameraDeniedToast()
				end
			end
			getCamMicPermissions(callback, { PermissionsProtocol.Permissions.CAMERA_ACCESS :: string })
		else
			-- If the user has granted camera deveice permissions
			self:toggleVideo()
		end
	end

	-- toggle self view visibility
	self.toggleSelfView = function()
		toggleSelfViewSignal:fire()
		self:setState({
			selfViewOpen = not self.state.selfViewOpen,
		})
	end

	self.muteChangedEvent = function(muted)
		self:setState({
			microphoneEnabled = not muted,
		})
	end

	self.onSelfViewVisibilityUpdated = function()
		self:setState({
			selfViewOpen = SelfViewAPI.getSelfViewIsOpenAndVisible(),
		})
	end

	self.onCoreGuiChanged = function()
		local coreGuiState = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView)
		if self.state.showSelfView ~= coreGuiState then
			local showSelfView = FFlagAvatarChatCoreScriptSupport
				and coreGuiState
				and (self.state.hasCameraPermissions or self.state.hasMicPermissions)
			if getFFlagDoNotPromptCameraPermissionsOnMount() then
				showSelfView = FFlagAvatarChatCoreScriptSupport
					and StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView)
					and (
						isCamEnabledForUserAndPlace()
						or self.state.hasMicPermissions
						or self.state.hasCameraPermissions
					)
			end
			self:setState({
				showSelfView = showSelfView,
			})
		end
	end

	self.updateVideoCaptureEnabled = function()
		self:setState({
			cameraEnabled = FaceAnimatorService.VideoAnimationEnabled,
		})
	end

	if GetFFlagShowMicConnectingIconAndToast() then
		self.onVoiceStateChange = function(oldState, newState)
			local voiceManagerState = VoiceChatServiceManager:GetVoiceStateFromEnum(newState)
			local inConnectingState = voiceManagerState == VoiceChatServiceManager.VOICE_STATE.CONNECTING

			if not inConnectingState and self.state.isVoiceConnecting then
				self:setState({
					isVoiceConnecting = false,
				})
			end
		end
	end

	self.onJoinVoicePressed = function()
		local ageVerificationResponse = VoiceChatServiceManager:FetchAgeVerificationOverlay()
		local voiceInExpUpsellVariant = ageVerificationResponse.showVoiceInExperienceUpsellVariant

		if VoiceChatServiceManager:UserOnlyEligibleForVoice() then
			VoiceChatServiceManager:SetInExpUpsellEntrypoint(VoiceConstants.IN_EXP_UPSELL_ENTRYPOINTS.JOIN_VOICE)

			local promptToShow = VoiceChatServiceManager:GetInExpUpsellPromptFromEnum(voiceInExpUpsellVariant)
			VoiceChatServiceManager:showPrompt(promptToShow)
		elseif VoiceChatServiceManager:UserVoiceEnabled() and not self.state.hasMicPermissions then
			VoiceChatServiceManager:showPrompt(VoiceChatPromptType.Permission)
		end
	end

	self.voiceJoinProgressCallback = function(state)
		if state == VOICE_JOIN_PROGRESS.Joined then
			-- When we enable and join voice through this button, we unmute the user
			if VoiceChatServiceManager.inExpUpsellEntrypoint == VoiceConstants.IN_EXP_UPSELL_ENTRYPOINTS.JOIN_VOICE then
				VoiceChatServiceManager:ToggleMic()
				VoiceChatServiceManager:showPrompt(VoiceChatPromptType.VoiceConsentAcceptedToast)
			end
		end
	end
end

--[[
	Check if Roblox has permissions for camera/mic access.
]]
function PermissionsButtons:getPermissions()
	local callback = function(response)
		self:setState({
			hasCameraPermissions = response.hasCameraPermissions,
			hasMicPermissions = response.hasMicPermissions,
		})
	end
	getCamMicPermissions(callback, nil, nil, "PermissionsButtons.getPermissions")
end

--[[
	Check if Roblox has permissions for mic access only.
]]
function PermissionsButtons:getMicPermission(shouldRequestPerms: boolean?)
	local callback = function(response)
		self:setState({
			hasMicPermissions = response.hasMicPermissions,
		})
	end
	getCamMicPermissions(
		callback,
		{ PermissionsProtocol.Permissions.MICROPHONE_ACCESS :: string },
		if GetFFlagPassShouldRequestPermsArg() and shouldRequestPerms ~= nil then not shouldRequestPerms else nil,
		"PermissionsButtons.getMicPermission"
	)
end

--[[
	Check if Roblox has permissions for camera access only without requesting.
]]
function PermissionsButtons:getCameraPermissionWithoutRequest()
	local callback = function(response)
		self:setState({
			hasCameraPermissions = response.hasCameraPermissions,
		})
	end
	getCamMicPermissions(callback, { PermissionsProtocol.Permissions.CAMERA_ACCESS :: string }, true)
end

function PermissionsButtons:getCameraButtonVisibleAtMount()
	return isCamEnabledForUserAndPlace()
end

function PermissionsButtons:getJoinVoiceButtonVisibleAtMount()
	local userInInExperienceUpsellTreatment = VoiceChatServiceManager:UserInInExperienceUpsellTreatment()
	local userVoiceUpsellEligible = VoiceChatServiceManager:UserOnlyEligibleForVoice()
		or (VoiceChatServiceManager:UserVoiceEnabled() and not self.state.hasMicPermissions)
	return userInInExperienceUpsellTreatment and userVoiceUpsellEligible
end

function PermissionsButtons:didUpdate(prevProps, prevState)
	local coreGuiState = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView)
	if
		self.state.hasCameraPermissions ~= prevState.hasCameraPermissions
		or self.state.hasMicPermissions ~= prevState.hasMicPermissions
	then
		local showSelfView = FFlagAvatarChatCoreScriptSupport
			and coreGuiState
			and (self.state.hasCameraPermissions or self.state.hasMicPermissions)
		if getFFlagDoNotPromptCameraPermissionsOnMount() then
			showSelfView = FFlagAvatarChatCoreScriptSupport
				and StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView)
				and (isCamEnabledForUserAndPlace() or self.state.hasMicPermissions or self.state.hasCameraPermissions)
		end
		self:setState({
			showSelfView = showSelfView,
		})
	end
end

function PermissionsButtons:didMount()
	if getFFlagDoNotPromptCameraPermissionsOnMount() then
		self:getMicPermission()
		self:getCameraPermissionWithoutRequest()
	else
		self:getPermissions()
	end
end

function PermissionsButtons:isShowingPermissionButtons()
	if getFFlagDoNotPromptCameraPermissionsOnMount() then
		return self.state.hasMicPermissions
			or self.state.hasCameraPermissions
			or self.state.showSelfView
			or self:getCameraButtonVisibleAtMount()
			or (GetFFlagEnableInExpVoiceUpsell() and self:getJoinVoiceButtonVisibleAtMount())
	end
	return self.state.hasMicPermissions or self.state.hasCameraPermissions or self.state.showSelfView
end

function PermissionsButtons:render()
	local shouldShowMicButtons = self.state.hasMicPermissions
	if GetFFlagUpdateSelfieViewOnBan() then
		shouldShowMicButtons = self.state.hasMicPermissions and not VoiceChatServiceManager:VoiceChatEnded()
	end
	if GetFFlagJoinWithoutMicPermissions() then
		shouldShowMicButtons = self.state.voiceServiceInitialized and not VoiceChatServiceManager:VoiceChatEnded()
	end
	local shouldShowCameraButtons = self.state.hasCameraPermissions
	if getFFlagDoNotPromptCameraPermissionsOnMount() then
		-- Show the camera button if the camera is enabled + eligible in user settings and camera is enabled in experience
		shouldShowCameraButtons = self:getCameraButtonVisibleAtMount()
	end
	-- Show join voice button in voice enabled experiences, for voice eligible users who haven't enabled voice and voice enabled users with denied mic permissions
	local shouldShowJoinVoiceButton = GetFFlagEnableInExpVoiceUpsell() and self:getJoinVoiceButtonVisibleAtMount()

	local showMuteAll = if GetFFlagInvertMuteAllPermissionButton()
		then not self.state.allPlayersMuted
		else self.state.allPlayersMuted
	local isTopCloseButton = (
		not self.props.isPortrait
		and not self.props.isTenFootInterface
		and not self.props.isSmallTouchScreen
	) or self.props.useNewMenuTheme
	local shouldShowRecordingIndicator = (
		not GetFFlagShowMicConnectingIconAndToast() or not self.state.isVoiceConnecting
	) and shouldShowMicButtons
	local micImage = MIC_IMAGE
	local micImageLabelProps = nil
	if GetFFlagShowMicConnectingIconAndToast() and self.state.isVoiceConnecting then
		micImage = VoiceChatServiceManager:GetIcon("Connecting", "New")
		micImageLabelProps = { Size = UDim2.fromOffset(14, 22), Position = UDim2.fromOffset(9, 4) }
	elseif not self.state.microphoneEnabled then
		micImage = MIC_OFF_IMAGE
	end

	return self:isShowingPermissionButtons()
		and Roact.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY,
			ZIndex = self.props.ZIndex,
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(self.props.shouldFillScreen and 1 or 0, 0, 0, 0),
			AnchorPoint = if isTopCloseButton then Vector2.new(0, 0) else Vector2.new(0.5, 0.5),
			LayoutOrder = self.props.LayoutOrder,
			Visible = not self.props.isTenFootInterface, -- Not Visible on Xbox
		}, {
			UIPaddingPermissionsContainer = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, if self.props.isSmallTouchScreen then 54 else 74), -- Close Button location
				PaddingTop = UDim.new(0, 4), -- Top Padding from button to edge of screen
			}),
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, if self.props.isSmallTouchScreen then SMALL_PADDING_SIZE else PADDING_SIZE),
			}),
			Divider1 = createDivider(1),
			Container = Roact.createElement("Frame", {
				AutomaticSize = Enum.AutomaticSize.X,
				Size = UDim2.fromOffset(0, Y_HEIGHT),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				LayoutOrder = 2,
			}, {
				UIListLayoutPermissionsContainer = Roact.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, if self.props.isSmallTouchScreen then SMALL_PADDING_SIZE else PADDING_SIZE),
				}),
				if GetFFlagUpdateSelfieViewOnBan()
					then shouldShowMicButtons and Roact.createElement(PermissionButton, {
						LayoutOrder = 1,
						image = if showMuteAll then MUTE_ALL_IMAGE else UNMUTE_ALL_IMAGE,
						callback = self.toggleMuteAll,
						useNewMenuTheme = self.props.useNewMenuTheme,
					})
					else Roact.createElement(PermissionButton, {
						LayoutOrder = 1,
						image = if showMuteAll then MUTE_ALL_IMAGE else UNMUTE_ALL_IMAGE,
						callback = self.toggleMuteAll,
						useNewMenuTheme = self.props.useNewMenuTheme,
					}),
				JoinVoiceButton = shouldShowJoinVoiceButton and Roact.createElement(PermissionButton, {
					LayoutOrder = 2,
					image = JOIN_VOICE_IMAGE,
					callback = self.onJoinVoicePressed,
					useNewMenuTheme = self.props.useNewMenuTheme,
				}),
				ToggleMicButton = shouldShowMicButtons and Roact.createElement(PermissionButton, {
					LayoutOrder = if GetFFlagEnableInExpVoiceUpsell() then 3 else 2,
					image = micImage,
					callback = self.toggleMic,
					useNewMenuTheme = self.props.useNewMenuTheme,
					imageLabelProps = micImageLabelProps,
				}),
				EnableVideoButton = shouldShowCameraButtons and Roact.createElement(PermissionButton, {
					LayoutOrder = if GetFFlagEnableInExpVoiceUpsell() then 4 else 3,
					image = if self.state.cameraEnabled then VIDEO_IMAGE else VIDEO_OFF_IMAGE,
					callback = if getFFlagDoNotPromptCameraPermissionsOnMount()
						then self.onVideoButtonPressed
						else self.toggleVideo,
					useNewMenuTheme = self.props.useNewMenuTheme,
				}),
				EnableSelfViewButton = self.state.showSelfView and Roact.createElement(PermissionButton, {
					LayoutOrder = if GetFFlagEnableInExpVoiceUpsell() then 5 else 4,
					image = if self.state.selfViewOpen then SELF_VIEW_IMAGE else SELF_VIEW_OFF_IMAGE,
					callback = self.toggleSelfView,
					useNewMenuTheme = self.props.useNewMenuTheme,
				}),
			}),
			Divider2 = createDivider(5),
			RecordingIndicator = shouldShowRecordingIndicator and Roact.createElement(RecordingIndicator, {
				micOn = self.state.microphoneEnabled,
				hasMicPermissions = self.state.hasMicPermissions,
				isSmallTouchScreen = self.props.isSmallTouchScreen,
			}),
			MuteChangedEvent = Roact.createElement(ExternalEventConnection, {
				event = VoiceChatServiceManager.muteChanged.Event,
				callback = self.muteChangedEvent,
			}),
			SelfViewChangedEvent = Roact.createElement(ExternalEventConnection, {
				event = StarterGui.CoreGuiChangedSignal,
				callback = self.onCoreGuiChanged,
			}),
			MuteAllChangedEvent = Roact.createElement(ExternalEventConnection, {
				event = VoiceChatServiceManager.muteAllChanged.Event,
				callback = self.toggleMuteAllIcon,
			}),
			VideoCaptureEnabledEvent = Roact.createElement(ExternalEventConnection, {
				event = FaceAnimatorService:GetPropertyChangedSignal("VideoAnimationEnabled"),
				callback = self.updateVideoCaptureEnabled,
			}),
			VoiceStateChangeEvent = if GetFFlagShowMicConnectingIconAndToast()
					and self.state.voiceServiceInitialized
				then Roact.createElement(ExternalEventConnection, {
					event = VoiceChatServiceManager:getService().StateChanged,
					callback = self.onVoiceStateChange,
				})
				else nil,
			MuteNonFriendsEvent = if FFlagMuteNonFriendsEvent
				then Roact.createElement(ExternalEventConnection, {
					event = VoiceChatServiceManager.mutedNonFriends.Event,
					callback = function()
						self.toggleMuteAllIcon(false)
					end,
				})
				else nil,
			VoiceJoinProgressChanged = if GetFFlagEnableInExpVoiceUpsell()
				then Roact.createElement(ExternalEventConnection, {
					event = VoiceChatServiceManager.VoiceJoinProgressChanged.Event,
					callback = self.voiceJoinProgressCallback,
				}) else nil,
		})
end

function PermissionsButtons:willUnmount()
	if self.selfViewVisibilityUpdatedSignal then
		self.selfViewVisibilityUpdatedSignal:disconnect()
		self.selfViewVisibilityUpdatedSignal = nil
	end
end

return PermissionsButtons
