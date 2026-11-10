local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local BuilderIcons = require(Packages.BuilderIcons)
local Icon = require(Foundation.Components.Icon)
local Image = require(Foundation.Components.Image)
local StatusIndicator = require(Foundation.Components.StatusIndicator)
local StatusIndicatorShape = require(Foundation.Enums.StatusIndicatorShape)
local StatusIndicatorVariant = require(Foundation.Enums.StatusIndicatorVariant)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)
local migrationLookup = BuilderIcons.Migration["uiblox"]
local FillBehavior = require(Foundation.Enums.FillBehavior)
local Flags = require(Foundation.Utility.Flags)
local InputSize = require(Foundation.Enums.InputSize)
local getIconScale = require(Foundation.Utility.getIconScale)
local iconMigrationUtils = require(Foundation.Utility.iconMigrationUtils)
local isMigrated = iconMigrationUtils.isMigrated
local isBuilderIconOrMigrated = iconMigrationUtils.isBuilderOrMigratedIcon

local Constants = require(Foundation.Constants)

type InputSize = InputSize.InputSize
type FillBehavior = FillBehavior.FillBehavior
type IconVariant = BuilderIcons.IconVariant
type StatusIndicatorShape = StatusIndicatorShape.StatusIndicatorShape
type StatusIndicatorVariant = StatusIndicatorVariant.StatusIndicatorVariant

local accessory = require(script.Parent.TabItemAccessory)
local TabItemAccessory = accessory.TabItemAccessory
local resolve = accessory.resolve
local useTabVariants = require(script.Parent.useTabItemVariants)

export type TabsAccessory = accessory.TabsAccessory

export type TabItemIcon = {
	-- BuilderIcons name or asset path.
	name: string,
	-- BuilderIcons weight.
	variant: IconVariant?,
}

type TabItemIndicator = {
	variant: StatusIndicatorVariant?,
	shape: StatusIndicatorShape?,
	value: number?, -- we want to type as Bindable, but it's causing obscene upstream type errors for now. Binding are supported under the hood, consumers will just have to cast
	max: number?,
}

export type TabItem = {
	-- Stable identifier for this tab.
	id: Types.ItemId,
	-- Label shown on the tab.
	text: string,
	-- Accessory rendered before the label: a BuilderIcons name, or an icon, badge, or status indicator. `icon` overrides this.
	leading: (string | TabsAccessory)?,
	-- Accessory rendered after the label: a BuilderIcons name, or an icon, badge, or status indicator. `indicator` overrides this.
	trailing: (string | TabsAccessory)?,
	-- **DEPRECATED**: Leading accessories moved to `leading`. Use `leading` instead. Still accepted.
	icon: (string | TabItemIcon)?,
	-- **DEPRECATED**: Trailing accessories moved to `trailing`. Use `trailing` instead. Still accepted.
	indicator: TabItemIndicator?,
	-- When true, the tab cannot be activated.
	isDisabled: boolean?,
	-- Could be defined in the Tabs, since it's needed only there, but intersection types are hell with curent solver.
	content: React.ReactNode?,
	-- Ref to the tab item element
	ref: React.RefObject<GuiObject?>?,
}

export type TabItemProps = TabItem & {
	-- Whether this tab is the selected tab.
	isActive: boolean,
	-- Called with this tab's id when it is activated.
	onActivated: (id: Types.ItemId) -> (),
	-- Size of the tab, inherited from Tabs.
	size: InputSize,
	-- Whether the tab grows to fill the bar, inherited from Tabs.
	fillBehavior: FillBehavior,
	-- Test id for this tab.
	testId: string?,
}

