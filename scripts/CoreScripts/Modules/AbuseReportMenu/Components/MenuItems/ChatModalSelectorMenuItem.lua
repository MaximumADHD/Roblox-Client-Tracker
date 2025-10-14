local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)

local ChatModalSelector = require(root.Components.ChatModalSelector)
local ReportMenuItem = require(root.Components.MenuItems.ReportMenuItem)
local Types = require(root.Components.Types)

type Props = {
	isSmallPortraitViewport: boolean,
	label: string,
	layoutOrder: number,
	menuContainerWidth: number,
	onMenuOpenChange: (boolean) -> (),
	onSelect: (message: Types.Message, orderedMessages: { Types.Message }) -> (),
	placeholderText: string,
	selectorHeight: number,
	selectedValue: string?,
}

local ChatModalSelectorMenuItem = function(props: Props)
	return React.createElement(ReportMenuItem, {
		label = props.label,
		layoutOrder = props.layoutOrder,
		rightComponent = React.createElement(ChatModalSelector, props),
		menuContainerWidth = props.menuContainerWidth,
		isSmallPortraitViewport = props.isSmallPortraitViewport,
		placeholderText = props.placeholderText,
	})
end

return ChatModalSelectorMenuItem
