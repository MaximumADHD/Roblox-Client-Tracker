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
-test print messages cleanup before MVP release

*bigger changes before full version release:
-add more analytics tracking calls
-improve cam framing in viewportframe further
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

debugPrint("Self View 12-2-2022__1")

local EngineFeatureFacialAnimationStreamingServiceUseV2 = game:GetEngineFeature("FacialAnimationStreamingServiceUseV2")
local FacialAnimationStreamingService = game:GetService("FacialAnimationStreamingServiceV2")

local CorePackages = game:GetService("CorePackages")
local Promise = require(CorePackages.Promise)
local CoreGui = game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local AppStorageService = game:GetService("AppStorageService")
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local FaceAnimatorService = game:FindService("FaceAnimatorService")
local VideoCaptureService = game:FindService("VideoCaptureService")
local Analytics = require(RobloxGui.Modules.SelfView.Analytics).new()
local log = require(RobloxGui.Modules.Logger):new(script.Name)
local DEFAULT_POSITION = UDim2.fromOffset(15, 25)
local DEFAULT_SIZE = UDim2.new(0.15, 0, 0.4, 0)
local DEFAULT_BUTTONS_BAR_HEIGHT = 36
local DEFAULT_SELF_VIEW_FRAME_COLOR = Color3.new(1, 1, 1)
local BACKGROUND_TRANSPARENCY = 0.65
local SCREEN_BORDER_OFFSET = 3
local SELF_VIEW_NAME = "SelfView"
local IS_STUDIO = RunService:IsStudio()
local toggleSelfViewSignal = require(RobloxGui.Modules.SelfView.toggleSelfViewSignal)
local selfViewCloseButtonSignal = require(RobloxGui.Modules.SelfView.selfViewCloseButtonSignal)
local getCamMicPermissions = require(RobloxGui.Modules.Settings.getCamMicPermissions)
local selfViewPublicApi = require(RobloxGui.Modules.SelfView.publicApi)
local Modules = CoreGui.RobloxGui.Modules

local FFlagSelfViewFixes = require(RobloxGui.Modules.Flags.FFlagSelfViewFixes)
local FFlagSelfViewFixesThree = require(Modules.Flags.FFlagSelfViewFixesThree)

local UIBlox = require(CorePackages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local VIDEO_IMAGE = Images["icons/controls/video"]
local VIDEO_OFF_IMAGE = Images["icons/controls/videoOff"]
local MIC_IMAGE = Images["icons/controls/microphone"]
local MIC_OFF_IMAGE = Images["icons/controls/microphoneMute"]

local DEFAULT_SELF_VIEW_CAM_OFFSET = Vector3.new(0, 0.105, -0.25)
local cloneCharacterName = "SelfAvatar"
-- seconds to wait to update the clone after something in the original has changed
local UPDATE_CLONE_CD = 0.35
--when no usable clone for 5 sec it will hide Self View (not doing it instantly as to not have it flicker on off while swapping avatars)
local AUTO_HIDE_CD = 5
local updateCloneCurrentCoolDown = 0

local renderSteppedConnection = nil
local playerCharacterAddedConnection
local playerCharacterRemovingConnection
local serviceStateSingalConnection = nil
local trackStoppedConnections = {}
local videoAnimationPropertyChangedSingalConnection = nil
local audioAnimationPropertyChangedSingalConnection = nil
local videoCaptureServiceStartedConnection = nil
local videoCaptureServiceStoppedConnection = nil
local videoCaptureServiceDevicesChangedConnection = nil

local cloneAnimator = nil
local cloneAnimationTracks = {}
local orgAnimationTracks = {}
local cachedHeadColor = nil
local cachedHeadSize = nil
local cachedAudioEnabled = nil
local currentTrackerMode = nil
local cachedMode = nil
local viewportFrame = nil
local viewportCamera = nil
local boundsSize = nil
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
local isOpen = true
local audioIsEnabled = false
local videoIsEnabled = false
local foundStreamTrack = nil
local gotUsableClone = false
local noUsableCloneOffset = nil
local initialized = false
local cloneCamUpdateCounter = 0
local selfViewSessionStarted = false
local cachedViewSessionStarted = false
--TODO: increase cloneCamUpdatePosEvery once we add easing to the cam framing code
local cloneCamUpdatePosEvery = 1
local hasCameraPermissions = false
local hasMicPermissions = false
local cachedHasCameraPermissions = false
local cachedHasMicPermissions = false
local lastReportedMicState = false
local lastReportedCamState = false
local toggleSelfViewSignalConnection

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
}

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
	return (
		StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.All) or StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView)
	)
