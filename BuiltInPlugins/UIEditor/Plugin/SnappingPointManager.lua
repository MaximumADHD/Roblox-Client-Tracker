
local Extents2D			= require(script.Parent.Extents2D)
local FFlag				= require(script.Parent.FFlag)
local GlobalValues		= require(script.Parent.GlobalValues)
local InstanceInfo 		= require(script.Parent.InstanceInfo)
local Select			= require(script.Parent.Select)
local SelectionManager	= require(script.Parent.SelectionManager)
local Set				= require(script.Parent.Set)
local Utility			= require(script.Parent.Utility)

local SnappingType 	= require(script.Parent.Enum.SnappingType)

--List of Generated Snapping Extents
local gExt = {}

-- List of snapping extents associated with current filtered selection
-- Note that this only contains extents for gui objects, excluding extent of viewport
local gExtInstance = {}

local m_threshold = 1

local function closestSnappingLine(value, center, t)
	local closestLine = nil
	local closestDistance = 9e9
	
	for i = 1, #t do
		if (t[i][2] == center) then
			local delta = math.abs(value - t[i][1])
			if (delta < closestDistance) then
				closestDistance = delta
				closestLine = t[i][1]
			else
				break
			end
		end
	end
	
	return closestLine
end

-- void removeInstanceAndDescendantsFromTableExcludingSet(Instance instance, table t, table set)
local function removeInstanceAndDescendantsFromTableExcludingSet(instance, t, set)
	
	if (set[instance] ~= nil) then return end
	set[instance] = true
	
	--remove all entries of instance from the table
	while (Utility:removeItemFromTable(instance, t)) do end
	
	local children = instance:GetChildren()
	
	for i = 1, #children do
		removeInstanceAndDescendantsFromTableExcludingSet(children[i], t, set)
	end
end


local SnappingPointManager = {}

