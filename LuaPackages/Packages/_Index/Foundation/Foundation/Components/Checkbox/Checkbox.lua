local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local BuilderIcons = require(Packages.BuilderIcons)

local Components = Foundation.Components
local Image = require(Components.Image)
local Text = require(Components.Text)
local Input = require(Components.InternalInput)
local Types = require(Components.Types)

local Flags = require(Foundation.Utility.Flags)

local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local useCheckboxVariants = require(script.Parent.useCheckboxVariants)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

type Props = {
	-- Whether the checkbox is currently checked. If it is left `nil`,
	-- the checkbox will be considered uncontrolled.
	isChecked: boolean?,
	-- Whether the checkbox is disabled. When `true`, the `onActivated` callback
	-- will not be invoked, even if the user interacts with the checkbox.
	isDisabled: boolean?,
	-- A function that will be called whenever the checkbox is activated.
	-- Returns the new value of the checkbox when uncontrolled.
	onActivated: (boolean) -> (),
	-- A label for the checkbox. To omit, set it to an empty string.
	label: string,
	size: InputSize?,
} & Types.CommonProps

local defaultProps = {
	size = InputSize.Medium,
}

local function Checkbox(checkboxProps: Props, ref: React.Ref<GuiObject>?)
	local props = withDefaults(checkboxProps, defaultProps)
	local tokens = useTokens()
	local variantProps = useCheckboxVariants(tokens, props.size)

	return React.createElement(
		Input,
		withCommonProps(props, {
			isChecked = props.isChecked,
			isDisabled = props.isDisabled,
			onActivated = props.onActivated,
			label = {
				text = props.label,
			},
			customVariantProps = variantProps.input,
			size = props.size,
		}),
		{
			Checkmark = if props.isChecked
				then if Flags.FoundationMigrateIconNames
					then React.createElement(Text, {
						Text = BuilderIcons.Icon.Check,
						fontStyle = {
							Font = BuilderIcons.Font[BuilderIcons.IconVariant.Filled],
						},
						TextScaled = true,
						tag = variantProps.checkmark.tag,
					})
					else React.createElement(Image, {
						Image = "icons/status/success_small",
						tag = variantProps.checkmark.tag,
					})
				else nil,
		}
	)
end

return React.memo(React.forwardRef(Checkbox))
