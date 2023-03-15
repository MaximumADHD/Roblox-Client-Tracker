--!nonstrict
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local FaceAnimatorService = game:FindService("FaceAnimatorService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local FFlagAvatarChatProtocolDebugV1 = game:GetEngineFeature("AvatarChatProtocolDebugV1")
local FacialAnimationStreamingService = game:GetService("FacialAnimationStreamingServiceV2")

local log = require(RobloxGui.Modules.Logger):new(script.Name)

local showInfoOfLocalPlayer = true
local showInfoOfRemotePlayers = true

log:trace("AvatarChatDebugVisualization 3_3_2023__2")

local currentTime = 0
local localPlayerLodLabelText = ""

local HIGH_COLOR = Color3.new(0.00491341, 1, 0.0105745) --green
local MEDIUM_COLOR = Color3.new(0.96199, 0.736614, 0.0616617) --orange
local LOW_COLOR = Color3.new(0.96199, 0.0360113, 0) --red

local initializedTrackerLodUI = false

--debug label of local player, gets generated further down
local localPlayerDebugBillboardLabel = nil

--will hold info on the debug uis of all players
local debugUIsList = {}

local playerConnections = {}

local Connections = {
	CharacterAdded = "CharacterAdded",
	CharacterRemoving = "CharacterRemoving",
}

function clearConnection(player, connectionType)
	if playerConnections[player.UserId] and playerConnections[player.UserId][connectionType] then
		playerConnections[player.UserId][connectionType]:Disconnect()
		playerConnections[player.UserId][connectionType] = nil
	end
end

function clearAllConnections(player)
	for _, connectionType in ipairs(Connections) do
		clearConnection(player, connectionType)
	end

	playerConnections[player.UserId] = {}
end

-- Finds the FaceControls instance attached to the rig
function getFaceControls(rig)
	return rig:FindFirstChildWhichIsA("FaceControls", true)
end

function findObjectOfNameAndTypeName(name, typeName, character)
	local descendants = character:GetDescendants()
	for _, child in descendants do
		if child.Name == name and child:IsA(typeName) then
			return child
		end
	end
end

function getHumanoidRootPart(character)
	if not character then
		return nil
	end

	local humanoidRootPart = character:WaitForChild("HumanoidRootPart", 2)
	return humanoidRootPart
end

function getHead(character, waitForIt)
	if not character then
		return nil
	end

	local head = nil

	if waitForIt then
		head = character:WaitForChild("Head", 5)
	end

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

	log:trace("Self View: fn getHead(), head: " .. tostring(head))

	return head
end

if not FaceAnimatorService then
	log:trace("[FaceAnimatorUI] FaceAnimatorService is nil. UI disabled.")
	return
end

local lodController = FaceAnimatorService:GetTrackerLodController()
if not lodController then
	log:trace("[FaceAnimatorUI] TrackerLodController is nil. UI disabled.")
end

local avatarChatDebugVisualizationFrame = Instance.new("Frame", RobloxGui)
avatarChatDebugVisualizationFrame.Name = "AvatarChatDebugVisualizationFrame"
avatarChatDebugVisualizationFrame.Position = UDim2.new(0, 0, 0, 0)
avatarChatDebugVisualizationFrame.Size = UDim2.new(1, 0, 1, 0)
avatarChatDebugVisualizationFrame.BackgroundTransparency = 1

local function displayTrackerLoDState()
	if not FaceAnimatorService:IsStarted() or not lodController then
		log:trace(
			"[FaceAnimatorUI] FaceAnimatorService not started or LodController not enabled. Tracker LoD UI not active."
		)
		return
	end

	local extrapolation = lodController:getExtrapolation()
	local audioEnabled = lodController:isAudioEnabled()
	local videoEnabled = lodController:isVideoEnabled()
	local lod = lodController:getVideoLod()

	if localPlayerDebugBillboardLabel then
		--[[
5: getExtrapolation= (Enum::any).TrackerExtrapolationFlagMode.ForceDisabled,isVideoEnabled = true, getVideoLod = 1, isAudioEnabled = true
4: getExtrapolation= (Enum::any).TrackerExtrapolationFlagMode.ExtrapolateFacsOnly,isVideoEnabled = true, getVideoLod = 1, isAudioEnabled = true
3: getExtrapolation= (Enum::any).TrackerExtrapolationFlagMode.ExtrapolateFacsAndPose,isVideoEnabled = true, getVideoLod = 1, isAudioEnabled = true
2: getExtrapolation= (Enum::any).TrackerExtrapolationFlagMode.ExtrapolateFacsAndPose,isVideoEnabled = true, getVideoLod = 1, isAudioEnabled = false
1: getExtrapolation= (Enum::any).TrackerExtrapolationFlagMode.ExtrapolateFacsAndPose,isVideoEnabled = true, getVideoLod = 0, isAudioEnabled = false
		
		lodController.VideoExtrapolationMode returns the enum setting, but we can't check that since it doesn't return the current vaslue (when that enum is set to auto we don't know the value)
		so we use lodController:getExtrapolation() instead which returns a number for the current value
		note the order in that enum is like this currently:
		0 = no extrapolation
		1 = ExtrapolatePoseFacs (better)
		2 = ExtrapolateFacs (worse)
		
		]]

		local extrapolationCurrentEnumSetting = (Enum :: any).TrackerExtrapolationFlagMode.ForceDisabled
		if extrapolation == 1 then
			extrapolationCurrentEnumSetting = (Enum :: any).TrackerExtrapolationFlagMode.ExtrapolateFacsAndPose
		end
		if extrapolation == 2 then
			extrapolationCurrentEnumSetting = (Enum :: any).TrackerExtrapolationFlagMode.ExtrapolateFacsOnly
		end

		local trackerGlobalLoDLevel = 0

		if videoEnabled then
			trackerGlobalLoDLevel = trackerGlobalLoDLevel + 1
		end

		if audioEnabled then
			trackerGlobalLoDLevel = trackerGlobalLoDLevel + 1
		end


		localPlayerLodLabelText = "Tracker: \nLoD: "
		if
			videoEnabled
			and extrapolationCurrentEnumSetting == (Enum :: any).TrackerExtrapolationFlagMode.ForceDisabled
			and lod == 0
		then
			trackerGlobalLoDLevel = trackerGlobalLoDLevel + 2
		end
		if
			videoEnabled
			and extrapolationCurrentEnumSetting == (Enum :: any).TrackerExtrapolationFlagMode.ExtrapolateFacsOnly
			and lod == 0
		then
			trackerGlobalLoDLevel = trackerGlobalLoDLevel + 1
		end

		if
			videoEnabled
			and extrapolationCurrentEnumSetting == (Enum :: any).TrackerExtrapolationFlagMode.ForceDisabled
			and lod == 1
		then
			trackerGlobalLoDLevel = trackerGlobalLoDLevel + 3
		end
		if
			videoEnabled
			and extrapolationCurrentEnumSetting == (Enum :: any).TrackerExtrapolationFlagMode.ExtrapolateFacsOnly
			and lod == 1
		then
			trackerGlobalLoDLevel = trackerGlobalLoDLevel + 2
		end
		if
			videoEnabled
			and extrapolationCurrentEnumSetting == (Enum :: any).TrackerExtrapolationFlagMode.ExtrapolateFacsAndPose
			and lod == 1
		then
			trackerGlobalLoDLevel = trackerGlobalLoDLevel + 1
		end

		localPlayerLodLabelText = localPlayerLodLabelText .. tostring(trackerGlobalLoDLevel)

		local extrapolationLabelText = "" --tostring(extrapolation)..": "
		--[[
		if extrapolation == (Enum::any).TrackerExtrapolationFlagMode.ForceDisabled then
			extrapolationLabelText = extrapolationLabelText.."Disabled"
		end
		if extrapolation == (Enum::any).TrackerExtrapolationFlagMode.ExtrapolateFacsOnly then
			extrapolationLabelText = extrapolationLabelText.."ExtrapolateFacsOnly"
		end
		if extrapolation == (Enum::any).TrackerExtrapolationFlagMode.ExtrapolateFacsAndPose then
			extrapolationLabelText = extrapolationLabelText.."ExtrapolateFacsAndPose"
		end
		]]
		extrapolationLabelText = extrapolationLabelText .. tostring(lodController.VideoExtrapolationMode)

		log:trace(
			"lodController.VideoExtrapolationMode:"
				.. tostring(lodController.VideoExtrapolationMode)
				.. ", extrapolation:"
				.. tostring((Enum :: any).TrackerExtrapolationFlagMode:GetEnumItems()[extrapolation + 1])
				.. ", (Enum::any).TrackerExtrapolationFlagMode.ForceDisabled: "
				.. tostring((Enum :: any).TrackerExtrapolationFlagMode.ForceDisabled)
		)

		local userVideoEnabled = FaceAnimatorService.IsStarted and FaceAnimatorService.VideoAnimationEnabled

		localPlayerLodLabelText = localPlayerLodLabelText .. "\ntracker mode:"

		if audioEnabled and videoEnabled then
			localPlayerLodLabelText = localPlayerLodLabelText .. "av2c"
		end
		if audioEnabled and not videoEnabled then
			localPlayerLodLabelText = localPlayerLodLabelText .. "a2c"
		end
		if not audioEnabled and videoEnabled then
			localPlayerLodLabelText = localPlayerLodLabelText .. "v2c"
		end
		if not audioEnabled and not videoEnabled then
			localPlayerLodLabelText = localPlayerLodLabelText .. "off"
		end

		localPlayerLodLabelText = localPlayerLodLabelText .. "\nvideoLoD: " .. tostring(lod) .. "\nUser camera: "
		if userVideoEnabled then
			localPlayerLodLabelText = localPlayerLodLabelText .. "on"
		else
			localPlayerLodLabelText = localPlayerLodLabelText .. "off"
		end

		--aditional stuff we maybe want to show later:
		--.."\nextrapolation: "..extrapolationLabelText..", getextrapolation: "..tostring(extrapolation).."\n extrapolationCurrentEnumSetting:\n"..tostring(extrapolationCurrentEnumSetting)
		--..",getVideoExtrapolationMode: "..tostring(lodController:getVideoExtrapolationMode() )

		localPlayerDebugBillboardLabel.Text = localPlayerLodLabelText
	end
end

if lodController then
	lodController.UpdateState:connect(displayTrackerLoDState)
	initializedTrackerLodUI = true
end

function destroyDebugUIOfPlayer(player)
	local index = 0
	for _, tdebugUIInfo in pairs(debugUIsList) do
		index = index + 1
		if tdebugUIInfo.player == player then
			if tdebugUIInfo.debugLabel then
				tdebugUIInfo.debugLabel:Destroy()
			end
			if tdebugUIInfo.billboardGUI then
				tdebugUIInfo.billboardGUI:Destroy()
			end
			if tdebugUIInfo.markerCircle then
				tdebugUIInfo.markerCircle:Destroy()
			end
			table.remove(debugUIsList, index)
			tdebugUIInfo.player = nil
			tdebugUIInfo = nil
		end
	end
end

function getBillboardAdornee(player)
	if not player then
		return nil
	end

	local adornee = nil

	local character = player.Character or player.CharacterAdded:Wait()
	log:trace("character:" .. tostring(character))

	local humanoidRootPart = getHumanoidRootPart(character)
	local torsoLoadedWait = character:WaitForChild("UpperTorso", 2)

	if humanoidRootPart then
		adornee = humanoidRootPart
	else
		adornee = getHead(character, true)
	end
	return adornee
end

function prepDeltaTimesList(list)
	for index = 1, 61 do
		table.insert(list, 1)
	end
end

function createDebugUIOfPlayer(player)
	local debugUIInfo = {}

	local isLocalPlayer = player.UserId == Players.LocalPlayer.UserId

	log:trace(
		"createDebugUIOfPlayer(), isLocalPlayer:"
			.. tostring(isLocalPlayer)
			.. ",player.UserId: "
			.. tostring(player.UserId)
			.. ",Players.LocalPlayer.UserId:"
			.. tostring(Players.LocalPlayer.UserId)
	)

	local billboardInstance = Instance.new("BillboardGui", avatarChatDebugVisualizationFrame)
	local adornee = getBillboardAdornee(player)
	billboardInstance.Adornee = adornee
	billboardInstance.StudsOffsetWorldSpace = Vector3.new(0, 6.5, 0)

	billboardInstance.Name = "AboveAvatarBillboardGui_" .. tostring(player.UserId)

	billboardInstance.Size = UDim2.new(0, 200, 0, 150)

	--create the facs received visualisation marker circle:
	local markerCircle = nil
	if not isLocalPlayer then
		markerCircle = Instance.new("CylinderHandleAdornment", workspace)
		markerCircle.Name = "markerCircle_" .. tostring(player.UserId)
		markerCircle.Color3 = LOW_COLOR
		markerCircle.Transparency = 0.25
		markerCircle.Adornee = adornee
		markerCircle.Angle = 360
		markerCircle.CFrame = CFrame.new(0, -3, 0) * CFrame.Angles(math.rad(90), 0, 0)
		markerCircle.Height = 0.1
		markerCircle.InnerRadius = 2.9
		markerCircle.Radius = 3
	end

	--create the debug text label
	local playerDebugBillboardLabel = Instance.new("TextLabel")
	playerDebugBillboardLabel.BackgroundColor3 = Color3.new(0, 0, 0)
	playerDebugBillboardLabel.BackgroundTransparency = 0.4
	playerDebugBillboardLabel.Text = ""
	playerDebugBillboardLabel.TextColor3 = Color3.new(1, 1, 1)
	playerDebugBillboardLabel.TextStrokeColor3 = Color3.new(0.35935, 0.35761, 0.361074)
	playerDebugBillboardLabel.TextStrokeTransparency = 0.2
	playerDebugBillboardLabel.Font = Enum.Font.Code
	playerDebugBillboardLabel.TextSize = 14
	playerDebugBillboardLabel.Position = UDim2.new(0, 20, 0, 20)
	playerDebugBillboardLabel.Size = UDim2.new(0, 120, 0, 80)
	if isLocalPlayer then
		playerDebugBillboardLabel.Parent = avatarChatDebugVisualizationFrame
	else
		playerDebugBillboardLabel.Parent = billboardInstance
	end

	if isLocalPlayer then
		localPlayerDebugBillboardLabel = playerDebugBillboardLabel
		if initializedTrackerLodUI then
			displayTrackerLoDState()
		end
	end

	debugUIInfo.isLocalPlayer = isLocalPlayer
	debugUIInfo.player = player
	debugUIInfo.debugLabel = playerDebugBillboardLabel
	debugUIInfo.billboardGUI = billboardInstance
	debugUIInfo.markerCircle = markerCircle
	debugUIInfo.previousFacsRecv = 0
	debugUIInfo.timeLastReceived = 0
	debugUIInfo.facsFPS = 0
	debugUIInfo.deltaTimesList = {}
	prepDeltaTimesList(debugUIInfo.deltaTimesList)
	debugUIInfo.lastFrameIndex = 0

	table.insert(debugUIsList, debugUIInfo)
end

function calculateAverageFPS(debugUIInfo)
	local total = 0
	for index, value in ipairs(debugUIInfo.deltaTimesList) do
		--print(index, value)
		total = total + value
	end
	return #debugUIInfo.deltaTimesList / total
end

function updateDebugUIsOfPlayers()
	for _, tdebugUIInfo in pairs(debugUIsList) do
		if tdebugUIInfo == nil then
			continue
		end
		local player = tdebugUIInfo.player

		if tdebugUIInfo.isLocalPlayer then
			localPlayerDebugBillboardLabel.Text = localPlayerLodLabelText
			if showInfoOfLocalPlayer then
				localPlayerDebugBillboardLabel.Visible = true
			else
				localPlayerDebugBillboardLabel.Visible = false
			end
		else
			--facs packet loss info:
			if FFlagAvatarChatProtocolDebugV1 then
				local facsLost = FacialAnimationStreamingService:GetStats():GetWithPlayerId("facs/lost", player.UserId)
				local facsRecv = FacialAnimationStreamingService:GetStats():GetWithPlayerId("facs/recv", player.UserId)

				local facsPacketLossInfo = "" .. "recv: " .. facsRecv .. "\nlost: " .. facsLost
				if facsLost > 0 then
					facsPacketLossInfo = facsPacketLossInfo
						.. "\nloss: "
						.. tostring(math.floor(100 * (facsLost / facsRecv)))
						.. "%"
				end

				--log:trace(string.format(facsPacketLossInfo))
				local deltaTime = currentTime - tdebugUIInfo.timeLastReceived

				local labelText = facsPacketLossInfo --"facsLost:"..tostring(facsLost)..",facsRecv:"..tostring(facsRecv )--"FACS packet loss info:\n"..facsPacketLossInfo

				--log:trace("currentTime:"..tostring(currentTime)..", deltaTime:"..tostring(deltaTime))

				local mediumThreshold = 0.17
				local offThreshold = 5

				if facsRecv ~= tdebugUIInfo.previousFacsRecv then
					local facsFPS = math.floor(1 / deltaTime)

					--log:trace("facsFPS:" .. tostring(facsFPS) .. ",deltaTime:" .. tostring(deltaTime))

					tdebugUIInfo.deltaTimesList[tdebugUIInfo.lastFrameIndex + 1] = deltaTime
					tdebugUIInfo.lastFrameIndex = (tdebugUIInfo.lastFrameIndex + 2) % #tdebugUIInfo.deltaTimesList

					local facsAverageFPS = math.floor(calculateAverageFPS(tdebugUIInfo))

					tdebugUIInfo.facsFPS = tostring(facsFPS) .. "\naverage: " .. tostring(facsAverageFPS)

					if deltaTime < 0.1 then
						tdebugUIInfo.markerCircle.Color3 = HIGH_COLOR
					else
						tdebugUIInfo.markerCircle.Color3 = MEDIUM_COLOR
					end
					tdebugUIInfo.timeLastReceived = currentTime
				end

				labelText = labelText .. "\nFACS FPS: " .. tdebugUIInfo.facsFPS

				if
					facsRecv == tdebugUIInfo.previousFacsRecv
					and deltaTime > mediumThreshold
					and deltaTime <= offThreshold
				then
					tdebugUIInfo.markerCircle.Color3 = MEDIUM_COLOR
				end

				if facsRecv == tdebugUIInfo.previousFacsRecv and deltaTime > offThreshold then
					tdebugUIInfo.markerCircle.Color3 = LOW_COLOR

					tdebugUIInfo.facsFPS = 0
				end
				tdebugUIInfo.previousFacsRecv = facsRecv

				tdebugUIInfo.debugLabel.Text = labelText

				tdebugUIInfo.debugLabel.Visible = showInfoOfRemotePlayers
			end
		end
	end
end

function renderStepped()
	--getting time() here once so we don't poll time() over and over for each player we update the ui for this frame refresh
	currentTime = time()
	updateDebugUIsOfPlayers()
end

local function onCharacterAdded(player, character)
	createDebugUIOfPlayer(player)
end

local function onCharacterRemoving(player, character)
	log:trace("onCharacterRemoving: player: " .. tostring(player))
	destroyDebugUIOfPlayer(player)
	clearAllConnections(player)
end

function onPlayerAdded(player)
	if player.Character then
		onCharacterAdded(player, player.Character)
	end

	playerConnections[player.UserId] = {}

	playerConnections[player.UserId][Connections.CharacterAdded] = player.CharacterAdded:Connect(function(character)
		onCharacterAdded(player, character)
	end)

	playerConnections[player.UserId][Connections.CharacterRemoving] = player.CharacterRemoving:Connect(
		function(character)
			onCharacterRemoving(player, character)
		end
	)
end

function onPlayerRemoved(player)
	destroyDebugUIOfPlayer(player)
	clearAllConnections(player)
end

-- get existing players
for _, player in pairs(Players:GetPlayers()) do
	onPlayerAdded(player)
end
-- listen for new players
Players.PlayerAdded:Connect(onPlayerAdded)

Players.PlayerRemoving:Connect(onPlayerRemoved)

RunService.RenderStepped:Connect(renderStepped)

if initializedTrackerLodUI then
	displayTrackerLoDState()
end

game:GetService("UserInputService").InputBegan:Connect(function(input, Processed)
	if not Processed then
		if input.KeyCode == Enum.KeyCode.T then
			showInfoOfLocalPlayer = not showInfoOfLocalPlayer
			print("T pressed, showInfoOfLocalPlayer: " .. tostring(showInfoOfLocalPlayer))
		end
		if input.KeyCode == Enum.KeyCode.F then
			showInfoOfRemotePlayers = not showInfoOfRemotePlayers
			print("F pressed, showInfoOfRemotePlayers: " .. tostring(showInfoOfRemotePlayers))
		end
	end
end)
