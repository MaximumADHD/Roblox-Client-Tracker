--[[
  Filename: ServerMemoryAnalyzer.lua
  Written by: dbanks
  Description: Widget to display server memory usage.
  
  FIXME(dbanks)
  2017/08/21
  Remove once FFlag::ImproveClientAndServerMemoryTabLayout is on for good.
--]]

--[[ Services ]]--
local CoreGuiService = game:GetService('CoreGui')

--[[ Modules ]]--
local BaseMemoryAnalyzerClass = require(CoreGuiService.RobloxGui.Modules.Stats.DEPRECATED_BaseMemoryAnalyzer)
local CommonUtils = require(CoreGuiService.RobloxGui.Modules.Common.CommonUtil)

--[[ Globals ]]--
local BYTES_PER_MB = 1048576.0;

--[[ Helper functions ]]--
local function SortTripletsByName(triplets)	
	function compareTripletNames(t1, t2) 
		return (t1[2] < t2[2])
	end
	table.sort(triplets, compareTripletNames)
	return triplets
end

-- labelToBytesUsedMap is a table of name/value pairs.
-- sum up all the values into total.
-- for each value, also create an indented triplet like:
-- {key,
--	indentedKey, 
--	value}
-- add add that triplet to triplets.
--
-- All values should be adjusted to MB.
--
-- return total, triplets.
local function readAndSumNameValuePairs(labelToBytesUsedMap) 
	local totalMB = 0;
	local triplets = {}
	
	for label, numBytes in pairs(labelToBytesUsedMap) do
		-- Convert to MB.
		local numMB = numBytes / BYTES_PER_MB
		totalMB = totalMB + numMB 
		table.insert(triplets, {label, 
                    BaseMemoryAnalyzerClass.Indent .. BaseMemoryAnalyzerClass.Indent .. label,
                    numMB})
	end
	return totalMB, triplets
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

    self.cachedTriplets = {}

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

-- Input is the table we got from calling "filter" function above.
-- Write this into our cached tree of memory info.
-- Trigger a render.
function ServerMemoryAnalyzerClass:updateWithTreeStats(stats)     
    local totalPlaceMemory = 0
    local developerTagTriplets = {}
	
	local totalInternalMemory = 0
    local categoryTriplets = {}
	
    local totalServerMemory = 0
		
	-- All values are in bytes.
	-- Convert to MB ASAP.
    for key, value in pairs(stats) do
        if key == "totalServerMemory" then
            totalServerMemory = value / BYTES_PER_MB
        elseif key == "developerTags" then 
			totalPlaceMemory, developerTagTriplets = readAndSumNameValuePairs(value)
		elseif key == "internalCategories" then 
			totalInternalMemory, categoryTriplets = readAndSumNameValuePairs(value)
		end
    end
    
    local finalTriplets = {}
    
    -- Triplet for total memory.
    table.insert(finalTriplets, {"Memory", "Memory", totalServerMemory})
	
    -- Triplet for internal memory.
    table.insert(finalTriplets, {"CoreMemory", 
            BaseMemoryAnalyzerClass.Indent .. "CoreMemory", 
            totalInternalMemory})
    -- Internal categories, sorted by name.
	categoryTriplets = SortTripletsByName(categoryTriplets)
	finalTriplets = CommonUtils.TableConcat(finalTriplets, categoryTriplets)

    -- Triplet for place memory.
    table.insert(finalTriplets, {"PlaceMemory", 
            BaseMemoryAnalyzerClass.Indent .. "PlaceMemory", 
            totalPlaceMemory})
    -- Developer tags, sorted by name.
	developerTagTriplets = SortTripletsByName(developerTagTriplets)
	finalTriplets = CommonUtils.TableConcat(finalTriplets, developerTagTriplets)
	
    -- Triplet untracked memory (total - (place + categories))
	local untrackedMemory = totalServerMemory - (totalInternalMemory + totalPlaceMemory)
    table.insert(finalTriplets, {"UntrackedMemory", 
            BaseMemoryAnalyzerClass.Indent .. "UntrackedMemory", 
            untrackedMemory})

    self.cachedTriplets = finalTriplets    
    self:renderUpdates();
end

-- FIXME(dbanks)
-- 2017/08/14
-- Remove this once EnableMemoryTrackerCategoryStats is on for good.
-- 'static' function.
-- 'stats' is a value table from server.
-- One top-level key is "DEPRECATED_ServerMemory".
-- That contains a table that looks like this:
--   "totalServerMemory": <some value>
--   <developer tag label>: <developer tag value>
--   (for all developer tags).
-- We want to 'filter' this so that we return just the "DEPRECATED_ServerMemory" value.
function ServerMemoryAnalyzerClass:DEPRECATED_filterServerMemoryStats(stats)
    if (stats.DEPRECATED_ServerMemory == nil) then
        return {}
    else
        return stats.DEPRECATED_ServerMemory
    end
end


-- FIXME(dbanks)
-- 2017/08/16
-- Remove once FFlag::EnableMemoryTrackerCategoryStats is on for good.
--
-- We are being passed a table that looks like this:
--   "totalServerMemory": <some value>
--   <developer tag label>: <developer tag value>
--   (for all developer tags).
-- Convert that into "type name value triplets", where 
--    Type is unique id for the row.
--    Name is user-friendly label, including indents.
--    Value is value for type.
-- Also we're doing some data munching to make sense of the rows, convert, etc.
function ServerMemoryAnalyzerClass:DEPRECATED_updateStats(stats)     
    local totalPlaceMemory = 0
    local developerTagTriplets = {}
    local totalServerMemory = 0

    for key, value in pairs(stats) do
		-- All values are in bytes.
		-- Convert to MB.
		value = value / BYTES_PER_MB
        if key == "totalServerMemory" then
            totalServerMemory = value
        else 
            -- This is a developer tag.
            -- 1) it contributes to total "place" memory.
            totalPlaceMemory = totalPlaceMemory + value
            --  2) We want an indented triplet for this.
            table.insert(developerTagTriplets, {key, 
                    BaseMemoryAnalyzerClass.Indent .. BaseMemoryAnalyzerClass.Indent .. key,
                    value})
        end
    end
    
    local finalTriplets = {}
    
    -- Triplet for total memory.
    table.insert(finalTriplets, {"Memory", "Memory", totalServerMemory})
    -- Triplet for core memory (total - place)
    table.insert(finalTriplets, {"CoreMemory", 
            BaseMemoryAnalyzerClass.Indent .. "CoreMemory", 
            totalServerMemory - totalPlaceMemory})
    -- Triplet for place memory (sum of all developer tags).
    table.insert(finalTriplets, {"PlaceMemory", 
            BaseMemoryAnalyzerClass.Indent .. "PlaceMemory", 
            totalPlaceMemory})
    -- Developer tags, sorted by name.
	developerTagTriplets = SortTripletsByName(developerTagTriplets)
   
   finalTriplets = CommonUtils.TableConcat(finalTriplets, developerTagTriplets)

    self.cachedTriplets = finalTriplets
    
    self:renderUpdates();
end

-- Override: where do we get type/name/value triplets?
function ServerMemoryAnalyzerClass:getMemoryTypeNameValueTriplets()
    -- We have them cached.
    return self.cachedTriplets
end


return ServerMemoryAnalyzerClass
