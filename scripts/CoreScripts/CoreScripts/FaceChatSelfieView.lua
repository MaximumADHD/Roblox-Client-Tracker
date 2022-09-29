--!nonstrict
--[[
TODO: this is just an in between state checkin for MVP preview
this will see major refactors over the next PRs before MVP release
bigger changes before mvp release next up:
-addition of api for developer to toggle SelfView on/off
-bigger changes to UI and whole flow

*bigger changes before full version release:
-add tracking calls
-potentially changing this to do the ui in roact
-improve cam framing in viewportframe further
-reduce full rebuilds of clone as much as possible 
(potentially size change for bodyparts could be done in place instead of doing full rebuild)
]]

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local AppStorageService = game:GetService("AppStorageService")
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local VideoCaptureService = game:FindService("VideoCaptureService")
local FaceAnimatorService = game:FindService("FaceAnimatorService")
local FacialAnimationStreamingService = game:GetService("FacialAnimationStreamingService")

local log = require(RobloxGui.Modules.Logger):new(script.Name)

local DEFAULT_POSITION = UDim2.fromOffset(15, 25)
local DEFAULT_SIZE = UDim2.fromOffset(150, 180)
local DEFAULT_BUTTONS_BAR_HEIGHT = 36
local BACKGROUND_TRANSPARENCY = 0.65
local SCREEN_BORDER_OFFSET = 3
local SELF_VIEW_NAME = "SelfView"
local MIC_ICON_ENABLED = "rbxasset://textures/SelfView/SelfView_icon_mic_enabled.png"
local MIC_ICON_DISABLED = "rbxasset://textures/SelfView/SelfView_icon_mic_disabled.png"
local CAM_ICON_ENABLED = "rbxasset://textures/SelfView/SelfView_icon_camera_enabled.png"
local CAM_ICON_DISABLED = "rbxasset://textures/SelfView/SelfView_icon_camera_disabled.png"
local cloneCharacterName = "SelfAvatar"
-- seconds to wait to update the clone after something in the original has changed
local UPDATE_CLONE_CD = 0.35
local updateCloneCurrentCoolDown = 0

local renderSteppedConnection = nil
local playerCharacterAddedConnection
local playerCharacterRemovingConnection
local trackStoppedConnections = {}
local videoAnimationPropertyChangedSingalConnection = nil
local audioAnimationPropertyChangedSingalConnection = nil

local cloneAnimator = nil
local cloneAnimationTracks = {}
local orgAnimationTracks = {}
local cachedHeadColor = nil
local cachedHeadSize = nil
local cachedAudioEnabled = nil
local cachedMode = nil
local viewportFrame = nil
local viewportCamera = nil
local cloneAnchor = nil
local clone = nil
local headRef = nil
local frame = nil
local micIcon = nil
local camIcon = nil
local indicatorCircle = nil

--state
local isOpen = true
local audioIsEnabled = false
local videoIsEnabled = false
local foundStreamTrack = nil

local observerInstances = {}
local Observer = {
	AnimationPlayed = "AnimationPlayed",
	AnimationPlayedCoreScript = "AnimationPlayedCoreScript",
	DescendantAdded = "DescendantAdded",
	DescendantRemoving = "DescendantRemoving",
	HeadSize = "HeadSize",
	Color = "Color",
	CharacterAdded = "CharacterAdded",
	CharacterRemoving = "CharacterRemoving"
}

local function removeChild(model, childName)
	local child = model:FindFirstChild(childName)
	if child then
		child:Destroy()
	end
end

function setCloneDirty(dirty)
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

