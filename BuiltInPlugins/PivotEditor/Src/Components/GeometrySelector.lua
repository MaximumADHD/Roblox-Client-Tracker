--[[
	GeometrySelector

	Component which represents a session of the user choosing a hotspot on the
	selected object. Takes in a Mouse prop of the mouse to do the selection
	with, and calls the onSelected prop with the CFrame of the clicked surface
	once a surface is selected. Also takes an Instance prop for the instance to
	base the hotspots around.

	TODO: Complete implementation in MOD-52, rendering / hitTesting the
	hotspots and adding real-time feedback.
]]

local Workspace = game:GetService("Workspace")

local Plugin = script.Parent.Parent.Parent
local DraggerFramework = Plugin.Packages.DraggerFramework

local Roact = require(Plugin.Packages.Roact)

local StandardCursor = require(DraggerFramework.Utility.StandardCursor)
--local ViewChangeDetector = require(DraggerFramework.Utility.ViewChangeDetector)

local GeometrySelector = Roact.PureComponent:extend("GeometrySelector")

function GeometrySelector:init()
	assert(type(self.props.onSelected) == "function")
	assert(typeof(self.props.Mouse) == "Instance")
	assert(typeof(self.props.Instance) == "Instance")
end

function GeometrySelector:render()

end

function GeometrySelector:didMount()
	self.props.Mouse.Icon = StandardCursor.getArrow()
	self._clickedConnection = self.props.Mouse.Button1Down:Connect(function()
		self:_onClick(self.props.Mouse.UnitRay)
	end)
end

function GeometrySelector:willUnmount()
	self._clickedConnection:Disconnect()
end

function GeometrySelector:_onClick(unitRay)
	local hitResult = Workspace:Raycast(unitRay.Origin, unitRay.Direction * 100)
	if hitResult then
		self.props.onSelected(CFrame.lookAt(hitResult.Position, hitResult.Position + hitResult.Normal))
	end
end

return GeometrySelector