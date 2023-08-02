--!strict
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

local newTrackerStreamAnimation: TrackerStreamAnimation? = nil
local cloneStreamTrack: AnimationStreamTrack? = nil

local EngineFeatureHasFeatureLoadStreamAnimationForSelfieViewApiEnabled =
	game:GetEngineFeature("LoadStreamAnimationForSelfieViewApiEnabled")

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RunService = game:GetService("RunService")
local FaceAnimatorService = game:GetService("FaceAnimatorService")
local VideoCaptureService = game:GetService("VideoCaptureService")
local toggleSelfViewSignal = require(RobloxGui.Modules.SelfView.toggleSelfViewSignal)
local getCamMicPermissions = require(RobloxGui.Modules.Settings.getCamMicPermissions)
local CorePackages = game:GetService("CorePackages")
local SignalLib = require(CorePackages.Workspace.Packages.AppCommonLib)

local DEFAULT_SELF_VIEW_CAM_OFFSET = Vector3.new(0, 0.105, -0.25)
local cloneCharacterName = "SelfAvatar"
-- seconds to wait to update the clone after something in the original has changed
local UPDATE_CLONE_CD = 0.35
local updateCloneCurrentCoolDown = 0

local renderSteppedConnection: RBXScriptConnection? = nil
local playerCharacterAddedConnection: RBXScriptConnection? = nil
local serviceStateSingalConnection: RBXScriptConnection? = nil
local trackStoppedConnections = {}
local videoAnimationPropertyChangedSingalConnection: RBXScriptConnection? = nil
local audioAnimationPropertyChangedSingalConnection: RBXScriptConnection? = nil
local videoCaptureServiceStartedConnection: RBXScriptConnection? = nil
local videoCaptureServiceStoppedConnection: RBXScriptConnection? = nil
local videoCaptureServiceDevicesChangedConnection: RBXScriptConnection? = nil

local cloneAnimator: Animator? = nil
local cloneAnimationTracks = {}
local orgAnimationTracks = {}
local cachedHeadColor: Color3? = nil
local cachedHeadSize: Vector3? = nil
local currentTrackerMode: Enum.TrackerMode? = nil
local cachedMode = nil
local viewportFrame: ViewportFrame = nil
local viewportCamera: Camera? = nil
local boundsSize: Vector3? = nil
local cloneAnchor: WorldModel? = nil
local clone: Model? = nil
local headRef: MeshPart? = nil
local headClone: MeshPart? = nil
local headCloneNeck: Motor6D? = nil
local headCloneRootFrame: CFrame? = nil
local wrapperFrame: Frame? = nil

--state
local isOpen: boolean = true
local foundStreamTrack: boolean? = nil
local _gotUsableClone: boolean = false
local initialized: boolean = false
local cloneCamUpdateCounter: number = 0
--TODO: increase cloneCamUpdatePosEvery once we add easing to the cam framing code
local cloneCamUpdatePosEvery = 1
local hasCameraPermissions: boolean = false
local hasMicPermissions: boolean = false
local cachedHasCameraPermissions: boolean = false
local cachedHasMicPermissions: boolean = false
local lastReportedCamState: boolean = false
local toggleSelfViewSignalConnection: SignalLib.SignalHandle

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

local Players = game:GetService("Players")
if not Players.LocalPlayer then
	warn("Players.LocalPlayer does not exist")
end
local LocalPlayer = Players.LocalPlayer :: Player

local CoreGuiUtils = require(script.Parent.Parent.Utils.CoreGuiUtils)
local ModelUtils = require(script.Parent.Parent.Utils.ModelUtils)

-- Check that the user's device has given Roblox mic and camera permissions.
function getPermissions(): ()
	local callback = function(response)
		hasCameraPermissions = response.hasCameraPermissions
	end
	getCamMicPermissions(callback)
end

local function removeChild(model: Model, childName: string): ()
	local child = model:FindFirstChild(childName)
	if child then
		child:Destroy()
	end
end

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

	local cameraPermissionsChanged = false
	local modeChanged = false

	--if clone was setup with no streamtrack but now currentTrackerMode changed to one of the modes which could deliver a stream track, queue refresh of Self View
	if
		not foundStreamTrack and (cachedMode == Enum.TrackerMode.None and currentTrackerMode ~= Enum.TrackerMode.None)
	then
		setCloneDirty(true)
	end
	if cachedHasCameraPermissions ~= hasCameraPermissions or cachedHasMicPermissions ~= hasMicPermissions then
		if cachedHasCameraPermissions ~= hasCameraPermissions then
			cameraPermissionsChanged = true
		end

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
			lastReportedCamState = newReportedCamState
		end
	end

	cachedHasCameraPermissions = hasCameraPermissions
	cachedHasMicPermissions = hasMicPermissions
	cachedMode = currentTrackerMode
