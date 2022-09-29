local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Icon = require(Plugin.Src.Components.Icon)

local function IconAdorn(props)
	local children = {}
	if #props.Icon > 1 then
		children.UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(2 / 16, 0),
		})
	end
	for i = 1, #props.Icon do
		local icon = props.Icon[i]
		children[i] = Roact.createElement(Icon, {
			Name = icon,
			Size = UDim2.new(1 / #props.Icon, 0, 1, 0),
			TextScaled = true,
		})
	end
	return Roact.createElement("BillboardGui", {
		Adornee = props.Adornee,
		Size = UDim2.new(#props.Icon, 0, 1, 0),
		SizeOffset = Vector2.new(0.5, 0.5),
		ExtentsOffsetWorldSpace = Vector3.new(1, 1, 1),
		AlwaysOnTop = props.AlwaysOnTop,
	}, children)
end

return IconAdorn
