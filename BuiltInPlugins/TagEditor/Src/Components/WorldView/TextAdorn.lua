local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Constants = require(Plugin.Src.Constants)

local function TextAdorn(props)
	local children = {}
	if #props.TagName > 1 then
		children.UIListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
		})
	end
	for i = 1, #props.TagName do
		local name = props.TagName[i]
		children[name] = Roact.createElement("TextLabel", {
			LayoutOrder = i,
			Size = UDim2.new(1, 0, 1 / #props.TagName, 0),
			Text = name,
			TextScaled = true,
			TextSize = 20,
			Font = Enum.Font.SourceSansBold,
			TextColor3 = Constants.White,
			BackgroundTransparency = 1.0,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Bottom,
			TextStrokeTransparency = 0.0,
		})
	end
	return Roact.createElement("BillboardGui", {
		Adornee = props.Adornee,
		Size = UDim2.new(10, 0, #props.TagName, 0),
		SizeOffset = Vector2.new(0.5, 0.5),
		ExtentsOffsetWorldSpace = Vector3.new(1, 1, 1),
		AlwaysOnTop = props.AlwaysOnTop,
	}, children)
end

return TextAdorn
