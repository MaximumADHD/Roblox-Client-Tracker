--[[
	Filename: CommonUtil.lua
	Written by: dbanks
	Description: Common work.
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

-- Provides a nice syntax for creating Roblox instances.
-- Example:
--	local newPart = Utility.Create("Part") {
--		Parent = workspace,
--		Anchored = true,
--
--		--Create a SpecialMesh as a child of this part too
--		Utility.Create("SpecialMesh") {
--			MeshId = "rbxassetid://...",
--			Scale = Vector3.new(0.5, 0.2, 10)
--		}
--	}
function CommonUtil.Create(instanceType)
	return function(data)
		local obj = Instance.new(instanceType)
		local parent = nil
		for k, v in pairs(data) do
			if type(k) == 'number' then
				v.Parent = obj
			elseif k == 'Parent' then
				parent = v
			else
				obj[k] = v
			end
		end
		if parent then
			obj.Parent = parent
		end
		return obj
	end
end

return CommonUtil