--[[
  Filename: ServerMemoryAnalyzer.lua
  Written by: dbanks
  Description: Widget to display server memory usage.
--]]

--[[ Services ]]--
local CoreGuiService = game:GetService('CoreGui')

--[[ Modules ]]--
local BaseMemoryAnalyzerClass = require(CoreGuiService.RobloxGui.Modules.Stats.BaseMemoryAnalyzer)
local CommonUtils = require(CoreGuiService.RobloxGui.Modules.Common.CommonUtil)

--[[ Globals ]]--
local BYTES_PER_MB = 1048576.0;

--[[ Helper functions ]]--
function SortTripletsByName(triplets)	
	function compareTripletNames(t1, t2) 
		return (t1[2] < t2[2])
	end
	table.sort(triplets, compareTripletNames)
	return triplets
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
-- One top-level key is "ServerMemory".
-- That contains a table that looks like this:
--   "totalServerMemory": <some value>
--   <developer tag label>: <developer tag value>
--   (for all developer tags).
-- We want to 'filter' this so that we return just the "ServerMemory" value.
function ServerMemoryAnalyzerClass:filterServerMemoryStats(stats)
    if (stats.ServerMemory == nil) then 
        return {}
    else
        return stats.ServerMemory
    end
end

-- We are being passed a table that looks like this:
--   "totalServerMemory": <some value>
--   <developer tag label>: <developer tag value>
--   (for all developer tags).
-- Convert that into "type name value triplets", where 
--    Type is unique id for the row.
--    Name is user-friendly label, including indents.
--    Value is value for type.
-- Also we're doing some data munching to make sense of the rows, convert, etc.
function ServerMemoryAnalyzerClass:updateStats(stats)     
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
