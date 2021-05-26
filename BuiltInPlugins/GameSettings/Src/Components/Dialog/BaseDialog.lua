--[[
	A generic dialog that prompts the user for a response.

	Props:
		table Buttons = {string cancelButtonName, string confirmButtonName}
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)

local ContextServices = require(Plugin.Framework.ContextServices)

local ButtonBar = require(Plugin.Src.Components.ButtonBar)

local BaseDialog = Roact.PureComponent:extend("BaseDialog")

local function makeButtons(buttons)
	if buttons[2] then
		return {
			{Name = buttons[1], Active = true, Value = false},
			{Name = buttons[2], Default = true, Active = true, Value = true},
		}
	else
		return {
			{Name = buttons[1], Default = true, Active = true, Value = true},
		}
	end
end

function BaseDialog:render()
	local props = self.props

	local theme = props.Theme:get("Plugin")

	local buttons = props.Buttons

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BorderSizePixel = 0,
		BackgroundColor3 = theme.dialog.background,
	}, Cryo.Dictionary.join(props[Roact.Children], {
		Buttons = Roact.createElement(ButtonBar, {
			Position = UDim2.new(0, 0, 1, -29),
			AnchorPoint = Vector2.new(0, 1),
			Buttons = makeButtons(buttons),
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			ButtonClicked = props.OnResult
		})
	}))
end

ContextServices.mapToProps(BaseDialog, {
	Theme = ContextServices.Theme,
})

return BaseDialog