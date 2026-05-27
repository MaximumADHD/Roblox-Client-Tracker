local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local HeaderBarSlot = require(Foundation.Enums.HeaderBarSlot)
local IconButton = require(Foundation.Components.IconButton)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local constants = require(Foundation.Components.HeaderBar.constants)
local useHeaderBarContext = require(Foundation.Components.HeaderBar.useHeaderBarContext)
local useTokens = require(Foundation.Providers.Style.useTokens)

export type HeaderBarAction = {
	id: Types.ItemId,
	icon: string | {
		name: string,
		variant: BuilderIcons.IconVariant?,
	},
	onActivated: () -> (),
}

export type HeaderBarActionsProps = {
	actions: { HeaderBarAction },
}

local function HeaderBarActions(props: HeaderBarActionsProps)
	local headerBarContext = useHeaderBarContext()
	local tokens = useTokens()

	local layoutOrder, padding = React.useMemo(function(): (number?, Types.Padding?)
		if headerBarContext.slot == HeaderBarSlot.Leading then
			return constants.LEADING_ACTIONS_LAYOUT_ORDER, { left = UDim.new(0, -tokens.Size.Size_200) }
		elseif headerBarContext.slot == HeaderBarSlot.Trailing then
			return constants.TRAILING_ACTIONS_LAYOUT_ORDER, { right = UDim.new(0, -tokens.Size.Size_200) }
		end
		return nil, nil
	end, { headerBarContext.slot, tokens.Size.Size_200 } :: { unknown })

	local children: { [string]: React.Node } = {}
	for index, action in props.actions do
		children[tostring(action.id)] = React.createElement(IconButton, {
			icon = action.icon,
			onActivated = action.onActivated,
			LayoutOrder = index,
			testId = `{headerBarContext.testId}--actions--{action.id}`,
		})
	end

	return React.createElement(View, {
		tag = "row align-y-center shrink gap-small auto-xy",
		padding = padding,
		LayoutOrder = layoutOrder,
		testId = `{headerBarContext.testId}--actions`,
	}, children)
end

return React.memo(HeaderBarActions)