-- Update the position of the Self View frame based on dragging.
local function processDrag(frame, inputPosition, dragStartPosition, frameStartPosition)
	local delta = (inputPosition - dragStartPosition)
	local newPosition = {
		X = (delta + frameStartPosition).X,
		Y = (delta + frameStartPosition).Y,
	}

	-- Constrain the location to the screen.
	local screenSize = frame.Parent.AbsoluteSize
	newPosition.X = math.min(newPosition.X, (screenSize.X - SCREEN_BORDER_OFFSET ) - frame.AbsoluteSize.X)
	newPosition.Y = math.min(newPosition.Y, (screenSize.Y - SCREEN_BORDER_OFFSET ) - frame.AbsoluteSize.Y)
	newPosition.X = math.max(SCREEN_BORDER_OFFSET, newPosition.X)
	newPosition.Y = math.max(SCREEN_BORDER_OFFSET, newPosition.Y)

	frame.Position = UDim2.fromOffset(newPosition.X, newPosition.Y)
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

		local value = frame.AbsolutePosition.X .."," ..frame.AbsolutePosition.Y
		AppStorageService:SetItem("SelfViewPosition", value)
	end)
	table.insert(connections, inputEndedConnection)

	local focusLostConnection = UserInputService.WindowFocusReleased:Connect(function()
		disconnectListeners()
	end)
	table.insert(connections, focusLostConnection)
