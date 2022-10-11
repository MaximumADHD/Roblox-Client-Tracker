local Plugin = script.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Focus = ContextServices.Focus
local CoreGui = game:GetService("CoreGui")
local RigUtils = require(Plugin.Src.Util.RigUtils)
local Constants = require(Plugin.Src.Util.Constants)
local LoadRecorderFrames = require(Plugin.Src.Thunks.Recording.LoadRecorderFrames)
local SetFacialRecordingMode = require(Plugin.Src.Thunks.Recording.SetFacialRecordingMode)
local SetHaveToSetBackToNotLooping = require(Plugin.Src.Actions.SetHaveToSetBackToNotLooping)
local SetAnimationData = require(Plugin.Src.Actions.SetAnimationData)
local CameraSelectionDialog = require(Plugin.Src.Components.FacialAnimationRecorder.CameraSelectionDialog)
local ShowStyledDialog = require(Plugin.Src.Components.FacialAnimationRecorder.ShowStyledDialog)
local WarningDialog = require(Plugin.Src.Components.FacialAnimationRecorder.WarningDialog)
local WarningOverlay = require(Plugin.Src.Components.FacialAnimationRecorder.WarningOverlay)
local AnimationData = require(Plugin.Src.Util.AnimationData)
local GetFFlagFacialAnimationRecordingInStudio = require(Plugin.LuaFlags.GetFFlagFacialAnimationRecordingInStudio)
local GetFFlagFaceAnimatorFixFacsHFlip2 = require(Plugin.LuaFlags.GetFFlagFaceAnimatorFixFacsHFlip2)
local GetFFlagFacialAnimationRecordingResetPoseDuringRecording =
	require(Plugin.LuaFlags.GetFFlagFacialAnimationRecordingResetPoseDuringRecording)
local GetFacialAnimationRecordingAnalytics1 = require(Plugin.LuaFlags.GetFacialAnimationRecordingAnalytics1)
local RunService = game:GetService("RunService")
local VideoCaptureService = game:GetService("VideoCaptureService")
local FaceAnimatorService = game:GetService("FaceAnimatorService")
local FacialAnimationRecorder = Roact.PureComponent:extend("FacialAnimationRecorder")
local FIntFacialAnimationRecorderMaxRecordingTimeInSeconds =
	game:DefineFastInt("FacialAnimationRecorderMaxRecordingTimeInSeconds", 60)
local FStringFaceRecorderBiometricsLearnMoreLink =
	game:DefineFastString("ACEFaceRecorderBiometricsLink", "https://en.help.roblox.com/hc/articles/8064749848980")
local GetFFlagExtendPluginTheme = require(Plugin.LuaFlags.GetFFlagExtendPluginTheme)
local Framework = require(Plugin.Packages.Framework)
local StyleModifier = Framework.Util.StyleModifier
local StyleValue = Framework.Util.StyleValue
local UI = Framework.UI
local Pane = UI.Pane
local Button = Framework.UI.Button
local TextLabel = UI.Decoration.TextLabel
local Container = UI.Container
local Tooltip = UI.Tooltip
local HoverArea = UI.HoverArea
local LoadingIndicator = UI.LoadingIndicator
local FlashingDot = require(script.Parent.FlashingDot)
local SetPlayState = require(Plugin.Src.Actions.SetPlayState)
local SetInReviewState = require(Plugin.Src.Actions.SetInReviewState)
local StepAnimation = require(Plugin.Src.Thunks.Playback.StepAnimation)
local Selection = game:GetService("Selection")
local DISPLAY_DURATION_FOR_OVERWRITING_INFO = 5
local previousAnimationHadFacsTracks = false
local cameHereFromPressingReRecord = false

