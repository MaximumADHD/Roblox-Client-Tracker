--[[
	The MouseIconManager is used for changing the mouse cursor icon. It
	keeps the current state so it knows not to change the cursor icon
	unless it needs to be changed.
--]]
local MouseIconManager = {}

-- Modules
local Direction = require(script.Parent.Enum.Direction)

-- Constants
local MOUSE_MOVE_ICON = "rbxasset://textures/advClosed-hand.png"

-- The winding order must match m_handles in the Move module. Using Enum.Direction for
-- both ensures it.
-- TODO: Replace placeholder icons with real assets once we get them.
local MOUSE_RESIZE_ICONS = {
	[Direction.E] = "rbxasset://textures/StudioUIEditor/icon_resize2.png", -- HANDLE_E
	[Direction.SE] = "rbxasset://textures/StudioUIEditor/icon_resize3.png", -- HANDLE_SE
	[Direction.S] = "rbxasset://textures/StudioUIEditor/icon_resize4.png", -- HANDLE_S
	[Direction.SW] = "rbxasset://textures/StudioUIEditor/icon_resize1.png", -- HANDLE_SW
	[Direction.W] = "rbxasset://textures/StudioUIEditor/icon_resize2.png", -- HANDLE_W
	[Direction.NW] = "rbxasset://textures/StudioUIEditor/icon_resize3.png", -- HANDLE_NW
	[Direction.N] = "rbxasset://textures/StudioUIEditor/icon_resize4.png", -- HANDLE_N
	[Direction.NE] = "rbxasset://textures/StudioUIEditor/icon_resize1.png", -- HANDLE_NE
}

local MOUSE_ROTATE_ICONS = {
	[Direction.E] = "rbxasset://textures/StudioUIEditor/icon_rotate1.png",
	[Direction.SE] = "rbxasset://textures/StudioUIEditor/icon_rotate2.png",
	[Direction.S] = "rbxasset://textures/StudioUIEditor/icon_rotate3.png",
	[Direction.SW] = "rbxasset://textures/StudioUIEditor/icon_rotate4.png",
	[Direction.W] = "rbxasset://textures/StudioUIEditor/icon_rotate5.png",
	[Direction.NW] = "rbxasset://textures/StudioUIEditor/icon_rotate6.png",
	[Direction.N] = "rbxasset://textures/StudioUIEditor/icon_rotate7.png",
	[Direction.NE] = "rbxasset://textures/StudioUIEditor/icon_rotate8.png",
}

-- Enums
local IconType = {}
IconType.DEFAULT = 0
IconType.MOVE = 1
IconType.RESIZE = 2
IconType.ROTATE = 3

-- Variables
local m_defaultIcon = nil
local m_iconType = IconType.DEFAULT
local m_handleDirection = Direction.NOT_SET
local m_mouse = nil

-- Functions

-- Returns which direction the hovered handle corresponds to with
-- the object rotation. It's used to figure out which mouse cursor
-- icons to use when the object is rotated.
--
-- Direction MouseIconManager:calcMouseIconDirection(Direction handle, double absoluteRotation)
function MouseIconManager:calcMouseIconDirection(handle, absoluteRotation)
	local handleAngle = Direction:directionToAngle(handle)
	return Direction:angleToDirection(handleAngle + absoluteRotation)
end

-- Restores the mouse cursor icon to what it was when the plugin was turned on.
--
-- void MouseIconManager:setToDefaultIcon()
function MouseIconManager:setToDefaultIcon()
	if m_iconType ~= IconType.DEFAULT then
		m_iconType = IconType.DEFAULT
		m_mouse.Icon = m_defaultIcon
		m_handleDirection = Direction.NOT_SET
	end
end

-- Set the mouse cursor icon to the hand when you move an object.
--
-- void MouseIconManager:setToMoveIcon()
function MouseIconManager:setToMoveIcon()
	if m_iconType ~= IconType.MOVE then
		m_iconType = IconType.MOVE
		m_mouse.Icon = MOUSE_MOVE_ICON
		m_handleDirection = Direction.NOT_SET
	end
end

-- Sets the resize icon depending on the handle. There are eight handles
-- around the resizable boxes. They are labeled northwest, north, norteast,
-- and so on. Use the enums from Enum.Direction to specify the direction.
--
-- void MouseIconManager:setToResizeIcon(Enum.Direction handleDirection)
function MouseIconManager:setToResizeIcon(handleDirection)
	assert(Direction:isValid(handleDirection), "The handle direction was not valid.")

	if (m_iconType == IconType.RESIZE and m_handleDirection ~= handleDirection) or m_iconType ~= IconType.RESIZE then
		m_iconType = IconType.RESIZE
		m_mouse.Icon = MOUSE_RESIZE_ICONS[handleDirection]
		m_handleDirection = handleDirection
	end
end

-- void MouseIconManager:setToRotateIcon(Enum.Direction handleDirection)
function MouseIconManager:setToRotateIcon(handleDirection)
	assert(Direction:isValid(handleDirection), "The handle direction was not valid.")

	if (m_iconType == IconType.ROTATE and m_handleDirection ~= handleDirection) or m_iconType ~= IconType.ROTATE then
		m_iconType = IconType.ROTATE
		m_mouse.Icon = MOUSE_ROTATE_ICONS[handleDirection]
		m_handleDirection = handleDirection
	end
end

-- Call this when turning the plugin off. It de-initializes the module.
--
-- void MouseIconManager:Off(Mouse mouse)
function MouseIconManager:Off(mouse)
	MouseIconManager:setToDefaultIcon()

	m_mouse = nil
	m_defaultIcon = nil
end

-- Call this when turning the plugin on. It initializes the module.
--
-- void MouseIconManager:On(Mouse mouse)
function MouseIconManager:On(mouse)
	assert(mouse ~= nil, "Cannot initialize MouseIconManager. Got a nil mouse.")
	assert(mouse.Icon ~= nil, "Cannot initialize MouseIconManager. The mouse icon was nil")

	m_mouse = mouse
	m_defaultIcon = mouse.Icon
	m_iconType = IconType.DEFAULT
	m_handleDirection = Direction.NOT_SET
end

return MouseIconManager