end

local function clearObserver(observerId: string): ()
	if observerInstances[observerId] then
		observerInstances[observerId]:Disconnect()
		observerInstances[observerId] = nil
	end
end

local function clearAllObservers(): ()
	for observerInstance in observerInstances do
		clearObserver(observerInstance)
	end
end

function clearCloneCharacter(): ()
	if clone then
		clone:Destroy()
		clone = nil
	end

	if not cloneAnchor then
		warn("cloneAnchor is nil, this shouldn't be possible")
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
			cloneTrack:Stop(0)
			if trackStoppedConnections[track] then
				trackStoppedConnections[track]:Disconnect()
			end
		end)
	end
end

local function updateClone(player: Player?)
	clearClone()
	_gotUsableClone = false

	if not player then
		return
	end
	assert(player ~= nil)

	--we set it up here so it is already ready for before player's character loaded
	startRenderStepped(player)

	if not player or not player.Character then
		return
	end

	--need to wait here for character else sometimes error on respawn
	local character: Model = player.Character or player.CharacterAdded:Wait()

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

	--resetting the joints orientations in the clone since it can happen that body/head IK like code was applied on the player avatar
	--and we want to start with default pose setup in clone, else issues with clone avatar (parts) orientation etc
	for _, part in ipairs(clone:GetDescendants()) do
		if part:IsA("Motor6D") then
			part.C0 = CFrame.new(part.C0.Position)
			part.C1 = CFrame.new(part.C1.Position)
		end
	end

	for _, part in ipairs(clone:GetDescendants()) do
		if part:IsA("MeshPart") or part:IsA("Decal") then
			part.Transparency = 0
		end
	end

	clone.Name = cloneCharacterName

	-- remove unneeded cloned assets
	--(removing these already here as otherwise on fast respawn the Animate script in the clone can execute some stuff already before removal)
	removeChild(clone, "Animate")
	removeChild(clone, "Health")

	for _, script in pairs(clone:GetDescendants()) do
		if script:IsA("BaseScript") then
			script:Destroy()
		end
	end

	character.Archivable = previousArchivableValue

	clone.Parent = cloneAnchor
	--product question: should we show the Self View only if there is also a usable (standard) Animator or also for avatars which don't use animator?
	--in that case it could have no streamtrack and we could also support "cloning" anims by copying cframes over
	--if Self View only wanted to be shown if Animator exists, comment below line out (then it will
	--only see it as _gotUsableClone when also Animator found)
	_gotUsableClone = true

	--focus clone
	local cloneRootPart: BasePart = clone:FindFirstChild("HumanoidRootPart") :: BasePart
	if cloneRootPart then
		cloneRootPart.CFrame = CFrame.new(Vector3.new(0, 0, 0))
		--focus viewport frame camera on upper body
		--viewportCamera.CFrame = cloneRootPart.CFrame * CFrame.new(0,1.5,-2) * CFrame.Angles(math.rad(10),math.rad(180),0)--comment out for work in progress

		--GetExtentsSize is only usable on models, so putting head into model:
		--todo: only run this if head found, also look for head with descendents if not found
		local dummyModel = Instance.new("Model")
		dummyModel.Parent = clone
		local head = ModelUtils.getHead(clone)
		assert(head ~= nil)
		character.Archivable = true
		headClone = head:Clone()
		assert(headClone ~= nil)
		headClone.CanCollide = false
		headClone.Parent = dummyModel
		headCloneNeck = ModelUtils.getNeck(clone, headClone)
		local rig = dummyModel
		local extents = rig:GetExtentsSize()
		local width = math.min(extents.X, extents.Y)
		width = math.min(extents.X, extents.Z)
		local _
		_, boundsSize = rig:GetBoundingBox()
		local rootPart = headClone
		headCloneRootFrame = rootPart.CFrame
		assert(headCloneRootFrame ~= nil)
		headClone:Destroy()

		local center = headCloneRootFrame.Position + headCloneRootFrame.LookVector * (width * 2)
		if not viewportCamera then
			warn("viewportCamera is nil, this shouldn't be possible")
		end
		assert(viewportCamera ~= nil)
		viewportCamera.CFrame = CFrame.lookAt(center + DEFAULT_SELF_VIEW_CAM_OFFSET, headCloneRootFrame.Position)
		viewportCamera.Focus = headCloneRootFrame
		character.Archivable = previousArchivableValue
		dummyModel:Destroy()
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
			_gotUsableClone = true

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
	local _ = object[prop] --this is just done to check if the property existed, if it did nothing would happen, if it didn't an error will pop, the object[prop] is a different way of writing object.prop, (object.Transparency or object["Transparency"])
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
		cachedHeadSize = headRefParam.Size
	end