function FacialAnimationRecorder:init()
	self.presentationGui = CoreGui.RobloxGui
	self.focus = Focus.new(self.presentationGui)

	self:setState({
		remainingSeconds = 0,
		shouldShowCameraSelectionDialog = false,
		isAgeRestricted = false,
		shouldShowNoCamerasWarning = false,
		deniedCameraPermission = false,
	})

	self.startRecording = function()
		self.timeAtStartOfRecording = os.clock()
		local analytics = self.props.Analytics
		if GetFacialAnimationRecordingAnalytics1() then
			analytics:report("onFacialAnimationRecordingStartRecording")
		end

		self:setState({
			isRecording = true,
		})
	end

	self.resetLooping = function()
		local props = self.props
		if not props.haveToSetBackToNotLooping then
			return
		end
		props.haveToSetBackToNotLooping = false
		local animationData = props.AnimationData
		if animationData then
			local looping = animationData.Metadata.Looping
			if looping then
				AnimationData.setLooping(animationData, false)
				props.SetAnimationData(props, animationData)
			end
		end
	end

	self.endRecording = function()
		self.timeAtEndOfRecording = os.clock() -- this variable is also used in the render function
		local props = self.props
		local analytics = props.Analytics
		if GetFacialAnimationRecordingAnalytics1() then
			analytics:report(
				"onFacialAnimationRecordingEndRecording",
				self.timeAtStartOfRecording and (self.timeAtEndOfRecording - self.timeAtStartOfRecording) or 0
			)
		end

		props.SetInReviewState(true)

		self:setState({
			isRecording = false,
		})

		previousAnimationHadFacsTracks = AnimationData.hasFacsData(self.props.AnimationData)

		props.LoadRecorderFrames(props, self.RecordedFrames, props.Analytics)

		props.SetFacialRecordingMode(false)

		--don't have the cam tracking on in review state
		self:disconnect()

		--move playhead to beginning of animation:
		props.StepAnimation(0)

		--play the recording
		props.SetPlayState(Constants.PLAY_STATE.Play)

		--when selecting something else while in review state, exit out of review state
		local selectionChanged
		selectionChanged = Selection.SelectionChanged:Connect(function(selected)
			selectionChanged:Disconnect()
			props.SetInReviewState(false)
		end)
	end

	self.showCameraSelectionDialog = function()
		self:setState({
			shouldShowCameraSelectionDialog = true,
		})
	end

	self.hideCameraSelectionDialog = function()
		self:setState({
			shouldShowCameraSelectionDialog = false,
		})
	end

	self.movePlayheadToBeginning = function()
		--waiting a moment for playing stopping, else trying to go back to beginning of anim timeline does not work
		--cam tracking still in control
		wait(0.1)
		--move playhead to beginning of animation:
		if self.props.RootInstance then
			self.props.StepAnimation(0)
		end
	end

	self.dismissSelf = function()
		local props = self.props
		props.SetInReviewState(false)
		props.SetFacialRecordingMode(false)
		self.movePlayheadToBeginning()
	end

	self.toggleRecording = function()
		local isRecording = self.state.isRecording
		if isRecording then
			self.endRecording()
		else
			self.startRecording()
		end
	end

	self.triggerReRecording = function()
		local props = self.props
		local analytics = props.Analytics
		if GetFacialAnimationRecordingAnalytics1() then
			analytics:report("onFacialAnimationRecordingReRecordPressed")
		end

		cameHereFromPressingReRecord = true
		self.resetLooping()
		props.SetPlayState(Constants.PLAY_STATE.Pause)
		self.movePlayheadToBeginning()
		self.props.SetInReviewState(false)
		self.props.SetFacialRecordingMode(true)
		self:InitializeRecordingMode()
	end

	self.showAgeRestrictionError = function()
		local props = self.props
		local localization = props.Localization
		self:setState({
			isAgeRestricted = true,
		})
		ShowStyledDialog(props.Plugin, props.Localization, props.Stylizer, props.Mouse, WarningDialog, {
			Title = localization:getText("FaceCapture", "WarningTitle"),
			TitleText = localization:getText("FaceCapture", "AgeRestrictedTitle"),
			BodyText = localization:getText("FaceCapture", "AgeRestrictedBody"),
			Buttons = {
				{
					Key = "Ok",
					Text = props.Localization:getText("FaceCapture", "WarningDialogOk"),
					Style = "RoundPrimary",
				},
			},
			OnButtonPressed = self.dismissSelf,
			OnClose = self.dismissSelf,
		})
	end

	self.showBiometricDataCollectionDialog = function()
		local props = self.props
		local localization = props.Localization
		local agreeKey = "Agree"
		local FacialAnimationRecordingService = game:GetService("FacialAnimationRecordingService")

		ShowStyledDialog(props.Plugin, props.Localization, props.Stylizer, props.Mouse, WarningDialog, {
			Title = localization:getText("FaceCapture", "WarningTitle"),
			TitleText = localization:getText("FaceCapture", "BioDataCollectionTitle"),
			BodyText = localization:getText("FaceCapture", "BioDataCollectionBody"),
			Buttons = {
				{
					Key = "Disagree",
					Text = localization:getText("FaceCapture", "BioDataCollectionDisagree"),
					Style = "Round",
				},
				{
					Key = agreeKey,
					Text = localization:getText("FaceCapture", "BioDataCollectionAgree"),
					Style = "Round",
				},
			},
			OnButtonPressed = function(key)
				if key == agreeKey then
					FacialAnimationRecordingService.BiometricDataConsent = true
					self:StartupInitialize()
				else
					self.dismissSelf()
				end
			end,
			OnClose = self.dismissSelf,
			learnMoreUrl = FStringFaceRecorderBiometricsLearnMoreLink,
			learnMoreLabel = localization:getText("FaceCapture", "LearnMoreLabel"),
		})
	end

	self.numberOfCameras = function()
		local cameraDevicesList = VideoCaptureService:GetCameraDevices()
		local numberOfCameras = 0
		for _ in pairs(cameraDevicesList) do
			numberOfCameras += 1
		end
		return numberOfCameras
	end

	self.checkAndShowCameraWarning = function()
		local numberOfCameras = self.numberOfCameras()
		local shouldShowNoCamerasWarning = numberOfCameras == 0
		self:setState({
			shouldShowNoCamerasWarning = shouldShowNoCamerasWarning,
		})
	end

	self.checkOrRequestCameraPermission = function()
		local FacialAnimationRecordingService = game:GetService("FacialAnimationRecordingService")
		local cameraPermissionStatus = {
			AUTHORIZED = "AUTHORIZED",
			DENIED = "DENIED",
		}

		local success, result = pcall(function()
			return FacialAnimationRecordingService:CheckOrRequestCameraPermission()
		end)

		if not success then
			return
		end

		local permissionResponseStatus = result

		local permissionDenied = permissionResponseStatus == cameraPermissionStatus.DENIED
		self:setState({
			deniedCameraPermission = permissionDenied,
		})
	end
