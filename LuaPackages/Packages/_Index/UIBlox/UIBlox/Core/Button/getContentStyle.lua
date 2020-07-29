local Button = script.Parent
local Core = Button.Parent

local ControlState = require(Core.Control.Enum.ControlState)

return function(contentMap, controlState, style)
	local contentThemeClass = contentMap[controlState]
		or contentMap[ControlState.Default]

	local contentStyle = {
		Color = style.Theme[contentThemeClass].Color,
		Transparency = style.Theme[contentThemeClass].Transparency,
	}

	--Based on the design specs, the disabled and pressed state is 0.5 * alpha value
	if controlState == ControlState.Disabled or
		controlState == ControlState.Pressed then
			contentStyle.Transparency = 0.5 * contentStyle.Transparency + 0.5
	end

	return contentStyle
end
