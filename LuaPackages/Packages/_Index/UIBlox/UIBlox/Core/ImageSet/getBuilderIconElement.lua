local ImageSet = script.Parent
local Core = ImageSet.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent
local Roact = require(Packages.Roact)
local React = require(Packages.React)
local BuilderIcons = require(Packages.BuilderIcons)
local migrationExceptions = require(ImageSet.migrationSizeExceptions)

local textComponentMap = {
	ImageLabel = "TextLabel",
	ImageButton = "TextButton",
}

local customGradientMap = {
	["icons/common/goldrobux"] = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.new(0.97, 0.93, 0.72)),
		ColorSequenceKeypoint.new(0.6, Color3.new(0.67, 0.58, 0.36)),
		ColorSequenceKeypoint.new(1, Color3.new(0.99, 0.88, 0.64)),
	}),
	["icons/common/goldrobux_small"] = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.new(0.78, 0.71, 0.43)),
		ColorSequenceKeypoint.new(0.5, Color3.new(0.65, 0.55, 0.32)),
		ColorSequenceKeypoint.new(1, Color3.new(0.83, 0.71, 0.44)),
	}),
}

local useTextScaled = function(size: UDim2): boolean
	if not size then
		return true
	end
	return size.X.Offset ~= 0 and size.Y.Scale ~= 0 or size.Y.Offset ~= 0 and size.X.Scale ~= 0
end

local mapSize = function(size: UDim2): UDim2
	local usesTextScaled = useTextScaled(size)
	if not usesTextScaled and (size.X.Offset ~= size.Y.Offset or size.X.Scale ~= size.Y.Scale) then
		if size.X.Offset ~= 0 then
			local minOffset = math.min(size.X.Offset, size.Y.Offset)
			size = UDim2.fromOffset(minOffset, minOffset)
		else
			usesTextScaled = true
		end
	end
	return size
end

local mapTextScaled = function(size: UDim2): boolean
	local usesTextScaled = useTextScaled(size)
	if not usesTextScaled then
		if size.X.Offset == 0 then
			usesTextScaled = true
		end
	end
	return usesTextScaled
end

local mapTextSize = function(size: UDim2, scaled: boolean, tokens, migration, scaleValue: number): number
	local textSize = size.Y.Offset
	if not (textSize == 0 or scaled) and not migrationExceptions[migration.name] then
		local snapInterval = tokens.Size.Size_100
		local mediumMin = tokens.Size.Size_600
		local mediumMax = 38 * scaleValue

		if textSize >= mediumMin and textSize <= mediumMax then
			textSize = mediumMin
		else
			textSize = math.round(textSize / snapInterval) * snapInterval
		end
	end
	return textSize
end

local function getBuilderIconElement(
	fullProps: any,
	innerComponent: string,
	migration,
	originalIconName: string,
	tokens,
	textSizeOffset: number,
	scaleValue: number?
)
	assert(
		fullProps.ImageRectOffset == nil and fullProps.ImageRectSize == nil,
		"ImageRect props not supported for migration icons"
	)
	assert(
		fullProps.SliceCenter == nil and fullProps.SliceScale == nil,
		"Image slices not supported for migration icons"
	)

	local textProps = table.clone(fullProps)
	if typeof(textProps.Size) == "table" then -- catches bindings
		local sizeBinding = textProps.Size :: React.Binding<UDim2>
		textProps.Size = sizeBinding:map(mapSize) :: React.Binding<UDim2> | UDim2
		textProps.TextScaled = sizeBinding:map(mapTextScaled) :: React.Binding<boolean> | boolean
		textProps.TextSize = sizeBinding:map(function(value)
			return mapTextSize(value, mapTextScaled(value), tokens, migration, scaleValue or 1)
		end) :: React.Binding<number> | number
	else
		local size = textProps.Size :: UDim2
		textProps.Size = mapSize(size)
		local textScaled = mapTextScaled(size)
		textProps.TextScaled = textScaled
		textProps.TextSize = mapTextSize(size, textScaled, tokens, migration, scaleValue or 1)
	end

	textProps.Text = migration.name
	textProps.FontFace = BuilderIcons.Font[migration.variant]

	textProps.TextColor3 = (textProps.ImageColor3 or tokens.Color.Content.Emphasis.Color3) :: Color3
	textProps.TextTransparency = textProps.ImageTransparency or tokens.Color.Content.Emphasis.Transparency

	-- Unsupported props for migration icons
	textProps.ImageColor3 = nil
	textProps.ImageTransparency = nil
	textProps.ResampleMode = nil
	textProps.ScaleType = nil
	textProps.TileSize = nil
	textProps.Image = nil

	local textComponent = textComponentMap[innerComponent]

	if textComponent == nil then
		error("Unsupported inner component for image set icon migration: " .. innerComponent)
	end

	local uiComponents: any = nil
	if textSizeOffset > 0 then
		if uiComponents == nil then
			uiComponents = {}
		end
		uiComponents.UITextSizeConstraint = Roact.createElement("UITextSizeConstraint", {
			MaxTextSize = textProps.TextSize,
		})
	end

	local gradient = customGradientMap[originalIconName]
	if gradient then
		if uiComponents == nil then
			uiComponents = {}
		end
		textProps.TextColor3 = Color3.new(1, 1, 1)
		uiComponents.UIGradient = Roact.createElement("UIGradient", {
			Color = gradient,
			Rotation = 90,
		})
	end

	if uiComponents ~= nil then
		uiComponents.Children = Roact.createFragment(fullProps[Roact.Children])
		return Roact.createElement(textComponent, textProps, uiComponents)
	else
		return Roact.createElement(textComponent, textProps)
	end
end

return getBuilderIconElement
