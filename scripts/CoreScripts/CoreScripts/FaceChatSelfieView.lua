--!nonstrict
--[[
TODO: this is just the initial checkin for MVP preview
this will see major refactors over the next PRs before MVP release
bigger changes before mvp release next up:
-addition of mic/cam view toggles and other bigger changes to UI and whole flow
-addition of api for developer to toggle SelfView on/off

*bigger changes before full version release:
-potentially changing this to do the ui in roact
-reduce full rebuilds of clone as much as possible (color and size change for bodyparts should be done in place instead of doing full rebuild)
-improve cam framing in viewportframe further
]]

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local log = require(RobloxGui.Modules.Logger):new(script.Name)

local viewportFrame = nil
local viewportCamera = nil
local cloneAnchor = nil
local clone = nil

local defaultPosition = UDim2.fromOffset(15, 25)
local defaultSize = UDim2.fromOffset(150, 180)
local buttonsBarHeight = 36
local backgroundTransparency = 0.65
local selfViewName = "SelfViewGui"
local cloneCharacterName = "SelfAvatar"

local headRef = nil

-- seconds to wait to update the clone after something in the original has changed
local UPDATE_CLONE_CD = 0.35
local updateCloneCurrentCoolDown = 0

local renderSteppedConnection = nil

local playerCharacterAddedConnection
local playerCharacterRemovingConnection

local trackStoppedConnections = {}
local cloneAnimator = nil
local cloneAnimationTracks = {}
local gui = nil

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

local function setCloneDirty(dirty)
	if dirty then
		updateCloneCurrentCoolDown = UPDATE_CLONE_CD
	else
		updateCloneCurrentCoolDown = 0
	end
end

