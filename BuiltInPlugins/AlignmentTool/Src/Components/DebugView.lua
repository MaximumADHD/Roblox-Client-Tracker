--[[
	Displays bounding boxes and other debugging elements.
]]

local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local DraggerFramework = Plugin.Packages.DraggerFramework
local StandaloneSelectionBox = require(DraggerFramework.Components.StandaloneSelectionBox)

local DebugView = Roact.PureComponent:extend("DebugView")

function DebugView:render()
	local props = self.props

	local boundingBoxOffset = props.BoundingBoxOffset
	local boundingBoxSize = props.BoundingBoxSize
	local objectBoundingBoxMap = props.ObjectBoundingBoxMap

	local children = {}

	-- Selection bounding box
	if boundingBoxOffset ~= nil then
		table.insert(children, Roact.createElement(StandaloneSelectionBox, {
			Color = Color3.new(1, 0, 0),
			CFrame = CFrame.new(boundingBoxOffset),
			Size = boundingBoxSize,
		}))
	end

	-- Individual object bounding boxes
	if objectBoundingBoxMap ~= nil then
		for _, boundingBox in pairs(objectBoundingBoxMap) do
			table.insert(children, Roact.createElement(StandaloneSelectionBox, {
				Color = Color3.new(1, 0.5, 0),
				CFrame = CFrame.new(boundingBox.offset),
				Size = boundingBox.size,
			}))
		end
	end

	return Roact.createFragment(children)
end

return DebugView
