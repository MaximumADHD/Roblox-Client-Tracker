local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local Constants = require(Modules.LuaApp.Constants)

local Line = function (props)
	return Roact.createElement("Frame", {
		Position = props.Position,
		Size = UDim2.new(1, 0, 0, 1),
		BorderSizePixel = 0,
		BackgroundColor3 = Constants.Color.GRAY4,
		LayoutOrder = props.LayoutOrder,
	})
end

return Line