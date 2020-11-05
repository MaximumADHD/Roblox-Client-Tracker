--[[
	PartSelector

	Component which represents a session of the user choosing a part in the
	world. Takes in a Mouse prop of the mouse to do the selection with, and
	calls the onSelected prop with the clicked part once a part is selected.

	TODO: Complete implementation in MOD-77, adding real-time feedback.
]]

local Workspace = game:GetService("Workspace")

local Plugin = script.Parent.Parent.Parent
local DraggerFramework = Plugin.Packages.DraggerFramework

local Roact = require(Plugin.Packages.Roact)

local StandardCursor = require(DraggerFramework.Utility.StandardCursor)
--local ViewChangeDetector = require(DraggerFramework.Utility.ViewChangeDetector)

local PartSelector = Roact.PureComponent:extend("PartSelector")

function PartSelector:init()
	assert(type(self.props.onSelected) == "function")
	assert(typeof(self.props.Mouse) == "Instance")
end

function PartSelector:render()

end

function PartSelector:didMount()
	self.props.Mouse.Icon = StandardCursor.getArrow()
	self._clickedConnection = self.props.Mouse.Button1Down:Connect(function()
		self:_onClick(self.props.Mouse.UnitRay)
	end)
end

function PartSelector:willUnmount()
	self._clickedConnection:Disconnect()
end

function PartSelector:_onClick(unitRay)
	local hitResult = Workspace:Raycast(unitRay.Origin, unitRay.Direction * 100)
	if hitResult then
		self.props.onSelected(hitResult.Instance)
	end
end

return PartSelector