--!strict
local CorePackages = game:GetService("CorePackages")
local ModelUtils = require(script.Parent.Parent.Utils.ModelUtils)

local CharacterUtility = require(CorePackages.Thumbnailing).CharacterUtility
local CFrameUtility = require(CorePackages.Thumbnailing).CFrameUtility

local newTrackerStreamAnimation: TrackerStreamAnimation? = nil
local cloneStreamTrack: AnimationStreamTrack? = nil

local EngineFeatureHasFeatureLoadStreamAnimationForSelfieViewApiEnabled =
	game:GetEngineFeature("LoadStreamAnimationForSelfieViewApiEnabled")

local FFlagSelfViewImprovedUpdateCloneTriggering = game:DefineFastFlag("SelfViewImprovedUpdateCloneTriggering", false)

local SelfieViewModule = script.Parent.Parent.Parent.SelfieView
local GetFFlagSelfieViewDontWaitForCharacter = require(SelfieViewModule.Flags.GetFFlagSelfieViewDontWaitForCharacter)

local RunService = game:GetService("RunService")

local DEFAULT_SELF_VIEW_CAM_OFFSET = Vector3.new(0, 0.105, -0.25)
local DEFAULT_SELF_VIEW_NO_HEAD_CAM_OFFSET = Vector3.new(0, 1.5, 0)
local DEFAULT_CAM_X_ROT = -0.04
local DEFAULT_CAM_DISTANCE = 2
local DEFAULT_CAM_DISTANCE_NO_HEAD = 2.5

--FoV smaller is closer up
local SELF_VIEW_CAMERA_FIELD_OF_VIEW = 70
--gets value populated with actual headHeight once we have it, default value is just a fallback value while no proper usable head is found
local headHeight = 1.31

local cloneCharacterName = "SelfAvatar"
-- seconds to wait to update the clone after something in the original has changed
local UPDATE_CLONE_CD = 0.35
local updateCloneCurrentCoolDown = 0

local renderSteppedConnection: RBXScriptConnection? = nil
local playerCharacterAddedConnection: RBXScriptConnection? = nil
local trackStoppedConnections = {}

--table which gets populated with the initial transparency of body parts
--so we can maintain that transparency even if later it gets changed for the game world avatar when entering vehicles or similar
local partsOrgTransparency = {}

local cloneAnimator: Animator? = nil
local cloneAnimationTracks = {}
local orgAnimationTracks = {}
local cachedHeadColor: Color3? = nil
local cachedHeadSize: Vector3? = nil

local viewportFrame: ViewportFrame = nil
local viewportCamera: Camera? = nil
--fallback default value, actual value gets populated once parts found:
local boundsSize: Vector3? = Vector3.new(1.1721, 1.1811, 1.1578)
local cloneAnchor: WorldModel? = nil
local clone: Model? = nil
local headRef: MeshPart? = nil
local headClone: MeshPart? = nil
local headCloneNeck: Motor6D? = nil
local headCloneRootFrame: CFrame? = nil
local wrapperFrame: Frame? = nil
local initialized = false

--state
local cloneCamUpdateCounter: number = 0
--TODO: increase cloneCamUpdatePosEvery once we add easing to the cam framing code
local cloneCamUpdatePosEvery = 1

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

local Players = game:GetService("Players")
if not Players.LocalPlayer then
	warn("Players.LocalPlayer does not exist")
end
local LocalPlayer = Players.LocalPlayer :: Player

function setCloneDirty(dirty: boolean): ()
	if dirty then
		updateCloneCurrentCoolDown = UPDATE_CLONE_CD
	else
		updateCloneCurrentCoolDown = 0
	end
end

function createCloneAnchor(): ()
	if cloneAnchor ~= nil then
		cloneAnchor:Destroy()
		cloneAnchor = nil
	end

	local worldModel = Instance.new("WorldModel")
	worldModel.Parent = viewportFrame
	-- define clone anchor
	cloneAnchor = worldModel
end

local function clearObserver(observerId: string): ()
	if observerInstances[observerId] then
		observerInstances[observerId]:Disconnect()
		observerInstances[observerId] = nil
	end
end

function clearCloneCharacter(): ()
	if clone then
		clone:Destroy()
		clone = nil
	end

	if not cloneAnchor then
		warn("cloneAnchor is nil, this shouldn't be possible")
		return
	end
	assert(cloneAnchor ~= nil)
	local noRefClone = cloneAnchor:FindFirstChild(cloneCharacterName)
	if noRefClone then
		noRefClone:Destroy()
	end

	createCloneAnchor()
