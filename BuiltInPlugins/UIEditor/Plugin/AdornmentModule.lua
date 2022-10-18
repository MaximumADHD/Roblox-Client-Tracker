local CoreGuiManager = require(script.Parent.CoreGuiManager)
local Direction = require(script.Parent.Enum.Direction)
local Extents2D = require(script.Parent.Extents2D)
local FFlag = require(script.Parent.FFlag)
local SelectionManager = require(script.Parent.SelectionManager)

local Utility = require(script.Parent.Utility)

local m_reparentInstance = nil
local m_reparentOverlay = nil

local m_xSnappingLine = nil
local m_ySnappingLine = nil

-- For Move adornments
local m_debugMode = false -- Shows m_handleParent so you can check its transformation

local m_screenGui = nil
local m_handleParent = nil
local m_handles = {}
local m_boundingBox = {}

local BASE_COLOR = Color3.fromRGB(255, 255, 255)

local HANDLE_SIZE = 8
local HANDLE_BORDER_COLOR = Color3.fromRGB(136, 136, 136)

local BOUNDING_BOX_WIDTH = 1
local BOUNDING_BOX_COLOR = Color3.fromRGB(222, 222, 222)

--[[
	Then handles should appear at the corners and the middle of the sides. Using
	the anchors points simplifies this, as we can just use those positions directly. 
--]]
local selectionHandleAnchors = {
	[Direction.E] = Vector2.new(0, 0.5),
	[Direction.SE] = Vector2.new(0, 0),
	[Direction.S] = Vector2.new(0.5, 0),
	[Direction.SW] = Vector2.new(1, 0),
	[Direction.W] = Vector2.new(1, 0.5),
	[Direction.NW] = Vector2.new(1, 1),
	[Direction.N] = Vector2.new(0.5, 1),
	[Direction.NE] = Vector2.new(0, 1),
}

--[[
	The handles are positioned using Scale relative to the m_handleParent. That way
	their position will be updated automatically as the parent is resized.
--]]
local selectionHandleOffset = 2
local selectionHandlePositions = {
	[Direction.E] = UDim2.new(1, -selectionHandleOffset, 0.5, 0),
	[Direction.SE] = UDim2.new(1, -selectionHandleOffset, 1, -selectionHandleOffset),
	[Direction.S] = UDim2.new(0.5, 0, 1, -selectionHandleOffset),
	[Direction.SW] = UDim2.new(0, selectionHandleOffset, 1, -selectionHandleOffset),
	[Direction.W] = UDim2.new(0, selectionHandleOffset, 0.5, 0),
	[Direction.NW] = UDim2.new(0, selectionHandleOffset, 0, selectionHandleOffset),
	[Direction.N] = UDim2.new(0.5, 0, 0, selectionHandleOffset),
	[Direction.NE] = UDim2.new(1, -selectionHandleOffset, 0, selectionHandleOffset),
}

-- The winding order is East and clockwise.
local selectionBBoxAnchors = {
	Vector2.new(0, 0.5),
	Vector2.new(0.5, 0),
	Vector2.new(1, 0.5),
	Vector2.new(0.5, 1),
}

-- the selection box is on top of the gui object border
local selectionBBoxPositions = {
	UDim2.new(1, 0, 0.5, 0),
	UDim2.new(0.5, 0, 1, 0),
	UDim2.new(0, 0, 0.5, 0),
	UDim2.new(0.5, 0, 0, 0),
}

--[[		
	The frames in the bounding box is equivalent to the selected
	objects because they're displayed on top of it. We need to add
	the bounding box width at both ends, hence the multiplication by
	two. 
--]]
local extraBoundingBoxSize = 2 * BOUNDING_BOX_WIDTH
local selectionBBoxSizes = {
	UDim2.new(0, BOUNDING_BOX_WIDTH, 1, extraBoundingBoxSize),
	UDim2.new(1, extraBoundingBoxSize, 0, BOUNDING_BOX_WIDTH),
	UDim2.new(0, BOUNDING_BOX_WIDTH, 1, extraBoundingBoxSize),
	UDim2.new(1, extraBoundingBoxSize, 0, BOUNDING_BOX_WIDTH),
}

-- ImageLabel createSnappingLine()
local function createSnappingLine()
	local line = Instance.new("ImageLabel")
	line.BorderSizePixel = 0
	line.BackgroundTransparency = 1
	line.Image = "rbxasset://textures/blockUpperLeft.png"
	line.ScaleType = Enum.ScaleType.Tile
	line.TileSize = UDim2.new(0, 16, 0, 16)
	line.AnchorPoint = Vector2.new(0.5, 0.5)
	line.ImageColor3 = Color3.new(0.8, 0.8, 0.8)
	line.Parent = CoreGuiManager:findOrCreateScreenGui("Adornments")
	return line
end

