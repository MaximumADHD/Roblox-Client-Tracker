local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local createFolderDataLookup = Framework.Util.createFolderDataLookup
local DeveloperToolsFolderData = createFolderDataLookup(Plugin.Src.Components:GetChildren())

local Util = Framework.Util
local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkTheme = {"RefactorDevFrameworkTheme"},
})

local function getPluginTheme(theme, getColor)
	local pluginTheme = {}
	for _, folder in pairs(DeveloperToolsFolderData) do
		if folder.style then
			local style = require(folder.style)
			-- TODO Remove check for function when FFlagRefactorDevFrameworkTheme is removed as new style is always an object
			if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
				pluginTheme[folder.name] = style
			else
				pluginTheme[folder.name] = style(theme, getColor)
			end
		end
	end
	return pluginTheme
end

return getPluginTheme