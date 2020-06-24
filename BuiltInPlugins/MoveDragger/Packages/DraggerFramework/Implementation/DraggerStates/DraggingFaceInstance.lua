--[[
	When hovered over a Part, DraggingFaceInstance will parents the instance onto the part
	and set the instances "Face" property to the related Surface.
]]
local Framework = script.Parent.Parent.Parent

local DraggerStateType = require(Framework.Implementation.DraggerStateType)

local Utility = Framework.Utility
local DragHelper = require(Utility.DragHelper)
local StandardCursor = require(Utility.StandardCursor)

local SURFACE_TO_FACE = {
	["TopSurface"] = "Top",
	["BottomSurface"] = "Bottom",
	["LeftSurface"] = "Left",
	["RightSurface"] = "Right",
	["FrontSurface"] = "Front",
	["BackSurface"] = "Back",
}

local DraggingFaceInstance = {}
DraggingFaceInstance.__index = DraggingFaceInstance

function DraggingFaceInstance.new(draggerTool, dragStart)
	local self = setmetatable({}, DraggingFaceInstance)
	return self
end

function DraggingFaceInstance:enter(draggerTool)
end

function DraggingFaceInstance:leave(draggerTool)
end

function DraggingFaceInstance:render(draggerTool)
	draggerTool.props.Mouse.Icon = StandardCursor.getClosedHand()
end

function DraggingFaceInstance:processSelectionChanged(draggerTool)
    self:_endDrag(draggerTool)
end

function DraggingFaceInstance:processMouseDown(draggerTool)
end

function DraggingFaceInstance:processViewChanged(draggerTool)
	local part, surface = DragHelper.getPartAndSurface({})
	local configurableFaces = draggerTool._derivedWorldState._instancesWithConfigurableFace

	if configurableFaces then
		for _,instance in pairs(configurableFaces) do
			if part then
				instance.Parent = part
			end
			if surface then
				instance.Face = SURFACE_TO_FACE[surface]
			end
		end
	end
end

function DraggingFaceInstance:processMouseUp(draggerTool)
	self:_endDrag(draggerTool)
end

function DraggingFaceInstance:processKeyDown(draggerTool, keyCode)
end

function DraggingFaceInstance:_endDrag(draggerTool)
	draggerTool:transitionToState({}, DraggerStateType.Ready)
end

return DraggingFaceInstance