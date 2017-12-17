local PlayersService = game:GetService('Players')
local RootCameraCreator = require(script.Parent)

local ZERO_VECTOR2 = Vector2.new(0, 0)
local XZ_VECTOR = Vector3.new(1,0,1)

local Vector2_new = Vector2.new
local CFrame_new = CFrame.new
local math_atan2 = math.atan2
local math_min = math.min

local function IsFinite(num)
	return num == num and num ~= 1/0 and num ~= -1/0
end

-- May return NaN or inf or -inf
-- This is a way of finding the angle between the two vectors:
local function findAngleBetweenXZVectors(vec2, vec1)
	return math_atan2(vec1.X*vec2.Z-vec1.Z*vec2.X, vec1.X*vec2.X + vec1.Z*vec2.Z)
end

local function CreateAttachCamera()
	local module = RootCameraCreator()
	
	local lastUpdate = tick()
	function module:Update()
		local now = tick()
		
		local camera = 	workspace.CurrentCamera
		
		if lastUpdate == nil or now - lastUpdate > 1 then
			module:ResetCameraLook()
			self.LastCameraTransform = nil
		end	
		
		local subjectPosition = self:GetSubjectPosition()		
		if subjectPosition and camera then
			local zoom = self:GetCameraZoom()
			if zoom <= 0 then
				zoom = 0.1
			end


			local humanoid = self:GetHumanoid()
			if lastUpdate and humanoid and humanoid.Torso then
				
				-- Cap out the delta to 0.1 so we don't get some crazy things when we re-resume from
				local delta = math_min(0.1, now - lastUpdate)
				local gamepadRotation = self:UpdateGamepad()
				self.RotateInput = self.RotateInput + (gamepadRotation * delta)		
				
				local forwardVector = humanoid.Torso.CFrame.lookVector

				local y = findAngleBetweenXZVectors(forwardVector, self:GetCameraLook())
				if IsFinite(y) then
					-- Preserve vertical rotation from user input
					self.RotateInput = Vector2_new(y, self.RotateInput.Y)
				end
			end

			local newLookVector = self:RotateCamera(self:GetCameraLook(), self.RotateInput)
			self.RotateInput = ZERO_VECTOR2

			camera.Focus = CFrame_new(subjectPosition)
			local newCFrame = CFrame_new(subjectPosition - (zoom * newLookVector), subjectPosition)
			camera.CFrame = newCFrame
			self.LastCameraTransform = newCFrame
		end
		lastUpdate = now
	end
	
	return module
end

return CreateAttachCamera