local function createFrame()
	local frame = Instance.new("Frame")
	frame.BorderSizePixel = 0
	frame.BackgroundColor3 = Color3.new(0, 0, 0)
	frame.AnchorPoint = Vector2.new(0.5, 0.5)
	frame.Parent = CoreGuiManager:findOrCreateScreenGui("Adornments")
	return frame
end

local function selectionHandlesExist()
	return #m_handles > 0
end

-- void createSelectionHandleParent(string parentName)
--[[
	Create the parent for handles so that we can group handles
	and manipulate them more easily.
		
	[parentName]: object name of parent
--]]
local function createSelectionHandleParent(parentName)
	m_handleParent = Instance.new("Frame")
	m_handleParent.Name = parentName

	-- Handle parent should only show in debug mode
	m_handleParent.AnchorPoint = Vector2.new(0, 0)
	m_handleParent.BackgroundTransparency = m_debugMode and 0.5 or 1
	m_handleParent.BackgroundColor3 = Color3.new(0, 0, 255)
	m_handleParent.BorderSizePixel = 0
end

-- void createSelectionHandles(string action)
--[[
	Create handles for selection box.
	
	[action]: used to set object name of handles
--]]
local function createSelectionHandles(action)
	-- Create each selection handle
	for i = Direction.FIRST, Direction.LAST do
		local handle = Instance.new("Frame")
		handle.Name = action .. "Handle_" .. Direction:toShortName(i)
		handle.AnchorPoint = selectionHandleAnchors[i]
		handle.Size = UDim2.new(0, HANDLE_SIZE, 0, HANDLE_SIZE)
		handle.Position = selectionHandlePositions[i]
		handle.BackgroundColor3 = BASE_COLOR
		handle.BorderColor3 = HANDLE_BORDER_COLOR
		handle.ZIndex = 3

		-- Create drop shadow
		local dropShadow = Instance.new("ImageLabel")
		dropShadow.Image = "rbxasset://textures/StudioUIEditor/resizeHandleDropShadow.png"
		dropShadow.Name = "ResizeHandleDropShadow_" .. Direction:toShortName(i)
		-- We want to show four pixels of drop shadow on each side of the resize handle,
		-- which is why we add 8 to the size.
		dropShadow.Size = UDim2.new(0, HANDLE_SIZE + 8, 0, HANDLE_SIZE + 8)
		-- The image's first four pixels is the blured edge, so move it over by 4 pixels. We want
		-- more to show at the bottom than top, so move it by a little less in y.
		dropShadow.Position = UDim2.new(0, -4, 0, -3)
		dropShadow.BackgroundTransparency = 1
		dropShadow.BorderSizePixel = 0
		dropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
		dropShadow.ImageTransparency = 0.6
		dropShadow.ScaleType = Enum.ScaleType.Slice
		-- The image was created so four pixels around the border is the blurred edge. We
		-- want those edges and corners to not be stretched in the 9-patch.
		dropShadow.SliceCenter = Rect.new(4, 4, 12, 12)
		dropShadow.ZIndex = 2
		dropShadow.Parent = handle

		-- Add selection handle
		handle.Parent = m_handleParent
		m_handles[i] = handle
	end
end

-- void createSelectionBoundingBox()
local function createSelectionBoundingBox()
	for i = 1, 4 do
		local frame = Instance.new("Frame")
		frame.AnchorPoint = selectionBBoxAnchors[i]
		frame.BackgroundColor3 = BOUNDING_BOX_COLOR
		frame.BorderSizePixel = 0
		frame.Position = selectionBBoxPositions[i]
		frame.Size = selectionBBoxSizes[i]

		-- Add bounding box frame
		m_boundingBox[i] = frame
		m_boundingBox[i].Parent = m_handleParent
	end
end

local AdornmentModule = {}

local snappingLines = {}

-- void AdornmentModule:showSnappingLine(table line)
function AdornmentModule:showSnappingLine(line)
	local sl = createSnappingLine()
	sl.AnchorPoint = Vector2.new(0, 0)
	sl.Position = UDim2.new(0, line[1].X, 0, line[1].Y)
	sl.Size = UDim2.new(
		0,
		math.max(1, Utility:distance(line[1].X, line[2].X)),
		0,
		math.max(1, Utility:distance(line[1].Y, line[2].Y))
	)
	sl.ImageColor3 = line[3]
	table.insert(snappingLines, sl)
end

-- void AdornmentModule:hideSnappingLines()
function AdornmentModule:hideSnappingLines()
	for i = 1, #snappingLines do
		snappingLines[i]:Destroy()
	end

	snappingLines = {}
end

function AdornmentModule:showXSnappingLine(point, size)
	if not m_xSnappingLine then
		m_xSnappingLine = createFrame()
	end

	m_xSnappingLine.Visible = true

	m_xSnappingLine.Size = UDim2.new(0, 1, 0, size)
	m_xSnappingLine.Position = UDim2.new(0, point.X, 0, point.Y)