end

local function characterAdded(character)
	headRef = ModelUtils.getHead(character)
	updateCachedHeadColor(headRef)

	--avoid multi events
	clearObserver(Observer.DescendantAdded)
	clearObserver(Observer.DescendantRemoving)
	clearObserver(Observer.HeadSize)
	clearObserver(Observer.Color)

	-- listen for updates on the original character's structure
	observerInstances[Observer.DescendantAdded] = character.DescendantAdded:Connect(function(descendant)
		if descendant.Name == "Head" then
			headRef = ModelUtils.getHead(character)

			updateCachedHeadColor(headRef)
		end

		setCloneDirty(true)
	end)
	observerInstances[Observer.DescendantRemoving] = character.DescendantRemoving:Connect(function(descendant)
		--these checks are to avoid unnecessary additional refreshes
		if descendant and (descendant:IsA("MeshPart") or descendant:IsA("Accessory")) then
			if descendant:IsA("MeshPart") then
				if descendant.MeshId == "" then
					return
				end
			end

			setCloneDirty(true)
		end
	end)

	setCloneDirty(true)
end

function setIsOpen(shouldBeOpen)
	isOpen = shouldBeOpen

	if isOpen then
		ReInit(LocalPlayer)
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

	local function showSelfView(newState)
		setIsOpen(newState)

		if not isOpen then
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
		end
	end

	if toggleSelfViewSignalConnection then
		toggleSelfViewSignalConnection:disconnect()
	end
	toggleSelfViewSignalConnection = toggleSelfViewSignal:connect(function()
		showSelfView(not isOpen)
	end)

	local uiCorner = Instance.new("UICorner")
	uiCorner = Instance.new("UICorner")
	uiCorner.Parent = viewportFrame

	createCloneAnchor()

	viewportCamera = Instance.new("Camera")
	assert(viewportCamera ~= nil)
	--FoV smaller is closer up
	viewportCamera.FieldOfView = 70
	viewportFrame.CurrentCamera = viewportCamera
	viewportCamera.Parent = viewportFrame
end

function ReInit(player: Player)
	_gotUsableClone = false

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
	ReInit(LocalPlayer)
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

		local currentCharacter: Model = player.Character or player.CharacterAdded:Wait()

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

function prepMicAndCamPropertyChangedSignalHandler()
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
			getPermissions()
			onUpdateTrackerMode()
		end)
	end

	if not videoCaptureServiceStoppedConnection then
		videoCaptureServiceStoppedConnection = VideoCaptureService.Stopped:Connect(function()
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

function startRenderStepped(player: Player)
	stopRenderStepped()

	prepMicAndCamPropertyChangedSignalHandler()

	onUpdateTrackerMode()

	-- Do not connect to RenderStepped if the Self View is not open.
	if not isOpen then
		return
	end

	renderSteppedConnection = RunService.RenderStepped:Connect(function(step: number)
		--GetPropertyChangedSignal for head color/size change fired reliably in a simple test place for animation props
		--but it did not fire reliably in a more involved test place, so as fallback for now we also check manually for changes..

		_gotUsableClone = false

		if LocalPlayer then
			local character = LocalPlayer.Character

			if not character or character.Parent == nil then
				return
			end
			assert(character ~= nil)

			if headRef == nil or headRef.Parent ~= character then
				headRef = ModelUtils.getHead(character)
			end

			if headRef == nil then
				_gotUsableClone = false
			end

			if headRef then
				local animator: Animator? = ModelUtils.getAnimator(character, 0)

				--manual sync of canned animation tracks
				if cloneAnimator ~= nil and animator ~= nil then
					assert(cloneAnimator ~= nil)

					_gotUsableClone = true

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
									cloneAnimationTracks[anim.AnimationId]:Stop(0)
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

	local shouldBeEnabledCoreGuiSetting = CoreGuiUtils.coreGuiEnabled()

	if not shouldBeEnabledCoreGuiSetting and not debug then
		return
	end

	getPermissions()
	createViewport()

	playerAdded(player)

	Players.PlayerAdded:Connect(playerAdded)
	Players.PlayerRemoving:Connect(function(player)
		if player == LocalPlayer then
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

	return clearClone
end

--comment in to test Self View not getting shown (as wanted) if CoreGuiType.SelfView is already set disabled before we get to init Self View
--StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.SelfView, false)

CoreGuiUtils.coreGuiChangedSignal:connect(function(newState: boolean)
	if newState then
		if initialized then
			ReInit(LocalPlayer)
		else
			Initialize(LocalPlayer)
		end
	else
		if initialized then
			setIsOpen(false)
		end
		stopRenderStepped()
	end
end)

return Initialize
