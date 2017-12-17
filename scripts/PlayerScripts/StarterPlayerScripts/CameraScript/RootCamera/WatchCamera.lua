local PlayersService = game:GetService('Players')
local RootCameraCreator = require(script.Parent)

local ZERO_VECTOR2 = Vector2.new(0, 0)

local CFrame_new = CFrame.new

local function CreateWatchCamera()
	local module = RootCameraCreator()
	module.PanEnabled = false
	
	local lastUpdate = tick()
	function module:Update()
		local now = tick()
		
		local camera = workspace.CurrentCamera
		local player = PlayersService.LocalPlayer
		
		if lastUpdate == nil or now - lastUpdate > 1 then
			module:ResetCameraLook()
			self.LastCameraTransform = nil
			self.LastZoom = nil
		end	
		

		local subjectPosition = self:GetSubjectPosition()
		if subjectPosition and player and camera then
			local cameraLook = nil

			if self.LastCameraTransform then
				local humanoid = self:GetHumanoid()
				if humanoid and humanoid.Torso then
					-- TODO: let the paging buttons move the camera but not the mouse/touch
					-- currently neither do
					local diffVector = subjectPosition - self.LastCameraTransform.p
					cameraLook = diffVector.unit

					if self.LastZoom and self.LastZoom == self:GetCameraZoom() then
						-- Don't clobber the zoom if they zoomed the camera
						local zoom = diffVector.magnitude
						self:ZoomCamera(zoom)
					end
				end
			end
			
			local zoom = self:GetCameraZoom()
			if zoom <= 0 then
				zoom = 0.1
			end
			
			local newLookVector = self:RotateVector(cameraLook or self:GetCameraLook(), self.RotateInput)
			self.RotateInput = ZERO_VECTOR2
			local newFocus = CFrame_new(subjectPosition)
			local newCamCFrame = CFrame_new(newFocus.p - (zoom * newLookVector), subjectPosition)

			camera.Focus = newFocus
			camera.CFrame = newCamCFrame
			self.LastCameraTransform = newCamCFrame
			self.LastZoom = zoom
		end
		lastUpdate = now
	end
	
	return module
end

return CreateWatchCamera