end

function FacialAnimationRecorder:updateAvatarData()
	local props = self.props
	local RootInstance = props.RootInstance

	-- TODO: use different function to find Animator
	if not self.Animator then
		local animationController = RigUtils.getAnimationController(RootInstance)
		self.Animator = animationController:FindFirstChildOfClass("Animator")
	end
end

function FacialAnimationRecorder:InitializeRecordingMode()
	if not FaceAnimatorService then
		return
	end

	if GetFFlagFaceAnimatorFixFacsHFlip2() then
		FaceAnimatorService.FlipHeadOrientation = false --mirrored
	else
		FaceAnimatorService.FlipHeadOrientation = true
	end

	-- we have to spawn this function to avoid calling a yield function on the Rodux call stack
	task.defer(self.checkOrRequestCameraPermission)

	self.RecordInfo = {}
	self.RecordedFrames = {}
	self.HeartbeatCount = 0

	if GetFFlagFacialAnimationRecordingResetPoseDuringRecording() then
		local targetInstance = self.props.Status.RootInstance
		RigUtils.clearPose(targetInstance)
	end
	RigUtils.focusCameraOnFace(self.props.RootInstance)

	self:updateAvatarData()

	self.animation = Instance.new("TrackerStreamAnimation")
	self.track = self.Animator:LoadStreamAnimation(self.animation)
	if not self.track then
		return
	end
	self.track:Play()

	self.heartbeatSignal = RunService.Heartbeat:Connect(function(delta)
		self.HeartbeatCount += 1
		local isRecording = self.state.isRecording

		-- we check the number of cameras every 30 heartbeats
		-- TODO: change to seconds (maybe based on summing deltas)
		if math.fmod(self.HeartbeatCount, 30) == 0 then
			self.checkAndShowCameraWarning()
		end

		self:updateAvatarData()

		-- live preview driven by AnimationStreamTrack and we just get the data to create animation
		FaceAnimatorService:Step()
		self.Animator:StepAnimations(delta)
		local facsWeights, neckRotationCFrame, timeStamp = self.track:GetTrackerData()

		-- TODO: better way of checking if the data is comming from the tracker
		-- timestamp > 0 is a heuristic to check if timeStamp has been properly initialized
		local isCameraReady = timeStamp > 0
		local shouldGatherFrames = isRecording

		self:setState({
			isCameraReady = isCameraReady,
		})

		if shouldGatherFrames and isCameraReady then
			if not self.RecordInfo.startTime then
				self.RecordInfo.startTime = timeStamp
			end

			local maxRecordingTime = FIntFacialAnimationRecorderMaxRecordingTimeInSeconds
			local currentTime = timeStamp - self.RecordInfo.startTime
			local remainingTime = maxRecordingTime - currentTime

			if remainingTime < 0 then
				self.endRecording()
			end
			local tck = math.floor(currentTime * Constants.TICK_FREQUENCY + 0.5)

			local values = {}
			for facsName, facsValue in pairs(facsWeights) do
				values[facsName] = facsValue
			end
			values["Head"] = neckRotationCFrame

			self.RecordedFrames[tck] = values

			-- update elapsed seconds
			local remainingSeconds = math.floor(remainingTime)
			if self.state.remainingSeconds ~= remainingSeconds then
				self:setState({
					remainingSeconds = remainingSeconds,
				})
			end
		end
	end)
