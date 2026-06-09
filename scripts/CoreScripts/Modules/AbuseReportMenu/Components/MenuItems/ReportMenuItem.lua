local root = script:FindFirstAncestor("AbuseReportMenu")
local TextService = game:GetService("TextService")
local CorePackages = game:GetService("CorePackages")
local AppFonts = require(CorePackages.Workspace.Packages.Style).AppFonts
local UIBlox = require(CorePackages.Packages.UIBlox)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagRenameDeprecatedUIBloxTokens = SharedFlags.FFlagRenameDeprecatedUIBloxTokens

local Cryo = require(CorePackages.Packages.Cryo)
local React = require(CorePackages.Packages.React)
local useStyle = UIBlox.Core.Style.useStyle
local Constants = require(root.Components.Constants)
local getMenuItemDimensions = require(root.Components.getMenuItemDimensions)

type Props = {
	label: string,
	layoutOrder: number,
	rightComponent: any,
	heightOverride: number?,
	isRightComponentFullWidth: boolean?,
	menuContainerWidth: number,
	isSmallPortraitViewport: boolean?,
}

local function DropdownReportMenuItem(props: any)
	local style = useStyle()
	local verticalPadding = if props.label == "" or props.isRightComponentFullWidth
		then 0
		else (if FFlagRenameDeprecatedUIBloxTokens then style.Tokens.Size.Size_150 else style.Tokens.Global.Size_75)
	local theme = style.Theme

	local dimensions = getMenuItemDimensions(props.menuContainerWidth)
	local containerWidth = math.max(
		props.menuContainerWidth - Constants.MenuItemDynamicWidthOffset,
		dimensions.LeftWidth + dimensions.RightWidth
	)

	local labelTextHeight, setLabelTextHeight = React.useState(
		(if FFlagRenameDeprecatedUIBloxTokens then style.Tokens.Size.Size_1000 else style.Tokens.Global.Size_500)
	)
	React.useEffect(function()
		setLabelTextHeight(math.max(
			(if FFlagRenameDeprecatedUIBloxTokens then style.Tokens.Size.Size_1000 else style.Tokens.Global.Size_500), -- 40 for desktop, 60 for console
			TextService:GetTextSize(
				props.label,
				dimensions.TextSize,
				AppFonts.default:getMedium(),
				Vector2.new(if props.isSmallPortraitViewport then containerWidth else dimensions.LeftWidth, math.huge)
			).Y
		))
	end, {})

	-- Base children components. When isSmallPortraitViewport is true, lay out vertically.
	local menuItemInnerContent = {
		Layout = React.createElement("UIListLayout", {
			FillDirection = if props.isSmallPortraitViewport
				then Enum.FillDirection.Vertical
				else Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = if props.isSmallPortraitViewport then UDim.new(0, verticalPadding) else UDim.new(0, 0),
		}),
		Padding = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, verticalPadding),
			PaddingBottom = UDim.new(0, verticalPadding),
		}),
	}

	-- Here we are trying to support a full width row item without left hand side label
	if props.isRightComponentFullWidth then
		local rightComponentFullWidth = math.max(
			props.menuContainerWidth - Constants.MenuItemDynamicWidthOffset,
			dimensions.LeftWidth + dimensions.RightWidth
		)
		menuItemInnerContent = Cryo.Dictionary.join(menuItemInnerContent, {
			RightComponentWrapper = React.createElement("Frame", {
				Size = UDim2.new(0, rightComponentFullWidth, 0, Constants.MenuItemHeight),
				BackgroundTransparency = 1,
				LayoutOrder = 3,
				AutomaticSize = Enum.AutomaticSize.Y,
			}, {
				Layout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					VerticalAlignment = Enum.VerticalAlignment.Center,
				}),
				RightComponent = props.rightComponent,
			}),
		})
	else
		local middleSpaceHolderWidth = math.max(
			0,
			props.menuContainerWidth
				- dimensions.LeftWidth
				- dimensions.RightWidth
				- Constants.MenuItemDynamicWidthOffset
		)
		menuItemInnerContent = Cryo.Dictionary.join(menuItemInnerContent, {
			-- if props.label has text or we are rendering item in horizontal layout, text label should be created
			Label = if props.label ~= "" or not props.isSmallPortraitViewport
				then React.createElement("TextLabel", {
					Text = props.label,
					Font = AppFonts.default:getMedium(),
					LayoutOrder = 1,
					TextColor3 = theme.TextEmphasis.Color,
					TextTransparency = theme.TextEmphasis.Transparency,
					TextSize = dimensions.TextSize,
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Left,
					Size = if props.isSmallPortraitViewport
						then UDim2.new(0, containerWidth, 0, 0)
						else UDim2.new(0, dimensions.LeftWidth, 0, labelTextHeight),
					AutomaticSize = Enum.AutomaticSize.Y,
					BackgroundTransparency = 1,
				})
				else nil,
			-- Using an invisible middle component to simulate the space-bewteen flexbox behavior
			-- this component shrink or expand to make sure left label and right component take
			-- have reasonable space between depending on the device width
			MiddleSpaceHolder = if props.isSmallPortraitViewport
				then nil
				else React.createElement("Frame", {
					Size = UDim2.new(0, middleSpaceHolderWidth, 0, Constants.MenuItemHeight),
					BackgroundTransparency = 1,
					LayoutOrder = 2,
				}),
			RightComponentWrapper = React.createElement("Frame", {
				Size = if props.isSmallPortraitViewport
					then UDim2.new(0, containerWidth, 0, 0)
					else UDim2.new(0, dimensions.RightWidth, 0, Constants.MenuItemHeight),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				LayoutOrder = 3,
			}, {
				Layout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					HorizontalAlignment = if props.isSmallPortraitViewport then Enum.HorizontalAlignment.Left else nil,
				}),
				RightComponent = props.rightComponent,
			}),
		})
	end

	local containerHeight = labelTextHeight
	if props.heightOverride then
		containerHeight = props.heightOverride
	end

	return React.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, containerHeight),
		AutomaticSize = if props.isRightComponentFullWidth or props.isSmallPortraitViewport
			then Enum.AutomaticSize.Y
			else nil,
		BackgroundTransparency = 1,
		LayoutOrder = props.layoutOrder,
	}, menuItemInnerContent)
end

return DropdownReportMenuItem
