local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)
local Flags = require(Foundation.Utility.Flags)
local iconMigrationUtils = require(Foundation.Utility.iconMigrationUtils)
local isBuilderIconOrMigrated = iconMigrationUtils.isBuilderOrMigratedIcon
local Logger = require(Foundation.Utility.Logger)

local Constants = require(Foundation.Constants)

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

local useBaseMenuItemVariants = require(script.Parent.useBaseMenuItemVariants)
local BaseMenuContext = require(script.Parent.BaseMenuContext)

export type BaseMenuItemProps = {
	id: ItemId,
	icon: string?,
	isChecked: boolean?,
	isDisabled: boolean?,
	text: string,
	onActivated: OnItemActivated?,
	size: InputSize?,
} & Types.CommonProps

local defaultProps = {
	isChecked = false,
}

local function BaseMenuItem(menuItemProps: BaseMenuItemProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(menuItemProps, defaultProps)
	local context = React.useContext(BaseMenuContext)
	local hasLeading = context.hasLeading
	local tokens = useTokens()
	local size: InputSize = props.size or context.size

	local variantProps = useBaseMenuItemVariants(tokens, size, props.isChecked)

	-- If at least one item has an icon, other items should use placeholders
	React.useEffect(function()
		if props.icon and context.setHasLeading then
			context.setHasLeading()
		end
	end, { props.icon, context.setHasLeading } :: { unknown })

	local onActivated = React.useCallback(function()
		local callback = if props.onActivated then props.onActivated else context.onActivated
		if not callback then
			Logger:warning("Menu should have either onActivated on itself or on all of its children")
			callback = function(_itemId: ItemId) end
		end
		-- Type checker thinks it's still OnItemActivated? here
		(callback :: OnItemActivated)(props.id)
	end, { props.onActivated, context.onActivated } :: { unknown })

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
			GroupTransparency = if props.isDisabled then Constants.DISABLED_TRANSPARENCY else nil,
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
			Icon = if props.icon or hasLeading
				then if props.icon and isBuilderIconOrMigrated(props.icon)
					then React.createElement(View, {
						LayoutOrder = 1,
						tag = `{variantProps.icon.tag} align-x-center align-y-center`,
					}, {
						Icon = React.createElement(Icon, {
							name = if migratedIcon then migratedIcon.name else props.icon,
							style = variantProps.icon.style,
							size = variantProps.icon.size,
						}),
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
						testId = `{props.testId}--checkmark`,
					})
					else React.createElement(Image, {
						LayoutOrder = 3,
						Image = "icons/status/success",
						tag = variantProps.check.tag,
						testId = `{props.testId}--checkmark`,
					})
				else nil,
		}
	)
end

return React.memo(React.forwardRef(BaseMenuItem))