end

-- Check that the user's device has given Roblox mic and camera permissions.
function getPermissions()
	debugPrint("Self View: getPermissions()")

	local callback = function(response)
		hasCameraPermissions = response.hasCameraPermissions
		hasMicPermissions = response.hasMicPermissions
	end
	getCamMicPermissions(callback)
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
	local delta = (inputPosition - dragStartPosition)
	local newPosition = {
		X = (delta + frameStartPosition).X,
		Y = (delta + frameStartPosition).Y,
	}

	-- Constrain the location to the screen.
	local screenSize = frame.Parent.AbsoluteSize
	frame.Position = constrainTargetPositionToScreen(frame, screenSize, newPosition)
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

		local inputType = inputObject.UserInputType

		-- Multiple touches should not affect dragging the Self View. Only the original touch.
		--the check inputType == Enum.UserInputType.Touch is so it does not block mouse dragging
		if (inputType == Enum.UserInputType.Touch or not FFlagSelfViewFixesThree)
			and inputObject ~= inputObj
		then
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

local function createViewport()
	--TODO: this UI setup could be changed to roact setup before MVP release, to evaluate pros/ cons
	--(also regarding aspect this may tween towards worldspace UI above player head once closed in progressed iteration)

	if frame then
		frame:Destroy()
	end

	isOpen = true

	frame = Instance.new("Frame")
	frame.Name = SELF_VIEW_NAME
	frame.Parent = RobloxGui
	--setting frame active so one doesn't accidentally use mobile touch dpad or cam controls on mobile while dragging Self View around
	frame.Active = true
	--setting frame size before setting it's position since the size is used in dragging position restrict to screen size evaluation
	frame.Size = DEFAULT_SIZE
	local position = DEFAULT_POSITION

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
	frame.BackgroundTransparency = 1
	frame.InputBegan:Connect(function(input)
		inputBegan(frame, input)
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

	bottomButtonsFrame = Instance.new("Frame")
	bottomButtonsFrame.Name = "BottomButtonsFrame"
	bottomButtonsFrame.Position = UDim2.new(0, 0, 1, -(DEFAULT_BUTTONS_BAR_HEIGHT - 1))
	bottomButtonsFrame.Size = UDim2.new(1, 0, 0, DEFAULT_BUTTONS_BAR_HEIGHT)
	bottomButtonsFrame.BackgroundColor3 = DEFAULT_SELF_VIEW_FRAME_COLOR
	bottomButtonsFrame.BackgroundTransparency = 0
	bottomButtonsFrame.BorderSizePixel = 0
	bottomButtonsFrame.Parent = frame

	local uiPadding = Instance.new("UIPadding")
	uiPadding.Parent = bottomButtonsFrame
	uiPadding.PaddingBottom = UDim.new(0, 0)
	uiPadding.PaddingLeft = UDim.new(0, 0)
	uiPadding.PaddingRight = UDim.new(0, 0)
	uiPadding.PaddingTop = UDim.new(0, 3)

	local uiListLayout = Instance.new("UIListLayout")
	uiListLayout.Parent = bottomButtonsFrame
	uiListLayout.Padding = UDim.new(0, 5)
	uiListLayout.FillDirection = Enum.FillDirection.Horizontal
	uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
	uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	local micButton = Instance.new("ImageButton")
	micButton.Name = "MicButton"
	micButton.Parent = bottomButtonsFrame
	micButton.Position = UDim2.new(0, 0, 0, 0)
	micButton.Size = UDim2.new(0.5, -4, 1, -4)
	micButton.Image = "rbxasset://textures/SelfView/whiteRect.png"
	micButton.ImageColor3 = Color3.new(0.294117, 0.294117, 0.294117)
	micButton.BackgroundTransparency = 1
	micButton.LayoutOrder = 0
	micButton.ZIndex = 2
	micButton.Activated:Connect(function()
		local voiceService = VoiceChatServiceManager:getService()
		debugPrint(
			"Self View: micButton.Activated(), voiceService:"
				.. tostring(voiceService)
				.. ",hasMicPermissions:"
				.. tostring(hasMicPermissions)
		)
		if voiceService and hasMicPermissions then
			VoiceChatServiceManager:ToggleMic()
		else
			updateAudioButton(false)
		end
	end)

	local uiCorner = Instance.new("UICorner")
	uiCorner.Parent = micButton

	local camButton = Instance.new("ImageButton")
	camButton.Name = "CamButton"
	camButton.Parent = bottomButtonsFrame
	camButton.Position = UDim2.new(0, 0, 0, 0)
	camButton.Size = UDim2.new(0.5, -4, 1, -4)
	camButton.Image = "rbxasset://textures/SelfView/whiteRect.png"
	camButton.ImageColor3 = Color3.new(0.294117, 0.294117, 0.294117)
	camButton.BackgroundTransparency = 1
	camButton.LayoutOrder = 1
	camButton.ZIndex = 3
	camButton.Activated:Connect(function()
		debugPrint("Self View: camButton.Activated(), hasCameraPermissions:" .. tostring(hasCameraPermissions))
		if hasCameraPermissions then
			if not FaceAnimatorService or not FaceAnimatorService:IsStarted() then
				updateVideoButton(false)
				return
			end
			FaceAnimatorService.VideoAnimationEnabled = not FaceAnimatorService.VideoAnimationEnabled
		else
			updateVideoButton(false)
		end
	end)

	uiCorner = Instance.new("UICorner")
	uiCorner.Parent = camButton

	micIcon = Instance.new("ImageLabel")
	micIcon.Name = "MicIcon"
	micIcon.Parent = micButton
	micIcon.AnchorPoint = Vector2.new(0.5, 0.5)
	micIcon.Position = UDim2.new(0.5, 0, 0.5, 0)
	micIcon.Size = UDim2.new(0, 32, 0, 32)
	micIcon.Image = MIC_OFF_IMAGE.Image
	micIcon.ImageRectOffset = MIC_OFF_IMAGE.ImageRectOffset
	micIcon.ImageRectSize = MIC_OFF_IMAGE.ImageRectSize
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
			micButton.Visible = true
			camButton.Visible = true
			closeButton.Visible = true
		--[[
			Allow for debugging in studio. This shows the mic option when
			studio normally does not have this option.
		]]
		elseif IS_STUDIO and debug then
			micButton.Visible = true
			camButton.Visible = true
			closeButton.Visible = true
		else
			micButton.Visible = false
			camButton.Visible = false
			closeButton.Visible = false
		end
	end

	local function showSelfView(newState)
		setIsOpen(newState)
		setButtonButtonsVisibility()

		selfViewFrame.Visible = newState
		bottomButtonsFrame.Visible = newState
		closeButtonIcon.Visible = newState
		faceIcon.Visible = not newState
		closeButton.BackgroundTransparency = newState and 1 or 0.5

		if isOpen then
			micButton.Position = UDim2.new(0, 0, 0, 0)
			micButton.Size = UDim2.new(0.5, -4, 1, -4)
			micButton.ImageTransparency = 0

			camButton.Position = UDim2.new(0, 0, 0, 0)
			camButton.Size = UDim2.new(0.5, -4, 1, -4)
			camButton.ImageTransparency = 0

			indicatorCircle.Position = UDim2.new(1, -25, 0, 4)
			frame.Active = true
			frame.Visible = true
		else
			micButton.Position = UDim2.new(0, 40, 0, -1)
			micButton.Size = UDim2.new(0, 34, 0, 34)
			micButton.Parent = frame
			micButton.ImageTransparency = 0.3

			camButton.Position = UDim2.new(0, 80, 0, -1)
			camButton.Size = UDim2.new(0, 34, 0, 34)
			camButton.Parent = frame
			camButton.ImageTransparency = 0.3

			indicatorCircle.Position = UDim2.new(0, 20, 0, -10)
			frame.Active = false
			frame.Visible = false
		end

		bottomButtonsFrame.Visible = isOpen
	end

	closeButton.Activated:Connect(function()
		if not FFlagSelfViewFixes then
			selfViewCloseButtonSignal:fire()
		end
		showSelfView(not isOpen)
	end)

	if toggleSelfViewSignalConnection then
		toggleSelfViewSignalConnection:disconnect()
	end
	toggleSelfViewSignalConnection = toggleSelfViewSignal:connect(function()
		showSelfView(not isOpen)
	end)

	uiCorner = Instance.new("UICorner")
	uiCorner.Parent = closeButton

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

	createCloneAnchor()

	viewportCamera = Instance.new("Camera")
	--FoV smaller is closer up
	viewportCamera.FieldOfView = 55
	viewportFrame.CurrentCamera = viewportCamera
	viewportCamera.Parent = viewportFrame
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
			and hasMicPermissions
			and (debug or (bottomButtonsFrame and bottomButtonsFrame.Visible))
		)
			or (
				(mode == Enum.TrackerMode.Video or mode == Enum.TrackerMode.AudioVideo)
				and hasCameraPermissions
				and (debug or (bottomButtonsFrame and bottomButtonsFrame.Visible))
			)
		if mode == Enum.TrackerMode.AudioVideo then
			indicatorCircle.Image = INDICATOR_ON_IMAGE
		else
			indicatorCircle.Image = INDICATOR_OFF_IMAGE
		end
	end