end

function FacialAnimationRecorder:StartupInitialize()
	local FacialAnimationRecordingService = game:GetService("FacialAnimationRecordingService")
	cameHereFromPressingReRecord = false
	previousAnimationHadFacsTracks = false
	self.props.SetInReviewState(false)
	self.resetLooping()
	local isAgeRestricted = FacialAnimationRecordingService:IsAgeRestricted()
	if isAgeRestricted then
		self.showAgeRestrictionError()
		return
	end

	local biometricDataConsent = FacialAnimationRecordingService.BiometricDataConsent
	if not biometricDataConsent then
		self.showBiometricDataCollectionDialog()
		return
	end

	self:InitializeRecordingMode()
end

function FacialAnimationRecorder:didMount()
	self:StartupInitialize()
end

function FacialAnimationRecorder:render()
	local props = self.props
	local theme = GetFFlagExtendPluginTheme() and props.Stylizer or props.Stylizer.PluginTheme
	local localization = self.props.Localization
	local isRecording = self.state.isRecording
	local inReviewState = props.inReviewState
	local haveToSetBackToNotLooping = props.haveToSetBackToNotLooping
	local isCameraReady = self.state.isCameraReady
	local isAgeRestricted = self.state.isAgeRestricted
	local remainingSeconds = self.state.remainingSeconds
	local deniedCameraPermission = self.state.deniedCameraPermission
	local shouldShowCameraSelectionDialog = self.state.shouldShowCameraSelectionDialog
	local shouldShowNoCamerasWarning = self.state.shouldShowNoCamerasWarning
	local stepAnimation = props.StepAnimation
	local animationData = self.state.AnimationData
	local iconColor = theme.faceCaptureTheme.faceCaptureDefaultButtonIconColor
	local stopRecordingImage = theme.faceCaptureTheme.stopRecordingButtonImage
	local moreButtonImage = "rbxasset://textures/AnimationEditor/FaceCaptureUI/MoreButton.png"
	local recordingImage = "rbxasset://textures/AnimationEditor/FaceCaptureUI/button_control_record.png"
	local reRecordButtonImage = "rbxasset://textures/AnimationEditor/FaceCaptureUI/ReRecordButton.png"
	local errorIcon = theme.faceCaptureTheme.errorIcon
	local style = props.Stylizer
	local textColor = style.TextColor
	local currentTime = os.clock()
	local shouldShowPreviousFacsWillBeOverWrittenMessage = not cameHereFromPressingReRecord
		and previousAnimationHadFacsTracks
		and self.timeAtEndOfRecording
		and ((currentTime - self.timeAtEndOfRecording) <= DISPLAY_DURATION_FOR_OVERWRITING_INFO)

	return ContextServices.provide({
		self.focus,
	}, {
		RecordingPanelPortal = not isAgeRestricted
			and Roact.createElement(Roact.Portal, {
				target = self.presentationGui,
			}, {
				RecordingPanelContainer = Roact.createElement(Container, {
					Size = UDim2.new(0, 160, 0, 38),
					Position = UDim2.new(0.5, 0, 1.0, -5),
					AnchorPoint = Vector2.new(0.5, 1),
					Padding = {
						Left = 5,
						Right = 5,
					},
				}, {
					RecordingPanel = Roact.createElement(Pane, {
						Size = UDim2.new(1.0, 0, 1.0, 0),
						Padding = {
							Left = 40,
							Right = 40,
						},
						Layout = Enum.FillDirection.Horizontal,
						Spacing = 3,
						VerticalAlignment = Enum.VerticalAlignment.Center,
						ZIndex = 1,
						Style = "RoundBox",
						Image = "",
						BackgroundColor3 = props.Stylizer.Color,
						BackgroundTransparency = 0.1,
						ImageTransparency = 0.1,
					}, {
						Corner = Roact.createElement("UICorner", {
							CornerRadius = UDim.new(0, 8),
						}),
						RecordButton = not inReviewState
							and Roact.createElement(Button, {
								Size = UDim2.new(0, 30, 0, 30),
								Position = UDim2.new(0, 0, 0, 0),
								ImageTransparency = 1,
								BackgroundTransparency = 0.5,
								BorderSizePixel = 1,
								OnClick = self.toggleRecording,
								Text = "",
								LayoutOrder = 1,
								Style = {
									BackgroundTransparency = 1,
									BorderSizePixel = 0,
								},
								StyleModifier = not isCameraReady and StyleModifier.Disabled or nil,
							}, {
								Image = Roact.createElement("ImageLabel", {
									BackgroundTransparency = 1,
									Size = UDim2.new(0, 30, 0, 30),
									Position = UDim2.new(0, 0, 0, 0),
									Image = isRecording and stopRecordingImage or recordingImage,
								}),
								Tooltip = Roact.createElement(Tooltip, {
									Text = isRecording and localization:getText("FaceCapture", "TooltipStopRecording")
										or localization:getText("FaceCapture", "TooltipStartRecording"),
								}),
								Roact.createElement(HoverArea, { Cursor = "PointingHand" }),
							}),
						ReRecordButton = inReviewState and Roact.createElement(Button, {
							Size = UDim2.new(0, 30, 0, 30),
							Position = UDim2.new(0, 0, 0, 0),
							ImageTransparency = 1,
							BackgroundTransparency = 0.5,
							BorderSizePixel = 1,
							OnClick = self.triggerReRecording,
							Text = "",
							LayoutOrder = 1,
							Style = {
								BackgroundTransparency = 1,
								BorderSizePixel = 0,
							},
							StyleModifier = not isCameraReady and StyleModifier.Disabled or nil,
						}, {
							Image = Roact.createElement("ImageLabel", {
								BackgroundTransparency = 1,
								Size = UDim2.new(0, 30, 0, 30),
								Position = UDim2.new(0, 0, 0, 0),
								Image = reRecordButtonImage,
								ImageColor3 = iconColor,
							}),
							Tooltip = Roact.createElement(Tooltip, {
								Text = localization:getText("FaceCapture", "TooltipReRecording"),
							}),
							Roact.createElement(HoverArea, { Cursor = "PointingHand" }),
						}),
						FlashingDot = isRecording and Roact.createElement(FlashingDot, {
							Size = UDim2.new(0, 20, 0, 7),
							PaddingLeft = 30,
							LayoutOrder = 2,
						}),
						TextLabelButton = isCameraReady and Roact.createElement(Button, {
							Size = (isRecording and remainingSeconds) and UDim2.new(0, 68, 1, 0)
								or UDim2.new(0, 60, 1, 0),
							Position = UDim2.new(0, 0, 0, 0),
							ImageTransparency = 1,
							BackgroundTransparency = 0.5,
							BorderSizePixel = 1,
							OnClick = (inReviewState and self.triggerReRecording)
								or (not inReviewState and not isRecording and self.toggleRecording)
								or (not inReviewState and isRecording and self.toggleRecording),
							TextXAlignment = Enum.TextXAlignment.Center,
							TextTruncate = Enum.TextTruncate.None,
							TextSize = 15,
							Text = (inReviewState and localization:getText("FaceCapture", "PanelReRecording"))
								or (
									not inReviewState
									and (
										isRecording and remainingSeconds .. " sec   "
										or localization:getText("FaceCapture", "PanelReady")
									)
								),
							LayoutOrder = 3,
							Style = {
								BackgroundTransparency = 1,
								BorderSizePixel = 0,
								TextColor = textColor,
							},
						}),
						LoadingIndicator = not inReviewState
							and not isCameraReady
							and Roact.createElement(LoadingIndicator, {
								Size = UDim2.new(0, 60, 0, 15),
								LayoutOrder = 2,
							}),
						CameraSelectionButton = not inReviewState
							and not isRecording
							and Roact.createElement(Button, {
								Size = UDim2.fromOffset(30, 30),
								Style = {
									BackgroundTransparency = 1,
									BorderSizePixel = 0,
								},
								Text = "",
								TextSize = 30, -- TODO: if we stick with unicode text we should fix Text sizing
								OnClick = self.showCameraSelectionDialog,
								LayoutOrder = 4,
							}, {
								Image = Roact.createElement("ImageLabel", {
									BackgroundTransparency = 1,
									Size = UDim2.new(0, 30, 0, 30),
									Position = UDim2.new(0, 0, 0, 0),
									Image = moreButtonImage,
									ImageColor3 = iconColor,
								}),
								Tooltip = Roact.createElement(Tooltip, {
									Text = localization:getText("FaceCapture", "TooltipCameraSettings"),
									Position = UDim2.new(0, 50, 0, 50),
								}),
								Roact.createElement(HoverArea, { Cursor = "PointingHand" }),
							}),
					}),
					DismissButton = Roact.createElement(Button, {
						Style = {
							BackgroundTransparency = 1,
							BorderSizePixel = 0,
						},
						Size = UDim2.new(0, 16, 0, 16),
						Position = UDim2.new(1.0, 0, 0, 0),
						AnchorPoint = Vector2.new(0.5, 0.5),
						ZIndex = 10,
						OnClick = function()
							self.dismissSelf()
						end,
					}, {
						Image = Roact.createElement("ImageLabel", {
							BackgroundTransparency = 1,
							Size = UDim2.new(0, 16, 0, 16),
							Image = "rbxasset://textures/AnimationEditor/FaceCaptureUI/CloseButton.png",
						}),
					}),
				}),

				WarningsPane = Roact.createElement(Pane, {
					AutomaticSize = Enum.AutomaticSize.XY,
					Position = UDim2.new(0.5, 0, 1.0, -50),
					AnchorPoint = Vector2.new(0.5, 1),
					Layout = Enum.FillDirection.Vertical,
					Spacing = 8,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					ZIndex = 1,
					Style = "RoundBox",
					ImageTransparency = 1,
				}, {
					NoCameraWarningOverlay = shouldShowNoCamerasWarning and Roact.createElement(WarningOverlay, {
						TitleText = localization:getText("FaceCapture", "NoCameraWarningText"),
						Image = errorIcon,
						LayoutOrder = 1,
					}),
					CameraPermissionDeniedWarningOverlay = deniedCameraPermission
						and Roact.createElement(WarningOverlay, {
							TitleText = localization:getText("FaceCapture", "CameraPermissionDeniedWarningText"),
							Image = errorIcon,
							LayoutOrder = 2,
						}),
					--Detecting camera overlay
					DetectingCameraOverlay = not inReviewState
						and not isCameraReady
						and not isRecording
						and not shouldShowNoCamerasWarning
						and not deniedCameraPermission
						and Roact.createElement(WarningOverlay, {
							TitleText = localization:getText("FaceCapture", "DetectingCameraTitle"),
							Image = "",
							LayoutOrder = 3,
						}),
					--overwriting existing face tracks info message
					PreviousFacsWillBeOverwrittenInfoOverlay = inReviewState
						and isCameraReady
						and not isRecording
						and shouldShowPreviousFacsWillBeOverWrittenMessage
						and Roact.createElement(WarningOverlay, {
							TitleText = localization:getText("FaceCapture", "OverwritingPreviousFacsTracksBody"),
							Image = "",
							LayoutOrder = 4,
						}),
				}),
			}),
		CameraSelectionDialog = shouldShowCameraSelectionDialog and Roact.createElement(CameraSelectionDialog, {
			OnClose = self.hideCameraSelectionDialog,
		}),
	})
