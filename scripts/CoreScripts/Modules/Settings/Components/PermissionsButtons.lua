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
local AnalyticsService = game:GetService("RbxAnalyticsService")
local IXPService = game:GetService("IXPService")
local AppStorageService = game:GetService("AppStorageService")

local Roact = require(CorePackages.Packages.Roact)
local UIBlox = require(CorePackages.Packages.UIBlox)
local t = require(CorePackages.Packages.t)
local PermissionsProtocol = require(CorePackages.Workspace.Packages.PermissionsProtocol).PermissionsProtocol.default

local toggleSelfViewSignal = require(RobloxGui.Modules.SelfView.toggleSelfViewSignal)
local selfViewVisibilityUpdatedSignal = require(RobloxGui.Modules.SelfView.selfViewVisibilityUpdatedSignal)
local getCamMicPermissions = require(RobloxGui.Modules.Settings.getCamMicPermissions)
local isCamEnabledForUserAndPlace = require(RobloxGui.Modules.Settings.isCamEnabledForUserAndPlace)
local displayCameraDeniedToast = require(RobloxGui.Modules.VoiceChat.Helpers.displayCameraDeniedToast)
local SelfViewAPI = require(RobloxGui.Modules.SelfView.publicApi)
local VoiceChatPromptType = require(RobloxGui.Modules.VoiceChatPrompt.PromptType)

local ExternalEventConnection = UIBlox.Utility.ExternalEventConnection
local Images = UIBlox.App.ImageSet.Images

local Modules = CoreGui.RobloxGui.Modules
local PermissionButton = require(Modules.Settings.Components.PermissionButton)
local RecordingIndicator = require(Modules.Settings.Components.RecordingIndicator)
local VoiceChatServiceManager = require(Modules.VoiceChat.VoiceChatServiceManager).default
local VoiceConstants = require(Modules.VoiceChat.Constants)
local log = require(CorePackages.Workspace.Packages.CoreScriptsInitializer).CoreLogger:new(script.Name)

local GetFFlagInvertMuteAllPermissionButton = require(RobloxGui.Modules.Flags.GetFFlagInvertMuteAllPermissionButton)
local FFlagAvatarChatCoreScriptSupport =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAvatarChatCoreScriptSupport()
local GetFFlagUpdateSelfieViewOnBan = require(RobloxGui.Modules.Flags.GetFFlagUpdateSelfieViewOnBan)
local GetFFlagJoinWithoutMicPermissions =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagJoinWithoutMicPermissions
local EngineFeatureRbxAnalyticsServiceExposePlaySessionId =
	game:GetEngineFeature("RbxAnalyticsServiceExposePlaySessionId")
local GetFFlagFixPermissionsButtonsEvents =
	require(RobloxGui.Modules.Settings.Flags.GetFFlagFixPermissionsButtonsEvents)
local GetFStringVoiceUpsellLayer = require(CorePackages.Workspace.Packages.SharedFlags).GetFStringVoiceUpsellLayer
local GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints
local GetFFlagEnableConnectDisconnectInSettingsAndChrome =
	require(RobloxGui.Modules.Flags.GetFFlagEnableConnectDisconnectInSettingsAndChrome)

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
local LEAVE_VOICE_IMAGE = Images["icons/controls/publicAudioLeave"]

