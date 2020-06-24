local Framework = script.Parent.Parent.Parent
local ContextServices = require(Framework.ContextServices)
local Roact = require(Framework.Parent.Roact)
local UI = require(Framework.UI)
local StudioUI = require(Framework.StudioUI)
local Button = UI.Button
local Dialog = StudioUI.Dialog

local Example = Roact.PureComponent:extend("DialogExample")

function Example:render()
	local plugin = self.props.Plugin:get()

	return Roact.createElement(Button, {
		Style = "Round",
		Text = "Open Dialog",
		Size = UDim2.fromOffset(120, 32),
		OnClick = function()
			local handle
			local dialog = ContextServices.provide({
				ContextServices.Plugin.new(plugin)
			}, {
				popup = Roact.createElement(Dialog, {
					Title = "A Vanilla Dialog",
					Enabled = true,
					Size = Vector2.new(300, 120),
					OnClose = function()
						Roact.unmount(handle)
					end,
				})
			})
			handle = Roact.mount(dialog)
		end,
	})
end
ContextServices.mapToProps(Example, {
	Plugin = ContextServices.Plugin,
})

return Example