--[[
	Poppercam - Occlusion module that brings the camera closer to the subject when objects are blocking the view
	Refactored for 2018 Camera Update but functionality is unchanged - AllYourBlox		
--]]

--[[ Camera Maths Utilities Library ]]--
local Util = require(script.Parent:WaitForChild("CameraUtils"))

local PlayersService = game:GetService("Players")
local POP_RESTORE_RATE = 0.3
local MIN_CAMERA_ZOOM = 0.5
local VALID_SUBJECTS = {
	'Humanoid',
	'VehicleSeat',
	'SkateboardPlatform',
}

local portraitPopperFixFlagExists, portraitPopperFixFlagEnabled = pcall(function()
	return UserSettings():IsUserFeatureEnabled("UserPortraitPopperFix")
end)
local FFlagUserPortraitPopperFix = portraitPopperFixFlagExists and portraitPopperFixFlagEnabled


--[[ The Module ]]--
local BaseOcclusion = require(script.Parent:WaitForChild("BaseOcclusion"))
local Poppercam = setmetatable({}, BaseOcclusion)
Poppercam.__index = Poppercam

function Poppercam.new()
	local self = setmetatable(BaseOcclusion.new(), Poppercam)
	
	self.camera = nil
	self.cameraSubjectChangeConn = nil
	
	self.subjectPart = nil
	
	self.playerCharacters = {} 	-- For ignoring in raycasts
	self.vehicleParts = {} 		-- Also just for ignoring
	
	self.lastPopAmount = 0
	self.lastZoomLevel = 0
	self.popperEnabled = false
	
	return self
end

function Poppercam:GetOcclusionMode()
	return Enum.DevCameraOcclusionMode.Zoom
end

function Poppercam:Enable(enable)
	
end

-- Called when character is added
function Poppercam:CharacterAdded(player, character)
	self.playerCharacters[player] = character
end

-- Called when character is about to be removed
function Poppercam:CharacterRemoving(player, character)
	self.playerCharacters[player] = nil
end

function Poppercam:Update(dt, desiredCameraCFrame, desiredCameraFocus)
	if self.popperEnabled then
		self.camera = game.Workspace.CurrentCamera
		local newCameraCFrame = desiredCameraCFrame
		local focusPoint = desiredCameraFocus.p

		if FFlagUserPortraitPopperFix and self.subjectPart then
			focusPoint = self.subjectPart.CFrame.p
		end

		local ignoreList = {}
		for _, character in pairs(self.playerCharacters) do
			ignoreList[#ignoreList + 1] = character
		end
		for i = 1, #self.vehicleParts do
			ignoreList[#ignoreList + 1] = self.vehicleParts[i]
		end
		
		-- Get largest cutoff distance
		-- This swapping and setting of the camera CFrame is a hack because we don't actually want to set it yet,
		-- but GetLargestCutoffDistance can't be passed the desiredCameraCFrame, it only works for where the camera
		-- currently is
		local prevCameraCFrame = self.camera.CFrame
		self.camera.CFrame = desiredCameraCFrame
		self.camera.Focus = desiredCameraFocus
		local largest = self.camera:GetLargestCutoffDistance(ignoreList)

		-- Then check if the player zoomed since the last frame,
		-- and if so, reset our pop history so we stop tweening
		local zoomLevel = (desiredCameraCFrame.p - focusPoint).Magnitude
		if math.abs(zoomLevel - self.lastZoomLevel) > 0.001 then
			self.lastPopAmount = 0
		end
		
		-- Finally, zoom the camera in (pop) by that most-cut-off amount, or the last pop amount if that's more
		local popAmount = largest
		if self.lastPopAmount > popAmount then
			popAmount = self.lastPopAmount
		end

	
		-- TODO: Don't let Poppercam directly manipulate camera like this
		if popAmount > 0 then
			newCameraCFrame = desiredCameraCFrame + (desiredCameraCFrame.lookVector * popAmount)
			self.lastPopAmount = popAmount - POP_RESTORE_RATE -- Shrink it for the next frame
			if self.lastPopAmount < 0 then
				self.lastPopAmount = 0
			end
		end

		self.lastZoomLevel = zoomLevel
		
		-- Stop shift lock being able to see through walls by manipulating Camera focus inside the wall
--		if EnabledCamera and EnabledCamera:GetShiftLock() and not EnabledCamera:IsInFirstPerson() then
--			if EnabledCamera:GetCameraActualZoom() < 1 then
--				local subjectPosition = EnabledCamera.lastSubjectPosition 
--				if subjectPosition then
--					Camera.Focus = CFrame_new(subjectPosition)
--					Camera.CFrame = CFrame_new(subjectPosition - MIN_CAMERA_ZOOM*EnabledCamera:GetCameraLook(), subjectPosition)
--				end
--			end
--		end
		return newCameraCFrame, desiredCameraFocus
	end
	
	-- Return unchanged values
	return desiredCameraCFrame, desiredCameraFocus
end

function Poppercam:OnCameraSubjectChanged(newSubject)
	self.vehicleParts = {}

	self.lastPopAmount = 0

	if newSubject then
		-- Determine if we should be popping at all
		self.popperEnabled = false
		for _, subjectType in pairs(VALID_SUBJECTS) do
			if newSubject:IsA(subjectType) then
				self.popperEnabled = true
				break
			end
		end

		-- Get all parts of the vehicle the player is controlling
		if newSubject:IsA('VehicleSeat') then
			self.vehicleParts = newSubject:GetConnectedParts(true)
		end
	
		if FFlagUserPortraitPopperFix then
			if newSubject:IsA("BasePart") then
				self.subjectPart = newSubject
			elseif newSubject:IsA("Model") then
				if newSubject.PrimaryPart then
					self.subjectPart = newSubject.PrimaryPart
				else
					-- Model has no PrimaryPart set, just use first BasePart
					-- we can find as better-than-nothing solution (can still fail)
					for _, child in pairs(newSubject:GetChildren()) do
						if child:IsA("BasePart") then
							self.subjectPart = child
							break
						end
					end	
				end
			elseif newSubject:IsA("Humanoid") then
				self.subjectPart = newSubject.RootPart
  			end
  		end
  	end
end

return Poppercam