return function(plugin)
	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local ContextServices = require(Framework.ContextServices)
	local Plugin = ContextServices.Plugin
	local Theme = ContextServices.Theme

	local Dialog = require(Framework.StudioUI).Dialog
	local Label = require(script.Label)

	local Util = require(Framework.Util)
	local StyleValue = Util.StyleValue
	local StyleTable = Util.StyleTable
	local Style = Util.Style

	local pluginItem = Plugin.new(plugin)

	-- Create the StyleValue
	-- This will change when the theme changes
	local WhatThemeIsIt = StyleValue.new("WhatThemeIsIt", {
		Light = "It is Light theme!",
		Dark = "It is Dark theme!",
	})

	-- Create a Theme for Label
	local theme = Theme.new(function(theme, getColor)
		local themeName = theme.Name

		return {
			Examples = {
				Label = StyleTable.new("Label", function()
					local Default = Style.new({
						ThemeDisplayText = WhatThemeIsIt:get(themeName)
					})

					return {
						Default = Default,
					}
				end),
			},
		}
	end)

	-- Mount and display the Label in a dialog
	local ExampleLabel = Roact.PureComponent:extend("ExampleLabel")

	function ExampleLabel:init()
		self.state = {
			enabled = true,
		}

		self.close = function()
			self:setState({
				enabled = false,
			})
		end
	end

	function ExampleLabel:render()
		local enabled = self.state.enabled
		if not enabled then
			return
		end

		return ContextServices.provide({pluginItem, theme}, {
			Main = Roact.createElement(Dialog, {
				Enabled = enabled,
				Title = "StyleValue Example",
				Size = Vector2.new(200, 200),
				Resizable = false,
				OnClose = self.close,
			}, {
				Label = Roact.createElement(Label),
			})
		})
	end

	local element = Roact.createElement(ExampleLabel)
	local handle = Roact.mount(element)

	local function stop()
		Roact.unmount(handle)
	end

	return stop
end
