local TextService = game:GetService("TextService")

local UIBlox = script.Parent.Parent.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)
local Foundation = require(Packages.Foundation)
local normalizeFontFace = Foundation.Utility.normalizeFontFace
local FFlagFoundationFontFaceMigration = Foundation.Utility.Flags.FoundationFontFaceMigration

local UIBloxConfig = require(UIBlox.UIBloxConfig)
local Logger = require(UIBlox.Logger)

local ControlState = require(UIBlox.Core.Control.Enum.ControlState)
local StateLayer = require(UIBlox.Core.Control.StateLayer)
local useStyle = require(UIBlox.Core.Style.useStyle)
local ImageSetLabel = require(UIBlox.Core.ImageSet.ImageSetComponent).Label
local NavigationTabLayout = require(UIBlox.App.Navigation.Enum.NavigationTabLayout)
local ImagesTypes = require(UIBlox.App.ImageSet.ImagesTypes)
local StyleTypes = require(UIBlox.App.Style.StyleTypes)
local GetTextSize = require(UIBlox.Core.Text.GetTextSize)

local isBuilderIcon = Foundation.Utility.isBuilderIcon
local InputSize = Foundation.Enums.InputSize
local PopoverAlign = Foundation.Enums.PopoverAlign
local PopoverSide = Foundation.Enums.PopoverSide
local Radius = Foundation.Enums.Radius
local Icon = Foundation.Icon
local Popover = Foundation.Popover
local StatusIndicator = Foundation.StatusIndicator
local Text = Foundation.Text
local View = Foundation.View

local migrateBadgeVariant = require(UIBlox.Utility.migrateBadgeVariant)

local HUGE_VECTOR = Vector2.new(math.huge, math.huge)
local LABEL_PADDING = 2

type Icon = {
	name: string,
	variant: Foundation.IconVariant?,
}

export type NavigationTabLayoutType = NavigationTabLayout.Type
export type ImageSetImage = ImagesTypes.ImageSetImage
export type TypographyItem = StyleTypes.TypographyItem
export type ControlStateChangedCallback = StateLayer.ControlStateChangedCallback
export type Props = {
	-- Image of the icon in default state
	iconImage: (string | ImageSetImage | Icon)?,
	-- Image of the icon in checked state
	iconCheckedImage: (string | ImageSetImage | Icon)?,
	-- The icon element to be rendered manually, this will override iconImage and iconCheckedImage
	renderIcon: ((isChecked: boolean) -> React.ElementType)?,
	-- Whether to render the text label
	hasLabel: boolean?,
	-- Text of the label
	labelText: string?,
	-- Typography of the label
	labelTypography: TypographyItem?,
	-- Max text size constraint of the label
	labelMaxTextSize: number?,
	-- Whether the component is in checked state
	isChecked: boolean?,
	-- Value for the badge, can be string, integer oe BadgeStates.isEnumValue
	badgeValue: any?,
	-- Badge variant for different color options
	badgeVariant: any?,
	-- Layout style of the component
	layout: NavigationTabLayoutType?,
	-- Anchor point
	anchorPoint: Vector2?,
	-- Position
	position: UDim2?,
	-- Layout order
	layoutOrder: number?,
	-- Callback for activated event
	onActivated: (() -> ())?,
	-- Callback for state event
	onStateChanged: ControlStateChangedCallback?,
	-- Width of the stacked component
	width: UDim?,
	-- Whether the stacked component should use flex mode fill
	fillWidth: boolean?,
	-- Whether to enable the tooltip for the stacked label. Requires hasLabel and labelText.
	enableTooltip: boolean?,
	-- Side of the tab where the tooltip is displayed
	tooltipSide: Foundation.PopoverSide?,
	-- Alignment of the tooltip relative to the tab
	tooltipAlign: Foundation.PopoverAlign?,
	-- Distance between the tooltip and the tab
	tooltipOffset: number?,
}

local defaultProps = {
	hasLabel = false,
	isChecked = false,
	badgeValue = nil,
	layout = NavigationTabLayout.Stacked,
	tooltipSide = PopoverSide.Right,
	tooltipAlign = PopoverAlign.Center,
}

type NavigationTabTooltipProps = {
	isOpen: boolean,
	anchorRef: React.Ref<Frame?>,
	labelText: string,
	side: Foundation.PopoverSide,
	align: Foundation.PopoverAlign,
	offset: number?,
}