end

function updateAudioButton(enabled)
	if enabled then
		if micIcon then
			micIcon.Image = MIC_IMAGE.Image
			micIcon.ImageRectOffset = MIC_IMAGE.ImageRectOffset
			micIcon.ImageRectSize = MIC_IMAGE.ImageRectSize
		end
	else
		if micIcon then
			micIcon.Image = MIC_OFF_IMAGE.Image
			micIcon.ImageRectOffset = MIC_OFF_IMAGE.ImageRectOffset
			micIcon.ImageRectSize = MIC_OFF_IMAGE.ImageRectSize
		end
	end

	audioIsEnabled = enabled
end

function updateVideoButton(enabled)
	if enabled then
		if camIcon then
			camIcon.Image = VIDEO_IMAGE.Image
			camIcon.ImageRectOffset = VIDEO_IMAGE.ImageRectOffset
			camIcon.ImageRectSize = VIDEO_IMAGE.ImageRectSize
		end
	else
		if camIcon then
			camIcon.Image = VIDEO_OFF_IMAGE.Image
			camIcon.ImageRectOffset = VIDEO_OFF_IMAGE.ImageRectOffset
			camIcon.ImageRectSize = VIDEO_OFF_IMAGE.ImageRectSize
		end
	end

	videoIsEnabled = enabled
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
	debugPrint(
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

VoiceChatServiceManager.muteChanged.Event:Connect(function(muted)
	debugPrint("Self View: VoiceChatServiceManager.muteChanged.Event, muted: " .. tostring(muted))
	updateAudioButton(not muted)
end)

local function clearObserver(observerId)
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

	local noRefClone = cloneAnchor:FindFirstChild(cloneCharacterName)
	if noRefClone then
		noRefClone:Destroy()
	end

	createCloneAnchor()
end

local function clearClone()
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
	cachedAudioEnabled = nil
	cachedMode = nil
	cloneAnimator = nil
	cloneAnimationTracks = {}
	-- clear objects
	clearCloneCharacter()
end

local function syncTrack(animator, track)
	if not animator or not track.Animation then
		return
	end

	-- create the track
	local cloneTrack = nil
	if track.Animation:IsA("Animation") then
		--	cloneTrack = animator:LoadAnimation(track.Animation)
		--	cloneTrack.TimePosition = track.TimePosition
		--	cloneTrack:AdjustSpeed(track.Speed)
	elseif track.Animation:IsA("TrackerStreamAnimation") then
		local newAnimation = Instance.new("TrackerStreamAnimation")
		cloneTrack = animator:LoadStreamAnimation(newAnimation)
		foundStreamTrack = true
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
			if FFlagSelfViewFixesThree then
				cloneTrack:Stop(0)
			else
				cloneTrack:Stop()
			end
			if trackStoppedConnections[track] then
				trackStoppedConnections[track]:Disconnect()
			end
		end)
	end
