--[[
	Public interface to access renderable component examples.
	The primary consumer of these examples is the DevFramework Companion,
	which uses these to display inline examples of components along with
	their documentation.
]]

local Framework = script.Parent.Parent
local UIFolderData = require(Framework.UI.UIFolderData)
local StudioUIFolderData = require(Framework.StudioUI.StudioUIFolderData)
local Render = {}

local function addUIFolderExamples(folderData)
	for _, folder in pairs(folderData) do
		local renderExample = folder.renderExample
		if renderExample then
			Render[folder.name] = require(renderExample)
		end
	end
end

addUIFolderExamples(UIFolderData)
addUIFolderExamples(StudioUIFolderData)

return Render