local function NavigationTabTooltip(props: NavigationTabTooltipProps)
	local tokens = useStyle().Tokens

	return React.createElement(Popover.Root, {
		isOpen = props.isOpen,
	}, {
		Anchor = React.createElement(Popover.Anchor, {
			anchorRef = props.anchorRef,
		}),
		Content = React.createElement(
			Popover.Content,
			{
				hasArrow = false,
				align = props.align,
				side = {
					position = props.side,
					offset = props.offset or tokens.Size.Size_200,
				},
				radius = Radius.Small,
				backgroundStyle = tokens.Inverse.Surface.Surface_0,
				selectionGroup = false,
			},
			React.createElement(View, {
				tag = "auto-xy padding-x-small padding-y-xsmall",
			}, {
				Title = React.createElement(Text, {
					Text = props.labelText,
					tag = "auto-xy text-body-small content-inverse-emphasis",
				}),
			})
		),
	})
end

local NavigationTab = React.forwardRef(function(providedProps: Props, ref: React.Ref<Frame>)
	local props = Cryo.Dictionary.join(defaultProps, providedProps)
	local tokens = useStyle().Tokens

	local hasConstrainedWidth = UIBloxConfig.addNavigationTabTooltipAndTruncation
		and props.layout == NavigationTabLayout.Stacked
		and (props.width ~= nil or props.fillWidth == true)
	local widthScale = if props.width then props.width.Scale else 0
	local widthOffset = if props.width then props.width.Offset else 0

	local contentsAbsoluteSize, setContentsAbsoluteSize = React.useBinding(Vector2.zero)
	local onAbsSizeChanged = React.useCallback(function(rbx: Frame)
		local absoluteSize = rbx.AbsoluteSize
		local lastSize = contentsAbsoluteSize:getValue()
		local hasChanged = if hasConstrainedWidth then lastSize.Y ~= absoluteSize.Y else lastSize ~= absoluteSize
		if hasChanged then
			setContentsAbsoluteSize(absoluteSize)
		end
	end, { hasConstrainedWidth })

	local contentsSize = React.useMemo(function()
		return contentsAbsoluteSize:map(function(absoluteSize: Vector2)
			if hasConstrainedWidth then
				return UDim2.new(widthScale, widthOffset, 0, absoluteSize.Y)
			end
			return UDim2.fromOffset(absoluteSize.X, absoluteSize.Y)
		end)
	end, { hasConstrainedWidth, widthScale, widthOffset } :: { any })

	local contentsRef = React.useRef(nil :: Frame?)

	local isTooltipOpen, setIsTooltipOpen = React.useState(false)

	local shouldUseTooltip = UIBloxConfig.addNavigationTabTooltipAndTruncation
		and props.enableTooltip
		and props.layout == NavigationTabLayout.Stacked
		and props.hasLabel
		and props.labelText ~= nil

	if
		UIBloxConfig.addNavigationTabTooltipAndTruncation
		and props.enableTooltip
		and not (props.hasLabel and props.labelText ~= nil)
	then
		Logger:warning("NavigationTab enableTooltip requires hasLabel and labelText")
	end

	local tooltipDelayThread = React.useRef(nil :: thread?)

	local cancelTooltipDelay = React.useCallback(function()
		if tooltipDelayThread.current then
			task.cancel(tooltipDelayThread.current)
			tooltipDelayThread.current = nil
		end
	end, {})

	React.useEffect(function()
		return cancelTooltipDelay
	end, { cancelTooltipDelay })

	local onStateChanged = React.useCallback(function(oldState, newState)
		if props.onStateChanged then
			props.onStateChanged(oldState, newState)
		end

		if not shouldUseTooltip then
			return
		end

		cancelTooltipDelay()

		if
			newState ~= ControlState.Hover
			and newState ~= ControlState.Selected
			and newState ~= ControlState.SelectedPressed
		then
			setIsTooltipOpen(false)
			return
		end

		local delayThread: thread?
		delayThread = task.delay(tokens.Time.Time_500, function()
			if tooltipDelayThread.current ~= delayThread then
				return
			end
			tooltipDelayThread.current = nil
			setIsTooltipOpen(true)
		end)
		tooltipDelayThread.current = delayThread
	end, { props.onStateChanged, shouldUseTooltip, cancelTooltipDelay, tokens.Time.Time_500 } :: { any })

	-- calculate labelSize
	local labelSize
	local fontSize
	if props.labelTypography then
		fontSize = props.labelTypography.FontSize
		if fontSize ~= nil and typeof(fontSize) ~= "number" then
			-- fontSize can be a binding
			fontSize = fontSize:getValue()
		end
	end
	labelSize = React.useMemo(function(): UDim2?
		if props.hasLabel and props.labelText and props.labelTypography then
			local textSize = if FFlagFoundationFontFaceMigration
				then GetTextSize(props.labelText, fontSize, props.labelTypography.Font, HUGE_VECTOR)
				else TextService:GetTextSize(
					props.labelText,
					fontSize,
					props.labelTypography.Font :: Enum.Font,
					HUGE_VECTOR
				)
			return UDim2.new(0, textSize.X + LABEL_PADDING, 0, textSize.Y + LABEL_PADDING)
		end
		return nil
	end, { props.hasLabel, props.labelText, props.labelTypography, fontSize })

	-- iconComponent
	local iconComponent
	local iconSize = UDim2.fromOffset(tokens.Size.Size_700, tokens.Size.Size_700)
	if props.renderIcon then
		iconComponent = props.renderIcon(props.isChecked)
	else
		local iconImage = if props.isChecked and props.iconCheckedImage then props.iconCheckedImage else props.iconImage
		local iconColor = if props.isChecked then tokens.Color.Content.Emphasis else tokens.Color.Content.Default
		local iconName
		local iconVariant
		if UIBloxConfig.addFoundationNavigationTabIcon then
			if typeof(iconImage) == "string" then
				if isBuilderIcon(iconImage) then
					iconName = iconImage
				end
			elseif typeof(iconImage) == "table" then
				if iconImage.name ~= nil and isBuilderIcon(iconImage.name) then
					iconName = iconImage.name
					iconVariant = iconImage.variant
				end
			end
		end

		if UIBloxConfig.addFoundationNavigationTabIcon and iconName ~= nil then
			iconComponent = React.createElement(View, {
				tag = "size-0-0 auto-xy padding-xxsmall",
			}, {
				Icon = React.createElement(Icon, {
					name = iconName,
					size = InputSize.Large,
					variant = iconVariant,
					style = iconColor,
				}),
			})
		else
			iconComponent = React.createElement(ImageSetLabel, {
				BackgroundTransparency = 1,
				Size = iconSize,
				Image = iconImage,
				ScaleType = Enum.ScaleType.Fit,
				ImageColor3 = iconColor.Color3,
				ImageTransparency = iconColor.Transparency,
			})
		end
	end
	if props.layout == NavigationTabLayout.Stacked and props.badgeValue ~= nil then
		iconComponent = React.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = iconSize,
			LayoutOrder = 1,
		}, {
			Icon = iconComponent,
			Badge = React.createElement(StatusIndicator, {
				Position = UDim2.fromScale(1, 0),
				AnchorPoint = Vector2.new(0.6, 0.35),
				value = tonumber(props.badgeValue),
				variant = migrateBadgeVariant(props.badgeVariant),
				max = if tonumber(props.badgeValue) then 99 else nil,
			}),
		})
	end

	-- labelComponent
	local labelComponent
	if props.hasLabel and props.labelText then
		local textColor = if props.isChecked then tokens.Color.Content.Emphasis else tokens.Color.Content.Default
		labelComponent = React.createElement("TextLabel", {
			AutomaticSize = if hasConstrainedWidth
				then Enum.AutomaticSize.Y
				elseif labelSize then nil
				else Enum.AutomaticSize.XY,
			Size = if hasConstrainedWidth then UDim2.fromScale(1, 0) else labelSize,
			BackgroundTransparency = 1,
			LayoutOrder = 2,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextWrapped = false,
			TextTruncate = if hasConstrainedWidth then Enum.TextTruncate.AtEnd else nil,
			Text = props.labelText,
			Font = if FFlagFoundationFontFaceMigration or props.labelTypography == nil
				then nil
				else props.labelTypography.Font,
			FontFace = if FFlagFoundationFontFaceMigration and props.labelTypography
				then normalizeFontFace(props.labelTypography.Font)
				else nil,
			TextSize = if props.labelTypography then props.labelTypography.FontSize else nil,
			LineHeight = if props.labelTypography then props.labelTypography.LineHeight else nil,
			TextColor3 = textColor.Color3,
			TextTransparency = textColor.Transparency,
		}, {
			UITextSizeConstraint = if UIBloxConfig.addNavigationTabTooltipAndTruncation
					and props.labelMaxTextSize
				then React.createElement("UITextSizeConstraint", {
					MaxTextSize = props.labelMaxTextSize,
				})
				else nil,
		})
	end

	-- contents
	local contents: React.ReactElement?
	local cornerRadius
	if props.layout == NavigationTabLayout.Stacked then
		cornerRadius = UDim.new(0, tokens.Radius.Medium)
		local minSize = tokens.Size.Size_1200
		contents = React.createElement("Frame", {
			AutomaticSize = if hasConstrainedWidth then Enum.AutomaticSize.Y else Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
			Size = if hasConstrainedWidth then UDim2.new(1, 0, 0, minSize) else UDim2.fromOffset(minSize, minSize),
			ref = if UIBloxConfig.addNavigationTabTooltipAndTruncation then contentsRef else nil,
			[React.Change.AbsoluteSize] = onAbsSizeChanged,
		}, {
			UIPadding = React.createElement("UIPadding", {
				PaddingTop = UDim.new(0, tokens.Size.Size_200),
				PaddingBottom = UDim.new(0, tokens.Size.Size_200),
			}),
			UIListLayout = React.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = if UIBloxConfig.removeStackedNavigationTabIconLabelSpacing
					then nil
					else UDim.new(0, tokens.Size.Size_100),
			}),
			Icon = iconComponent,
			Label = labelComponent,
		})
	elseif props.layout == NavigationTabLayout.Inline then
		cornerRadius = UDim.new(0, tokens.Size.Size_300)
		local bgColor = if props.isChecked
			then tokens.Color.State.Press
			else {
				Transparency = 1,
				Color3 = nil,
			}
		contents = React.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = bgColor.Transparency,
			BackgroundColor3 = bgColor.Color3,
			Size = UDim2.fromOffset(tokens.Size.Size_1200, tokens.Size.Size_1000),
			[React.Change.AbsoluteSize] = onAbsSizeChanged,
		}, {
			UIPadding = React.createElement("UIPadding", {
				PaddingTop = UDim.new(0, tokens.Size.Size_100),
				PaddingBottom = UDim.new(0, tokens.Size.Size_100),
				PaddingLeft = UDim.new(0, tokens.Size.Size_300),
				PaddingRight = UDim.new(0, tokens.Size.Size_300),
			}),
			UIListLayout = React.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, tokens.Size.Size_300),
			}),
			UICorner = React.createElement("UICorner", {
				CornerRadius = cornerRadius,
			}),
			Icon = iconComponent,
			Label = labelComponent,
			Badge = if props.badgeValue ~= nil
				then React.createElement(StatusIndicator, {
					LayoutOrder = 3,
					value = tonumber(props.badgeValue),
					variant = migrateBadgeVariant(props.badgeVariant),
					max = if tonumber(props.badgeValue) then 99 else nil,
				})
				else nil,
		})
	end

	-- return
	return React.createElement("Frame", {
		ref = ref,
		Size = contentsSize,
		BackgroundTransparency = 1,
		AnchorPoint = props.anchorPoint,
		Position = props.position,
		LayoutOrder = props.layoutOrder,
	}, {
		UIFlexItem = if UIBloxConfig.addNavigationTabTooltipAndTruncation
				and props.layout == NavigationTabLayout.Stacked
				and props.fillWidth
			then React.createElement("UIFlexItem", {
				FlexMode = Enum.UIFlexMode.Fill,
			})
			else nil,
		Contents = contents,
		StateLayer = React.createElement(StateLayer, {
			affordance = "Background" :: StateLayer.Affordance,
			cornerRadius = cornerRadius,
			zIndex = 10,
			onActivated = props.onActivated,
			onStateChanged = if UIBloxConfig.addNavigationTabTooltipAndTruncation
				then onStateChanged
				else props.onStateChanged,
		}),
		Tooltip = if UIBloxConfig.addNavigationTabTooltipAndTruncation and shouldUseTooltip
			then React.createElement(NavigationTabTooltip, {
				isOpen = isTooltipOpen,
				anchorRef = contentsRef,
				labelText = props.labelText :: string,
				side = props.tooltipSide,
				align = props.tooltipAlign,
				offset = props.tooltipOffset,
			})
			else nil,
	})
end)

return NavigationTab
