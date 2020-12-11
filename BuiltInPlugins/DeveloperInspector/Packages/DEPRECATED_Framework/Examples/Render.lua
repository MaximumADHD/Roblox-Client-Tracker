--[[
	Public interface to access renderable component examples.
	The primary consumer of these examples is the DevFramework Companion,
	which uses these to display inline examples of components along with
	their documentation.
]]

local Framework = script.Parent.Parent
local UIFolderData = require(Framework.UI.UIFolderData)
local StudioUIFolderData = require(Framework.StudioUI.StudioUIFolderData)
local exampleComponents = nil

local function addUIFolderExamples(folderData)
	for _, folder in pairs(folderData) do
		local renderExample = folder.renderExample
		if renderExample then
			exampleComponents[folder.name] = require(renderExample)
		end
	end
end

return function(name)
	assert(type(name) == "string")

	if exampleComponents == nil then
		exampleComponents = {}
		addUIFolderExamples(UIFolderData)
		addUIFolderExamples(StudioUIFolderData)
	end

	return exampleComponents[name]
end
