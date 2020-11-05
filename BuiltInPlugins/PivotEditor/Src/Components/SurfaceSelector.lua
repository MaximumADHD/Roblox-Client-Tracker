--[[
	SurfaceSelector

	Component which represents a session of the user choosing a point on the
	surface of the world geometry. Takes in a Mouse prop of the mouse to do
	the selection with, and calls the onSelected prop with the CFrame of the
	clicked surface once a surface is selected.

	TODO: Complete implementation in MOD-64, adding real-time feedback.
]]

local Workspace = game:GetService("Workspace")

local Plugin = script.Parent.Parent.Parent
local DraggerFramework = Plugin.Packages.DraggerFramework

local Roact = require(Plugin.Packages.Roact)

local StandardCursor = require(DraggerFramework.Utility.StandardCursor)
--local ViewChangeDetector = require(DraggerFramework.Utility.ViewChangeDetector)

local SurfaceSelector = Roact.PureComponent:extend("SurfaceSelector")

function SurfaceSelector:init()
	assert(type(self.props.onSelected) == "function")
	assert(typeof(self.props.Mouse) == "Instance")
end

function SurfaceSelector:render()

end

function SurfaceSelector:didMount()
	self.props.Mouse.Icon = StandardCursor.getArrow()
	self._clickedConnection = self.props.Mouse.Button1Down:Connect(function()
		self:_onClick(self.props.Mouse.UnitRay)
	end)
end

function SurfaceSelector:willUnmount()
	self._clickedConnection:Disconnect()
end

function SurfaceSelector:_onClick(unitRay)
	local hitResult = Workspace:Raycast(unitRay.Origin, unitRay.Direction * 100)
	if hitResult then
		self.props.onSelected(hitResult.Instance, CFrame.lookAt(hitResult.Position, hitResult.Position + hitResult.Normal))
	end
end

return SurfaceSelector