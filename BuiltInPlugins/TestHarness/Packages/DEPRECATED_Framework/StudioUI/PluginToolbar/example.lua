local didRun = false
local ranAgainWarning = [[
This example can only be run once, due to a bug with PluginToolbar and PluginToolbarButton.
The bug is filed under CLISTUDIO-20687.]]

return function(plugin)
	if didRun then
		warn(ranAgainWarning)
		return function()
		end
	end
	didRun = true

	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local ContextServices = require(Framework.ContextServices)
	local Plugin = ContextServices.Plugin

	local StudioUI = require(Framework.StudioUI)
	local PluginToolbar = StudioUI.PluginToolbar
	local PluginButton = StudioUI.PluginButton

	local pluginItem = Plugin.new(plugin)

	local ExampleToolbar = Roact.PureComponent:extend("ExampleToolbar")

	function ExampleToolbar:init()
		self.state = {
			activeButton = 1,
		}

		self.toggleActiveButton = function(button)
			print(string.format("Button %s was clicked.", button))
			self:setState(function(oldState)
				return {
					activeButton = button,
				}
			end)
		end
	end

	function ExampleToolbar:render()
		local activeButton = self.state.activeButton

		return ContextServices.provide({pluginItem}, {
			Toolbar = Roact.createElement(PluginToolbar, {
				Title = "Test Toolbar",
				RenderButtons = function(toolbar)
					return {
						Button1 = Roact.createElement(PluginButton, {
							Toolbar = toolbar,
							Title = "Button 1",
							Active = activeButton == 1,
							OnClick = function()
								self.toggleActiveButton(1)
							end,
						}),

						Button2 = Roact.createElement(PluginButton, {
							Toolbar = toolbar,
							Title = "Button 2",
							Active = activeButton == 2,
							OnClick = function()
								self.toggleActiveButton(2)
							end,
						}),
					}
				end,
			}),
		})
	end

	local element = Roact.createElement(ExampleToolbar)
	local handle = Roact.mount(element)

	local function stop()
		Roact.unmount(handle)
	end

	return stop
end
