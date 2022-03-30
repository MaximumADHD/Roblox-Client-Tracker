--[[
	The plugin toolbar
]]

local main = script.Parent.Parent.Parent
-- local _Types = require(main.Src.Types) -- uncomment to use types
local Roact = require(main.Packages.Roact)

local Framework = require(main.Packages.Framework)

local StudioUI = Framework.StudioUI
local PluginToolbar = StudioUI.PluginToolbar
local PluginButton = StudioUI.PluginButton

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Plugin = ContextServices.Plugin
local Localization = ContextServices.Localization

local Export = require(main.Src.Functions.Export)

local Toolbar = Roact.PureComponent:extend("Toolbar")

function Toolbar:renderButtons(toolbar)
	return {
		Export = Roact.createElement(PluginButton, {
			Active = false,
			Toolbar = toolbar,
			Title = self.props.Localization:getText("Plugin", "Export"),
			Tooltip = self.props.Localization:getText("Plugin", "ExportTip"),
			OnClick = function()
				Export(self.props.Plugin:get())
			end,
			ClickableWhenViewportHidden = true,
		}),
	}
end

function Toolbar:render()
	return Roact.createElement(PluginToolbar, {
		Title = self.props.Localization:getText("Plugin", "Name"),
		RenderButtons = function(toolbar)
			return self:renderButtons(toolbar)
		end,
	})
end

Toolbar = withContext({
	Plugin = Plugin,
	Localization = Localization,
})(Toolbar)

return Toolbar