end

function AdornmentModule:showYSnappingLine(point, size)
	if not m_ySnappingLine then
		m_ySnappingLine = createFrame()
	end

	m_ySnappingLine.Visible = true

	m_ySnappingLine.Size = UDim2.new(0, size, 0, 1)
	m_ySnappingLine.Position = UDim2.new(0, point.X, 0, point.Y)
end

function AdornmentModule:hideXSnappingLine()
	if m_xSnappingLine then
		m_xSnappingLine.Visible = false
	end
end

function AdornmentModule:hideYSnappingLine()
	if m_ySnappingLine then
		m_ySnappingLine.Visible = false
	end
end

function AdornmentModule:showOfferReparentAdornments(instance, offeredParent)
	if not m_reparentInstance then
		m_reparentInstance = instance:Clone()
		m_reparentInstance.AnchorPoint = Vector2.new(0, 0)
		m_reparentInstance.ZIndex = 3
		m_reparentOverlay = createFrame()

		m_reparentOverlay.BackgroundColor3 = Color3.new(0, 0, 0)
		m_reparentOverlay.BackgroundTransparency = 0.8
		m_reparentOverlay.AnchorPoint = Vector2.new(0, 0)
		m_reparentOverlay.ZIndex = 2
	end

	m_reparentInstance.Parent = CoreGuiManager:findOrCreateScreenGui("Adornments")

	m_reparentInstance.Position = UDim2.new(0, instance.AbsolutePosition.X, 0, instance.AbsolutePosition.Y)
	m_reparentInstance.Size = UDim2.new(0, instance.AbsoluteSize.X, 0, instance.AbsoluteSize.Y)

	m_reparentOverlay.Position = UDim2.new(0, offeredParent.AbsolutePosition.X, 0, offeredParent.AbsolutePosition.Y)
	m_reparentOverlay.Size = UDim2.new(0, offeredParent.AbsoluteSize.X, 0, offeredParent.AbsoluteSize.Y)
end

function AdornmentModule:hideOfferReparent()
	if m_reparentInstance then
		m_reparentInstance:Destroy()
		m_reparentOverlay:Destroy()

		m_reparentInstance = nil
		m_reparentOverlay = nil
	end
end

function AdornmentModule:showSelection()
	if m_screenGui and SelectionManager:hasFilteredSelection() then
		if not m_screenGui.Enabled then
			m_screenGui.Enabled = true
		end
	end
end

function AdornmentModule:hideSelection()
	if m_screenGui then
		if m_screenGui.Enabled then
			m_screenGui.Enabled = false
		end
	end
end

function AdornmentModule:updateSelectionPosition()
	local filteredSelection = SelectionManager:getFilteredSelection()
	if m_screenGui == nil or #filteredSelection == 0 then
		return
	end

	AdornmentModule:updateSelectionAdorns(Extents2D:getExtentsFromGuis(filteredSelection))
end

function AdornmentModule:createSelectionAdorns()
	if selectionHandlesExist() then
		return
	end

	local container = CoreGuiManager:findOrCreateFolder("m_handles")

	if not m_screenGui then
		m_screenGui = Instance.new("ScreenGui", container)
		m_screenGui.Enabled = false
	end

	createSelectionHandleParent("UIEditorSelectionHandleParent")
	m_handleParent.Parent = m_screenGui
	createSelectionHandles("Selection")
	createSelectionBoundingBox()

	AdornmentModule:updateSelectionAdorns(Extents2D:getExtentsFromGuis(SelectionManager:getFilteredSelection()))
	m_screenGui.Enabled = true
end

function AdornmentModule:updateSelectionAdorns(extents)
	local size = extents.Size
	local position = extents.TopLeft

	--[[
		Update the m_handleParent so the resize handles and bounding box
		frames are transformed.
	--]]
	m_handleParent.Position = UDim2.new(0, position.X, 0, position.Y)
	m_handleParent.Size = UDim2.new(0, size.X, 0, size.Y)

	local m_filteredSelection = SelectionManager:getFilteredSelection()
	if #m_filteredSelection == 1 then
		-- Only one object is selected so we can rotate the bounding box and resize handles
		m_handleParent.Rotation = m_filteredSelection[1].AbsoluteRotation
	else
		m_handleParent.Rotation = 0
	end
end

function AdornmentModule:deleteSelectionAdorns()
	for i = 1, #m_handles do
		m_handles[i]:Destroy()
	end

	for i = 1, #m_boundingBox do
		m_boundingBox[i]:Destroy()
	end

	m_handles = {}
	m_boundingBox = {}

	if m_handleParent then
		m_handleParent:Destroy()
		m_handleParent = nil
	end

	if m_screenGui then
		m_screenGui:Destroy()
		m_screenGui = nil
	end
end

return AdornmentModule
