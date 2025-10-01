local root = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local ChatModalSelector = require(root.Components.ChatModalSelector)
local ReportMenuItem = require(root.Components.MenuItems.ReportMenuItem)

type Props = {
	label: string,
	layoutOrder: number,
	selectorHeight: number,
	isSmallPortraitViewport: boolean,
	placeholderText: string,
}

local ChatModalSelectorMenuItem = function(props: any)
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
