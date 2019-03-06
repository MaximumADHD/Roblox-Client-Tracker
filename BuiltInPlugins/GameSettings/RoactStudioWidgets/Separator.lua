--[[
	A simple gray rectangle used to separate elements in the page.
	Can also be customized using its Size and Position.

	Props:
		UDim2 Size = UDim2.new(1, 0, 0, 3)
		UDim2 Position = UDim2.new()
		int LayoutOrder = The order this Separator will sort to when placed in a UIListLayout.
		table Style = {
			SeparatorColor
		}
]]

local Roact = require(script.Parent.Internal.RequireRoact)
local ThemeChangeListener = require(script.Parent.Internal.ThemeChangeListener)
local Theme = require(script.Parent.Internal.Theme)

local getStyle = nil

local function Separator(props)
	local function renderInternal()
		local style = getStyle(props)

		return Roact.createElement("Frame", {
			Size = props.Size or UDim2.new(1, 0, 0, 2),
			Position = props.Position,
			BackgroundColor3 = style.SeparatorColor,
			BorderSizePixel = 0,
			LayoutOrder = props.LayoutOrder or 1,
		})
	end

	return Roact.createElement(ThemeChangeListener, {
		render = renderInternal,
	})
end

getStyle = function(props)
	local styleProps = {
		["SeparatorColor"] = Theme.getSeparatorColor()
	}

	local style = {}
	for name, defaultStylePropsVal in pairs(styleProps) do
		style[name] = props.Style and props.Style[name] or defaultStylePropsVal
	end
	return style
end

return Separator