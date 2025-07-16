local root = script:FindFirstAncestor("AbuseReportMenu")

local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local React = require(CorePackages.Packages.React)
local AppFonts = require(CorePackages.Workspace.Packages.Style).AppFonts
local DropdownMenu = UIBlox.App.Menu.DropdownMenu
local ReportMenuItem = require(root.Components.MenuItems.ReportMenuItem)
local useStyle = UIBlox.Core.Style.useStyle
local getMenuItemSizings = require(root.Utility.getMenuItemSizings)

local Cryo = require(CorePackages.Packages.Cryo)

type Props = {
	label: string,
	placeholderText: string,
	layoutOrder: number,
	readonlyValue: string?,
	onSelect: () -> (),
	selections: { string },
	isSmallPortraitViewport: boolean,
	minHeight: number,
}

local MENU_ITEM_HEIGHT = 48

local function DropdownReportMenuItem(props: any)
	local style = useStyle()
	local theme = style.Theme
	local sizings = getMenuItemSizings()

	-- When we have a predetermined readonly value, we don't render the dropdown but rather just a text label
	local valueFieldComponent = if props.readonlyValue ~= nil
		then React.createElement("TextLabel", {
			Text = props.readonlyValue,
			Font = AppFonts.default:getMedium(),
			TextColor3 = theme.TextEmphasis.Color,
			TextTransparency = theme.TextMuted.Transparency,
			TextSize = sizings.DropdownTextSize,
			TextWrapped = true,
			TextXAlignment = if props.isSmallPortraitViewport
				then Enum.TextXAlignment.Left
				else Enum.TextXAlignment.Center,
			AutomaticSize = Enum.AutomaticSize.Y,
			Size = UDim2.new(1, 0, 0, props.minHeight),
			BackgroundTransparency = 1,
		})
		else React.createElement(DropdownMenu, {
			placeholder = props.placeholderText,
			onChange = props.onSelect,
			height = UDim.new(0, MENU_ITEM_HEIGHT),
			screenSize = Vector2.new(2400, 1800),
			errorState = false,
			showDropShadow = true,
			fixedListHeight = 180,
			cellDatas = Cryo.List.map(props.selections, function(item)
				return { text = item }
			end),
		})

	return React.createElement(ReportMenuItem, {
		label = props.label,
		layoutOrder = props.layoutOrder,
		rightComponent = valueFieldComponent,
		menuContainerWidth = props.menuContainerWidth,
		isSmallPortraitViewport = props.isSmallPortraitViewport,
	})
end

return DropdownReportMenuItem