-- void SnappingPointManager:generateSnappingLines()
function SnappingPointManager:generateSnappingLines()
		
	gExt = {}
	gExtInstance = {}
	
	local filteredSelection = SelectionManager:getFilteredSelection()
	if (#filteredSelection == 0) then return end
	
	local snappingInstances = Select:getGuiObjects()
	--[[
		When #snappingInstances == 0, we may not be able to return because
		when the very first gui object is inserted, this function is called by 
		onSelectionChanged() but the paintOrder of Select will not be updated
		until onInputBegain() event.
	--]]
	if  #snappingInstances > 0 then
		-- Remove currently selected items from table of all gui objects
		-- Using set to prevent removal of the same item
		local previouslyRemovedItems = {}
		for i = 1, #filteredSelection do
			removeInstanceAndDescendantsFromTableExcludingSet(filteredSelection[i], snappingInstances, previouslyRemovedItems)
		end	
		
		for i = 1, #snappingInstances do
			local ext = Extents2D:getExtentsFromGui(snappingInstances[i])
			table.insert(gExt, ext)
			gExtInstance[ext] = snappingInstances[i] 
		end	
	end
	
	-- Adding viewport
	table.insert(gExt, Extents2D.new(Vector2.new(0,0), GlobalValues:getScreenSize()))
end

local SNAPPING_LINE_MARGIN = 10

local EDGE_LINE_COLOR = Color3.new(255 / 255, 8 / 255, 103 / 255)
local CENTER_LINE_COLOR = Color3.new(0 / 255, 255 / 255, 0 / 255)

-- table(mt Extents2D), table(table), hasSnappedX, hasSnappedY SnappingPointManager:snapExtents(table(mt Extents2D) extents, int snappingType)
function SnappingPointManager:snapExtents(extents, snappingType)
	
	-- We don't want to edit extents, copying table
	extents = Utility:cloneTable(extents)
	
	local finalListOfSnappingLines = {}
	
	local hasSnappedX = false
	local hasSnappedY = false
	
	local distance, offset
	local listOfSnappingLines = {}
	
	local function clearData()
		--resetting distance to maximum snapping threshold
		-- We always want to test for less than distance, so adding 1
		distance = m_threshold + 1
		offset = 0
		listOfSnappingLines = {}
	end
	
	local function checkAndMaybeAddToSnappingLines(p1, p2, lp1, lp2, c)
		local d = Utility:distance(p1, p2)
		local o = p2 - p1
				
		if (d < distance) then
			listOfSnappingLines = {}
			distance = d
			offset = o
			table.insert(listOfSnappingLines, {lp1, lp2, c})
		elseif (d == distance and o == offset) then
			table.insert(listOfSnappingLines, {lp1, lp2, c})
		end
	end
	
	if #gExtInstance > 0 then
		local filteredSelection = SelectionManager:getFilteredSelection()

		-- In the case of showing snapping lines, visibility is used to determine
		-- whether we would like to show the snapping lines from target(moving) object to 
		-- other objects. If the target object blocks the center of certain object at 
		-- the beginning of drag, the snapping lines to the blocked object will not
		-- be shown because its center is considered as invisible.
		-- We expect the snapping lines to be shown in this case so we ignore the currently
		-- selected objects (target objects) in visibility test and then they won't 
		-- block other objects.
		local function canSeeThrough(instance)
			if InstanceInfo:canSeeThrough(instance) then
				return true
			end 
			for i = 1, #filteredSelection do
				if instance == filteredSelection[i] then
					return true
				end
			end
			return false
		end	
		for i = 1, #gExt do
			local extInstance = gExtInstance[gExt[i]]
			if extInstance ~= nil then
				-- Need to check nil because the Extents2D of viewport is not in the map
				gExt[i]:refreshVisibility(extInstance, canSeeThrough)
			end 	
		end		
		-- We want to refresh the visibility only once at the beginning of drag.
		-- Clear the table here so we can skip refreshing visibility if gExtInstance
		-- is empty when snapExtents() is called next time.
		gExtInstance = {}			
	end
	
	if (SnappingType:containsType(snappingType, SnappingType.MoveX)) then
		clearData()
		
		for i = 1, #gExt do
			if (gExt[i].LeftVisible) then
				checkAndMaybeAddToSnappingLines(
					extents.Left, gExt[i].Left,
					Vector2.new(gExt[i].Left, math.min(extents.Top, gExt[i].Top) - SNAPPING_LINE_MARGIN),
					Vector2.new(gExt[i].Left, math.max(extents.Bottom, gExt[i].Bottom) + SNAPPING_LINE_MARGIN),
					EDGE_LINE_COLOR)
				
				checkAndMaybeAddToSnappingLines(
					extents.Right, gExt[i].Left,
					Vector2.new(gExt[i].Left, math.min(extents.Top, gExt[i].Top) - SNAPPING_LINE_MARGIN),
					Vector2.new(gExt[i].Left, math.max(extents.Bottom, gExt[i].Bottom) + SNAPPING_LINE_MARGIN),
					EDGE_LINE_COLOR)
			end
			
			if (gExt[i].RightVisible) then
				checkAndMaybeAddToSnappingLines(
					extents.Left, gExt[i].Right,
					Vector2.new(gExt[i].Right, math.min(extents.Top, gExt[i].Top) - SNAPPING_LINE_MARGIN),
					Vector2.new(gExt[i].Right, math.max(extents.Bottom, gExt[i].Bottom) + SNAPPING_LINE_MARGIN),
					EDGE_LINE_COLOR)
				
				checkAndMaybeAddToSnappingLines(
					extents.Right, gExt[i].Right,
					Vector2.new(gExt[i].Right, math.min(extents.Top, gExt[i].Top) - SNAPPING_LINE_MARGIN),
					Vector2.new(gExt[i].Right, math.max(extents.Bottom, gExt[i].Bottom) + SNAPPING_LINE_MARGIN),
					EDGE_LINE_COLOR)
			end
			
			if (gExt[i].CenterVisible) then
				checkAndMaybeAddToSnappingLines(
					extents.Center.X, gExt[i].Center.X,
					Vector2.new(gExt[i].Center.X, math.min(extents.Top, gExt[i].Top) - SNAPPING_LINE_MARGIN),
					Vector2.new(gExt[i].Center.X, math.max(extents.Bottom, gExt[i].Bottom) + SNAPPING_LINE_MARGIN),
					CENTER_LINE_COLOR)						
			end
		end
		
		hasSnappedX = offset ~= 0
		extents = Extents2D:translate(extents, Vector2.new(offset, 0))
		finalListOfSnappingLines = Utility:joinTables(finalListOfSnappingLines, listOfSnappingLines)
	end
	
	if (SnappingType:containsType(snappingType, SnappingType.MoveY)) then
		clearData()
		
		for i = 1, #gExt do
			
			if (gExt[i].TopVisible) then
				checkAndMaybeAddToSnappingLines(
					extents.Top, gExt[i].Top,
					Vector2.new(math.min(extents.Left, gExt[i].Left) - SNAPPING_LINE_MARGIN, gExt[i].Top),
					Vector2.new(math.max(extents.Right, gExt[i].Right) + SNAPPING_LINE_MARGIN, gExt[i].Top),
					EDGE_LINE_COLOR)
				
				checkAndMaybeAddToSnappingLines(
					extents.Bottom, gExt[i].Top,
					Vector2.new(math.min(extents.Left, gExt[i].Left) - SNAPPING_LINE_MARGIN, gExt[i].Top),
					Vector2.new(math.max(extents.Right, gExt[i].Right) + SNAPPING_LINE_MARGIN, gExt[i].Top),
					EDGE_LINE_COLOR)
			end
			
			if (gExt[i].BottomVisible) then
				checkAndMaybeAddToSnappingLines(
					extents.Top, gExt[i].Bottom,
					Vector2.new(math.min(extents.Left, gExt[i].Left) - SNAPPING_LINE_MARGIN, gExt[i].Bottom),
					Vector2.new(math.max(extents.Right, gExt[i].Right) + SNAPPING_LINE_MARGIN, gExt[i].Bottom),
					EDGE_LINE_COLOR)
			
				checkAndMaybeAddToSnappingLines(
					extents.Bottom, gExt[i].Bottom,
					Vector2.new(math.min(extents.Left, gExt[i].Left) - SNAPPING_LINE_MARGIN, gExt[i].Bottom),
					Vector2.new(math.max(extents.Right, gExt[i].Right) + SNAPPING_LINE_MARGIN, gExt[i].Bottom),
					EDGE_LINE_COLOR)
			end

			if (gExt[i].CenterVisible) then
				checkAndMaybeAddToSnappingLines(
					extents.Center.Y, gExt[i].Center.Y,
					Vector2.new(math.min(extents.Left, gExt[i].Left) - SNAPPING_LINE_MARGIN, gExt[i].Center.Y),
					Vector2.new(math.max(extents.Right, gExt[i].Right) + SNAPPING_LINE_MARGIN, gExt[i].Center.Y),
					CENTER_LINE_COLOR)						
			end		
		end
		
		hasSnappedY = offset ~= 0
		extents = Extents2D:translate(extents, Vector2.new(0, offset))
		finalListOfSnappingLines = Utility:joinTables(finalListOfSnappingLines, listOfSnappingLines)
		
	end
	
	-- Positive X
	if (SnappingType:containsType(snappingType, SnappingType.ResizeXp)) then
		clearData()
				
		for i = 1, #gExt do
			if (gExt[i].LeftVisible) then
				checkAndMaybeAddToSnappingLines(
					extents.Right, gExt[i].Left,
					Vector2.new(gExt[i].Left, math.min(extents.Top, gExt[i].Top) - SNAPPING_LINE_MARGIN),
					Vector2.new(gExt[i].Left, math.max(extents.Bottom, gExt[i].Bottom) + SNAPPING_LINE_MARGIN),
					EDGE_LINE_COLOR)
			end
			
			if (gExt[i].RightVisible) then
				checkAndMaybeAddToSnappingLines(
					extents.Right, gExt[i].Right,
					Vector2.new(gExt[i].Right, math.min(extents.Top, gExt[i].Top) - SNAPPING_LINE_MARGIN),
					Vector2.new(gExt[i].Right, math.max(extents.Bottom, gExt[i].Bottom) + SNAPPING_LINE_MARGIN),
					EDGE_LINE_COLOR)	
			end
			

		end
		
		hasSnappedX = offset ~= 0	
		extents.Right = extents.Right + offset
		finalListOfSnappingLines = Utility:joinTables(finalListOfSnappingLines, listOfSnappingLines)
	end
	
	-- Negative X
	if (SnappingType:containsType(snappingType, SnappingType.ResizeXn)) then
		clearData()
		
		for i = 1, #gExt do
			
			if (gExt[i].LeftVisible) then
				checkAndMaybeAddToSnappingLines(
					extents.Left, gExt[i].Left,
					Vector2.new(gExt[i].Left, math.min(extents.Top, gExt[i].Top) - SNAPPING_LINE_MARGIN),
					Vector2.new(gExt[i].Left, math.max(extents.Bottom, gExt[i].Bottom) + SNAPPING_LINE_MARGIN),
					EDGE_LINE_COLOR)
			end
			
			if (gExt[i].RightVisible) then
				checkAndMaybeAddToSnappingLines(
					extents.Left, gExt[i].Right,
					Vector2.new(gExt[i].Right, math.min(extents.Top, gExt[i].Top) - SNAPPING_LINE_MARGIN),
					Vector2.new(gExt[i].Right, math.max(extents.Bottom, gExt[i].Bottom) + SNAPPING_LINE_MARGIN),
					EDGE_LINE_COLOR)
			end
			
		end
		
		hasSnappedX = offset ~= 0	
		extents.Left = extents.Left + offset
		finalListOfSnappingLines = Utility:joinTables(finalListOfSnappingLines, listOfSnappingLines)
	end
	
	-- Positive Y
	if (SnappingType:containsType(snappingType, SnappingType.ResizeYp)) then
		clearData()
				
		for i = 1, #gExt do
			
			if (gExt[i].TopVisible) then
				checkAndMaybeAddToSnappingLines(
					extents.Bottom, gExt[i].Top,
					Vector2.new(math.min(extents.Left, gExt[i].Left) - SNAPPING_LINE_MARGIN, gExt[i].Top),
					Vector2.new(math.max(extents.Right, gExt[i].Right) + SNAPPING_LINE_MARGIN, gExt[i].Top),
					EDGE_LINE_COLOR)
			end
			
			if (gExt[i].BottomVisible) then
				checkAndMaybeAddToSnappingLines(
					extents.Bottom, gExt[i].Bottom,
					Vector2.new(math.min(extents.Left, gExt[i].Left) - SNAPPING_LINE_MARGIN, gExt[i].Bottom),
					Vector2.new(math.max(extents.Right, gExt[i].Right) + SNAPPING_LINE_MARGIN, gExt[i].Bottom),
					EDGE_LINE_COLOR)
			end
		end
		
		hasSnappedY = offset ~= 0
		extents.Bottom = extents.Bottom + offset
		finalListOfSnappingLines = Utility:joinTables(finalListOfSnappingLines, listOfSnappingLines)
	end
	
	-- Negative Y
	if (SnappingType:containsType(snappingType, SnappingType.ResizeYn)) then
		clearData()
				
		for i = 1, #gExt do
			
			if (gExt[i].TopVisible) then
				checkAndMaybeAddToSnappingLines(
					extents.Top, gExt[i].Top,
					Vector2.new(math.min(extents.Left, gExt[i].Left) - SNAPPING_LINE_MARGIN, gExt[i].Top),
					Vector2.new(math.max(extents.Right, gExt[i].Right) + SNAPPING_LINE_MARGIN, gExt[i].Top),
					EDGE_LINE_COLOR)
			end
			
			if (gExt[i].BottomVisible) then
				checkAndMaybeAddToSnappingLines(
					extents.Top, gExt[i].Bottom,
					Vector2.new(math.min(extents.Left, gExt[i].Left) - SNAPPING_LINE_MARGIN, gExt[i].Bottom),
					Vector2.new(math.max(extents.Right, gExt[i].Right) + SNAPPING_LINE_MARGIN, gExt[i].Bottom),
					EDGE_LINE_COLOR)
			end
							
		end
		
		hasSnappedY = offset ~= 0
		extents.Top = extents.Top + offset
		finalListOfSnappingLines = Utility:joinTables(finalListOfSnappingLines, listOfSnappingLines)
	end
	return extents, finalListOfSnappingLines, hasSnappedX, hasSnappedY
end

function SnappingPointManager:setThreshold(value)
	m_threshold = value
end

return SnappingPointManager
