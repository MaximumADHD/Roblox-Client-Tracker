return function(plugin)
	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local ContextServices = require(Framework.ContextServices)
	local Plugin = ContextServices.Plugin
	local Theme = ContextServices.Theme
	local Mouse = ContextServices.Mouse
	local Dialog = require(Framework.StudioUI).Dialog

	local UI = require(Framework.UI)
	local Container = UI.Container
	local RadioButtonList = UI.RadioButtonList
	local Decoration = UI.Decoration

	local StudioUI = require(Framework.StudioUI)
	local StudioFrameworkStyles = StudioUI.StudioFrameworkStyles

	local pluginItem = Plugin.new(plugin)

	local mouse = Mouse.new(plugin:GetMouse())
	local theme = Theme.new(function(theme, getColor)
		return {
			Framework = StudioFrameworkStyles.new(theme, getColor)
		}
	end)

	-- Mount and display a dialog
	local ExampleContainer = Roact.PureComponent:extend("ExampleContainer")

	function ExampleContainer:init()
		self.state = {
			isSelected = true,
			enabled = true,
		}

		self.close = function()
			self:setState({
				enabled = false,
			})
		end

		self.OnClick = function(key)
			self:setState({
				isSelected = (not self.state.isSelected)
			})
		end
	end

	function ExampleContainer:render()
		local enabled = self.state.enabled
		if not enabled then
			return
		end

		return ContextServices.provide({pluginItem, mouse, theme}, {
			Main = Roact.createElement(Dialog, {
				Enabled = enabled,
				OnClose = self.close,
				Resizable = false,
				Size = Vector2.new(600, 200),
				Title = "RadioButton Example",
			}, {
				Container = Roact.createElement(Container, {
					Padding = 20,
					Background = Decoration.Box,
				}, {
					UIListLayout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						Padding = UDim.new(0, 30),
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),
					VerticalList = Roact.createElement(RadioButtonList, {
						Buttons = {
							{
								Key = "KEY1",
								Text = "option text 1",
							},
							{
								Key = "KEY2",
								Text = "option text 2",
								Disabled = false,
							},
							{
								Key = "KEY3",
								Text = "option text 3",
								Disabled = false,
							},
							{
								Key = "KEY4",
								Text = "disabled text",
								Disabled = true,
							},
						},
						FillDirection = Enum.FillDirection.Vertical,
						LayoutOrder = 1,
						OnClick = self.OnClick,
						SelectedKey = "KEY1",
					}),
					HorizontalList = Roact.createElement(RadioButtonList, {
						Buttons = {
							{
								Key = "KEY1",
								Text = "option text 1",
								Disabled = false,
							},
							{
								Key = "KEY2",
								Text = "option text 2",
								Disabled = false,
							},
							{
								Key = "KEY4",
								Text = "disabled text",
								Disabled = true,
							},
						},
						FillDirection = Enum.FillDirection.Horizontal,
						LayoutOrder = 2,
						OnClick = self.OnClick,
						SelectedKey = "KEY2",
					}),
				})
			})
		})
	end

	local element = Roact.createElement(ExampleContainer)
	local handle = Roact.mount(element)

	local function stop()
		Roact.unmount(handle)
	end

	return stop
end
