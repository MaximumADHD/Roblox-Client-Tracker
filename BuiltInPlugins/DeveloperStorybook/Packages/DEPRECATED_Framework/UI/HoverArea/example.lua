return function(plugin)
	local Framework = script.Parent.Parent.Parent
	local Roact = require(Framework.Parent.Roact)
	local ContextServices = require(Framework.ContextServices)
	local Mouse = ContextServices.Mouse
	local Plugin = ContextServices.Plugin
	local Dialog = require(Framework.StudioUI).Dialog
	local HoverArea = require(Framework.UI.HoverArea)

	local pluginItem = Plugin.new(plugin)
	local mouse = Mouse.new(plugin:GetMouse())

	local ExampleButton = Roact.PureComponent:extend("ExampleButton")

	function ExampleButton:init()
		self.state = {
			enabled = true,
		}

		self.close = function()
			self:setState({
				enabled = false,
			})
		end
	end

	function ExampleButton:render()
		local enabled = self.state.enabled
		if not enabled then
			return
		end

		return ContextServices.provide({pluginItem, mouse}, {
			Main = Roact.createElement(Dialog, {
				Enabled = enabled,
				Title = "HoverArea Example",
				Size = Vector2.new(200, 200),
				Resizable = false,
				OnClose = self.close,
			}, {
				BottomLabel = Roact.createElement("TextLabel", {
					Size = UDim2.new(0, 100, 0, 60),
					Text = "Priority 1\nPointingHand",
					Position = UDim2.new(0.5, 0, 0.5, -25),
					AnchorPoint = Vector2.new(0.5, 0.5),
				}, {
					HoverArea = Roact.createElement(HoverArea, {
						Cursor = "PointingHand",
					})
				}),

				TopLabel = Roact.createElement("TextLabel", {
					Size = UDim2.new(0, 100, 0, 60),
					Text = "Priority 2\nOpenHand",
					Position = UDim2.new(0.5, 20, 0.5, 25),
					AnchorPoint = Vector2.new(0.5, 0.5),
				}, {
					HoverArea = Roact.createElement(HoverArea, {
						Cursor = "OpenHand",
						Priority = 2,
					})
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
