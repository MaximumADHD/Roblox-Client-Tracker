local root = script:FindFirstAncestor("TenFootUiGlobalNav")
local Packages = root.Parent
local React = require(Packages.React)
local UIBlox = require(Packages.UIBlox)
local Cryo = require(Packages.Cryo)
local GlobalNavOptionGroup = require(root.Components.GlobalNavOptionGroup)
local eraseKeys = require(root.Components.utils.eraseKeys)
local TabGroup = UIBlox.App.Navigation.PrimaryNavBar.IconTabGroup

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

export type Props = {
	optionGroupProps: GlobalNavOptionGroup.Props,
	tabGroupProps: {
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
	}, -- TODO: properly export this type from UIBlox
} -- Do we have a type for GuiObject props?

local GlobalNav = React.forwardRef(function(props: Props, ref)
	local forwardedProps = eraseKeys({ "optionGroupProps", "tabGroupProps" }, props)
	return React.createElement(
		"Frame",
		Cryo.Dictionary.join({
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			ref = ref,
		}, forwardedProps),
		React.createElement(GlobalNavLayoutSide, nil, React.createElement(TabGroup, props.tabGroupProps)),
		React.createElement(
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
	)
end)

return GlobalNav
