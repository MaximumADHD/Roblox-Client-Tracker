local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)
local Flags = require(Foundation.Utility.Flags)
local iconMigrationUtils = require(Foundation.Utility.iconMigrationUtils)
local isBuilderIconOrMigrated = iconMigrationUtils.isBuilderOrMigratedIcon

local View = require(Foundation.Components.View)
local Image = require(Foundation.Components.Image)
local Icon = require(Foundation.Components.Icon)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
type ItemId = Types.ItemId
type OnItemActivated = Types.OnItemActivated

local useTokens = require(Foundation.Providers.Style.useTokens)

local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local useMenuItemVariants = require(script.Parent.useMenuItemVariants)

type MenuItemProps = {
	id: ItemId,
	icon: string?,
	isChecked: boolean?,
	isDisabled: boolean?,
	text: string,
	onActivated: OnItemActivated,
	size: InputSize,
} & Types.CommonProps

local defaultProps = {
	isChecked = false,
}

local function MenuItem(menuItemProps: MenuItemProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(menuItemProps, defaultProps)
	local tokens = useTokens()

	local variantProps = useMenuItemVariants(tokens, props.size, props.isChecked)

	local onActivated = React.useCallback(function()
		props.onActivated(props.id)
	end, { props.onActivated })

	local cursor = React.useMemo(function()
		return {
			radius = UDim.new(0, tokens.Radius.Small),
			offset = tokens.Size.Size_200,
			borderWidth = tokens.Stroke.Thicker,
		}
	end, { tokens })

	local migratedIcon = React.useMemo(function()
		return BuilderIcons.Migration["uiblox"][props.icon]
	end, { props.icon })

	return React.createElement(
		View,
		withCommonProps(props, {
			GroupTransparency = if props.isDisabled then 0.5 else nil,
			isDisabled = props.isDisabled,
			onActivated = onActivated,
			selection = {
				Selectable = not props.isDisabled,
			},
			cursor = cursor,
			tag = variantProps.container.tag,
			ref = ref,
		}),
		{
			Icon = if props.icon
				then if props.icon ~= "" and isBuilderIconOrMigrated(props.icon)
					then React.createElement(Icon, {
						LayoutOrder = 1,
						name = if migratedIcon then migratedIcon.name else props.icon,
						style = variantProps.icon.style,
						size = variantProps.icon.size,
					})
					else React.createElement(Image, {
						LayoutOrder = 1,
						Image = props.icon :: string,
						tag = variantProps.icon.tag,
					})
				else nil,
			Text = React.createElement(Text, {
				LayoutOrder = 2,
				Text = props.text,
				tag = variantProps.text.tag,
			}),
			Check = if props.isChecked
				then if Flags.FoundationMigrateIconNames
					then React.createElement(Icon, {
						LayoutOrder = 3,
						name = BuilderIcons.Icon.Check,
						style = variantProps.check.style,
						size = variantProps.check.size,
					})
					else React.createElement(Image, {
						LayoutOrder = 3,
						Image = "icons/status/success",
						tag = variantProps.check.tag,
					})
				else nil,
		}
	)
end

return React.memo(React.forwardRef(MenuItem))
