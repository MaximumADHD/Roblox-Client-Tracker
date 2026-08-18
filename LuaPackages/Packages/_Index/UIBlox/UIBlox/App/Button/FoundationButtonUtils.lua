local ButtonRoot = script.Parent
local App = ButtonRoot.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Core = UIBlox.Core

local Foundation = require(Packages.Foundation)
local ButtonVariant = Foundation.Enums.ButtonVariant
local InputSize = Foundation.Enums.InputSize
local FoundationFlags = Foundation.Utility.Flags

local GetTextSize = require(Core.Text.GetTextSize)

local BuilderIcons = require(Packages.BuilderIcons)
local migrations = BuilderIcons.Migration["uiblox"]

local ButtonType = require(ButtonRoot.Enum.ButtonType)
local StandardButtonSize = require(Core.Button.Enum.StandardButtonSize)

local ImagesInverse = require(App.ImageSet.ImagesInverse)

local buttonMapping = {
	[ButtonType.Alert] = ButtonVariant.Alert,
	[ButtonType.PrimaryContextual] = ButtonVariant.Emphasis,
	[ButtonType.PrimarySystem] = ButtonVariant.SubEmphasis,
	[ButtonType.Secondary] = ButtonVariant.Subtle,
}

local sizeMapping = {
	[StandardButtonSize.Regular] = InputSize.Large,
	[StandardButtonSize.Small] = InputSize.Small,
	[StandardButtonSize.XSmall] = InputSize.XSmall,
}

local fitContentDefaultMapping = {
	[StandardButtonSize.Regular] = false,
	[StandardButtonSize.Small] = false,
	[StandardButtonSize.XSmall] = true,
}

-- Mirrors the container padding, label typography and fixed height that
-- useButtonVariants applies per size. Callers that have to reserve layout space for
-- a button before it renders need the size Foundation will actually draw, which is
-- unrelated to the caller's own text styles.
local fitContentMetrics = {
	[InputSize.XSmall] = { padding = "Small", typography = "Small", height = "Size_600" },
	[InputSize.Small] = { padding = "Small", typography = "Small", height = "Size_800" },
	[InputSize.Medium] = { padding = "Medium", typography = "Medium", height = "Size_1000" },
	[InputSize.Large] = { padding = "Medium", typography = "Large", height = "Size_1200" },
}

local TEXT_MEASURE_BOUNDS = Vector2.new(10000, 10000)

-- Only the token groups getFitContentSize reads, so both Foundation's tokens and the
-- app style's tokens satisfy it.
type FitContentTokens = {
	Padding: { [string]: number },
	Size: { [string]: number },
	Typography: { [string]: { Font: Enum.Font, FontSize: number } },
}

local function findIcon(searchData: any)
	if not searchData then
		return nil
	end

	local isDeprecatedAsset = searchData.Image and migrations[searchData.Image] ~= nil

	local icon = if isDeprecatedAsset then searchData.Image else ImagesInverse[searchData]
	if icon == nil then
		warn("Icon not found")
	end
	return icon
end

local function getSizeMapping(standardSize, size: UDim2?, tokens: typeof(Foundation.Hooks.useTokens()))
	if standardSize then
		return sizeMapping[standardSize]
	elseif size then
		if size.Y.Offset >= tokens.Size.Size_1200 then
			return InputSize.Large
		elseif size.Y.Scale > 0 then
			return InputSize.Medium
		elseif size.Y.Offset >= tokens.Size.Size_1000 then
			return InputSize.Medium
		elseif size.Y.Offset >= tokens.Size.Size_800 then
			return InputSize.Small
		else
			return InputSize.XSmall
		end
	end
	return nil
end

local function getWidth(standardSize: string?, size: UDim2?, fitContent: boolean?): UDim?
	if standardSize then
		local fitContentDefault = fitContentDefaultMapping[standardSize]
		if fitContent == nil then
			fitContent = fitContentDefault
		end

		if fitContent then
			return nil
		end

		return UDim.new(1, 0)
	elseif size then
		return size.X
	elseif fitContent then
		return nil
	else
		return UDim.new(1, 0)
	end
end

local function getMaxWidth(standardSize: string?, maxWidth: number?): number?
	if standardSize == nil then
		return nil
	end

	return if maxWidth == nil then 640 else maxWidth
end

-- Size a fitContent button draws for `text`, or nil when the size is unsupported.
local function getFitContentSize(text: string, standardSize: string?, tokens: FitContentTokens): Vector2?
	local inputSize = if standardSize then sizeMapping[standardSize] else nil
	local metrics = if inputSize then fitContentMetrics[inputSize] else nil
	if not metrics then
		return nil
	end

	local typographyPrefix = if FoundationFlags.FoundationButtonLabelTypography then "Label" else "Title"
	local typography = tokens.Typography[typographyPrefix .. metrics.typography]
	local textWidth = GetTextSize(text, typography.FontSize, typography.Font, TEXT_MEASURE_BOUNDS).X

	-- Round up, because the label carries text-truncate-end and clips as soon as its
	-- container is a fraction narrower than the text, and these sizes are fractional.
	return Vector2.new(math.ceil(textWidth) + tokens.Padding[metrics.padding] * 2, tokens.Size[metrics.height])
end

local function getTestId(tag: string?): string?
	if not tag or #tag == 0 then
		return nil
	end

	return tag:match("data%-testid=([^%s]+)")
end

return {
	buttonMapping = buttonMapping,
	sizeMapping = sizeMapping,
	findIcon = findIcon,
	getSizeMapping = getSizeMapping,
	getWidth = getWidth,
	getMaxWidth = getMaxWidth,
	getFitContentSize = getFitContentSize,
	getTestId = getTestId,
}
