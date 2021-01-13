--[[
	Represents a grid in the 3D view beneath the current rig.

	Props:
		Instance Container = An optional override container to place
			the line instances into. Defaults to CoreGui.
		Instance RootInstance = The root instance of the animation.
]]

-- Previously, there were magic numbers in the old Animation Editor
-- Keeping these here to maintain the same grid appearance
local LINE_THICKNESS = 2
local WIDTH_OFFSET = 3
local ROWS = 10
local EXTENTS = ROWS / 2

local CoreGui = game:GetService("CoreGui")

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RigUtils = require(Plugin.Src.Util.RigUtils)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local FloorGrid = Roact.PureComponent:extend("FloorGrid")

function FloorGrid:renderLine(gridTheme, adornee, cframe, length)
	return Roact.createElement("LineHandleAdornment", {
		Thickness = LINE_THICKNESS,
		Color = gridTheme.lineColor,
		Adornee = adornee,
		Length = length,
		CFrame = cframe,
	})
end

function FloorGrid:renderLines(gridTheme, rootInstance, adornee)
	local extents = rootInstance:GetExtentsSize()
	local width = math.max(extents.X, extents.Z) + WIDTH_OFFSET
	local spacing = width / ROWS
	local floorDistance = (extents.Y * 0.5) + (adornee.Position.Y - rootInstance:GetModelCFrame().p.Y)
	local floorCenter = Vector3.new(0, -floorDistance, 0)

	local lines = {}

	for index = -EXTENTS, EXTENTS do
		local cframe = CFrame.new(floorCenter + Vector3.new(index * spacing, 0, width / 2))
		table.insert(lines, self:renderLine(gridTheme, adornee, cframe, width))
	end

	for index = -EXTENTS, EXTENTS do
		local cframe = CFrame.new(floorCenter + Vector3.new(width / 2, 0, index * spacing))
			* CFrame.Angles(0, math.pi/2, 0)
		table.insert(lines, self:renderLine(gridTheme, adornee, cframe, width))
	end

	return lines
end

function FloorGrid:render()
		local props = self.props
		local theme = props.Theme:get("PluginTheme")
		local gridTheme = theme.gridTheme
		local container = props.Container or CoreGui
		local rootInstance = props.RootInstance
		local adornee = rootInstance and RigUtils.findRootPart(rootInstance)

		if adornee then
			local gridLines = self:renderLines(gridTheme, rootInstance, adornee)

			return Roact.createElement(Roact.Portal, {
				target = container,
			}, {
				GridLines = Roact.createElement("Folder", {}, gridLines)
			})
		end
end

ContextServices.mapToProps(FloorGrid, {
	Theme = ContextServices.Theme,
})


return FloorGrid