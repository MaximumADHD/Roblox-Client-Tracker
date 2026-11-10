local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local AvatarIcon = require(Foundation.Components.AvatarIcon)
local AvatarIconSize = require(Foundation.Enums.AvatarIconSize)
local Icon = require(Foundation.Components.Icon)
local IconSize = require(Foundation.Enums.IconSize)
local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local StatusIndicator = require(Foundation.Components.StatusIndicator)
local StatusIndicatorSize = require(Foundation.Enums.StatusIndicatorSize)
local StatusIndicatorVariant = require(Foundation.Enums.StatusIndicatorVariant)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

type NavigationBarIndicator = {
	-- Count to show. Leave unset for a dot
	value: number?,
	-- Counts above this show as "{max}+". Defaults to 99
	max: number?,
}

export type NavigationBarItem = {
	-- Unique id passed to onActivated and matched against activeItemId
	id: Types.ItemId,
	-- Label shown under the icon
	text: string,
	-- A BuilderIcons name, or { type = "Avatar", userId } for an avatar
	icon: string | Types.AvatarAccessoryConfig,
	-- Shows a dot or a count on the icon
	indicator: NavigationBarIndicator?,
}

export type NavigationBarTabProps = {
	item: NavigationBarItem,
	isActive: boolean,
	onActivated: (id: Types.ItemId) -> (),
	LayoutOrder: number,
	testId: string,
}

local DEFAULT_INDICATOR_MAX = 99

local function NavigationBarTab(props: NavigationBarTabProps, ref: React.Ref<GuiObject>?)
	local tokens = useTokens()
	local item = props.item

	local icon: React.ReactNode
	if typeof(item.icon) == "table" and item.icon.type == "Avatar" then
		icon = React.createElement(View, {
			tag = {
				["auto-xy radius-circle"] = true,
				["stroke-thick stroke-system-contrast"] = props.isActive,
				["stroke-standard stroke-emphasis"] = not props.isActive,
			},
			testId = `{props.testId}--avatar-ring`,
		}, {
			Avatar = React.createElement(AvatarIcon, {
				userId = item.icon.userId,
				size = AvatarIconSize.Large,
				testId = `{props.testId}--avatar`,
			}),
		})
	elseif typeof(item.icon) == "string" then
		icon = React.createElement(Icon, {
			name = item.icon,
			variant = if props.isActive then BuilderIcons.IconVariant.Filled else BuilderIcons.IconVariant.Regular,
			size = IconSize.Large,
			style = tokens.Color.Content.Emphasis,
			testId = `{props.testId}--icon`,
		})
	end

	return React.createElement(View, {
		LayoutOrder = props.LayoutOrder,
		tag = "fill auto-y",
		onActivated = function()
			props.onActivated(item.id)
		end,
		stateLayer = { affordance = StateLayerAffordance.None },
		ref = ref,
		testId = props.testId,
	}, {
		Content = React.createElement(View, {
			tag = "col align-x-center gap-xxsmall size-full-0 auto-y",
			padding = {
				top = UDim.new(0, tokens.Padding.XXSmall + tokens.Padding.Small),
				bottom = UDim.new(0, tokens.Padding.XXSmall + tokens.Padding.Small),
			},
			testId = `{props.testId}--content`,
		}, {
			Media = React.createElement(View, {
				LayoutOrder = 1,
				tag = "size-600",
			}, {
				Icon = icon,
				Status = if item.indicator
					then React.createElement(
						StatusIndicator,
						if item.indicator.value ~= nil
							then {
								value = item.indicator.value,
								max = item.indicator.max or DEFAULT_INDICATOR_MAX,
								variant = StatusIndicatorVariant.Emphasis,
								size = StatusIndicatorSize.Small,
								mask = tokens.Color.Common.NavigationBar,
								AnchorPoint = Vector2.new(0, 0.5),
								Position = UDim2.new(1, -tokens.Size.Size_150, 0, tokens.Size.Size_50),
								ZIndex = 2,
								testId = `{props.testId}--status`,
							}
							else {
								variant = StatusIndicatorVariant.Emphasis,
								size = StatusIndicatorSize.Small,
								mask = tokens.Color.Common.NavigationBar,
								AnchorPoint = Vector2.new(0.5, 0.5),
								Position = UDim2.new(1, -tokens.Size.Size_50, 0, tokens.Size.Size_50),
								ZIndex = 2,
								testId = `{props.testId}--status`,
							}
					)
					else nil,
			}),
			Label = React.createElement(Text, {
				LayoutOrder = 2,
				Text = item.text,
				tag = "size-full-0 auto-y text-caption-small text-align-x-center text-truncate-end content-emphasis",
				testId = `{props.testId}--label`,
			}),
		}),
	})
end

return React.memo(React.forwardRef(NavigationBarTab))
