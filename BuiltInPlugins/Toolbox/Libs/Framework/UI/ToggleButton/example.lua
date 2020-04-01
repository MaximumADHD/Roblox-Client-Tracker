return function(plugin)
	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local ContextServices = require(Framework.ContextServices)
	local Plugin = ContextServices.Plugin
	local Theme = ContextServices.Theme
	local Mouse = ContextServices.Mouse

	local UI = require(Framework.UI)
	local Container = UI.Container
	local Decoration = UI.Decoration
	local ToggleButton = UI.ToggleButton

	local StudioUI = require(Framework.StudioUI)
	local Dialog = StudioUI.Dialog
	local StudioFrameworkStyles = StudioUI.StudioFrameworkStyles
	local mouse = Mouse.new(plugin:GetMouse())

	local pluginItem = Plugin.new(plugin)

	local Util = require(Framework.Util)
	local StyleTable = Util.StyleTable
	local Style = Util.Style
	local StyleModifier = Util.StyleModifier

	local theme = Theme.new(function(theme, getColor)
		return {
			Framework = StudioFrameworkStyles.new(theme, getColor)
		}
	end)

	local ExampleButton = Roact.PureComponent:extend("ExampleButton")

	function ExampleButton:init()
		self.state = {
			enabled = true,
			toggleOn1 = true,
			toggleOn2 = true,
		}

		self.close = function()
			self:setState({
				enabled = false,
			})
		end

		self.onToggle1 = function()
			self:setState({
				toggleOn1 = (not self.state.toggleOn1),
			})
		end

		self.onToggle2 = function()
			self:setState({
				toggleOn2 = (not self.state.toggleOn2),
			})
		end
	end

	function ExampleButton:render()
		local enabled = self.state.enabled
		if not enabled then
			return
		end

		return ContextServices.provide({pluginItem, theme, mouse}, {
			Main = Roact.createElement(Dialog, {
				Enabled = enabled,
				Title = "ToggleButton Example",
				Size = Vector2.new(200, 200),
				Resizable = false,
				OnClose = self.close,
			}, {
				Container = Roact.createElement(Container, {
					Padding = 20,
					Background = Decoration.Box,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						SortOrder = Enum.SortOrder.LayoutOrder,
						FillDirection = Enum.FillDirection.Vertical,
						Padding = UDim.new(0, 10),
					}),
					DisabledToggle = Roact.createElement(ToggleButton, {
						Disabled = true,
						Selected = false,
						LayoutOrder = 0,
						OnClick = self.onToggle,
						Size = UDim2.fromOffset(40, 24),
					}),
					ToggleButton = Roact.createElement(ToggleButton, {
						Disabled = false,
						Selected = self.state.toggleOn1,
						LayoutOrder = 1,
						OnClick = self.onToggle1,
						Size = UDim2.fromOffset(40, 24),
					}),
					CheckboxToggle = Roact.createElement(ToggleButton, {
						Disabled = false,
						Selected = self.state.toggleOn2,
						LayoutOrder = 2,
						OnClick = self.onToggle2,
						Size = UDim2.fromOffset(20, 20),
						Style = "Checkbox",
					}),
				}),
			})
		})
	end

	local element = Roact.createElement(ExampleButton)
	local handle = Roact.mount(element)

	local function stop()
		Roact.unmount(handle)
	end

	return stop
end