PermissionsButtons.validateProps = t.strictInterface({
	isPortrait = t.boolean,
	isSmallTouchScreen = t.boolean,
	isTenFootInterface = t.boolean,
	ZIndex = t.number,
	LayoutOrder = t.number,
	shouldFillScreen = t.boolean,
	selfViewOpen = t.boolean,
	useNewMenuTheme = t.boolean,
	hubRef = t.any,
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
		and (isCamEnabledForUserAndPlace() or self.state.hasMicPermissions or self.state.hasCameraPermissions)

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
		isFetchingMicPermissions = true,
	})

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
				if not self.state.hasMicPermissions then
					self:getMicPermission(false)
				end
			end
		end)
		:catch(function()
			log:warning("VoiceChatServiceManager failed to initialize")
		end)

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
		if self.state.isVoiceConnecting then
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

	-- voice UI visibility
	self:setState({
		isVoiceUIVisible = if VoiceChatServiceManager.voiceUIVisible ~= nil
			then VoiceChatServiceManager.voiceUIVisible
			else false,
	})

	VoiceChatServiceManager.showVoiceUI.Event:Connect(function()
		self:setState({
			isVoiceUIVisible = true,
		})
	end)
	VoiceChatServiceManager.hideVoiceUI.Event:Connect(function()
		self:setState({
			isVoiceUIVisible = false,
		})
	end)

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
		if not self.state.hasCameraPermissions then
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
				and StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView)
				and (isCamEnabledForUserAndPlace() or self.state.hasMicPermissions or self.state.hasCameraPermissions)
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

	self.onVoiceStateChange = function(oldState, newState)
		local voiceManagerState = VoiceChatServiceManager:GetVoiceStateFromEnum(newState)
		local inConnectingState = voiceManagerState == VoiceChatServiceManager.VOICE_STATE.CONNECTING

		if not inConnectingState and self.state.isVoiceConnecting then
			self:setState({
				isVoiceConnecting = false,
			})
		end
	end

	self.onJoinVoicePressed = function()
		local ageVerificationResponse = VoiceChatServiceManager:FetchAgeVerificationOverlay()
		local voiceInExpUpsellVariant = ageVerificationResponse.showVoiceInExperienceUpsellVariant

		if VoiceChatServiceManager.previousGroupId then
			-- previously joined voice and left in the same session
			VoiceChatServiceManager:RejoinPreviousChannel()
			VoiceChatServiceManager:showPrompt(VoiceChatPromptType.JoinVoice)
			VoiceChatServiceManager:ShowVoiceUI()
		elseif VoiceChatServiceManager.isShowingFTUX then
			-- NewUsers seeing FTUX
			VoiceChatServiceManager.hideFTUXSignal:Fire()
			VoiceChatServiceManager:HideFTUX(AppStorageService)
		elseif VoiceChatServiceManager:UserVoiceEnabled() then
			-- First time joining voice this session
			VoiceChatServiceManager.attemptVoiceRejoin:Fire()
		elseif VoiceChatServiceManager:UserOnlyEligibleForVoice() then
			-- Opted out users
			VoiceChatServiceManager:SetInExpUpsellEntrypoint(VoiceConstants.IN_EXP_UPSELL_ENTRYPOINTS.JOIN_VOICE)
			if voiceInExpUpsellVariant == nil then
				-- Default to variant 1 for QA testing.
				voiceInExpUpsellVariant = VoiceConstants.IN_EXP_UPSELL_VARIANT.VARIANT1
			end
			local promptToShow = VoiceChatServiceManager:GetInExpUpsellPromptFromEnum(voiceInExpUpsellVariant)
			VoiceChatServiceManager:showPrompt(promptToShow)
		elseif
			GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints()
			and not VoiceChatServiceManager:UserVoiceEnabled()
			and VoiceChatServiceManager:FetchPhoneVerificationUpsell(VoiceConstants.IN_EXP_PHONE_UPSELL_IXP_LAYER)
				== VoiceConstants.PHONE_UPSELL_VALUE_PROP.VoiceChat
		then
			-- Close menu with no animation before we open the phone upsell modal
			self.props.hubRef:SetVisibility(false, true)
			VoiceChatServiceManager:ShowInExperiencePhoneVoiceUpsell(
				VoiceConstants.IN_EXP_UPSELL_ENTRYPOINTS.JOIN_VOICE,
				VoiceConstants.IN_EXP_PHONE_UPSELL_IXP_LAYER
			)
		end

    if VoiceChatServiceManager:getService() then
		local stateChangedConnection: RBXScriptConnection
		stateChangedConnection = VoiceChatServiceManager:getService().StateChanged
			:Connect(function(_oldState, newState)
				if _oldState ~= newState then
					VoiceChatServiceManager.Analytics:reportJoinVoiceButtonEventWithVoiceSessionId(
						"clicked",
						VoiceChatServiceManager:GetConnectDisconnectButtonAnalyticsData(true)
					)
					stateChangedConnection:Disconnect()
				end
			end)
    else
      VoiceChatServiceManager.Analytics:reportJoinVoiceButtonEventWithVoiceSessionId(
        "clicked",
        VoiceChatServiceManager:GetConnectDisconnectButtonAnalyticsData(false)
      )
    end
	end

	self.onLeaveVoicePressed = function()
		VoiceChatServiceManager.Analytics:reportLeaveVoiceButtonEvent(
			"clicked",
			VoiceChatServiceManager:GetConnectDisconnectButtonAnalyticsData(true)
		)
		VoiceChatServiceManager:Leave()
		if not GetFFlagEnableConnectDisconnectInSettingsAndChrome() then
			VoiceChatServiceManager:SetVoiceConnectCookieValue(false)
		end
	end

	self.voiceJoinProgressCallback = function(state)
		if state == VOICE_JOIN_PROGRESS.Joined then
			-- When we enable and join voice through this button, we unmute the user
			if VoiceChatServiceManager.inExpUpsellEntrypoint == VoiceConstants.IN_EXP_UPSELL_ENTRYPOINTS.JOIN_VOICE then
				VoiceChatServiceManager:ToggleMic()
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
			isFetchingMicPermissions = false,
		})
	end
	getCamMicPermissions(
		callback,
		{ PermissionsProtocol.Permissions.MICROPHONE_ACCESS :: string },
		if shouldRequestPerms ~= nil then not shouldRequestPerms else nil,
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
	-- M3 Treatment
	if VoiceChatServiceManager:IsSeamlessVoice() then
		return not self.state.isVoiceUIVisible or VoiceChatServiceManager.isShowingFTUX
	end

	-- M1 Treatment/M3 Control
	local userInInExperienceUpsellTreatment
	if VoiceChatServiceManager:UserVoiceEnabled() then
		-- We may still be waiting for user to accept or deny mic permissions. If we are still waiting, don't show join voice button yet
		if self.state.isFetchingMicPermissions then
			return false
		end

		-- If we don't have mic permissions, the user may see the join voice button if they're part of the treatment group
		if not self.state.hasMicPermissions then
			local ageVerificationOverlayData = VoiceChatServiceManager:FetchAgeVerificationOverlay(false)
			if ageVerificationOverlayData and ageVerificationOverlayData.elegibleToSeeVoiceUpsell then
				local FStringVoiceUpsellLayer = GetFStringVoiceUpsellLayer()
				if FStringVoiceUpsellLayer ~= "" then
					IXPService:LogUserLayerExposure(FStringVoiceUpsellLayer)
				end
			end
			userInInExperienceUpsellTreatment = VoiceChatServiceManager:UserInInExperienceUpsellTreatment()
			return userInInExperienceUpsellTreatment
		end
	end

	local userVoiceUpsellEligible = VoiceChatServiceManager:UserOnlyEligibleForVoice()
	-- Order matters here, we want to short circuit to avoid the fetch when the user is already voice enabled
	if
		GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints()
		and not userVoiceUpsellEligible
		and not VoiceChatServiceManager:UserVoiceEnabled()
		and VoiceChatServiceManager:FetchPhoneVerificationUpsell(VoiceConstants.IN_EXP_PHONE_UPSELL_IXP_LAYER)
			== VoiceConstants.PHONE_UPSELL_VALUE_PROP.VoiceChat
	then
		return true
	end

	-- Don't fetch age verification overlay data if user is not only voice eligible
	if not userVoiceUpsellEligible then
		return false
	end
	userInInExperienceUpsellTreatment = VoiceChatServiceManager:UserInInExperienceUpsellTreatment()
	return userInInExperienceUpsellTreatment
end

function PermissionsButtons:getLeaveVoiceButtonVisibleAtMount()
	return false
end

function PermissionsButtons:didUpdate(prevProps, prevState)
	if
		self.state.hasCameraPermissions ~= prevState.hasCameraPermissions
		or self.state.hasMicPermissions ~= prevState.hasMicPermissions
		or self.state.isVoiceUIVisible ~= prevState.isVoiceUIVisible
	then
		local showSelfView = FFlagAvatarChatCoreScriptSupport
			and StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView)
			and (isCamEnabledForUserAndPlace() or self.state.hasMicPermissions or self.state.hasCameraPermissions)
		self:setState({
			showSelfView = showSelfView,
		})
	end
