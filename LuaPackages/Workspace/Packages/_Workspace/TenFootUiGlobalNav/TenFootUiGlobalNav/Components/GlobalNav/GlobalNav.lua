local root = script:FindFirstAncestor("TenFootUiGlobalNav")
local Packages = root.Parent
local Cryo = require(Packages.Cryo)
local React = require(Packages.React)
local UIBlox = require(Packages.UIBlox)
local Style = require(Packages.Style)
local GlobalNavOptionGroup = require(root.Components.GlobalNavOptionGroup)
local eraseKeys = require(root.Components.utils.eraseKeys)
local TabGroup = UIBlox.App.Navigation.PrimaryNavBar.IconTabGroup
local useDesignTokens = Style.useDesignTokens

local function GlobalNavLayoutSide(props)
	local forwardedProps = eraseKeys({ "children" }, props)
	return React.createElement(
		"Frame",
		Cryo.Dictionary.join({
			AutomaticSize = Enum.AutomaticSize.XY,
			Position = UDim2.new(0, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			BackgroundTransparency = 1,
		}, forwardedProps),
		props.children
	)
end

type TabGroupProps = {
	selection: { number }?,
	items: {
		[number]: {
			title: string,
			icon: string?,
			onActivated: (() -> ())?,
			iconComponent: React.React_ComponentType<any>?,
			showRoundedBackground: boolean?,
			showOverlay: boolean?,
		},
	},
}

export type Props = {
	optionGroupProps: GlobalNavOptionGroup.Props?,
	tabGroupProps: TabGroupProps?, -- TODO: properly export this type from UIBlox
} -- Do we have a type for GuiObject props?

local GlobalNav = React.forwardRef(function(props: Props, ref)
	local safeAreaMargin = useDesignTokens(function(tokens)
		return tokens.Global.Space_800
	end)
	local forwardedProps = eraseKeys({ "optionGroupProps", "tabGroupProps" }, props)

	local tabGroup, optionGroup
	if props.tabGroupProps then
		tabGroup = React.createElement(GlobalNavLayoutSide, nil, React.createElement(TabGroup, props.tabGroupProps))
	end

	if props.optionGroupProps then
		optionGroup = React.createElement(
			GlobalNavLayoutSide,
			{
				Position = UDim2.new(1.0, 0, 0.5, 0),
				AnchorPoint = Vector2.new(1.0, 0.5),
			},
			React.createElement(
				GlobalNavOptionGroup,
				Cryo.Dictionary.join(props.optionGroupProps, { AnchorPoint = Vector2.new(1, 0) })
			)
		)
	end

	return React.createElement(
		"Frame",
		Cryo.Dictionary.join({
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			ref = ref,
		}, forwardedProps),
		React.createElement("UIPadding", {
			PaddingRight = UDim.new(0, safeAreaMargin),
			PaddingLeft = UDim.new(0, safeAreaMargin),
		}),
		tabGroup,
		optionGroup
	)
end)

return GlobalNav
