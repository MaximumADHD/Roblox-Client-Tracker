--[[
  Filename: ServerMemoryAnalyzer.lua
  Written by: dbanks
  Description: Widget to display server memory usage.
--]]

--[[ Services ]]--
local CoreGuiService = game:GetService('CoreGui')

--[[ Modules ]]--
local BaseMemoryAnalyzerClass = require(CoreGuiService.RobloxGui.Modules.Stats.BaseMemoryAnalyzer)
local TreeViewItem = require(CoreGuiService.RobloxGui.Modules.Stats.TreeViewItem)
local CommonUtils = require(CoreGuiService.RobloxGui.Modules.Common.CommonUtil)

--[[ Globals ]]--
local BYTES_PER_MB = 1048576.0;

-- labelToBytesUsedMap maps string to "num bytes used".
-- for each item in the map:
--    Make sure there's a child in the tree for that string.
--    Update that child to have latest value.
--    Add value to a sum total.
-- Return the sum total.
local function __ReadAndSumValues(treeViewItem, labelToBytesUsedMap) 
	local totalMB = 0;
	
	for label, numBytes in pairs(labelToBytesUsedMap) do
		-- Convert to MB.
		local numMB = numBytes / BYTES_PER_MB
		totalMB = totalMB + numMB 
		local childTreeViewItem = treeViewItem:getOrMakeChildById(label)
		childTreeViewItem:setLabelAndValue(label, numMB)
	end
	return totalMB
end


--[[ Classes ]]--

--////////////////////////////////////
--
-- ServerMemoryAnalyzerClass
-- The whole table customized for Server memory.
--
--////////////////////////////////////
local ServerMemoryAnalyzerClass = {}
-- Derive from BaseMemoryAnalyzerClass
setmetatable(ServerMemoryAnalyzerClass, BaseMemoryAnalyzerClass)
ServerMemoryAnalyzerClass.__index = ServerMemoryAnalyzerClass

function ServerMemoryAnalyzerClass.new(parentFrame) 
    local self = BaseMemoryAnalyzerClass.new(parentFrame)
    setmetatable(self, ServerMemoryAnalyzerClass)

    self._cachedRootTreeViewItem = nil
	self._coreTreeViewItem = nil
	self._placeTreeViewItem = nil
	self._untrackedTreeViewItem = nil

	self._isVisible = false
	
    return self
end

-- 'static' function.
-- 'stats' is a value table from server.
-- One top-level key is "ServerMemoryTree".
-- That contains a table that looks like this:
--   "totalServerMemory": <some value>
--   "developerTags": <table that looks like...>
--     <developer tag label>: <developer tag value>
--     (for all developer tags).
--   "internalCategories": <table that looks like...>
--     <category label>: <category value>
--     (for all categories associated with the "internal" developer tag.)
-- We want to 'filter' this so that we return just the "ServerMemoryTree" value.
function ServerMemoryAnalyzerClass:filterServerMemoryTreeStats(stats)
    if (stats.ServerMemoryTree == nil) then
        return {}
    else
        return stats.ServerMemoryTree
    end
end

function ServerMemoryAnalyzerClass:updateWithTreeStats(stats)     
    local totalServerMemory = 0
		
	if (self._cachedRootTreeViewItem == nil) then 
		self._cachedRootTreeViewItem = TreeViewItem.new("root", nil) 
		-- make sure the childen are in the order I want them in.
		self._coreTreeViewItem = self._cachedRootTreeViewItem:getOrMakeChildById("CoreMemory")
		self._placeTreeViewItem = self._cachedRootTreeViewItem:getOrMakeChildById("PlaceMemory")
		self._untrackedTreeViewItem = self._cachedRootTreeViewItem:getOrMakeChildById("UntrackedMemory")
	end
		
	
	-- All values are in bytes.
	-- Convert to MB ASAP.
    for key, value in pairs(stats) do
        if key == "totalServerMemory" then
            totalServerMemory = value / BYTES_PER_MB
        elseif key == "developerTags" then 
			local sum = __ReadAndSumValues(self._placeTreeViewItem, value)
			self._placeTreeViewItem:setLabelAndValue("PlaceMemory", sum)
		elseif key == "internalCategories" then 
			local sum = __ReadAndSumValues(self._coreTreeViewItem, value)
			self._coreTreeViewItem:setLabelAndValue("CoreMemory", sum)
		end
    end
        
    -- Update total.
    self._cachedRootTreeViewItem:setLabelAndValue("Memory", totalServerMemory)
	
    -- Update untracked.
	local untrackedMemory = totalServerMemory - 
		(self._coreTreeViewItem:getValue() + self._placeTreeViewItem:getValue())
    self._untrackedTreeViewItem:setLabelAndValue("UntrackedMemory", untrackedMemory)
	
    self:renderUpdates();
end

function ServerMemoryAnalyzerClass:getMemoryUsageTree()
    return self._cachedRootTreeViewItem
end

function ServerMemoryAnalyzerClass:setVisible(isVisible) 
	self._isVisible = isVisible
	if (self._isVisible) then 
		self:renderUpdates()
	end
end

return ServerMemoryAnalyzerClass
