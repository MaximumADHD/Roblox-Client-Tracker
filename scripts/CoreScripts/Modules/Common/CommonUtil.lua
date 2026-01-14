--!nonstrict
--[[
	Filename: CommonUtil.lua
	Written by: dbanks
	Description: Common utility functions.
--]]

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

return CommonUtil
