--[[
	{
        "data": [
            {
				"id": 0,
				"name": "string"
			}
        ]
    }
]]

local Group = {}

function Group.mock()
	return {
		groupId = 12341234,
		name = "yeet",
	}
end

function Group.fromJsonData(groupJson)
	if type(groupJson.id) ~= "number" then
		return false, "Group.fromJsonData expects id to be a number"
	end
	if type(groupJson.name) ~= "string" then
		return false, "Group.fromJsonData expects name to be a string"
	end

	return true, {
		name = groupJson.name,
		groupId = groupJson.id,
	}
end

return Group
