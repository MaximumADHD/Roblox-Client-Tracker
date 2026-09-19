--[[
	Combines all style.lua tables in each component.
	Note that component styles expect defined StyleKeys when used in
	Stylizer. Combine this file with DarkTheme, LightTheme, or your own
	theme color using Stylizer.new(DarkTheme) and Stylizer:extend(BaseTheme).
]]
local Framework = script:FindFirstAncestor("Style").Parent
local UIFolderData = require(Framework.UI.Components.UIFolderData)

local ComponentSymbols = require(Framework.Style.ComponentSymbols)
local StyleKey = require(Framework.Style.StyleKey)

local styles = {
	BorderColor = StyleKey.Border,
	Color = StyleKey.MainBackground,
	Font = Enum.Font.SourceSans,
	TextColor = StyleKey.MainText,
	TextSize = 18,
}

local function createComponentStyles(folderData)
	for _, folder in pairs(folderData) do
		if folder.style then
			assert(
				ComponentSymbols[folder.name] ~= nil,
				("No Symbol was found for the component %s"):format(folder.name)
			)
			local componentStyleFile = require(folder.style)
			styles[ComponentSymbols[folder.name]] = componentStyleFile
		end
	end
end

createComponentStyles(UIFolderData)

return styles
