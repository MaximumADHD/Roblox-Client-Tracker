local PlayersService = game:GetService('Players')
local RootCameraCreator = require(script.Parent)

local ZERO_VECTOR2 = Vector2.new(0, 0)

local CFrame_new = CFrame.new
local math_min = math.min

local function CreateFixedCamera()
	local module = RootCameraCreator()
	
	local lastUpdate = tick()
	function module:Update()
		local now = tick()
		
		local camera = 	workspace.CurrentCamera
		local player = PlayersService.LocalPlayer
		if lastUpdate == nil or now - lastUpdate > 1 then
			module:ResetCameraLook()
			self.LastCameraTransform = nil
		end
		
		if lastUpdate then
			-- Cap out the delta to 0.1 so we don't get some crazy things when we re-resume from
			local delta = math_min(0.1, now - lastUpdate)
			local gamepadRotation = self:UpdateGamepad()		
			self.RotateInput = self.RotateInput + (gamepadRotation * delta)
		end		
		
		local subjectPosition = self:GetSubjectPosition()		
		if subjectPosition and player and camera then
			local zoom = self:GetCameraZoom()
			if zoom <= 0 then
				zoom = 0.1
			end
			local newLookVector = self:RotateCamera(self:GetCameraLook(), self.RotateInput)
			self.RotateInput = ZERO_VECTOR2
			
			camera.CFrame = CFrame_new(camera.CFrame.p, camera.CFrame.p + (zoom * newLookVector))
			self.LastCameraTransform = camera.CFrame
		end
		lastUpdate = now
	end
	
	return module
end

return CreateFixedCamera
