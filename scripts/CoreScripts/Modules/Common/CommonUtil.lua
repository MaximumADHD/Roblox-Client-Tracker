--!nonstrict
--[[
	Filename: CommonUtil.lua
	Written by: dbanks
	Description: Common work.
--]]

-- Flags
local FIntReactLowEndMemoryCutoff: number = game:DefineFastInt("ReactLowEndMemoryCutoff", 3500)
local FIntReactHighEndMemoryCutoff: number = game:DefineFastInt("ReactHighEndMemoryCutoff", 7500)

-- Deps
local CorePackages = game:GetService("CorePackages")
local SystemInfoProtocol = require(CorePackages.Workspace.Packages.SystemInfoProtocol).SystemInfoProtocol


type DeviceTier = "LowEnd" | "MidTier" | "HighEnd"

local DeviceTier = {
	LowEnd = "LowEnd" :: "LowEnd",
	MidTier = "MidTier" :: "MidTier",
	HighEnd = "HighEnd" :: "HighEnd",
}

--[[ Classes ]]--
local CommonUtil = {}

-- Concatenate these two tables, return result.
function CommonUtil.TableConcat(t1,t2)
	for i=1,#t2 do
		t1[#t1+1] = t2[i]
	end
	return t1
end

-- Instances have a "Name" field.  Sort 
-- by that name,
function CommonUtil.SortByName(items)	
	local function compareInstanceNames(i1, i2) 
		return (i1.Name < i2.Name)
	end
	table.sort(items, compareInstanceNames)
	return items
end

-- return the "memory tier" of current device based on available memory
function CommonUtil.GetDeviceMemoryTier(): DeviceTier?
	local success, systemInfo = pcall(function()
		return SystemInfoProtocol.default:getSystemInfo({SystemInfoProtocol.InfoNames.MAX_MEMORY})
	end)
	if success and typeof(systemInfo) == "table" then
		local maxMemory = tonumber(systemInfo[SystemInfoProtocol.InfoNames.MAX_MEMORY])
		if not maxMemory then
			return nil
		end

		if maxMemory <= FIntReactLowEndMemoryCutoff then
			return DeviceTier.LowEnd
		elseif maxMemory >= FIntReactHighEndMemoryCutoff then
			return DeviceTier.HighEnd
		else
			return DeviceTier.MidTier
		end
	end

	return nil
end

return CommonUtil