end

local function clearClone()
	-- clear listeners
	stopRenderStepped()
	clearObserver(Observer.AnimationPlayed)
	clearObserver(Observer.AnimationPlayedCoreScript)

	cloneAnimator = nil
	cloneAnimationTracks = {}
	-- clear objects
	clearCloneCharacter()
end

local function syncTrack(animator: Animator, track: AnimationTrack)
	if not animator or not track.Animation then
		return
	end

	-- create the track
	local cloneTrack = nil
	if track.Animation and track.Animation:IsA("Animation") then
		--regular animation sync handled further below
	elseif track.Animation and track.Animation:IsA("TrackerStreamAnimation") then
		if EngineFeatureHasFeatureLoadStreamAnimationForSelfieViewApiEnabled then
			newTrackerStreamAnimation = Instance.new("TrackerStreamAnimation")
			assert(newTrackerStreamAnimation ~= nil)
			cloneStreamTrack =
				animator:LoadStreamAnimationForSelfieView_deprecated(newTrackerStreamAnimation, LocalPlayer)
			cloneTrack = cloneStreamTrack
		else
			cloneTrack = animator:LoadStreamAnimation(track.Animation)
		end
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

local function updateClone(player: Player?)
	clearClone()

	if not player then
		return
	end
	assert(player ~= nil)

	--we set it up here so it is already ready for before player's character loaded
	startRenderStepped(player)

	--need to wait here for character else sometimes error on respawn
	local character = player.Character

	if GetFFlagSelfieViewDontWaitForCharacter() then
		if not player or not player.Character then
			return
		end

		character = player.Character

		if not character then
			return
		end
	else
		if not player or not (player.Character or player.CharacterAdded:Wait()) then
			return
		end

		character = player.Character or player.CharacterAdded:Wait()
	end

	--satisfy typechecker:
	assert(character ~= nil)

	local animator: Animator? = ModelUtils.getAnimator(character, 10)

	clearCloneCharacter()

	-- create clone
	local previousArchivableValue = character.Archivable
	character.Archivable = true

	local orgHead = ModelUtils.getHead(character)

	if not orgHead then
		return
	end

	clone = character:Clone()
	assert(clone ~= nil)

	--remove tags in Self View clone of avatar as it may otherwise cause gameplay issues
	ModelUtils.removeTags(clone)

	--resetting the joints orientations in the clone since it can happen that body/head IK like code was applied on the player avatar
	--and we want to start with default pose setup in clone, else issues with clone avatar (parts) orientation etc
	ModelUtils.resetPartOrientation(clone)

	--it could happen that the head was made transparent during gameplay, which is in some experiences done when entering a car for example
	--we still want to show the self view avatar's head in that case (also because sometimes exiting vehicles would not cause a refresh of the self view and the head would stay transparent then)
	--but we also want to respect it if the head was transparent to begin with on first usage like for a headless head look
	ModelUtils.updateTransparency(clone, partsOrgTransparency)

	clone.Name = cloneCharacterName

	-- remove unneeded cloned assets
	--(removing these already here as otherwise on fast respawn the Animate script in the clone can execute some stuff already before removal)
	ModelUtils.removeScripts(clone)

	-- Recursively remove unnecessary elements from the Character
	ModelUtils.sanitizeCharacter(clone)

	character.Archivable = previousArchivableValue

	clone.Parent = cloneAnchor

	--focus clone
	local cloneRootPart: BasePart = clone:FindFirstChild("HumanoidRootPart") :: BasePart
	if cloneRootPart then
		cloneRootPart.CFrame = CFrame.new(Vector3.new(0, 0, 0))
		assert(viewportCamera ~= nil)

		--focus viewport frame camera on upper body
		--viewportCamera.CFrame = cloneRootPart.CFrame * CFrame.new(0,1.5,-2) * CFrame.Angles(math.rad(10),math.rad(180),0)--comment out for work in progress
		if orgHead then
			--we want to focus the cam on head + hat accessories bounding box
			--and we don't use rig:GetBoundingBox() because when Game Settings/Avatar/Collision is set to inner box,
			--it does not return the visual mesh's bounding box
			--and hence is then too small for some heads (like Piggy)

			local head = ModelUtils.getHead(clone)
			assert(head ~= nil)

			local headTargetCFrame = CFrameUtility.CalculateTargetCFrame(head.CFrame)
			local minHeadExtent, maxHeadExtent = CharacterUtility.CalculateHeadExtents(clone, headTargetCFrame)
			local oMin, oMax =
				Vector3.new(minHeadExtent.X, minHeadExtent.Y, minHeadExtent.Z),
				Vector3.new(maxHeadExtent.X, maxHeadExtent.Y, maxHeadExtent.Z)
			boundsSize = (oMax - oMin)

			assert(boundsSize ~= nil)

			headHeight = head.Size.Y
			local width = math.min(boundsSize.X, boundsSize.Y)
			width = math.min(boundsSize.X, boundsSize.Z)

			local dummyModel = Instance.new("Model")
			dummyModel.Parent = clone
			head = ModelUtils.getHead(clone)
			character.Archivable = true
			headClone = head:Clone()

			assert(headClone ~= nil)
			headClone.CanCollide = false
			headClone.Parent = dummyModel

			headCloneNeck = ModelUtils.getNeck(clone, headClone)
			local rootPart = headClone
			headCloneRootFrame = rootPart.CFrame
			headClone:Destroy()
			assert(headCloneRootFrame ~= nil)

			local center = headCloneRootFrame.Position + headCloneRootFrame.LookVector * (width * DEFAULT_CAM_DISTANCE)
			viewportCamera.CFrame = CFrame.lookAt(center + DEFAULT_SELF_VIEW_CAM_OFFSET, headCloneRootFrame.Position)
			viewportCamera.Focus = headCloneRootFrame

			character.Archivable = previousArchivableValue
			dummyModel:Destroy()
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
		--TODO: we'll add error tracking pre release
		return
	end

	local cloneHumanoid: Humanoid = clone:FindFirstChild("Humanoid") :: Humanoid
	if cloneHumanoid then
		cloneHumanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	end
	cloneAnimator = ModelUtils.getAnimator(clone, 0)

	--prep sync streaming tracks
	if cloneAnimator then
		-- clear cloned tracks
		local clonedTracks = cloneAnimator:GetPlayingAnimationTracks()
		local coreScriptTracks = cloneAnimator:GetPlayingAnimationTracksCoreScript()

		for _, track in ipairs(clonedTracks) do
			if track ~= nil then
				track:Stop(0)
				track:Destroy()
			end
		end

		for _, track in ipairs(coreScriptTracks) do
			if track ~= nil then
				track:Stop(0)
				track:Destroy()
			end
		end

		if newTrackerStreamAnimation then
			newTrackerStreamAnimation:Destroy()
			newTrackerStreamAnimation = nil
		end

		if animator then
			-- clone tracks manually
			for _, track: AnimationTrack in ipairs(animator:GetPlayingAnimationTracksCoreScript()) do
				syncTrack(cloneAnimator, track)
			end

			observerInstances[Observer.AnimationPlayedCoreScript] = animator.AnimationPlayedCoreScript:Connect(
				function(track)
					syncTrack(cloneAnimator, track)
				end
			)

			--usable clone was set up, cancel potential additional refresh
			setCloneDirty(false)
		else
			-- TODO: we'll add error tracking pre release
		end
	else
		--TODO: we'll add error tracking pre release
	end
