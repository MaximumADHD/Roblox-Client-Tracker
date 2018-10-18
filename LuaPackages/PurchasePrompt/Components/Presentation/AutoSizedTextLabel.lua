local CorePackages = game:GetService("CorePackages")
local TextService = game:GetService("TextService")

local Roact = require(CorePackages.Roact)
local join = require(script.Parent.Parent.Parent.join)

local function AutoSizedTextLabel(props)
	assert(props.Text ~= nil, "Cannot autosize label with Text = nil")

	local text = props.Text
	local textSize = props.TextSize
	local font = props.Font
	local width = props.width

	local totalTextSize
	if text ~= nil then
		totalTextSize = TextService:GetTextSize(text, textSize, font, Vector2.new(width, 10000))
	else
		totalTextSize = Vector2.new(0, 0)
	end

	local textLabelProps = join(props, {
		width = Roact.None,
		Size = UDim2.new(0, width, 0, totalTextSize.Y),
	})

	return Roact.createElement("TextLabel", textLabelProps)
end

return AutoSizedTextLabel