end

-- Finds the FaceControls instance attached to the rig
function getFaceControls(rig)
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
	return nil
end

function findObjectOfNameAndTypeName(name, typeName, character)
	local descendants = character:GetDescendants()
	for _, child in descendants do
		if child.Name == name and child:IsA(typeName) then
			return child
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
		head = faceControls.Parent
	end

	--fallback lookup attempts in case non dynamic head avatar
	if not head then
		--first doing an attempt like this
		head = findObjectOfNameAndTypeName("Head", "MeshPart", character)

		--last resort fallback attempt, could return other object types in worst case (like a Pose called Head if the avatar has AnimSaves in it)
		if not head then
			head = character:FindFirstChild("Head", true)
			if head and head:IsA("Pose") then
				head = nil
			end
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
		humanoid = character:WaitForChild("Humanoid", timeOut)
	else
		humanoid = character:FindFirstChild("Humanoid")
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

	debugPrint("Self View: updateClone(): character:" .. tostring(character))

	local animator = getAnimator(character, 10)

	clearCloneCharacter()

	-- create clone
	local previousArchivableValue = character.Archivable
	character.Archivable = true

	if FFlagSelfViewFixesThree then
		local orgHead = getHead(character)

		if not orgHead then
			return
		end
	end

	clone = character:Clone()
	clone.Name = cloneCharacterName

	-- remove unneeded cloned assets
	--(removing these already here as otherwise on fast respawn the Animate script in the clone can execute some stuff already before removal)
	removeChild(clone, "Animate")
	removeChild(clone, "Health")

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

		--GetExtentsSize is only usable on models, so putting head into model:
		--todo: only run this if head found, also look for head with descendents if not found
		local dummyModel = Instance.new("Model")
		dummyModel.Parent = clone
		local head = getHead(clone)
		character.Archivable = true
		headClone = head:Clone()
		headClone.CanCollide = false
		headClone.Parent = dummyModel
		headCloneNeck = getNeck(clone, headClone)
		local rig = dummyModel
		local extents = rig:GetExtentsSize()
		local width = math.min(extents.X, extents.Y)
		width = math.min(extents.X, extents.Z)
		cframe, boundsSize = rig:GetBoundingBox()
		local rootPart = headClone
		headCloneRootFrame = rootPart.CFrame
		headClone:Destroy()

		local center = headCloneRootFrame.Position + headCloneRootFrame.LookVector * (width * 2)
		viewportCamera.CFrame = CFrame.lookAt(center + DEFAULT_SELF_VIEW_CAM_OFFSET, headCloneRootFrame.Position)
		viewportCamera.Focus = headCloneRootFrame
		character.Archivable = previousArchivableValue
		dummyModel:Destroy()
	end

	--curious: despite we check further above if clone == nil, noticed in some games above it was not nil and then by reaching here it is nil...
	--so checking it again before using it again just to go sure.
	if clone == nil then
		debugPrint("Self View: updateClone: no clone could be created")
		--TODO: we'll add error tracking pre release
		return
	end

	debugPrint("Self View: clone:" .. tostring(clone))
	local cloneHumanoid = clone:FindFirstChild("Humanoid")
	if cloneHumanoid then
		cloneHumanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	end
	cloneAnimator = getAnimator(clone, 0)

	--prep sync streaming tracks
	if cloneAnimator then
		-- clear cloned tracks
		local clonedTracks = cloneAnimator:GetPlayingAnimationTracks()
		local coreScriptTracks = cloneAnimator:GetPlayingAnimationTracksCoreScript()

		for index, track in ipairs(clonedTracks) do
			if track ~= nil then
				if FFlagSelfViewFixesThree then
					track:Stop(0)
				else
					track:Stop()
				end
				track:Destroy()
			end
		end

		for index, track in ipairs(coreScriptTracks) do
			if track ~= nil then
				if FFlagSelfViewFixesThree then
					track:Stop(0)
				else
					track:Stop()
				end
				track:Destroy()
			end
		end

		if animator then
			-- clone tracks manually
			for index, track in ipairs(animator:GetPlayingAnimationTracksCoreScript()) do
				syncTrack(cloneAnimator, track)
			end

			observerInstances[Observer.AnimationPlayedCoreScript] = animator.AnimationPlayedCoreScript:Connect(
				function(track)
					syncTrack(cloneAnimator, track)
				end
			)

			gotUsableClone = true

			if FFlagSelfViewFixesThree then
				--usable clone was set up, cancel potential additional refresh
				setCloneDirty(false)
			end
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
		cachedHeadSize = headRefParam.Size
	end
