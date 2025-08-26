local root = script:FindFirstAncestor("AbuseReportMenu")

local CorePackages = game:GetService("CorePackages")
local AppFonts = require(CorePackages.Workspace.Packages.Style).AppFonts
local UIBlox = require(CorePackages.Packages.UIBlox)
local React = require(CorePackages.Packages.React)
local Images = UIBlox.App.ImageSet.Images
local useStyle = UIBlox.Core.Style.useStyle
local Constants = require(root.Components.Constants)
local getMenuItemDimensions = require(root.Components.getMenuItemDimensions)
local getMenuItemSizings = require(root.Utility.getMenuItemSizings)
local TextButton = UIBlox.App.Button.TextButton
local IconButton = UIBlox.App.Button.IconButton
local IconSize = UIBlox.App.ImageSet.Enum.IconSize

local FFlagAbuseReportTabSelectionHighlightCutoffFixEnabled =
	require(root.Flags.FFlagAbuseReportTabSelectionHighlightCutoffFixEnabled)

type Props = {
	label: string,
	abuseType: string,
	layoutOrder: number,
	utilityProps: any,
	isSelectionDisabled: boolean,
	menuWidth: number,
	isSmallPortraitViewport: boolean,
	onClickLeft: () -> (),
	onClickRight: () -> (),
}

local ReportTypeSelector = function(props: Props)
	local style = useStyle()
	local verticalPadding = style.Tokens.Global.Size_100
	local dimensions = getMenuItemDimensions(props.menuWidth)
	local sizings = getMenuItemSizings()

	local containerHeight = Constants.MenuItemHeightTight

	local containerWidth =
		math.max(props.menuWidth - Constants.MenuItemDynamicWidthOffset, dimensions.LeftWidth + dimensions.RightWidth)

	local renderLayoutVertically = props.isSmallPortraitViewport

	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 0),
		BackgroundTransparency = 1,
		AutomaticSize = Enum.AutomaticSize.Y,
	}, {
		Layout = React.createElement("UIListLayout", {
			FillDirection = if renderLayoutVertically
				then Enum.FillDirection.Vertical
				else Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			Padding = if renderLayoutVertically then UDim.new(0, verticalPadding) else UDim.new(0, 0),
		}),
		Label = React.createElement("TextLabel", {
			Text = props.label,
			Font = AppFonts.default:getMedium(),
			LayoutOrder = 1,
			TextColor3 = Color3.new(1, 1, 1),
			TextTransparency = 0,
			TextSize = dimensions.TextSize,
			AutomaticSize = Enum.AutomaticSize.Y,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
			Size = if renderLayoutVertically
				then UDim2.fromOffset(containerWidth, 0)
				else UDim2.new(0, dimensions.LeftWidth, 0, Constants.MenuItemHeight),
			BackgroundTransparency = 1,
		}),
		-- Using an invisible middle component to simulate the space-bewteen flexbox behavior
		-- this component shrink or expand to make sure left label and right component take
		-- have reasonable space between depending on the device width
		MiddleWidthHolder = if renderLayoutVertically
			then nil
			else React.createElement("Frame", {
				Size = UDim2.new(
					0,
					math.max(0, props.menuWidth - dimensions.LeftWidth - dimensions.RightWidth - 100),
					0,
					Constants.MenuItemHeight
				),
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}),
		Container = React.createElement("Frame", {
			Size = if renderLayoutVertically
				then UDim2.fromOffset(containerWidth, containerHeight)
				else UDim2.new(0, dimensions.RightWidth, 1, 0),
			BackgroundTransparency = 1,
			LayoutOrder = 3,
		}, {
			Layout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = if renderLayoutVertically
					then Enum.HorizontalAlignment.Left
					else Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			LeftChevron = if props.isSelectionDisabled
				then nil
				else React.createElement(IconButton, {
					size = UDim2.fromOffset(32, 32),
					iconSize = IconSize.Medium,
					icon = Images["icons/actions/cycleLeft"],
					onActivated = props.onClickLeft,
					layoutOrder = 1,
				}),
			ButtonContainer = React.createElement("Frame", {
				AutomaticSize = Enum.AutomaticSize.XY,
				Size = UDim2.new(0, dimensions.RightWidth - 32 * 2, 0, 0),
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}, {
				ToggleButton = React.createElement(TextButton, {
					size = UDim2.new(1, 0, 1, 0),
					text = props.abuseType,
					onActivated = props.onClickRight,
					layoutOrder = 2,
					isDisabled = props.isSelectionDisabled,
					fontStyle = sizings.FontStyle,
					verticalPadding = if FFlagAbuseReportTabSelectionHighlightCutoffFixEnabled
						then sizings.ButtonInsideVerticalPadding
						else nil,
				}),
			}),
			RightChevron = if props.isSelectionDisabled
				then nil
				else React.createElement(IconButton, {
					size = UDim2.fromOffset(32, 32),
					iconSize = IconSize.Medium,
					icon = Images["icons/actions/cycleRight"],
					onActivated = props.onClickRight,
					layoutOrder = 3,
				}),
		}),
	})
end

return ReportTypeSelector
