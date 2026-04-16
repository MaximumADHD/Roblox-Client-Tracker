local Foundation = script:FindFirstAncestor("Foundation")

local DialogSize = require(Foundation.Enums.DialogSize)
type DialogSize = DialogSize.DialogSize

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local DIALOG_SIZES = require(script.Parent.useDialogVariants).DIALOG_SIZES

local function getResponsiveSize(viewportWidth: number, size: DialogSize, tokens: Tokens): DialogSize
	local sizeToPaddingMap: { [DialogSize]: number } = {
		[DialogSize.Small] = tokens.Padding.Large,
		[DialogSize.Medium] = tokens.Padding.XLarge,
		[DialogSize.Large] = tokens.Padding.XLarge,
	}

	local xPadding = sizeToPaddingMap[size] * 2
	local scale = tokens.Config.UI.Scale

	if viewportWidth <= DIALOG_SIZES[DialogSize.Medium] * scale + xPadding and size ~= DialogSize.Small then
		return DialogSize.Small
	elseif
		viewportWidth <= DIALOG_SIZES[DialogSize.Large] * scale + xPadding
		and size == DialogSize.Large :: DialogSize
	then
		return DialogSize.Medium :: DialogSize
	end
	return size
end

return getResponsiveSize
