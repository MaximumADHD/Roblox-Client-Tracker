local FFlagTerrainToolsUseDevFramework = game:GetFastFlag("TerrainToolsUseDevFramework")

local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local UILibrary = not FFlagTerrainToolsUseDevFramework and require(Plugin.Packages.UILibrary) or nil

local FrameworkUtil = FFlagTerrainToolsUseDevFramework and Framework.Util or nil
local Signal = FFlagTerrainToolsUseDevFramework and FrameworkUtil.Signal or UILibrary.Util.Signal

local quickWait = require(Plugin.Src.Util.quickWait)

local Workspace = game:GetService("Workspace")
local UserInputService = game:GetService("UserInputService")

local Y_AXIS = Vector3.new(0, 1, 0)

local MidPlanePreview = {}
MidPlanePreview.__index = MidPlanePreview

-- MidPlane is a plane that intersects meant to intersect the region
function MidPlanePreview.new(plugin, target, minExtent, maxExtent)
	assert(plugin, "MidPlanePreview needs reference to plugin")

	local midPos = (minExtent + maxExtent) * 0.5

	local newRootPart = Instance.new("Part")
	newRootPart.Name = "MidPlanePreview"
	newRootPart.Size = Vector3.new(1, 1, 1)
	newRootPart.Position = midPos
	newRootPart.TopSurface = 'Smooth'
	newRootPart.BottomSurface = 'Smooth'
	newRootPart.CastShadow = false
	newRootPart.Locked = true
	newRootPart.Anchored = true
	newRootPart.CanCollide = false
	newRootPart.BrickColor = BrickColor.new('Toothpaste')
	newRootPart.Material = Enum.Material.Neon
	newRootPart.Archivable = false
	newRootPart.Transparency = 1

	local blockMesh = Instance.new("BlockMesh")
	local diff = maxExtent - minExtent
	blockMesh.Scale = Vector3.new(diff.x, 1, diff.z)
	blockMesh.Parent = newRootPart

	newRootPart.Parent = target

	local self = setmetatable({
		_plugin = plugin,
		_mouse = plugin:GetMouse(),
		_selectingHeight = false,
		_target = target,
		_rootPart = newRootPart,
		_blockMesh = blockMesh,
		_targetRegion = Region3.new(minExtent, maxExtent),
	}, MidPlanePreview)

	self._heightSelectedSignal = Signal.new()

	return self
end

function MidPlanePreview:destroy()
	if self._blockMesh then
		self._blockMesh:Destroy()
		self._blockMesh = nil
	end

	if self._rootPart then
		self._rootPart:Destroy()
		self._rootPart = nil
	end

	if self._connection then
		self._connection:Disconnect()
	end
end

-- calculates a plane that is aligned to the axis and
-- perpendicular to the camera's position
function MidPlanePreview:updateCollisionPlaneNormal()
	local centerPos = self._rootPart.Position
	local camPos = Workspace.CurrentCamera.CoordinateFrame.p

	--Bound to VerticalAxis
	local vecAB = Y_AXIS
	local vecAC = camPos - centerPos

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
function MidPlanePreview:calcPlaneHit()
	local camPos = Workspace.CurrentCamera.CoordinateFrame.p
	local mouseDir = self._mouse.UnitRay.Direction

	local divisor = mouseDir:Dot(self._planeNormal)
	-- only care if we are pointing into the surface of the plane
	if divisor < 0 then
		local scalar = (self._rootPart.Position - camPos):Dot(self._planeNormal) / divisor
		return camPos + scalar * mouseDir
	end
	return nil
end

function MidPlanePreview:calcAxisPosMouseClick()
	if not self._planeNormal then
		return
	end

	local planeHit = self:calcPlaneHit()
	if planeHit then
		-- project planHit onto axis
		local derp = planeHit - self._prevPosition

		local projection = (derp:Dot(Y_AXIS) / Y_AXIS:Dot(Y_AXIS)) * Y_AXIS
		return projection + self._prevPosition
	end
	return self._position
end

function MidPlanePreview:startSelectHeight(onClickCallback, onPosChangeCallback)
	if self._connection then
		return
	end

	self._plugin:Activate(true)
	self:updateCollisionPlaneNormal()

	self._prevPosition = self._rootPart.Position
	self._connection = UserInputService.InputEnded:Connect(function()
		if self._planeNormal then
			self._planeNormal = nil
		end

		onClickCallback()

		self._plugin:Deactivate()
		self._connection:Disconnect()
		self._connection = nil
	end)

	spawn(function()
		while self._connection ~= nil do
			local newPos = self:calcAxisPosMouseClick()
			if self._rootPart.Position ~= newPos then
				self._rootPart.Position = newPos
				onPosChangeCallback(newPos.Y)
			end
			quickWait()
		end
	end)
end

function MidPlanePreview:updateVisibility(isVisible)
	if self._rootPart then
		self._rootPart.Transparency = isVisible and .9 or 1
	end
end

function MidPlanePreview:updatePlaneScaling(minExtent, maxExtent)
	local diff = maxExtent - minExtent
	local mid = (minExtent + maxExtent) * 0.5
	local oldY = self._rootPart.Position.Y

	self._blockMesh.Scale = Vector3.new(diff.x * 1.2, 1, diff.z * 1.2)
	self._rootPart.Position = Vector3.new(mid.X, oldY, mid.Z)
end

function MidPlanePreview:setY(newY)
	assert(type(newY) == "number", "")

	local pos = self._rootPart.Position
	self._rootPart.Position = Vector3.new(pos.X, newY, pos.Z)
end

function MidPlanePreview:setPosition(newPos)
	self._rootPart.Position = newPos
end

function MidPlanePreview:getPosition()
	return self._rootPart.Position
end

return MidPlanePreview
