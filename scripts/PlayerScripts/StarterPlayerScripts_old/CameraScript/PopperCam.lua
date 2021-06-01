-- PopperCam Version 16
-- OnlyTwentyCharacters

local PopperCam = {} -- Guarantees your players won't see outside the bounds of your map!

-----------------
--| Constants |--
-----------------

local POP_RESTORE_RATE = 0.3
local MIN_CAMERA_ZOOM = 0.5

local VALID_SUBJECTS = {
	'Humanoid',
	'VehicleSeat',
	'SkateboardPlatform',
}

-----------------
--| Variables |--
-----------------

local PlayersService = game:GetService('Players')

local Camera = nil
local CameraSubjectChangeConn = nil

local SubjectPart = nil

local PlayerCharacters = {} -- For ignoring in raycasts
local VehicleParts = {} -- Also just for ignoring

local LastPopAmount = 0
local LastZoomLevel = 0
local PopperEnabled = false

local CFrame_new = CFrame.new

-----------------------
--| Local Functions |--
-----------------------

local math_abs = math.abs

local function OnCameraSubjectChanged()
	VehicleParts = {}

	local newSubject = Camera.CameraSubject
	if newSubject then
		-- Determine if we should be popping at all
		PopperEnabled = false
		for _, subjectType in pairs(VALID_SUBJECTS) do
			if newSubject:IsA(subjectType) then
				PopperEnabled = true
				break
			end
		end

		-- Get all parts of the vehicle the player is controlling
		if newSubject:IsA('VehicleSeat') then
			VehicleParts = newSubject:GetConnectedParts(true)
		end
  	end
end

local function OnCharacterAdded(player, character)
	PlayerCharacters[player] = character
end

local function OnPlayersChildAdded(child)
	if child:IsA('Player') then
		child.CharacterAdded:connect(function(character)
			OnCharacterAdded(child, character)
		end)
		if child.Character then
			OnCharacterAdded(child, child.Character)
		end
	end
end

local function OnPlayersChildRemoved(child)
	if child:IsA('Player') then
		PlayerCharacters[child] = nil
	end
end
 
 local function OnWorkspaceChanged(property)
 	if property == 'CurrentCamera' then
 		local newCamera = workspace.CurrentCamera
  		if newCamera then
  			Camera = newCamera

			if CameraSubjectChangeConn then
				CameraSubjectChangeConn:disconnect()
			end

			CameraSubjectChangeConn = Camera:GetPropertyChangedSignal("CameraSubject"):connect(OnCameraSubjectChanged)
			OnCameraSubjectChanged()
  		end
	end
end

-------------------------
--| Exposed Functions |--
-------------------------

function PopperCam:Update(EnabledCamera)
	if PopperEnabled then
		-- First, prep some intermediate vars
		local cameraCFrame = Camera.CFrame
		local focusPoint = Camera.Focus.p

		local ignoreList = {}
		for _, character in pairs(PlayerCharacters) do
			ignoreList[#ignoreList + 1] = character
		end
		for i = 1, #VehicleParts do
			ignoreList[#ignoreList + 1] = VehicleParts[i]
		end
		
		-- Get largest cutoff distance
		local largest = Camera:GetLargestCutoffDistance(ignoreList)

		-- Then check if the player zoomed since the last frame,
		-- and if so, reset our pop history so we stop tweening
		local zoomLevel = (cameraCFrame.p - focusPoint).Magnitude
		if math_abs(zoomLevel - LastZoomLevel) > 0.001 then
			LastPopAmount = 0
		end
		
		-- Finally, zoom the camera in (pop) by that most-cut-off amount, or the last pop amount if that's more
		local popAmount = largest
		if LastPopAmount > popAmount then
			popAmount = LastPopAmount
		end

		if popAmount > 0 then
			Camera.CFrame = cameraCFrame + (cameraCFrame.lookVector * popAmount)
			LastPopAmount = popAmount - POP_RESTORE_RATE -- Shrink it for the next frame
			if LastPopAmount < 0 then
				LastPopAmount = 0
			end
		end

		LastZoomLevel = zoomLevel
		
		-- Stop shift lock being able to see through walls by manipulating Camera focus inside the wall
		if EnabledCamera and EnabledCamera:GetShiftLock() and not EnabledCamera:IsInFirstPerson() then
			if EnabledCamera:GetCameraActualZoom() < 1 then
				local subjectPosition = EnabledCamera.lastSubjectPosition 
				if subjectPosition then
					Camera.Focus = CFrame_new(subjectPosition)
					Camera.CFrame = CFrame_new(subjectPosition - MIN_CAMERA_ZOOM*EnabledCamera:GetCameraLook(), subjectPosition)
				end
			end
		end
	end
end

--------------------
--| Script Logic |--
--------------------

-- Connect to the current and all future cameras
workspace.Changed:connect(OnWorkspaceChanged)
OnWorkspaceChanged('CurrentCamera')

-- Connect to all Players so we can ignore their Characters
PlayersService.ChildRemoved:connect(OnPlayersChildRemoved)
PlayersService.ChildAdded:connect(OnPlayersChildAdded)
for _, player in pairs(PlayersService:GetPlayers()) do
	OnPlayersChildAdded(player)
end

return PopperCam
