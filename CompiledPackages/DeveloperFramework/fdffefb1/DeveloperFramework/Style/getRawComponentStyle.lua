--[[
	Gets the original raw, un-calcuated UI style table for a given component.
]]

local Framework = script.Parent.Parent
local UIFolderData = require(Framework.UI.Components.UIFolderData)

return function(componentName)
	local componentData = UIFolderData[componentName]
	local result

	if componentData and componentData.style then
		result = require(componentData.style)
	end
	return result
end