end

function PermissionsButtons:didMount()
	self:getMicPermission(
		if GetFFlagJoinWithoutMicPermissions() then not VoiceChatServiceManager:IsSeamlessVoice() else nil
	)
	self:getCameraPermissionWithoutRequest()
end

function PermissionsButtons:isShowingPermissionButtons()
	if GetFFlagJoinWithoutMicPermissions() then
		return (
			self.state.voiceServiceInitialized
			and not VoiceChatServiceManager:VoiceChatEnded()
			and self.state.isVoiceUIVisible
		)
			or self.state.hasCameraPermissions
			or self.state.showSelfView
			or self:getCameraButtonVisibleAtMount()
			or self:getJoinVoiceButtonVisibleAtMount()
	else
		return self.state.hasMicPermissions
			or self.state.hasCameraPermissions
			or self.state.showSelfView
			or self:getCameraButtonVisibleAtMount()
			or self:getJoinVoiceButtonVisibleAtMount()
	end
end

function PermissionsButtons:GetInExpJoinVoiceAnalyticsData()
	local sessionId = ""
	if EngineFeatureRbxAnalyticsServiceExposePlaySessionId then
		sessionId = AnalyticsService:GetPlaySessionId()
	end
	return game.GameId, game.PlaceId, sessionId
end

