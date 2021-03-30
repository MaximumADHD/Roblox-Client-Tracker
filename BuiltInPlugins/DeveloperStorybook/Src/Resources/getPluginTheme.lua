local Main = script.Parent.Parent.Parent

local Framework = require(Main.Packages.Framework)
local createFolderDataLookup = Framework.Util.createFolderDataLookup
local DeveloperStorybookComponents = createFolderDataLookup(Main.Src.Components:GetChildren())

local function getPluginTheme()
	local pluginTheme = {}
	for _, folder in pairs(DeveloperStorybookComponents) do
		if folder.style then
			local style = require(folder.style)
			pluginTheme[folder.name] = style
		end
	end
	return pluginTheme
end

return getPluginTheme