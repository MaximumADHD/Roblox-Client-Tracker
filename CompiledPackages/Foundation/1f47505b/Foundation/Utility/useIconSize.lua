local Foundation = script:FindFirstAncestor("Foundation")

local Types = require(Foundation.Components.Types)
type Bindable<T> = Types.Bindable<T>

local IconSize = require(Foundation.Enums.IconSize)
type IconSize = IconSize.IconSize

local useTokens = require(Foundation.Providers.Style.useTokens)

local function isNumber(value: any): boolean
	return typeof(value) == "number" or (typeof(value) == "table" and typeof(value:getValue()) == "number")
end

local function useIconSize(
	size: IconSize | Bindable<number>,
	isBuilderIcon: boolean,
	isIconButton: boolean?
): Bindable<UDim2>
	local tokens = useTokens()

	local iconSizes = if isBuilderIcon
		then {
			[IconSize.XSmall :: IconSize] = if isIconButton then tokens.Size.Size_400 else tokens.Size.Size_300,
			[IconSize.Small :: IconSize] = if isIconButton then tokens.Size.Size_500 else tokens.Size.Size_400,
			[IconSize.Medium :: IconSize] = if isIconButton then tokens.Size.Size_600 else tokens.Size.Size_500,
			[IconSize.Large :: IconSize] = if isIconButton then tokens.Size.Size_700 else tokens.Size.Size_600,
		}
		else {
			[IconSize.XSmall :: IconSize] = tokens.Size.Size_200,
			[IconSize.Small :: IconSize] = tokens.Size.Size_400,
			[IconSize.Medium :: IconSize] = tokens.Size.Size_900,
			[IconSize.Large :: IconSize] = tokens.Size.Size_1200,
			[IconSize.XLarge :: IconSize] = tokens.Size.Size_2400,
			[IconSize.XXLarge :: IconSize] = 24 * tokens.Size.Size_200,
		}

	local iconSize: Bindable<number>? = if isNumber(size) then size else iconSizes[size :: IconSize]

	if not isBuilderIcon and isNumber(size) then
		iconSize = nil
	end

	if iconSize == nil then
		error("Invalid icon size: " .. tostring(size))
	end

	return if typeof(iconSize) == "table"
		then iconSize:map(function(value)
			return UDim2.fromOffset(value, value)
		end)
		else UDim2.fromOffset(iconSize, iconSize)
end

return useIconSize
