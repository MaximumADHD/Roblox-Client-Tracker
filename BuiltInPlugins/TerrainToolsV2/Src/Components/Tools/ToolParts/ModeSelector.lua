--[[
	Wrapper around SingleSelectButtonGroup that allows it to fit across the 2 column view with correct padding.
	Intended for when you have a high level toggle between modes in a tool, not tool's behaviour
	e.g. material or colourmap in import, box or brush in replace, but not the brush pivot selection
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)

local ToolParts = script.Parent
local SingleSelectButtonGroup = require(ToolParts.SingleSelectButtonGroup)

local Constants = require(Plugin.Src.Util.Constants)

local function ModeSelector(props)
	-- Assumes we're toggling between 2 modes
	local width = 2 * 104

	return Roact.createElement("Frame", {
		LayoutOrder = props.LayoutOrder,
		Size = UDim2.new(1, 0, 0, 22),
		BackgroundTransparency = 1,
	}, {
		UIPadding = Roact.createElement("UIPadding", {
			-- Try to center the control when the widget is at its smallest size
			PaddingLeft = UDim.new(0, (Constants.MIN_WIDGET_SIZE.X - width) / 2),
		}),

		Toggle = Roact.createElement(SingleSelectButtonGroup, {
			LayoutOrder = 1,
			Size = UDim2.new(0, width, 0, 22),
			Selected = props.Selected,
			Select = props.Select,
			Options = props.Options,
		}),
	})
end

return ModeSelector