end
-- END DRAGGING --

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
	
	local position = DEFAULT_POSITION
	-- Remove pcall when the key SelfViewPosition is in AppStorageService.
	pcall(function()
		local savedPosition = AppStorageService:GetItem("SelfViewPosition")
		if savedPosition then
			local pos = string.split(savedPosition, ",")
			position = UDim2.fromOffset(pos[1], pos[2])
		end
	end)
	frame.Position = position
	frame.Size = DEFAULT_SIZE
	frame.BackgroundTransparency = 1
	frame.InputBegan:Connect(function(input)
		inputBegan(frame, input)
	end)
	-- TODO AVBURST-10067 Disconnect event when applicable.

	local bottomButtonsFrame = Instance.new("Frame")
	bottomButtonsFrame.Name = "BottomButtonsFrame"
	bottomButtonsFrame.Position = UDim2.new(0, 0, 1, -DEFAULT_BUTTONS_BAR_HEIGHT)
	bottomButtonsFrame.Size = UDim2.new(1, 0, 0, DEFAULT_BUTTONS_BAR_HEIGHT)
	bottomButtonsFrame.BackgroundColor3 = Color3.new(1, 1, 1)
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
		if voiceService then
			VoiceChatServiceManager:ToggleMic()
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
		if not FaceAnimatorService or not FaceAnimatorService:IsStarted() then
			return
		end
		FaceAnimatorService.VideoAnimationEnabled = not FaceAnimatorService.VideoAnimationEnabled
	end)

	uiCorner = Instance.new("UICorner")
	uiCorner.Parent = camButton

	micIcon = Instance.new("ImageLabel")
	micIcon.Name = "MicIcon"
	micIcon.Parent = micButton
	micIcon.AnchorPoint = Vector2.new(0.5, 0.5)
	micIcon.Position = UDim2.new(0.5, 0, 0.5, 0)
	micIcon.Size = UDim2.new(0, 32, 0, 32)
	micIcon.Image = MIC_ICON_ENABLED
	micIcon.BackgroundTransparency = 1
	micIcon.ZIndex = 2	

	camIcon = Instance.new("ImageLabel")
	camIcon.Name = "CamIcon"
	camIcon.Parent = camButton
	camIcon.AnchorPoint = Vector2.new(0.5, 0.5)
	camIcon.Position = UDim2.new(0.5, 0, 0.5, 0)
	camIcon.Size = UDim2.new(0, 32, 0, 32)
	camIcon.Image = CAM_ICON_ENABLED
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

	indicatorCircle = Instance.new("ImageLabel")
	indicatorCircle.Name = "IndicatorCircle"
	indicatorCircle.Parent = frame
	indicatorCircle.Position = UDim2.new(1, -25, 0, 4)
	indicatorCircle.Size = UDim2.new(0, 22, 0, 22)
	indicatorCircle.Image = "rbxasset://textures/SelfView/SelfView_icon_indicator_on.png"
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

	local closeButtonIcon =  Instance.new("ImageLabel")
	closeButtonIcon.Name = "CloseButtonIcon"
	closeButtonIcon.Parent = closeButton
	closeButtonIcon.AnchorPoint = Vector2.new(0.5, 0.5)
	closeButtonIcon.Position = UDim2.new(0, 17, 0, 17)
	closeButtonIcon.Size = UDim2.new(0, 32, 0, 32)
	closeButtonIcon.Image = "rbxasset://textures/SelfView/SelfView_icon_close.png"
	closeButtonIcon.ImageTransparency = 0
	closeButtonIcon.BackgroundTransparency = 1
	closeButtonIcon.ZIndex = 2

	local faceIcon =  Instance.new("ImageLabel")
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

	closeButton.Activated:Connect(function()
		setIsOpen(not isOpen)

		selfViewFrame.Visible = isOpen
		bottomButtonsFrame.Visible = isOpen
		closeButtonIcon.Visible = isOpen
		faceIcon.Visible = not isOpen
		closeButton.BackgroundTransparency = isOpen and 1 or 0.5

		if isOpen then
			micButton.Position = UDim2.new(0, 0, 0, 0)
			micButton.Size = UDim2.new(0.5, -4, 1, -4)
			micButton.ImageTransparency = 0

			camButton.Position = UDim2.new(0, 0, 0, 0)
			camButton.Size = UDim2.new(0.5, -4, 1, -4)
			camButton.ImageTransparency = 0

			indicatorCircle.Position = UDim2.new(1, -25, 0, 4)
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
		end

		bottomButtonsFrame.Visible = isOpen

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
	uiStroke.Color = Color3.new(1,1,1)

	uiStroke = Instance.new("UIStroke")
	uiStroke.Parent = viewportFrame
	uiStroke.Thickness = 2.5
	uiStroke.Color = Color3.new(1,1,1)

	local worldModel = Instance.new("WorldModel")
	worldModel.Parent = viewportFrame

	viewportCamera = Instance.new("Camera")
	--FoV smaller is closer up
	viewportCamera.FieldOfView = 55
	viewportFrame.CurrentCamera = viewportCamera
	viewportCamera.Parent = worldModel

	-- define clone anchor
	cloneAnchor = worldModel
end

function toggleIndicator(mode)
	if indicatorCircle then 
		indicatorCircle.Visible = mode ~= nil and mode ~= Enum.TrackerMode.None
	end
end

function updateAudioButton(enabled)
	if enabled then
		if micIcon then 
			micIcon.Image = MIC_ICON_ENABLED 
		end
	else
		if micIcon then 
			micIcon.Image = MIC_ICON_DISABLED 
		end
	end

	audioIsEnabled = enabled
end

function updateVideoButton(enabled)
	if enabled then
		if camIcon then 
			camIcon.Image = CAM_ICON_ENABLED 
		end
	else
		if camIcon then 
			camIcon.Image = CAM_ICON_DISABLED 
		end
	end

	videoIsEnabled = enabled
end

local onUpdateTrackerMode = function()
	local mode = Enum.TrackerMode.None --"NONE"
	if FaceAnimatorService.AudioAnimationEnabled and not FaceAnimatorService.VideoAnimationEnabled then
		mode = Enum.TrackerMode.Audio --"A2C"
	elseif not FaceAnimatorService.AudioAnimationEnabled and FaceAnimatorService.VideoAnimationEnabled and FaceAnimatorService:IsStarted() then
		mode = Enum.TrackerMode.Video --"V2C"
	elseif FaceAnimatorService.AudioAnimationEnabled and FaceAnimatorService.VideoAnimationEnabled  and FaceAnimatorService:IsStarted() then
		mode = Enum.TrackerMode.AudioVideo --"AV2C"
	end
	--TODO: remove testing messages before mvp release
	--print("onUpdateTrackerMode(), mode: "..tostring(mode))

	updateVideoButton(mode == Enum.TrackerMode.AudioVideo or mode == Enum.TrackerMode.Video)

	toggleIndicator(mode)

	--if clone was setup with no streamtrack but now mode changed to one of the modes which could deliver a stream track, queue refresh of Self View
	if not foundStreamTrack and ( cachedMode == nil or ( cachedMode == Enum.TrackerMode.None and mode ~=  Enum.TrackerMode.None) ) then
		setCloneDirty(true)
	end
	cachedMode = mode
end

VoiceChatServiceManager.muteChanged.Event:Connect(function(muted)
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

local function clearClone()
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
	foundStreamTrack = nil
	cachedAudioEnabled = nil
	cachedMode = nil
	cloneAnimator = nil
	cloneAnimationTracks = {}
	-- clear objects
	if clone then
		clone:Destroy()
		clone = nil
	end
	local noRefClone = cloneAnchor:FindFirstChild(cloneCharacterName)
	if noRefClone then
		noRefClone:Destroy()
	end
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
		cloneTrack = animator:LoadStreamAnimation(track.Animation)
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
		trackStoppedConnections[track] = track.Stopped:Connect(function ()
			cloneTrack:Stop()
			if trackStoppedConnections[track] then trackStoppedConnections[track]:Disconnect() end
			end)
	end
end

-- Finds the FaceControls instance attached to the rig
function getFaceControls(rig)
	return rig:FindFirstChildWhichIsA("FaceControls", true)
end

function getHead(character)
	if not character then return nil end

	--most simple lookup
	local head = character:FindFirstChild("Head")

	if not head then
		--lookup for dynamic heads
		local faceControls = getFaceControls(character)
		if faceControls ~= nil then
			head = faceControls.Parent
		end

		--lookup for non dynamic heads
		if not head then
			head = character:FindFirstChild("Head",true)
		end
	end

	return head
end

local function updateClone(player)

	clearClone()

	if not player then
	return end

	--we set it up here so it is already ready for before player's character loaded
	startRenderStepped(player)

	if not player or not player.Character then
		return
	end

	--need to wait here for character else sometimes error on respawn
	local character = player.Character or player.CharacterAdded:Wait()
	
	-- wait for important components needed from the original model before cloning
	local humanoid = character:WaitForChild("Humanoid", 10)
	if humanoid then 
		local animator = humanoid:WaitForChild("Animator", 10)
		local rootPart = character:WaitForChild("HumanoidRootPart", 10)

		-- create clone
		local previousArchivableValue = character.Archivable
		character.Archivable = true
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
		clone.Parent = cloneAnchor

		--focus clone
		local cloneRootPart = clone:WaitForChild("HumanoidRootPart", 5)
		if cloneRootPart then
			cloneRootPart.CFrame = CFrame.new(Vector3.new(0,0,0))
			--focus viewport frame camera on upper body
			--viewportCamera.CFrame = cloneRootPart.CFrame * CFrame.new(0,1.5,-2) * CFrame.Angles(math.rad(10),math.rad(180),0)--comment out for work in progress
						
			--GetExtentsSize is only usable on models, so putting head into model:
			--todo: only run this if head found, also look for head with descendents if not found
			local dummyModel = Instance.new("Model")
			dummyModel.Parent = clone
			local head = getHead(clone)
			character.Archivable = true
			local headClone = head:Clone()
			headClone.CanCollide = false
			headClone.Parent = dummyModel
			local rig = dummyModel
			local extents = rig:GetExtentsSize()
			local width = math.min(extents.X, extents.Y)  
			width = math.min(extents.X, extents.Z)  
			local rootPart = headClone
			local rootFrame = rootPart.CFrame
			headClone:Destroy()

			local center = rootFrame.Position + rootFrame.LookVector * (width * 2)
			local offset = Vector3.new(0,0.105,-0.25)
			viewportCamera.CFrame = CFrame.lookAt(center + offset, rootFrame.Position)
			viewportCamera.Focus = rootFrame
			character.Archivable = previousArchivableValue
			dummyModel:Destroy()		
		end

		local cloneHumanoid = clone:WaitForChild("Humanoid", 10)
		cloneAnimator = cloneHumanoid:WaitForChild("Animator", 10)

		cloneHumanoid.DisplayDistanceType = "None"

		--prep sync streaming tracks
		if cloneAnimator then
			-- clear cloned tracks
			local clonedTracks = cloneAnimator:GetPlayingAnimationTracks()
			local coreScriptTracks = cloneAnimator:GetPlayingAnimationTracksCoreScript()

			for index, track in ipairs(clonedTracks) do
				track:Stop()
				track:Destroy()
			end

			for index, track in ipairs(coreScriptTracks) do
				track:Stop()
				track:Destroy()
			end

			if animator then
				 -- clone tracks manually
				for index, track in ipairs(animator:GetPlayingAnimationTracksCoreScript()) do
					syncTrack(cloneAnimator, track)
				end

				observerInstances[Observer.AnimationPlayedCoreScript] = animator.AnimationPlayedCoreScript:Connect(function(track)
					syncTrack(cloneAnimator, track)
				end)					
			else
				--print("updateClone: no animator (original)!")
				-- TODO: we'll add error tracking pre release
			end
		else
			--print("updateClone: cloneAnimator is NIL")
			--TODO: we'll add error tracking pre release
		end
	else
		-- TODO: pre MVP release add retry/ error handling
		stopRenderStepped()
	end
end

local function characterAdded(character)
	
	headRef = getHead(character)
	if headRef then
		cachedHeadColor = headRef.Color
		cachedHeadSize = headRef.Size
	end	
		
	--avoid multi events
	clearObserver(Observer.DescendantAdded)
	clearObserver(Observer.DescendantRemoving)
	clearObserver(Observer.HeadSize)
	clearObserver(Observer.Color)
	
	-- listen for updates on the original character's structure
	observerInstances[Observer.DescendantAdded] = character.DescendantAdded:Connect(function(descendant)
		if descendant.Name == "Head" then
			headRef = character:WaitForChild("Head")
			if headRef then
				cachedHeadColor = headRef.Color
				cachedHeadSize = headRef.Size
			end
		end
			
		setCloneDirty(true)
	end)
	observerInstances[Observer.DescendantRemoving] = character.DescendantRemoving:Connect(function(descendant)
		setCloneDirty(true)
	end)
	
	setCloneDirty(true)
end

local function ReInit(player)	
	headRef = getHead(player.Character)
	if headRef then
		cachedHeadColor = headRef.Color
		cachedHeadSize = headRef.Size
	end
	
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
		
		if playerCharacterAddedConnection ~=nil then
			playerCharacterAddedConnection:Disconnect()
			playerCharacterAddedConnection = nil
			clearObserver(Observer.CharacterAdded)
		end
		
		local currentCharacter = player.Character or player.CharacterAdded:Wait()

		--handle respawn:
		playerCharacterAddedConnection = player.CharacterAdded:Connect(onCharacterAdded)

		playerCharacterRemovingConnection = player.CharacterRemoving:Connect(function ()
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

	if headRef.Color ~= cachedHeadColor then
		local character = Players.LocalPlayer.Character

		if not character then return end

		if not clone then return end

		for index, part in pairs(character:GetChildren()) do
			if part:IsA("MeshPart") then
				local clonePart = clone:FindFirstChild(part.Name)
				if clonePart then
					clonePart.Color = part.Color
				end
			end
		end		
	end

	cachedHeadColor = headRefColor
end

function prepMicAndCamPropertyChangedSignalHandler()
	if not videoAnimationPropertyChangedSingalConnection then
		videoAnimationPropertyChangedSingalConnection = FaceAnimatorService:GetPropertyChangedSignal("VideoAnimationEnabled"):Connect(function()
			onUpdateTrackerMode()
		end)
	end

	if not audioAnimationPropertyChangedSingalConnection then
		audioAnimationPropertyChangedSingalConnection = FaceAnimatorService:GetPropertyChangedSignal("AudioAnimationEnabled"):Connect(function()
			onUpdateTrackerMode()
		end)
	end
end

function startRenderStepped(player)
	stopRenderStepped()

	prepMicAndCamPropertyChangedSignalHandler()

	onUpdateTrackerMode()

	renderSteppedConnection = RunService.RenderStepped:Connect(function(step)
		--GetPropertyChangedSignal for head color/size change fired reliably in a simple test place for animation props
		--but it did not fire reliably in a more involved test place, so as fallback for now we also check manually for changes..

		local audioEnabled = false
		local voiceService = VoiceChatServiceManager:getService()
		if voiceService and VoiceChatServiceManager.localMuted ~= nil then
			audioEnabled = VoiceChatServiceManager.localMuted
		end
		if cachedAudioEnabled ~= audioEnabled then
			updateAudioButton(audioEnabled)
			cachedAudioEnabled = audioEnabled
		end



		if Players.LocalPlayer then
			local character = Players.LocalPlayer.Character

			if not character then return end

			if not character.Parent then return end
			
			headRef = getHead(character)

			if headRef then
			
				local humanoid = character:FindFirstChild("Humanoid")
				local animator = nil
				if humanoid then
					animator = humanoid:FindFirstChild("Animator")
				end

				--manual sync of canned animation tracks
				if cloneAnimator ~= nil and animator ~= nil then

					local playingAnims = cloneAnimator:GetPlayingAnimationTracks()
					for _, track in pairs(playingAnims) do
						track:Stop()
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
								local cloneAnimationTrack = cloneAnimationTracks[anim.AnimationId]--cloneAnimator:LoadAnimation(anim)
								
								cloneAnimationTrack:Play()	
								cloneAnimationTrack.TimePosition = value.TimePosition
								cloneAnimationTrack.Priority = value.Priority
								cloneAnimationTrack:AdjustWeight(value.WeightCurrent,0.1)
							end
						end
					end

					--clear meanwhile not anymore playing track
					for trackId in (cloneAnimationTracks) do
						local track = cloneAnimationTracks[trackId]
						if track then
							anim = track.Animation
							if anim then
								if not orgAnimationTracks[anim.AnimationId] then
									cloneAnimationTracks[anim.AnimationId]:Stop()
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
								trackS:AdjustWeight(track.WeightCurrent,0)
							end
						end
					end		
				end
			end

			if headRef then			
				if headRef.Size ~= cachedHeadSize then
					cachedHeadSize = headRef.Size
					setCloneDirty(true)
				end
			end
		
			if headRef then			
				if headRef.Color ~= cachedHeadColor then
					updateClonePartsColor(headRef.Color)
				end
			end
		end

		if updateCloneCurrentCoolDown > 0 then
			updateCloneCurrentCoolDown = updateCloneCurrentCoolDown - step
			if updateCloneCurrentCoolDown <= 0 then
				updateClone(player)
				updateCloneCurrentCoolDown = 0
			end
		end
	end)
end

local function Initialize(player)
	createViewport()

	playerAdded(player)

	Players.PlayerAdded:Connect(playerAdded)
	Players.PlayerRemoving:Connect(function(player)
		if player == Players.LocalPlayer then
			clearObserver(Observer.CharacterAdded)
			clearObserver(Observer.CharacterRemoving)
			clearClone()
		end
	end)

	startRenderStepped(player)
end

function setIsOpen(shouldBeOpen)
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
	end
end

Initialize(Players.LocalPlayer)