end

local function characterAdded(character)
	headRef = getHead(character)
	updateCachedHeadColor(headRef)

	--avoid multi events
	clearObserver(Observer.DescendantAdded)
	clearObserver(Observer.DescendantRemoving)
	clearObserver(Observer.HeadSize)
	clearObserver(Observer.Color)

	-- listen for updates on the original character's structure
	observerInstances[Observer.DescendantAdded] = character.DescendantAdded:Connect(function(descendant)
		--debugPrint("Self View: descendant added,descendant.Name: "..descendant.Name)
		if descendant.Name == "Head" then
			headRef = getHead(character)

			updateCachedHeadColor(headRef)
		end

		setCloneDirty(true)
	end)
	observerInstances[Observer.DescendantRemoving] = character.DescendantRemoving:Connect(function(descendant)
		--these checks are to avoid unnecessary additional refreshes
		if descendant and (descendant:IsA("MeshPart") or descendant:IsA("Accessory")) then
			if descendant:IsA("MeshPart") then
				debugPrint("MeshId:" .. tostring(descendant.MeshId))
				if descendant.MeshId == "" then
					return
				end
			end

			setCloneDirty(true)
		end
	end)

	setCloneDirty(true)
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
end

local function onCharacterAdded(character)
	playerCharacterAddedConnection:Disconnect()
	ReInit(Players.LocalPlayer)
