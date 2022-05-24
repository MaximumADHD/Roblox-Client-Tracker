--[[
	The main plugin component.
	Consists of the PluginWidget, Toolbar, Button, and Roact tree.
]]

local main = script.Parent.Parent
-- local _Types = require(main.Src.Types) -- uncomment to use types
local Roact = require(main.Packages.Roact)

local Framework = require(main.Packages.Framework)

local ContextServices = Framework.ContextServices
local Plugin = ContextServices.Plugin
local Mouse = ContextServices.Mouse

local MakeTheme = require(main.Src.Resources.MakeTheme)

local Toolbar = require(main.Src.Components.Toolbar)
local PromptExportNonAccessory = require(main.Src.Components.PromptExportNonAccessory)

local SourceStrings = main.Src.Resources.Localization.SourceStrings
local LocalizedStrings = main.Src.Resources.Localization.LocalizedStrings

local NonAccessoriesSelected = require(main.Src.Functions.NonAccessoriesSelected)
local Export = require(main.Src.Functions.Export)

local MainPlugin = Roact.PureComponent:extend("MainPlugin")

function MainPlugin:init(props)
	self.localization = ContextServices.Localization.new({
		stringResourceTable = SourceStrings,
		translationResourceTable = LocalizedStrings,
		pluginName = "InternalAvatarTools",
	})

	self:setState({
		promptExportNonAccessoryOpen = false,
	})
end

function MainPlugin:render()
	local props = self.props
	local plugin = props.Plugin

	return ContextServices.provide({
		Plugin.new(plugin),
		Mouse.new(plugin:getMouse()),
		MakeTheme(),
		self.localization,
	}, {
		Toolbar = Roact.createElement(Toolbar, {
			onExportClicked = function()
				if NonAccessoriesSelected() then
					self:setState({
						promptExportNonAccessoryOpen = true,
					})
				else
					Export(plugin)
				end
			end
		}),

		PromptExportNonAccessory = self.state.promptExportNonAccessoryOpen and Roact.createElement(PromptExportNonAccessory, {
			onConfirm = function()
				Export(plugin)

				self:setState({
					promptExportNonAccessoryOpen = false,
				})
			end,
			onCancel = function()
				self:setState({
					promptExportNonAccessoryOpen = false,
				})
			end,
		})
	})
end

return MainPlugin
