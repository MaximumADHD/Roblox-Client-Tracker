local Framework = script.Parent.Parent.Parent
local ContextServices = require(Framework.ContextServices)
local Roact = require(Framework.Parent.Roact)
local UI = require(Framework.UI)
local StudioUI = require(Framework.StudioUI)
local Button = UI.Button
local StyledDialog = StudioUI.StyledDialog

local Example = Roact.PureComponent:extend("StyledDialogExample")

function Example:render()
	-- push the same context items into the example
	local plugin = self.props.Plugin
	local theme = self.props.Theme

	return Roact.createElement(Button, {
		Style = "Round",
		Text = "Open Dialog",
		Size = UDim2.fromOffset(120, 32),
		OnClick = function()
			local handle
			local dialog = ContextServices.provide({ plugin, theme, }, {
				popup = Roact.createElement(StyledDialog, {
					Title = "A Styled Dialog",
					OnClose = function()
						Roact.unmount(handle)
					end,
					OnButtonPressed = function(key)
						print("Pressed Dialog button with key : ", key)
					end,
					Buttons = {
						{ Key = "Save", Text = "Save", Style = "RoundPrimary" },
						{ Key = "Other", Text = "Other", Style = "Round" },
						{ Key = "Cancel", Text = "Cancel", Style = "Round" },
					},
					MinContentSize = Vector2.new(300, 200),
				}, {
					Message = Roact.createElement("TextLabel", {
						Size = UDim2.new(1, 0, 1, 0),
						Text = "This is some container",
						TextColor3 = Color3.new(1, 1, 1),
						BackgroundTransparency = 1.0,
					})
				})
			})
			handle = Roact.mount(dialog)
		end,
	})
end
ContextServices.mapToProps(Example, {
	Plugin = ContextServices.Plugin,
	Theme = ContextServices.Theme,
})

return Example