end

local function onCharacterRemoved(player)
	debugPrint("Self View: onCharacterRemoved()")
	setIsOpen(false)
	playerCharacterRemovingConnection:Disconnect()
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

		playerCharacterRemovingConnection = player.CharacterRemoving:Connect(function()
			onCharacterRemoved(player)
		end)

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

function lerp(a, b, t)
	return a + (b - a) * t
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

	renderSteppedConnection = RunService.RenderStepped:Connect(function(step)
		--GetPropertyChangedSignal for head color/size change fired reliably in a simple test place for animation props
		--but it did not fire reliably in a more involved test place, so as fallback for now we also check manually for changes..

		gotUsableClone = false
		local audioEnabled = false
		local voiceService = VoiceChatServiceManager:getService()
		if voiceService and VoiceChatServiceManager.localMuted ~= nil then
			audioEnabled = not VoiceChatServiceManager.localMuted

			if cachedAudioEnabled ~= audioEnabled then
				local newReportedMicState = audioEnabled
				if lastReportedMicState ~= newReportedMicState then
					Analytics:reportMicState(newReportedMicState)
					lastReportedMicState = newReportedMicState
				end

				updateAudioButton(audioEnabled)
				cachedAudioEnabled = audioEnabled
			end
		end

		if Players.LocalPlayer then
			local character = Players.LocalPlayer.Character

			if not character or character.Parent == nil then
				return
			end

			if headRef == nil or headRef.Parent ~= character then
				headRef = getHead(character)
			end

			if headRef == nil then
				gotUsableClone = false
			end

			if headRef then
				local animator = getAnimator(character, 0)

				--manual sync of canned animation tracks
				if cloneAnimator ~= nil and animator ~= nil then
					gotUsableClone = true

					local playingAnims = cloneAnimator:GetPlayingAnimationTracks()
					for _, track in pairs(playingAnims) do
						if track ~= nil then
							if FFlagSelfViewFixesThree then
								track:Stop(0)
							else
								track:Stop()
							end
						end
					end

					local orgPlayingTracks = animator:GetPlayingAnimationTracks()

					local anim = nil
					orgAnimationTracks = {}
					for index, value in ipairs(orgPlayingTracks) do
						anim = value.Animation
						if anim then
							if anim:IsA("Animation") then
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

					--clear meanwhile not anymore playing track
					for trackId in cloneAnimationTracks do
						local track = cloneAnimationTracks[trackId]
						if track then
							anim = track.Animation
							if anim then
								if not orgAnimationTracks[anim.AnimationId] then
									if FFlagSelfViewFixesThree then
										cloneAnimationTracks[anim.AnimationId]:Stop(0)
									else
										cloneAnimationTracks[anim.AnimationId]:Stop()
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

					local offset = Vector3.new(0, 0.105, -(boundsSize.Z + 1))
					viewportCamera.CFrame = CFrame.lookAt(center + offset, centerLowXimpact)
					viewportCamera.Focus = headClone.CFrame
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
			if FFlagSelfViewFixesThree then
				if gotUsableClone then
					noUsableCloneOffset = nil
				end

				local shouldBeVisible = frameShouldBeVisible(step, gotUsableClone)
				if frame.Visible ~= shouldBeVisible then
					frame.Visible = shouldBeVisible
				end
			else
				local shouldBeEnabledCoreGuiSetting = getShouldBeEnabledCoreGuiSetting()
				if frame.Visible ~= gotUsableClone or frame.Visible ~= shouldBeEnabledCoreGuiSetting then
					frame.Visible = gotUsableClone and shouldBeEnabledCoreGuiSetting
				end
			end

			trackSelfViewSessionAsNeeded()
		end

		--debugPrint("Self View: renderstepped, hasCameraPermissions: "..tostring(hasCameraPermissions)..",hasMicPermissions:"..tostring(hasMicPermissions))
	end)