function PermissionsButtons:render()
	local shouldShowMicButtons = self.state.hasMicPermissions
	if GetFFlagUpdateSelfieViewOnBan() then
		shouldShowMicButtons = self.state.hasMicPermissions and not VoiceChatServiceManager:VoiceChatEnded()
	end
	if GetFFlagJoinWithoutMicPermissions() then
		shouldShowMicButtons = self.state.voiceServiceInitialized
	end

	-- Mic button should only show if voice UI is visible and it is not a new user's first time joining voice
	shouldShowMicButtons = shouldShowMicButtons
		and self.state.isVoiceUIVisible
		and not VoiceChatServiceManager.isShowingFTUX

	-- Show the camera button if the camera is enabled + eligible in user settings and camera is enabled in experience
	local shouldShowCameraButtons = self:getCameraButtonVisibleAtMount()
	-- Show join voice button in voice enabled experiences, for voice eligible users who haven't enabled voice and voice enabled users with denied mic permissions
	local shouldShowJoinVoiceButton = self:getJoinVoiceButtonVisibleAtMount()
	local shouldShowLeaveVoiceButton = self:getLeaveVoiceButtonVisibleAtMount()

	local showMuteAll = if GetFFlagInvertMuteAllPermissionButton()
		then not self.state.allPlayersMuted
		else self.state.allPlayersMuted
	local isTopCloseButton = (
		not self.props.isPortrait
		and not self.props.isTenFootInterface
		and not self.props.isSmallTouchScreen
	) or self.props.useNewMenuTheme
	local shouldShowRecordingIndicator = not self.state.isVoiceConnecting and shouldShowMicButtons
	local micImage = MIC_IMAGE
	local micImageLabelProps = nil
	if self.state.isVoiceConnecting then
		micImage = VoiceChatServiceManager:GetIcon("Connecting", "New")
		micImageLabelProps = { Size = UDim2.fromOffset(14, 22), Position = UDim2.fromOffset(9, 4) }
	elseif not self.state.microphoneEnabled then
		micImage = MIC_OFF_IMAGE
	end

	return if GetFFlagFixPermissionsButtonsEvents()
		then Roact.createFragment({
			Frame = self:isShowingPermissionButtons() and Roact.createElement("Frame", {
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
						Padding = UDim.new(
							0,
							if self.props.isSmallTouchScreen then SMALL_PADDING_SIZE else PADDING_SIZE
						),
					}),
					if GetFFlagUpdateSelfieViewOnBan()
						then shouldShowMicButtons and Roact.createElement(PermissionButton, {
							LayoutOrder = 2 ,
							image = if showMuteAll then MUTE_ALL_IMAGE else UNMUTE_ALL_IMAGE,
							callback = self.toggleMuteAll,
							useNewMenuTheme = self.props.useNewMenuTheme,
						})
						else Roact.createElement(PermissionButton, {
							LayoutOrder = 2 ,
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
					LeaveVoiceButton = shouldShowLeaveVoiceButton and Roact.createElement(PermissionButton, {
						LayoutOrder = 1,
						image = LEAVE_VOICE_IMAGE,
						callback = self.onLeaveVoicePressed,
						useNewMenuTheme = self.props.useNewMenuTheme,
					}),
					ToggleMicButton = shouldShowMicButtons and Roact.createElement(PermissionButton, {
						LayoutOrder = 3,
						image = micImage,
						callback = self.toggleMic,
						useNewMenuTheme = self.props.useNewMenuTheme,
						imageLabelProps = micImageLabelProps,
					}),
					EnableVideoButton = shouldShowCameraButtons and Roact.createElement(PermissionButton, {
						LayoutOrder = 4,
						image = if self.state.cameraEnabled then VIDEO_IMAGE else VIDEO_OFF_IMAGE,
						callback = self.onVideoButtonPressed,
						useNewMenuTheme = self.props.useNewMenuTheme,
					}),
					EnableSelfViewButton = self.state.showSelfView and Roact.createElement(PermissionButton, {
						LayoutOrder = 5,
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
			}),
			Events = Roact.createFragment({
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
				VoiceStateChangeEvent = if self.state.voiceServiceInitialized
					then Roact.createElement(ExternalEventConnection, {
						event = VoiceChatServiceManager:getService().StateChanged,
						callback = self.onVoiceStateChange,
					})
					else nil,
				MuteNonFriendsEvent = Roact.createElement(ExternalEventConnection, {
					event = VoiceChatServiceManager.mutedNonFriends.Event,
					callback = function()
						self.toggleMuteAllIcon(false)
					end,
				}),
				VoiceJoinProgressChanged = Roact.createElement(ExternalEventConnection, {
					event = VoiceChatServiceManager.VoiceJoinProgressChanged.Event,
					callback = self.voiceJoinProgressCallback,
				}),
			}),
		})
		else self:isShowingPermissionButtons()
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
						Padding = UDim.new(
							0,
							if self.props.isSmallTouchScreen then SMALL_PADDING_SIZE else PADDING_SIZE
						),
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
						LayoutOrder = 3,
						image = micImage,
						callback = self.toggleMic,
						useNewMenuTheme = self.props.useNewMenuTheme,
						imageLabelProps = micImageLabelProps,
					}),
					EnableVideoButton = shouldShowCameraButtons and Roact.createElement(PermissionButton, {
						LayoutOrder = 4,
						image = if self.state.cameraEnabled then VIDEO_IMAGE else VIDEO_OFF_IMAGE,
						callback = self.onVideoButtonPressed,
						useNewMenuTheme = self.props.useNewMenuTheme,
					}),
					EnableSelfViewButton = self.state.showSelfView and Roact.createElement(PermissionButton, {
						LayoutOrder = 5,
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
				VoiceStateChangeEvent = if self.state.voiceServiceInitialized
					then Roact.createElement(ExternalEventConnection, {
						event = VoiceChatServiceManager:getService().StateChanged,
						callback = self.onVoiceStateChange,
					})
					else nil,
				MuteNonFriendsEvent = Roact.createElement(ExternalEventConnection, {
					event = VoiceChatServiceManager.mutedNonFriends.Event,
					callback = function()
						self.toggleMuteAllIcon(false)
					end,
				}),
				VoiceJoinProgressChanged = Roact.createElement(ExternalEventConnection, {
					event = VoiceChatServiceManager.VoiceJoinProgressChanged.Event,
					callback = self.voiceJoinProgressCallback,
				}),
			})
end

function PermissionsButtons:willUnmount()
	if self.selfViewVisibilityUpdatedSignal then
		self.selfViewVisibilityUpdatedSignal:disconnect()
		self.selfViewVisibilityUpdatedSignal = nil
	end
end

return PermissionsButtons
