local RubberBand = require(script.Parent.Rubberband)
local Metapart = require(script.Parent.Metapart)

local currentSelection = {} --selection with everything
local filteredSelection = {} -- filtered selection

local filteredSelectionMetaPart = nil

local function calculateFilteredSelection()
	local filteredSelection = {}
	local currentIndex = 1
	
	for i,v in ipairs(currentSelection) do
		if (v:IsA("BasePart") or v:IsA("Model")) and not v:IsA("Workspace") and not v:IsA("Terrain") and v:isDescendantOf(workspace) then
			filteredSelection[currentIndex] = v
			currentIndex = currentIndex + 1
		end
	end
	
	return filteredSelection
end


local function updateSelection()
	currentSelection = game:GetService("Selection"):Get()
		
	if RubberBand.isRubberBandDragInProgress() then return end
	
	filteredSelection = calculateFilteredSelection()
	if filteredSelectionMetaPart then
		filteredSelectionMetaPart.Unsubscribe()
	end
	filteredSelectionMetaPart = Metapart.convertToPart(filteredSelection, true)
end

local function getCurrentSelection()
	return currentSelection
end

local function getFilteredSelection()
	return filteredSelection
end

local function getFilteredSelectionMetapart()
	return filteredSelectionMetaPart
end



local module = {}

module.updateSelection = updateSelection

module.getCurrentSelection = getCurrentSelection
module.getFilteredSelection = getFilteredSelection
module.getFilteredSelectionMetapart = getFilteredSelectionMetapart

return module