local function TabItem(props: TabItemProps, ref: React.Ref<GuiObject>?)
	local tokens = useTokens()

	local contentStyle = if props.isActive then tokens.Color.Content.Default else tokens.Color.Content.Emphasis

	local isFill = props.fillBehavior == FillBehavior.Fill

	local variantProps = useTabVariants(tokens, props.size, isFill)

	local cursor = React.useMemo(function()
		return {
			radius = UDim.new(0, 0),
			offset = 0,
			borderWidth = tokens.Stroke.Thicker,
		}
	end, { tokens })

	local icon: TabItemIcon? = React.useMemo(function()
		if props.icon == nil then
			return nil :: TabItemIcon?
		elseif typeof(props.icon) == "string" then
			return {
				name = props.icon,
				variant = BuilderIcons.IconVariant.Regular,
			}
		else
			return props.icon
		end
	end, { props.icon })

	local leadingAccessory: TabsAccessory? = nil
	local trailingAccessory: TabsAccessory? = nil
	if Flags.FoundationTabsAccessory then
		leadingAccessory, trailingAccessory = resolve(props.leading, props.trailing, props.icon, props.indicator)
	end

	local _Icon: React.ReactNode
	if icon and not Flags.FoundationTabsAccessory then
		if isBuilderIconOrMigrated(icon.name) then
			_Icon = React.createElement(Icon, {
				name = if isMigrated(icon.name) then migrationLookup[icon.name].name else icon.name,
				variant = if isMigrated(icon.name) then migrationLookup[icon.name].variant else icon.variant,
				size = variantProps.icon.size,
				style = contentStyle,
			})
		else
			local intrinsicIconSize, scale = getIconScale(icon.name, variantProps.icon.size)
			if intrinsicIconSize then
				_Icon = React.createElement(Image, {
					Image = icon.name,
					Size = UDim2.fromOffset(intrinsicIconSize.X, intrinsicIconSize.Y),
					imageStyle = contentStyle,
					scale = scale,
				})
			end
		end
	end

	return React.createElement(View, {
		tag = variantProps.container.tag,
		GroupTransparency = if props.isDisabled then Constants.DISABLED_TRANSPARENCY else nil,
		testId = props.testId,
	}, {
		Interactive = React.createElement(View, {
			LayoutOrder = 1,
			Size = UDim2.fromScale(1, 1),
			onActivated = function()
				props.onActivated(props.id)
			end,
			selection = {
				Selectable = not props.isDisabled,
			},
			cursor = cursor,
			isDisabled = props.isDisabled,
			ref = ref,
		}),
		Content = React.createElement(View, {
			LayoutOrder = 2,
			tag = variantProps.content.tag,
			Size = variantProps.content.Size,
		}, {
			Icon = if not Flags.FoundationTabsAccessory and props.icon then _Icon else nil,
			Leading = if Flags.FoundationTabsAccessory and leadingAccessory
				then React.createElement(TabItemAccessory, {
					accessory = leadingAccessory,
					contentStyle = contentStyle,
					iconSize = variantProps.icon.size,
					LayoutOrder = 1,
					testId = `{props.testId}--leading`,
				})
				else nil,
			Text = React.createElement(Text, {
				Text = props.text,
				style = contentStyle,
				tag = variantProps.text.tag,
				LayoutOrder = 2,
			}),
			Indicator = if not Flags.FoundationTabsAccessory and props.indicator
				then React.createElement(
					StatusIndicator,
					if props.indicator.value
						then {
							value = props.indicator.value,
							variant = props.indicator.variant :: StatusIndicator.StatusIndicatorNumericVariant,
							max = props.indicator.max,
							LayoutOrder = 3,
							testId = `{props.testId}--indicator`,
						}
						else {
							variant = props.indicator.variant,
							shape = props.indicator.shape,
							LayoutOrder = 3,
							testId = `{props.testId}--indicator`,
						}
				)
				else nil,
			Trailing = if Flags.FoundationTabsAccessory and trailingAccessory
				then React.createElement(TabItemAccessory, {
					accessory = trailingAccessory,
					contentStyle = contentStyle,
					iconSize = variantProps.icon.size,
					LayoutOrder = 3,
					testId = `{props.testId}--trailing`,
				})
				else nil,
		}),
	})
end

return React.memo(React.forwardRef(TabItem))