end

local function hasProperty(object: any, prop)
	-- this is just done to check if the property existed, if it did nothing would happen,
	-- if it didn't an error will pop, the object[prop] is a different way of writing object.prop,
	-- (object.Transparency or object["Transparency"])
	local _ = object[prop]
end

function updateCachedHeadColor(headRefParam: MeshPart?)
	if headRefParam == nil then
		return
	end
	assert(headRefParam ~= nil)

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

-- we add this so after custom switch to ragdoll behavior and getting back up done
-- by some devs the self view refreshes to show the avatar fine again
local function addHumanoidStateChangedObserver(humanoid: any)
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
	if GetFFlagSelfieViewDontWaitForCharacter() then
		if not character then
			return
		end
	end

	headRef = ModelUtils.getHead(character)
	updateCachedHeadColor(headRef)

	--avoid multi events
	clearObserver(Observer.DescendantAdded)
	clearObserver(Observer.DescendantRemoving)
	clearObserver(Observer.HeadSize)
	clearObserver(Observer.Color)

	if FFlagSelfViewImprovedUpdateCloneTriggering then
		local humanoid = character:FindFirstChild("Humanoid")
		if humanoid then
			addHumanoidStateChangedObserver(humanoid)
		end
	end

	-- listen for updates on the original character's structure
	observerInstances[Observer.DescendantAdded] = character.DescendantAdded:Connect(function(descendant)
		if descendant.Name == "Head" then
			headRef = ModelUtils.getHead(character)

			updateCachedHeadColor(headRef)
		end

		if FFlagSelfViewImprovedUpdateCloneTriggering then
			if descendant.Name == "Humanoid" or descendant:IsA("Humanoid") then
				local humanoid = descendant
				addHumanoidStateChangedObserver(humanoid)
			end

			if ModelUtils.shouldMarkCloneDirtyForDescendant(descendant) then
				setCloneDirty(true)
			end
		else
			setCloneDirty(true)
		end
	end)
	observerInstances[Observer.DescendantRemoving] = character.DescendantRemoving:Connect(function(descendant)
		--these checks are to avoid unnecessary additional refreshes
		if descendant and (descendant:IsA("MeshPart") or descendant:IsA("Accessory")) then
			if descendant:IsA("MeshPart") then
				if descendant.MeshId == "" then
					return
				end
			end
			if not FFlagSelfViewImprovedUpdateCloneTriggering then
				setCloneDirty(true)
			end

			if FFlagSelfViewImprovedUpdateCloneTriggering then
				if ModelUtils.shouldMarkCloneDirtyForDescendant(descendant) then
					setCloneDirty(true)
				end
			end
		end
	end)

	setCloneDirty(true)
	initialized = true
