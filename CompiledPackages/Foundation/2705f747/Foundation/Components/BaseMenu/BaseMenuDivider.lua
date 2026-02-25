local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local function BaseMenuDivider(props: { LayoutOrder: number })
	local tokens = useTokens()
	return React.createElement(
		View,
		{
			LayoutOrder = props.LayoutOrder,
			Size = UDim2.new(1, 0, 0, tokens.Stroke.Standard),
			tag = "row flex-x-fill",
			testId = "--foundation-menu-divider-item",
		},
		React.createElement(View, {
			tag = "size-0-full grow",
			backgroundStyle = tokens.Color.Stroke.Default,
		})
	)
end

return BaseMenuDivider
