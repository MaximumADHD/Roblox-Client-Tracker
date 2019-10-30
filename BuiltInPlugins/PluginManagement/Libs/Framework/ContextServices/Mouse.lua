--[[
	Mouse is a ContextItem that handles mouse icon logic for the plugin.
	The Mouse constructor expects a PluginMouse instance.

	HoverArea
		A Roact component used to change the mouse cursor on hover when the mouse
		enters the area, and has optional callbacks for when the hover state changed.

		Props:
			string Cursor = The mouse cursor which is set when the mouse hovers in this area.
				Cursor allows you to either directly specify an asset, such as
				"rbxasset://textures/advDragIcon.png", or use the string of a SystemCursor,
				such as "PointingHand".

		Optional Props:
			int Priority = The priority of this area in relation to other HoverAreas.
				Higher Priority areas will show their cursor if the mouse hovers over multiple areas.
			UDim2 Size = The size of the component. Defaults to the size of the parent component.
			UDim2 Position = The position of the component. Defaults to zero.

			function MouseEnter = A callback for when the mouse enters the area.
			function MouseLeave = A callback for when the mouse leaves the area.
]]

local DEFAULT_CURSOR = "rbxasset://SystemCursors/Arrow"

local function getCursor(cursorString)
	if string.find(cursorString, "rbxasset://textures/")
		or string.find(cursorString, "rbxasset://SystemCursors/") then
		return cursorString
	else
		return "rbxasset://SystemCursors/" .. cursorString
	end
end

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local mapToProps = require(Framework.ContextServices.mapToProps)
local ContextItem = require(Framework.ContextServices.ContextItem)
local Provider = require(Framework.ContextServices.Provider)

local Mouse = ContextItem:extend("Mouse")

function Mouse.new(mouse)
	assert(mouse, "Mouse.new expects a PluginMouse instance.")

	local self = {
		mouse = mouse,
		cursors = {}
	}

	setmetatable(self, Mouse)
	return self
end

function Mouse:createProvider(root)
	return Roact.createElement(Provider, {
		ContextItem = self,
	}, {root})
end

function Mouse:get()
	return self.mouse
end

function Mouse:__updateCursor()
	local cursors = self.cursors
	local maxPriority = 1

	for priority, _ in pairs(cursors) do
		if priority > maxPriority then
			maxPriority = priority
		end
	end

	local displayCursors = cursors[maxPriority]
	if displayCursors and #displayCursors > 0 then
		self.mouse.Icon = displayCursors[#displayCursors]
	else
		self.mouse.Icon = DEFAULT_CURSOR
	end
end

function Mouse:__pushCursor(cursor, priority)
	priority = priority or 1
	local cursors = self.cursors[priority] or {}
	table.insert(cursors, getCursor(cursor))
	self.cursors[priority] = cursors

	self:__updateCursor()
end

function Mouse:__popCursor(priority)
	priority = priority or 1
	local cursors = self.cursors[priority]

	if cursors then
		table.remove(cursors, #cursors)

		if #cursors == 0 then
			self.cursors[priority] = nil
		end

		self:__updateCursor()
	end
end

function Mouse:__resetCursor()
	self.cursors = {}
	self.mouse.Icon = DEFAULT_CURSOR
end

local HoverArea = Roact.PureComponent:extend("HoverArea")
function HoverArea:init()
	local props = self.props
	local priority = props.Priority
	local cursor = props.Cursor
	assert(cursor, "HoverArea expects a 'Cursor' prop.")

	self.mouseEnter = function()
		local props = self.props
		props.Mouse:__pushCursor(cursor, priority)
		if props.MouseEnter then
			props.MouseEnter()
		end
	end

	self.mouseLeave = function()
		local props = self.props
		props.Mouse:__popCursor(priority)
		if props.MouseLeave then
			props.MouseLeave()
		end
	end
end
function HoverArea:willUnmount()
	local props = self.props
	props.Mouse:__resetCursor()
end
function HoverArea:render()
	local props = self.props
	local size = props.Size or UDim2.new(1, 0, 1, 0)
	local position = props.Position

	return Roact.createElement("Frame", {
		Size = size,
		Position = position,
		BackgroundTransparency = 1,

		[Roact.Event.MouseEnter] = self.mouseEnter,
		[Roact.Event.MouseLeave] = self.mouseLeave,
	})
end
mapToProps(HoverArea, {
	Mouse = Mouse,
})

Mouse.HoverArea = HoverArea

return Mouse