end

local function createViewport(): ()
	if viewportFrame then
		viewportFrame:Destroy()
	end

	viewportFrame = Instance.new("ViewportFrame")
	viewportFrame.Position = UDim2.new(0, 0, 0, 0)
	viewportFrame.Size = UDim2.new(1, 0, 1, 0)
	viewportFrame.BackgroundTransparency = 1
	viewportFrame.Parent = wrapperFrame

	viewportFrame.Ambient = Color3.new(0.7529411765, 0.7098039216, 0.7137254902)
	viewportFrame.LightColor = Color3.new(1, 0.9960784314, 0.9960784314)
	viewportFrame.LightDirection = Vector3.new(9.5, -12, 7.5)
	viewportFrame.IsMirrored = true

	local uiCorner = Instance.new("UICorner")
	uiCorner = Instance.new("UICorner")
	uiCorner.Parent = viewportFrame

	createCloneAnchor()

	viewportCamera = Instance.new("Camera")
	assert(viewportCamera ~= nil)
	--FoV smaller is closer up
	viewportCamera.FieldOfView = SELF_VIEW_CAMERA_FIELD_OF_VIEW
	viewportFrame.CurrentCamera = viewportCamera
	viewportCamera.Parent = viewportFrame
end

function ReInit(player: Player)
	assert(player.Character ~= nil)

	headRef = ModelUtils.getHead(player.Character)
	updateCachedHeadColor(headRef)

	setCloneDirty(false)
	clearObserver(Observer.CharacterAdded)
	clearObserver(Observer.CharacterRemoving)
	clearClone()
	createViewport()
	playerAdded(player)
	startRenderStepped(player)
end

local function onCharacterAdded(character: Model)
	if playerCharacterAddedConnection then
		playerCharacterAddedConnection:Disconnect()
	end
	if GetFFlagSelfieViewDontWaitForCharacter() then
		if not initialized then
			characterAdded(character)
		else
			ReInit(LocalPlayer)
		end
	else
		ReInit(LocalPlayer)
	end
	if FFlagSelfViewImprovedUpdateCloneTriggering then
		clearObserver(Observer.HumanoidStateChanged)
		local humanoid = character:FindFirstChild("Humanoid")
		if humanoid then
			addHumanoidStateChangedObserver(humanoid)
		end
	end
end