end

function FacialAnimationRecorder:disconnect()
	if self.heartbeatSignal then
		self.heartbeatSignal:Disconnect()
	end

	if self.track then
		self.track:Stop(0)
	end

	if self.Animator then
		self.Animator:StepAnimations(0)
	end
end

function FacialAnimationRecorder:willUnmount()
	cameHereFromPressingReRecord = false
	self.resetLooping()
	self.props.SetInReviewState(false)
	self:disconnect()
end

FacialAnimationRecorder = withContext({
	Stylizer = ContextServices.Stylizer,
	Analytics = ContextServices.Analytics,
	Localization = ContextServices.Localization,
	Mouse = ContextServices.Mouse,
	Plugin = ContextServices.Plugin,
})(FacialAnimationRecorder)

local function mapStateToProps(state, props)
	return {
		AnimationData = state.AnimationData,
		PlayState = state.Status.PlayState,
		RootInstance = state.Status.RootInstance,
		Status = state.Status,
		inReviewState = state.Status.inReviewState,
		haveToSetBackToNotLooping = state.Status.haveToSetBackToNotLooping,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		-- TODO create a typed structure for recorded frames to avoid wrong usage
		LoadRecorderFrames = function(props, recordedFrames, analytics)
			dispatch(LoadRecorderFrames(props, recordedFrames, analytics))
		end,
		SetFacialRecordingMode = function(active)
			dispatch(SetFacialRecordingMode(active))
		end,
		SetInReviewState = function(newState)
			dispatch(SetInReviewState(newState))
		end,
		SetPlayState = function(newState)
			dispatch(SetPlayState(newState))
		end,
		StepAnimation = function(tck)
			dispatch(StepAnimation(tck))
		end,
		SetHaveToSetBackToNotLooping = function(newState)
			dispatch(SetHaveToSetBackToNotLooping(newState))
		end,
		SetAnimationData = function(props, animationData)
			dispatch(SetAnimationData(animationData))
			local looping = animationData.Metadata.Looping
			dispatch(StepAnimation(0))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(FacialAnimationRecorder)
