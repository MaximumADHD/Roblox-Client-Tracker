--!nonstrict
--[[
TODO: this is just the initial checkin for RDC preview
this will see major refactors over the next PRs before MVP release
bigger changes before mvp release next up:
-change to be in CoreGUI instead of PlayerGUI
-addition of mic/cam view toggles and other bigger changes to UI and whole flow
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

local defaultPosition = UDim2.new(0, 15, 0, 15)
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
	--TODO: this UI setup will be changed to use CoreGui setup with one of the next PRs before MVP
	local gui = Instance.new("ScreenGui")
	gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	gui.Enabled = true
	gui.Name = selfViewName
	gui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")

	local frame = Instance.new("Frame")
	frame.Name = "SelfViewFrame"
	frame.Position = defaultPosition
	frame.BackgroundColor3 = Color3.new(0, 0, 0)
	frame.BackgroundTransparency = 1
	frame.Parent = gui

	viewportFrame = Instance.new("ViewportFrame")
	viewportFrame.Size = UDim2.new(0, 150, 0, 170)
	viewportFrame.BackgroundColor3 = Color3.new(0, 0, 0)
	viewportFrame.BorderColor3 = Color3.new(0.6, 0.5, 0.4)
	viewportFrame.BorderSizePixel = 2
	viewportFrame.BackgroundTransparency = 0.25
	viewportFrame.Parent = frame

	viewportFrame.Ambient = Color3.new(0.815473, 0.82002, 0.84683)
	viewportFrame.LightColor = Color3.new(0.960555, 0.959792, 0.976547)
	viewportFrame.BackgroundColor3 = Color3.new(0.19443, 0.282338, 1)
	viewportFrame.LightDirection = Vector3.new(-90, 180, 165)

	local minMaxButton = Instance.new("ImageButton")
	minMaxButton.Parent = frame
	minMaxButton.Size = UDim2.new(0, 20, 0, 20);
	minMaxButton.Image = "rbxasset://textures/ui/ScreenshotHud/Close.png"
	minMaxButton.MouseButton1Click:Connect(function()
		viewportFrame.Visible = not viewportFrame.Visible
	end)

	local uiCorner = Instance.new("UICorner")
	uiCorner.Parent = minMaxButton

	local uiCorner = Instance.new("UICorner")
	uiCorner.Parent = viewportFrame

	local worldModel = Instance.new("WorldModel")
	worldModel.Parent = viewportFrame

	viewportCamera = Instance.new("Camera")
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
		cloneTrack = animator:LoadAnimation(track.Animation)
		cloneTrack.TimePosition = track.TimePosition
	elseif track.Animation:IsA("TrackerStreamAnimation") then
		cloneTrack = animator:LoadStreamAnimation(track.Animation)
	else
		warn("No animation to clone in SelfView")
	end

	-- check state
	if cloneTrack then
		-- play track
		cloneTrack:Play()
		-- listen for track changes
		trackStoppedConnections[track] = track.Stopped:Connect(function ()
			cloneTrack:Stop()
			if trackStoppedConnections[track] then trackStoppedConnections[track]:Disconnect() end
			end)
		-- TODO: Listen for other track events?
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
			viewportCamera.CFrame = cloneRootPart.CFrame * CFrame.new(0,1.5,-2) * CFrame.Angles(math.rad(10),math.rad(180),0)
		end

		local cloneHumanoid = clone:WaitForChild("Humanoid")
		local cloneAnimator = cloneHumanoid:WaitForChild("Animator")

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
				local playingAnimTracks = animator:GetPlayingAnimationTracks()
				for index, track in ipairs(playingAnimTracks) do
					syncTrack(cloneAnimator, track)
				end

				for index, track in ipairs(animator:GetPlayingAnimationTracksCoreScript()) do
					syncTrack(cloneAnimator, track)
				end

				-- listen for new track
				observerInstances[Observer.AnimationPlayed] = animator.AnimationPlayed:Connect(function(track)
					syncTrack(cloneAnimator, track)
				end)
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
			headRef = Players.LocalPlayer.Character:WaitForChild("Head")
		end
			
		if headRef then			
			if headRef.Color ~= cachedHeadColor or headRef.Size ~= cachedHeadSize then
				cachedHeadColor = headRef.Color
				cachedHeadSize = headRef.Size
				setCloneDirty(true)
				
			end
		end
	
		if updateCloneCurrentCoolDown > 0 then
			updateCloneCurrentCoolDown -= step
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