local function createViewport()
	--TODO: this UI setup could be changed to roact setup before MVP release, to evaluate pros/ cons
	if gui then gui:Destroy() end

	gui = Instance.new("ScreenGui")
	gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	gui.Enabled = true
	gui.Name = selfViewName
	gui.Parent = RobloxGui

	local frame = Instance.new("Frame")
	frame.Name = "SelfView"
	frame.Position = defaultPosition
	frame.Size = defaultSize
	frame.BackgroundTransparency = 1
	frame.Parent = gui

	local bottomButtonsFrame = Instance.new("Frame")
	bottomButtonsFrame.Name = "BottomButtonsFrame"
	bottomButtonsFrame.Position = UDim2.new(0, 0, 1, -buttonsBarHeight)
	bottomButtonsFrame.Size = UDim2.new(1, 0, 0, buttonsBarHeight)
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

	local micButton = Instance.new("ImageButton")
	micButton.Name = "MicButton"
	micButton.Parent = bottomButtonsFrame
	micButton.Position = UDim2.new(0, 0, 0, 0)
	micButton.Size = UDim2.new(0.5, -4, 1, -4)
	micButton.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
	micButton.ImageColor3 = Color3.new(0.294117, 0.294117, 0.294117)
	micButton.BackgroundTransparency = 1
	micButton.Activated:Connect(function()
		print("button pressed")
	end)

	local uiCorner = Instance.new("UICorner")
	uiCorner.Parent = micButton

	local camButton = Instance.new("ImageButton")
	camButton.Name = "CamButton"
	camButton.Parent = bottomButtonsFrame
	camButton.Position = UDim2.new(0, 0, 0, 0)
	camButton.Size = UDim2.new(0.5, -4, 1, -4)
	camButton.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
	camButton.ImageColor3 = Color3.new(0.294117, 0.294117, 0.294117)
	camButton.BackgroundTransparency = 1
	camButton.Activated:Connect(function()
		print("button pressed")
	end)

	uiCorner = Instance.new("UICorner")
	uiCorner.Parent = camButton


	local selfViewFrame = Instance.new("Frame")
	selfViewFrame.Name = "SelfViewFrame"
	selfViewFrame.Position = UDim2.new(0, 0, 0, 0)
	selfViewFrame.Size = UDim2.new(1, 0, 1, 0)
	selfViewFrame.BackgroundTransparency = 1
	selfViewFrame.Parent = frame

	viewportFrame = Instance.new("ViewportFrame")
	viewportFrame.Position = UDim2.new(0, 0, 0, 0)
	viewportFrame.Size = UDim2.new(1, 0, 1, -(buttonsBarHeight - 1))
	viewportFrame.BackgroundColor3 = Color3.new(0, 0, 0)
	viewportFrame.BorderColor3 = Color3.new(0.6, 0.5, 0.4)
	viewportFrame.BorderSizePixel = 2
	viewportFrame.BackgroundTransparency = backgroundTransparency
	viewportFrame.Parent = selfViewFrame

	viewportFrame.Ambient = Color3.new(0.815473, 0.82002, 0.84683)
	viewportFrame.LightColor = Color3.new(0.960555, 0.959792, 0.976547)
	viewportFrame.BackgroundColor3 = Color3.new(0.0990616, 0.138109, 0.452827)
	viewportFrame.LightDirection = Vector3.new(-70, 70, 165)

	local closeButton = Instance.new("ImageButton")
	closeButton.Name = "CloseButton"
	closeButton.Parent = frame
	closeButton.Position = UDim2.new(0, 4, 0, 4)
	closeButton.Size = UDim2.new(0, 20, 0, 20)
	closeButton.Image = "rbxasset://textures/ui/ScreenshotHud/Close.png"
	closeButton.BackgroundTransparency = 1
	closeButton.ZIndex = 2
	closeButton.Activated:Connect(function()
		selfViewFrame.Visible = not selfViewFrame.Visible
		bottomButtonsFrame.Visible = not bottomButtonsFrame.Visible
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
	viewportCamera.FieldOfView = 55 --60 smaller is closer up
	viewportFrame.CurrentCamera = viewportCamera
	viewportCamera.Parent = worldModel

	-- define clone anchor
	cloneAnchor = worldModel
end

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

local function updateClone(player)
    
	clearClone()

	if not player then
	return end

	--we set it up here so it is already ready for before player's character loaded
	startRenderStepped(player)

	if not player or not player.Character then
		return
	end

	local character = player.Character
	
	-- wait for important components needed from the original model before cloning
	local humanoid = character:WaitForChild("Humanoid", 10)
	if humanoid then 
		local animator = humanoid:WaitForChild("Animator")
		local rootPart = character:WaitForChild("HumanoidRootPart")

		-- create clone
		local previousArchivableValue = character.Archivable
		character.Archivable = true
		clone = character:Clone()
		clone.Name = cloneCharacterName
		
		-- remove unneeded cloned assets 
		--(removing these already here as otherwise on fast respawn the Animate script in the clone can execute some stuff already before removal)
		removeChild(clone, "Animate")
		removeChild(clone, "Health")
		
		character.Archivable = previousArchivableValue
		clone.Parent = cloneAnchor

		local cloneRootPart = clone:WaitForChild("HumanoidRootPart", 5)
		if cloneRootPart then
			cloneRootPart.CFrame = CFrame.new(Vector3.new(0,0,0))
			--focus viewport frame camera on upper body
			--viewportCamera.CFrame = cloneRootPart.CFrame * CFrame.new(0,1.5,-2) * CFrame.Angles(math.rad(10),math.rad(180),0)--comment out for work in progress
						
			--GetExtentsSize is only usable on models, so putting head into model:
			--todo: only run this if head found, also look for head with descendents if not found
			local dummyModel = Instance.new("Model")
			dummyModel.Parent = clone
			local head = clone:FindFirstChild("Head")
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

		local cloneHumanoid = clone:WaitForChild("Humanoid")
		cloneAnimator = cloneHumanoid:WaitForChild("Animator")

		cloneHumanoid.DisplayDistanceType = "None"

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
	
	headRef = character:WaitForChild("Head", 10)
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
	headRef = player.Character:WaitForChild("Head")
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
	headRef = nil
	cachedHeadColor = nil
	cachedHeadSize = nil
	clearAllObservers()
	clearObserver(Observer.CharacterAdded)
	clearObserver(Observer.CharacterRemoving)
	clearClone()
	
	local playerGui = player:FindFirstChild("PlayerGui")
	if playerGui then
		local selfieViewGui = playerGui:FindFirstChild(selfViewName)
		if selfieViewGui then
			selfieViewGui:Destroy()
		end
	end
	
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

function startRenderStepped(player)
	stopRenderStepped()
	renderSteppedConnection = RunService.RenderStepped:Connect(function(step)
		--GetPropertyChangedSignal for head color/size change fired reliably in a simple test place
		--but it did not fire reliably in a more involved test place, so as fallback for now we also check manually for changes..
		
		if Players.LocalPlayer and Players.LocalPlayer.Character then
			local character = Players.LocalPlayer.Character

			if not character then return end

			if not character.Parent then return end
			
			headRef = character:FindFirstChild("Head")

			if headRef then
			
				local humanoid = character:FindFirstChild("Humanoid")
				local animator = nil
				if humanoid then
					animator = humanoid:FindFirstChild("Animator")
				end

				--manual sync
				if cloneAnimator ~= nil and animator ~= nil then

					
					local orgPlayingTracks = animator:GetPlayingAnimationTracks()

					local anim = nil
					for index, value in ipairs(orgPlayingTracks) do
						anim = value.Animation
						if anim then
							if anim:IsA("Animation") then
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
		
					for index, track in ipairs(animator:GetPlayingAnimationTracksCoreScript()) do
						local playingAnims = cloneAnimator:GetPlayingAnimationTracksCoreScript()
						for i, trackS in pairs(playingAnims) do
							if trackS.Animation:IsA("TrackerStreamAnimation") then
								--trackS:Play()	
								trackS.Priority = track.Priority
								trackS:AdjustWeight(track.WeightCurrent,0)--0.1)
							end
						end
					end		
				end
			end
		end

		if headRef then			
			if headRef.Color ~= cachedHeadColor or headRef.Size ~= cachedHeadSize then
				cachedHeadColor = headRef.Color
				cachedHeadSize = headRef.Size
				setCloneDirty(true)
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

Initialize(Players.LocalPlayer)