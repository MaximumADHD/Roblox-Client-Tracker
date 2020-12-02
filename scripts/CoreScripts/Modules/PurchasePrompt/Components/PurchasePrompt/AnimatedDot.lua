local Root = script.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact

local GRAY = Color3.fromRGB(184, 184, 184)
local BLUE = Color3.fromRGB(0, 162, 255)

local function Dot(props)
	local layoutOrder = props.layoutOrder
	local time = props.time
	local size = 0.8
	local color = GRAY

	if time >= layoutOrder -1 and time <= layoutOrder then
		local animationProgress = math.sin(math.pi * (time % 1))
		size = size + (1 - size) * animationProgress
		color = GRAY:lerp(BLUE, animationProgress)
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1/3, 0, 1, 0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		LayoutOrder = layoutOrder,
	}, {
		Dot = Roact.createElement("Frame", {
			Size = UDim2.new(0.7, 0, size, 0),
			SizeConstraint = Enum.SizeConstraint.RelativeYY,
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			BackgroundColor3 = color,
			BorderSizePixel = 0,
		})
	})
end

return Dot