end

if EngineFeatureFacialAnimationStreamingServiceUseV2 then
	function triggerAnalyticsReportExperienceSettings(serviceState)
		local experienceSettings_placeEnabled = FacialAnimationStreamingService:IsPlaceEnabled(serviceState)
		--local experienceSettings_serverEnabled = FacialAnimationStreamingService:IsServerEnabled(serviceState) --this one is only for throttling, won't send for now
		local experienceSettings_videoEnabled = FacialAnimationStreamingService:IsVideoEnabled(serviceState)
		local experienceSettings_audioEnabled = FacialAnimationStreamingService:IsAudioEnabled(serviceState)

		Analytics:reportExperienceSettings(
			experienceSettings_placeEnabled,
			experienceSettings_videoEnabled,
			experienceSettings_audioEnabled
		)

		--[[
		--TODO: product decision to be made whether we won't show Self View if not voice or video on for experience, if so, comment this in
		if EngineFeatureFacialAnimationStreamingServiceUseV2 then	
			if not experienceSettings_placeEnabled and not experienceSettings_videoEnabled and not experienceSettings_audioEnabled and not IS_STUDIO and not debug then
				showSelfView(false)
			end
		end
		]]
	end

	function triggerAnalyticsReportUserAccountSettings(userId)
		return Promise.new(function(resolve, reject)
			local ok, state =
				pcall(FacialAnimationStreamingService.ResolveStateForUser, FacialAnimationStreamingService, userId)

			if ok then
				local userAccount_videoEnabled = FacialAnimationStreamingService:IsVideoEnabled(state)
				local userAccount_audioEnabled = FacialAnimationStreamingService:IsAudioEnabled(state)

				Analytics:reportUserAccountSettings(userAccount_videoEnabled, userAccount_audioEnabled)
			end
		end)
	end
