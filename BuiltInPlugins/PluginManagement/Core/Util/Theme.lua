local Plugin = script.Parent.Parent.Parent
local StudioTheme = require(Plugin.Libs.UILibrary.Studio.StudioTheme)
local StudioStyle = require(Plugin.Libs.UILibrary.Studio.StudioStyle)
local Cryo = require(Plugin.Libs.Cryo)

local Theme = {}

function Theme.createValues(getColor, c, m)
	local theme = settings().Studio.Theme
	local function defineTheme(defaults, overrides)
		local override = overrides and overrides[theme.Name]
		if override then
			return Cryo.Dictionary.join(defaults, override)
		else
			return defaults
		end
	end

	local toggle = defineTheme({
		On = "rbxasset://textures/RoactStudioWidgets/toggle_on_light.png",
		Off = "rbxasset://textures/RoactStudioWidgets/toggle_off_light.png",
	}, {
		Dark = {
			On = "rbxasset://textures/RoactStudioWidgets/toggle_on_dark.png",
			Off = "rbxasset://textures/RoactStudioWidgets/toggle_off_dark.png",
		},
	})

	local PluginTheme = {
		Toggle = toggle,
		BackgroundColor = getColor(c.MainBackground),
		BorderColor = getColor(c.Border),
		TextColor = getColor(c.MainText),
		LinkColor = getColor(c.LinkText),
	}

	local UILibraryPalette = StudioStyle.new(getColor, c, m)
	local UILibraryOverrides = {
		loadingIndicator = defineTheme({
			baseColor = Color3.fromRGB(184, 184, 184),
			endColor = Color3.fromRGB(0, 162, 255),
		}, {
			Dark = {
				baseColor = Color3.fromRGB(56, 56, 56),
				endColor = Color3.fromRGB(11, 90, 175),
			}
		})
	}

	return {
		PluginTheme = PluginTheme,
		UILibraryPalette = UILibraryPalette,
		UILibraryOverrides = UILibraryOverrides,
	}
end

function Theme.new()
	return StudioTheme.new(Theme.createValues)
end

function Theme.mock()
	return StudioTheme.newDummyTheme(Theme.createValues)
end

return Theme