--not making this a local function, else on respawn of avatar the function is not available yet when wanting to call it again from the ReInit function
--weird that not all functions are already loaded before executing anything..
--currently it would not be needed yet to have this triggered on playerAdded as we currently only use the self view for the local player
--but we already implement this way as in the future we'll want to show self views for other players, too so it should be easier to build
--towards that starting from this.
function playerAdded(player: Player)
	if player ~= nil and player == LocalPlayer then
		if playerCharacterAddedConnection ~= nil then
			playerCharacterAddedConnection:Disconnect()
			playerCharacterAddedConnection = nil
			clearObserver(Observer.CharacterAdded)
		end

		local currentCharacter: Model | nil = player.Character
		if GetFFlagSelfieViewDontWaitForCharacter() then
			currentCharacter = player.Character
		else
			currentCharacter = player.Character or player.CharacterAdded:Wait()
		end

		--handle (re)spawn:
		playerCharacterAddedConnection = player.CharacterAdded:Connect(onCharacterAdded)

		if GetFFlagSelfieViewDontWaitForCharacter() then
			if currentCharacter then
				characterAdded(currentCharacter)
			end
		else
			--satisfy typechecker:
			assert(currentCharacter ~= nil)

			characterAdded(currentCharacter)
		end

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

	if hasHeadColor and headRef and headRef.Color ~= cachedHeadColor then
		local character = LocalPlayer.Character

		if not character then
			return
		end
		assert(character ~= nil)

		if not clone then
			return
		end
		assert(clone ~= nil)

		for _, part in pairs(character:GetChildren()) do
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

function startRenderStepped(player: Player)
	stopRenderStepped()

	renderSteppedConnection = RunService.RenderStepped:Connect(function(step: number)
		--GetPropertyChangedSignal for head color/size change fired reliably in a simple test place for animation props
		--but it did not fire reliably in a more involved test place, so as fallback for now we also check manually for changes..

		if LocalPlayer then
			local character = LocalPlayer.Character

			if not character or character.Parent == nil then
				return
			end
			assert(character ~= nil)

			if headRef == nil or headRef.Parent ~= character then
				headRef = ModelUtils.getHead(character)
			end

			if headRef then
				local animator: Animator? = ModelUtils.getAnimator(character, 0)

				--manual sync of canned animation tracks
				if cloneAnimator ~= nil and animator ~= nil then
					assert(cloneAnimator ~= nil)

					local playingAnims = cloneAnimator:GetPlayingAnimationTracks()
					for _, track in pairs(playingAnims) do
						if track ~= nil then
							track:Stop(0)
						end
					end

					local orgPlayingTracks = animator:GetPlayingAnimationTracks()

					local anim = nil
					orgAnimationTracks = {}
					for _, value in ipairs(orgPlayingTracks) do
						anim = value.Animation
						if anim then
							if anim:IsA("Animation") then
								orgAnimationTracks[anim.AnimationId] = value
								if not cloneAnimationTracks[anim.AnimationId] then
									cloneAnimationTracks[anim.AnimationId] = cloneAnimator:LoadAnimation(anim)
								end
								local cloneAnimationTrack = cloneAnimationTracks[anim.AnimationId]

								cloneAnimationTrack:Play()
								cloneAnimationTrack.TimePosition = value.TimePosition
								cloneAnimationTrack.Priority = value.Priority
								cloneAnimationTrack:AdjustWeight(value.WeightCurrent, 0.1)
							end
						end
					end

					-- clear meanwhile not anymore playing track
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

					for _, track in ipairs(animator:GetPlayingAnimationTracksCoreScript()) do
						playingAnims = cloneAnimator:GetPlayingAnimationTracksCoreScript()
						for _, trackS in pairs(playingAnims) do
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
						headClone = ModelUtils.getHead(clone)
						if headClone then
							headCloneNeck = ModelUtils.getNeck(clone, headClone)
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
						local _ = headCloneNeck.Part1
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
					end

					if not boundsSize then
						warn("boundsSize is nil, this shouldn't be possible")
					end
					assert(boundsSize ~= nil)
					local offset = Vector3.new(0, (headHeight * 0.25), -(boundsSize.Z + 1))
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

		if updateCloneCurrentCoolDown > 0 then
			updateCloneCurrentCoolDown = updateCloneCurrentCoolDown - step
			if updateCloneCurrentCoolDown <= 0 then
				updateClone(player)
				updateCloneCurrentCoolDown = 0
			end
		end
	end)
end

local function Initialize(player: Player, passedWrapperFrame: Frame?): (() -> ())?
	if passedWrapperFrame then
		wrapperFrame = passedWrapperFrame
	else
		return
	end

	createViewport()

	playerAdded(player)

	Players.PlayerAdded:Connect(playerAdded)
	Players.PlayerRemoving:Connect(function(player)
		if player == LocalPlayer then
			if FFlagSelfViewImprovedUpdateCloneTriggering then
				clearObserver(Observer.HumanoidStateChanged)
			end
			clearObserver(Observer.CharacterAdded)
			clearObserver(Observer.CharacterRemoving)
			clearClone()
		end
	end)

	startRenderStepped(player)

	return clearClone
end

return Initialize
