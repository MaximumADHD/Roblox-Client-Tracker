--!nonstrict
--[[
	Poppercam - Occlusion module that brings the camera closer to the subject when objects are blocking the view.
--]]

local ZoomController =  require(script.Parent:WaitForChild("ZoomController"))

local TransformExtrapolator = {} do
	TransformExtrapolator.__index = TransformExtrapolator

	local CF_IDENTITY = CFrame.new()

	local function cframeToAxis(cframe: CFrame): Vector3
		local axis: Vector3, angle: number = cframe:ToAxisAngle()
		return axis*angle
	end

	local function axisToCFrame(axis: Vector3): CFrame
		local angle: number = axis.Magnitude
		if angle > 1e-5 then
			return CFrame.fromAxisAngle(axis, angle)
		end
		return CF_IDENTITY
	end

	local function extractRotation(cf: CFrame): CFrame
		local _, _, _, xx, yx, zx, xy, yy, zy, xz, yz, zz = cf:GetComponents()
		return CFrame.new(0, 0, 0, xx, yx, zx, xy, yy, zy, xz, yz, zz)
	end

	function TransformExtrapolator.new()
		return setmetatable({
			lastCFrame = nil,
		}, TransformExtrapolator)
	end

	function TransformExtrapolator:Step(dt: number, currentCFrame: CFrame)
		local lastCFrame = self.lastCFrame or currentCFrame
		self.lastCFrame = currentCFrame

		local currentPos = currentCFrame.Position
		local currentRot = extractRotation(currentCFrame)

		local lastPos = lastCFrame.p
		local lastRot = extractRotation(lastCFrame)

		-- Estimate velocities from the delta between now and the last frame
		-- This estimation can be a little noisy.
		local dp = (currentPos - lastPos)/dt
		local dr = cframeToAxis(currentRot*lastRot:inverse())/dt

		local function extrapolate(t)
			local p = dp*t + currentPos
			local r = axisToCFrame(dr*t)*currentRot
			return r + p
		end

		return {
			extrapolate = extrapolate,
			posVelocity = dp,
			rotVelocity = dr,
		}
	end

	function TransformExtrapolator:Reset()
		self.lastCFrame = nil
	end
end

--[[ The Module ]]--
local BaseOcclusion = require(script.Parent:WaitForChild("BaseOcclusion"))
local Poppercam = setmetatable({}, BaseOcclusion)
Poppercam.__index = Poppercam

function Poppercam.new()
	local self = setmetatable(BaseOcclusion.new(), Poppercam)
	self.focusExtrapolator = TransformExtrapolator.new()
	return self
end

function Poppercam:GetOcclusionMode()
	return Enum.DevCameraOcclusionMode.Zoom
end

function Poppercam:Enable(enable)
	self.focusExtrapolator:Reset()
end

function Poppercam:Update(renderDt, desiredCameraCFrame, desiredCameraFocus, cameraController)
	local rotatedFocus = CFrame.new(desiredCameraFocus.p, desiredCameraCFrame.p)*CFrame.new(
		0, 0, 0,
		-1, 0, 0,
		0, 1, 0,
		0, 0, -1
	)
	local extrapolation = self.focusExtrapolator:Step(renderDt, rotatedFocus)
	local zoom = ZoomController.Update(renderDt, rotatedFocus, extrapolation)
	return rotatedFocus*CFrame.new(0, 0, zoom), desiredCameraFocus
end

-- Called when character is added
function Poppercam:CharacterAdded(character, player)
end

-- Called when character is about to be removed
function Poppercam:CharacterRemoving(character, player)
end

function Poppercam:OnCameraSubjectChanged(newSubject)
end

return Poppercam
