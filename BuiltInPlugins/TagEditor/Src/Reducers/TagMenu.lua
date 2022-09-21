local Plugin = script.Parent.Parent.Parent
local Dash = require(Plugin.Packages.Dash)

return function(fullState: any, action: any)
	fullState = fullState or nil
	local tagMenu = if fullState ~= nil then fullState.TagMenu else nil

	if action.type == "OpenTagMenu" then
		return action.tag
	elseif action.type == "OpenGroupMenu" then
		return nil
	-- Keyboard Navigation Logic
	elseif action.type == "MoveTagSelectionUpOrDown" and #fullState.TagData > 0 then
		if tagMenu ~= nil then
			local tagNameComparator = function(tag)
				return tag.Name == tagMenu
			end

			local index = Dash.findIndex(fullState.TagData, tagNameComparator)

			if index == nil then
				return tagMenu
			elseif action.isDown then
				index += if index < #fullState.TagData then 1 else 0
			else
				index += if index > 1 then -1 else 0
			end

			return fullState.TagData[index].Name
		else
			return fullState.TagData[1].Name
		end
	end

	return tagMenu
end
