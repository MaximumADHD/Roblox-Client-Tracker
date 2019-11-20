local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")

AxisLockedDragger = {}
AxisLockedDragger.__index = AxisLockedDragger

function AxisLockedDragger.new(mouse, initialPos, axis, clampingFunc)
	local self = setmetatable({
		_axis = axis,
		_mouse = mouse,
		_position = initialPos,
		_clampingFunc = clampingFunc,
	}, AxisLockedDragger)

	assert(mouse ~= nil, "Mouse missing in for AxisLockedDragger")

	-- initialize adorns once and toggle visibility
	local draggerPart = Instance.new("Part")
	draggerPart.Name = "AdornPart"
	draggerPart.Transparency = 1
	draggerPart.TopSurface = 'Smooth'
	draggerPart.BottomSurface = 'Smooth'
	draggerPart.Anchored = true
	draggerPart.CanCollide = true
	draggerPart.Parent = CoreGui

	local draggerAdorn = Instance.new("SphereHandleAdornment")
	draggerAdorn.Color = BrickColor.new("Toothpaste")
	draggerAdorn.Radius = 10
	draggerAdorn.AlwaysOnTop = true
	draggerAdorn.Visible = false
	draggerAdorn.ZIndex = 1

	-- on click, Button1Down event will be used to start listening loop
	-- Button1Up is used reset all connections once position evaluation is done
	self._connection1 = draggerAdorn.MouseButton1Down:connect(function()
		if not self._planeNormal then
			self:updateCollisionPlaneNormal()

			self._prevPosition = self._position
			self._mouseUpConnect = self._mouse.Button1Up:connect(function()
				self._mouseDown = false
				if self._planeNormal then
					self._planeNormal = nil
				end
				self._mouseUpConnect:Disconnect()
				self._mouseUpConnect = nil
			end)

			self._mouseDown = true
			while self._mouseDown do
				local newPos = self:calcAxisPosMouseClick()
				if newPos then
					self:setPosition(newPos)
				end
				wait()
			end
		end
	end)

	draggerAdorn.Adornee = draggerPart
	draggerAdorn.Parent = draggerPart

	self._part = draggerPart
	self._adorn = draggerAdorn

	return self
end

function AxisLockedDragger:destroy()
	if self._part then
		self._part:Destroy()
	end
	if self._adorn then
		self._adorn:Destroy()
	end
	if self._connection1 then
		self._connection1:Disconnect()
	end
end

function AxisLockedDragger:updateVisibility(isVisible)
	self._adorn.Visible = isVisible
end

function AxisLockedDragger:getPosition()
	return self._position
end

function AxisLockedDragger:setPosition(position)
	if self._position ~= position then
		self._position = position
		self._part.Position = position

		local camPos = game.Workspace.CurrentCamera.CoordinateFrame.p
		local currPos = self._position
		local dist = ((camPos + currPos) / 2).Magnitude

		self._adorn.Radius = math.sqrt(dist)
	end
end

-- calculates a plane that is aligned to the axis and
-- perpendicular to the camera's position
function AxisLockedDragger:updateCollisionPlaneNormal()
	local draggerPos = self._position
	local axisPoint = draggerPos + self._axis
	local camPos = game.Workspace.CurrentCamera.CoordinateFrame.p

	local vecAB = self._axis
	local vecAC = camPos - draggerPos

	if vecAB:Dot(vecAC) == 0 then
		-- dont know what to do in this case, so we just prevent
		-- further loops
		self._planeNormal = nil
		return
	end


	local planeLine = vecAB:Cross(vecAC)
	self._planeNormal = planeLine:Cross(vecAB).Unit
end

-- calculate the position of the hit point on the plane we defined
-- in updateCollisionPlaneNormal
function AxisLockedDragger:calcPlaneHit()
	local camPos = game.Workspace.CurrentCamera.CoordinateFrame.p
	local mouseDir = self._mouse.UnitRay.Direction

	local divisor = mouseDir:Dot(self._planeNormal)
	-- only care if we are pointing into the surface of the plane
	if divisor < 0 then
		local scalor = (self._position - camPos):Dot(self._planeNormal) / divisor
		return camPos + scalor * mouseDir
	end
	return nil
end

function AxisLockedDragger:calcAxisPosMouseClick()
	if not self._planeNormal then
		return
	end

	local planeHit = self:calcPlaneHit()
	if planeHit then
		-- project planHit onto axis
		local derp = planeHit - self._prevPosition
		local axis = self._axis

		local projection = (derp:Dot(axis) / axis:Dot(axis)) * axis
		local newPosition = projection + self._prevPosition
		if self._clampingFunc then
			newPosition = self._clampingFunc(newPosition)
		end
		return newPosition
	end
	return self._position
end

return AxisLockedDragger
