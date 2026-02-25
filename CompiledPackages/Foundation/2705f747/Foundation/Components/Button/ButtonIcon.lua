local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local migrationLookup = BuilderIcons.Migration["uiblox"]

local React = require(Packages.React)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local ButtonTypes = require(script.Parent.Types)
type SupportedButtonVariant = ButtonTypes.SupportedButtonVariant

local Image = require(Foundation.Components.Image)
local Text = require(Foundation.Components.Text)

local getIconScale = require(Foundation.Utility.getIconScale)

local iconMigrationUtils = require(Foundation.Utility.iconMigrationUtils)
local isMigrated = iconMigrationUtils.isMigrated
local isBuilderOrMigratedIcon = iconMigrationUtils.isBuilderOrMigratedIcon

local useButtonVariants = require(script.Parent.useButtonVariants)
local useTextSizeOffset = require(Foundation.Providers.Style.useTextSizeOffset)
local useTokens = require(Foundation.Providers.Style.useTokens)
local usePresentationContext = require(Foundation.Providers.Style.PresentationContext).usePresentationContext

type ButtonIconProps = {
	icon: string?,
	isLoading: boolean?,
	variant: SupportedButtonVariant,
	size: InputSize,
	disabledTransparencyBinding: React.Binding<number>,
	textTransparencyBinding: React.Binding<number>,
	testId: string,
}
local function ButtonIcon(props: ButtonIconProps): React.Node
	local disabledTransparencyBinding = props.disabledTransparencyBinding
	local textTransparencyBinding = props.textTransparencyBinding

	local tokens = useTokens()
	local textSizeOffset = useTextSizeOffset()
	local intrinsicIconSize, scale = getIconScale(props.icon, props.size)
	local presentationContext = usePresentationContext()
	local variantProps = useButtonVariants(
		tokens,
		props.size,
		props.variant,
		if presentationContext then presentationContext.colorMode else nil
	)

	if not props.icon then
		return nil
	end

	if isBuilderOrMigratedIcon(props.icon) then
		return React.createElement(Text, {
			Text = if isMigrated(props.icon) then migrationLookup[props.icon].name else props.icon,
			fontStyle = {
				Font = BuilderIcons.Font[if isMigrated(props.icon)
					then migrationLookup[props.icon].variant
					else BuilderIcons.IconVariant.Regular],
				FontSize = variantProps.icon.size.Y.Offset,
			},
			tag = "anchor-center-center position-center-center",
			Size = variantProps.icon.size,
			textStyle = React.joinBindings({
				disabledTransparencyBinding,
				textTransparencyBinding,
			}):map(function(transparencies)
				local disabledTransparency: number = transparencies[1]
				local progressTransparency: number = transparencies[2]
				return {
					Color3 = variantProps.content.style.Color3,
					Transparency = progressTransparency + disabledTransparency,
				}
			end),
			testId = `{props.testId}--icon`,
		}, {
			UITextSizeConstraint = if textSizeOffset > 0
				then React.createElement("UITextSizeConstraint", {
					MaxTextSize = variantProps.icon.size.Y.Offset,
				})
				else nil,
		})
	else
		return React.createElement(Image, {
			tag = "anchor-center-center position-center-center",
			Image = props.icon,
			Size = if intrinsicIconSize
				then UDim2.fromOffset(intrinsicIconSize.X, intrinsicIconSize.Y)
				else variantProps.icon.size,
			imageStyle = React.joinBindings({
				disabledTransparencyBinding,
				textTransparencyBinding,
			}):map(function(transparencies)
				local disabledTransparency: number = transparencies[1]
				local progressTransparency: number = transparencies[2]
				return {
					Color3 = variantProps.content.style.Color3,
					Transparency = progressTransparency + disabledTransparency,
				}
			end),
			scale = scale,
			testId = `{props.testId}--icon`,
		})
	end
end

return ButtonIcon