end

function Initialize(player)
	local shouldBeEnabledCoreGuiSetting = getShouldBeEnabledCoreGuiSetting()

	Analytics:reportSelfViewEnabledInCoreGuiState(shouldBeEnabledCoreGuiSetting)

	if not shouldBeEnabledCoreGuiSetting and not debug then
		return
	end

	if EngineFeatureFacialAnimationStreamingServiceUseV2 then
		-- Listen for service state (info whether enabled for place/experience)
		serviceStateSingalConnection = FacialAnimationStreamingService:GetPropertyChangedSignal("ServiceState")
			:Connect(function()
				triggerAnalyticsReportExperienceSettings(FacialAnimationStreamingService.ServiceState)
			end)
		triggerAnalyticsReportExperienceSettings(FacialAnimationStreamingService.ServiceState)

		triggerAnalyticsReportUserAccountSettings(player.UserId)
	end

	getPermissions()
	createViewport()

	playerAdded(player)

	Players.PlayerAdded:Connect(playerAdded)
	Players.PlayerRemoving:Connect(function(player)
		if player == Players.LocalPlayer then
			clearObserver(Observer.CharacterAdded)
			clearObserver(Observer.CharacterRemoving)
			clearClone()
			if serviceStateSingalConnection then
				serviceStateSingalConnection:Disconnect()
			end
		end
	end)

	startRenderStepped(player)

	initialized = true
end

function setIsOpen(shouldBeOpen)
	debugPrint("Self View: setIsOpen(): " .. tostring(shouldBeOpen))
	isOpen = shouldBeOpen

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

		prepMicAndCamPropertyChangedSignalHandler()

		indicatorCircle.Visible = debug

		trackSelfViewSessionAsNeeded()
	end
end

--comment in to test Self View not getting shown (as wanted) if CoreGuiType.SelfView is already set disabled before we get to init Self View
--StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.SelfView, false)

--toggle Self View based on whether it is enabled via SetCoreGuiEnabled
StarterGui.CoreGuiChangedSignal:Connect(function(coreGuiType, newState)
	if coreGuiType == Enum.CoreGuiType.All or (coreGuiType == Enum.CoreGuiType.SelfView) then
		local shouldBeEnabledCoreGuiSetting = getShouldBeEnabledCoreGuiSetting()

		Analytics:reportSelfViewEnabledInCoreGuiState(shouldBeEnabledCoreGuiSetting)

		debugPrint(
			"Self View: CoreGuiChangedSignal: shouldBeEnabledCoreGuiSetting: "
				.. tostring(shouldBeEnabledCoreGuiSetting)
		)
		--when disable call comes in we always do it, when enable call comes in only if not visible already
		if not newState or frame.Visible ~= newState then
			if newState then
				if initialized then
					ReInit(Players.LocalPlayer)
				else
					Initialize(Players.LocalPlayer)
				end
			else
				if initialized then
					debugPrint("Self View: triggering shutting down because shouldBeEnabledCoreGuiSetting is false")
					setIsOpen(false)
					stopRenderStepped()
					if frame then
						frame.Visible = false
					end
				end
			end
		end
	end
end)

Initialize(Players.LocalPlayer)
