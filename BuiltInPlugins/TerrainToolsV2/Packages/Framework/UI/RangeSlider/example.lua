return function(plugin)
	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local ContextServices = require(Framework.ContextServices)

	local Mouse = ContextServices.Mouse
	local Plugin = ContextServices.Plugin
	local Theme = ContextServices.Theme

	local RangeSlider = require(Framework.UI.RangeSlider)

	local UI = require(Framework.UI)
	local Container = UI.Container
	local Decoration = UI.Decoration

	local StudioUI = require(Framework.StudioUI)
	local Dialog = StudioUI.Dialog
	local StudioFrameworkStyles = StudioUI.StudioFrameworkStyles

	local ExampleRangeSlider = Roact.PureComponent:extend("ExampleRangeSlider")

	local pluginItem = Plugin.new(plugin)
	local mouse = Mouse.new(plugin:GetMouse())

	local MAX_VALUE = 5
	local MIN_VALUE = 0

	function ExampleRangeSlider:init()
		self.state = {
			enabled = true,
			currentMax = MAX_VALUE,
			currentMin = MIN_VALUE,
		}

		self.close = function()
			self:setState({
				enabled = false,
			})
		end

		self.theme = Theme.new(function(theme, getColor)
			return {
				Framework = StudioFrameworkStyles.new(theme, getColor)
			}
		end)

		self.setValues = function(lowerValue, upperValue)
			self:setState({
				currentMax = upperValue,
				currentMin = lowerValue,
			})
		end
	end

	function ExampleRangeSlider:render()
		local enabled = self.state.enabled
		if not enabled then
			return
		end

		return ContextServices.provide({pluginItem, self.theme, mouse}, {
			Main = Roact.createElement(Dialog, {
				Enabled = enabled,
				Title = "RangeSlider Example",
				Size = Vector2.new(400, 200),
				Resizable = false,
				OnClose = self.close,
			}, {
				Container = Roact.createElement(Container, {
					Padding = 20,
					Background = Decoration.Box,
				}, {
					UIListLayout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						Padding = UDim.new(0, 10),
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),
					RangeSlider = Roact.createElement(RangeSlider, {
						AnchorPoint = Vector2.new(0.5, 0.5),
						Disabled = false,
						LowerRangeValue = self.state.currentMin,
						UpperRangeValue = self.state.currentMax,
						Min = MIN_VALUE,
						Max = MAX_VALUE,
						OnValuesChanged = self.setValues,
						Size = UDim2.new(0, 200, 0, 20),
						Position = UDim2.new(0.5, 0, 0.5, 0),
						SnapIncrement = 1,
						VerticalDragTolerance = 300,
					}),
					DisabledRangeSlider = Roact.createElement(RangeSlider, {
						Disabled = true,
						LowerRangeValue = 1,
						UpperRangeValue = 3,
						Min = MIN_VALUE,
						Max = MAX_VALUE,
						OnValuesChanged = self.setValues,
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Size = UDim2.new(0, 200, 0, 20),
					})
				})
			})
		})
	end

	local element = Roact.createElement(ExampleRangeSlider)
	local handle = Roact.mount(element)

	local function stop()
		Roact.unmount(handle)
	end

	return stop
end
