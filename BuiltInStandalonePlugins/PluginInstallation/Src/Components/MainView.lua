local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Theming = require(Plugin.Src.ContextServices.Theming)
local Localizing = require(Plugin.Packages.UILibrary).Localizing

local MainView = Roact.Component:extend("MainView")

function MainView:render()
	local id = self.props.id

	return Theming.withTheme(function(theme)
		return Localizing.withLocalization( function(localization)

			local msg
			if id then
				msg = localization:getText("Main", "InstallingPlugin", id)
			else
				msg = localization:getText("Main", "ErrorNoPlugin")
			end

			return Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(0,0,0,0),
				BackgroundColor3 = theme.backgroundColor,
			}, {
				SimpleLabel = Roact.createElement("TextLabel", {
					Text = msg,
					Size = UDim2.new(1, 0, 1, 0),
					Position = UDim2.new(0,0,0,0),
					BackgroundTransparency = 1.0,
					TextColor3 = theme.textColor,
					TextSize = 36,
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Center,
				})
			})
		end)
	end)
end

return RoactRodux.connect(function(state, _)
	return {
		id = state.PluginInfo.pluginId,
	}
end)(MainView)