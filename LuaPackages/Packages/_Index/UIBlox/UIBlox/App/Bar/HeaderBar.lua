local Bar = script.Parent
local App = Bar.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local UIBloxConfig = require(UIBlox.UIBloxConfig)
if not UIBloxConfig.useNewHeaderBar then
	return require(Bar.HeaderBar_DEPRECATED)
end

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)

local StyleTypes = require(App.Style.StyleTypes)
local Fonts = require(App.Style.Fonts)
local useStyle = require(UIBlox.Core.Style.useStyle)
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local GetTextSize = require(UIBlox.Core.Text.GetTextSize)
local ThreeSectionBar = require(UIBlox.Core.Bar.ThreeSectionBar)

local PADDING_AROUND_DIVIDER = 12

export type Props = {
	-- The height of the bar and with `isOnMedia` being true extra 40px will be added
	barHeight: number?,

	-- The title text for the title bar
	title: string?,

	-- Whether title is centered and it can be overridden by `isSecondary` or `renderLeft`
	isTitleCentered: boolean?,

	-- A function that returns a React Component, used for customizing, e.g. back button, on the left side of the bar. If this does not exist, the bar will appear as a root HeaderBar and will increase the size of the title and place it to the left
	renderLeft: (() -> React.ReactElement?)?,

	-- A function that returns a React Component, used for containing, e.g. search bar, on the center of the bar
	renderCenter: (() -> React.ReactElement?)?,

	-- A function that returns a React Component, used for customizing buttons on the right side of the bar
	renderRight: (() -> React.ReactElement?)?,

	-- Add an invisible button to the bar to capture click event
	onHeaderActivated: (() -> ())?,

	-- Background style of header bar and its transparency can be overridden by `backgroundTransparency`
	backgroundStyle: StyleTypes.ColorItem?,

	-- Determines whether header bar is displayed on media and extra 40px will be added to header bar height
	isOnMedia: boolean?,

	-- Determines whether header bar height is scaled automatically
	automaticHeight: boolean?,

	-- Padding at top of header bar
	paddingTop: UDim?,

	-- Padding at right of header bar and it can be overridden by `margin`
	paddingRight: UDim?,

	-- Padding at bottom of header bar
	paddingBottom: UDim?,

	-- Padding at Left of header bar and it can be overridden by `margin`
	paddingLeft: UDim?,

	-- ZIndex of header bar
	zIndex: number?,

	-- Determines whether header bar has bottom divider
	hasDivider: boolean?,

	-- Padding around the items from renderRight
	contentPaddingRight: UDim?,

	-- (For compatibility) Background transparency of the bar
	backgroundTransparency: number?,

	-- (For compatibility) The value for the side margins
	margin: number?,

	-- (For compatibility) An optional boolean that, when true, applies secondary header bar styling (smaller font, vertical divider) and the title will be left aligned
	isSecondary: boolean?,

	-- An optional boolean that, when true, hides secondary left item (i.e. title, divider, and renderLeft prop)
	shouldHideSecondaryLeftItem: boolean?,
}

local defaultProps = {
	barHeight = 48,
	title = "",
	isTitleCentered = true,
	isSecondary = false,
	isOnMedia = false,
	hasDivider = false,
}

local function useHeaderBarStyle(props: Props, style: StyleTypes.AppStyle)
	local tokens = style.Tokens
	local theme = style.Theme

	local backgroundStyle = props.backgroundStyle
	local backgroundTransparency = props.backgroundTransparency
	local isOnMedia = props.isOnMedia
	local barBackgroundStyle = React.useMemo(function()
		-- Background style is overridden by UIGradient when on media
		if isOnMedia then
			return {}
		end

		-- For compatibility use theme.BackgroundDefault as default
		local bgStyle: StyleTypes.ColorItem = backgroundStyle
			or {
				Color3 = theme.BackgroundDefault.Color,
				Transparency = theme.BackgroundDefault.Transparency,
			}

		if backgroundTransparency then
			bgStyle.Transparency = backgroundTransparency
		end
		return bgStyle
	end, { isOnMedia, backgroundStyle, backgroundTransparency, theme } :: { any })

	local paddingTop = props.paddingTop
	local paddingRight = props.paddingRight
	local paddingBottom = props.paddingBottom
	local paddingLeft = props.paddingLeft
	local margin = props.margin
	local padding = React.useMemo(function()
		local values = {
			Top = paddingTop or UDim.new(0, tokens.Global.Space_100),
			Right = paddingRight or UDim.new(0, tokens.Global.Space_250),
			Bottom = paddingBottom or UDim.new(0, tokens.Global.Space_100),
			Left = paddingLeft or UDim.new(0, tokens.Global.Space_250),
		}
		if margin then
			values.Left = UDim.new(0, margin)
			values.Right = UDim.new(0, margin)
		end

		return values
	end, { paddingTop, paddingRight, paddingBottom, paddingLeft, margin, tokens } :: { any })

	return {
		BackgroundStyle = barBackgroundStyle,
		Padding = padding,
	}
end

local function useRenderLeft(props: Props, style: StyleTypes.AppStyle)
	return React.useMemo(function()
		local title = props.title :: string
		local renderLeft = props.renderLeft
		local isTitleCentered = props.isTitleCentered
		local isSecondary = props.isSecondary
		local shouldHideSecondaryLeftItem = props.shouldHideSecondaryLeftItem
		local isRoot = renderLeft == nil or renderLeft == React.None
		local tokens = style.Tokens

		local renderFun: ((any) -> React.ReactElement?)? = props.renderLeft
		if isRoot and string.len(title) > 0 then
			renderFun = function(threeSectionBarProps)
				local textChildren = Cryo.Dictionary.join(threeSectionBarProps.children, {
					TextPadding = React.createElement("UIPadding", {
						PaddingTop = UDim.new(0, tokens.Global.Space_25),
						PaddingBottom = UDim.new(0, tokens.Global.Space_25),
					}),
				})
				return React.createElement(React.Fragment, nil, {
					Text = if UIBloxConfig.fixHeaderBarTitleFlickering
						then React.createElement(GenericTextLabel, {
							fluidSizing = true,
							Text = title,
							TextXAlignment = Enum.TextXAlignment.Left,
							fontStyle = tokens.Semantic.Typography.Title,
							colorStyle = tokens.Semantic.Color.Text.Emphasis,
						}, textChildren)
						else React.createElement("TextLabel", {
							AutomaticSize = Enum.AutomaticSize.XY,
							BackgroundTransparency = 1,
							Text = title,
							Font = tokens.Semantic.Typography.Title.Font,
							TextSize = tokens.Semantic.Typography.Title.FontSize,
							LineHeight = tokens.Semantic.Typography.Title.LineHeight,
							TextColor3 = tokens.Semantic.Color.Text.Emphasis.Color3,
							TextTransparency = tokens.Semantic.Color.Text.Emphasis.Transparency,
						}, textChildren),
				})
			end

		-- Secondary style for compatibility
		elseif isSecondary and not shouldHideSecondaryLeftItem and string.len(title) > 0 then
			local theme = style.Theme
			local font = style.Font
			local textFontStyle: Fonts.Font = font.Header2
			local textSize = textFontStyle.RelativeSize * font.BaseSize

			renderFun = function()
				return React.createElement(React.Fragment, nil, {
					Text = React.createElement("Frame", {
						Size = UDim2.new(1, 0, 0, textSize),
						BorderSizePixel = 0,
						BackgroundTransparency = 1,
					}, {
						Layout = React.createElement("UIListLayout", {
							SortOrder = Enum.SortOrder.LayoutOrder,
							FillDirection = Enum.FillDirection.Horizontal,
							VerticalAlignment = Enum.VerticalAlignment.Center,
							Padding = UDim.new(0, PADDING_AROUND_DIVIDER),
						}),
						Left = React.createElement("Frame", {
							LayoutOrder = 1,
							Selectable = false,
							Size = UDim2.fromOffset(0, 0),
							BorderSizePixel = 0,
							BackgroundTransparency = 1,
							AutomaticSize = Enum.AutomaticSize.XY,
						}, {
							LeftContent = if renderLeft then renderLeft() else nil,
						}),
						Divider = React.createElement("Frame", {
							LayoutOrder = 2,
							Selectable = false,
							BackgroundColor3 = theme.Divider.Color,
							BackgroundTransparency = theme.Divider.Transparency,
							BorderSizePixel = 0,
							Size = UDim2.new(0, 1, 1, 0),
						}),
						TextLabel = React.createElement(GenericTextLabel, {
							LayoutOrder = 3,
							Selectable = false,
							ClipsDescendants = true,
							Text = title,
							TextTruncate = Enum.TextTruncate.AtEnd,
							TextWrapped = false,
							TextXAlignment = Enum.TextXAlignment.Left,
							fontStyle = textFontStyle,
							colorStyle = theme.TextEmphasis,
						}),
					}),
				})
			end
		elseif not isSecondary and not isTitleCentered then
			local textFontStyle = tokens.Semantic.Typography.Header
			local textSize = textFontStyle.FontSize

			renderFun = function()
				return React.createElement(React.Fragment, nil, {
					LeftFrame = React.createElement("Frame", {
						Selectable = false,
						Size = UDim2.new(1, 0, 0, textSize),
						BorderSizePixel = 0,
						BackgroundTransparency = 1,
					}, {
						Layout = React.createElement("UIListLayout", {
							SortOrder = Enum.SortOrder.LayoutOrder,
							FillDirection = Enum.FillDirection.Horizontal,
							VerticalAlignment = Enum.VerticalAlignment.Center,
							Padding = UDim.new(0, tokens.Global.Space_150),
						}),
						Left = React.createElement("Frame", {
							LayoutOrder = 1,
							Selectable = false,
							Size = UDim2.fromOffset(0, 0),
							BorderSizePixel = 0,
							BackgroundTransparency = 1,
							AutomaticSize = Enum.AutomaticSize.XY,
						}, {
							LeftContent = if renderLeft then renderLeft() else nil,
						}),
						TextLabel = React.createElement(GenericTextLabel, {
							LayoutOrder = 2,
							Selectable = false,
							ClipsDescendants = true,
							Text = title,
							TextTruncate = Enum.TextTruncate.AtEnd,
							TextWrapped = false,
							TextXAlignment = Enum.TextXAlignment.Left,
							fontStyle = textFontStyle,
							colorStyle = tokens.Semantic.Color.Text.Emphasis,
						}, {
							TextPadding = React.createElement("UIPadding", {
								PaddingTop = UDim.new(0, tokens.Global.Space_25),
								PaddingBottom = UDim.new(0, tokens.Global.Space_25),
							}),
						}),
					}),
				})
			end
		end

		return renderFun
	end, {
		props.title,
		props.isTitleCentered,
		props.renderLeft,
		props.isSecondary,
		props.shouldHideSecondaryLeftItem,
		style,
	} :: { any })
end

local function HeaderBar(providedProps: Props)
	local props = Cryo.Dictionary.join(defaultProps, providedProps)
	local style = useStyle()
	local tokens = style.Tokens

	local title = props.title
	local renderCenter = props.renderCenter
	local renderRight = props.renderRight
	local isTitleCentered = props.isTitleCentered
	local isSecondary = props.isSecondary
	local onHeaderActivated = props.onHeaderActivated
	local contentPaddingRight = props.contentPaddingRight
	local automaticHeight = props.automaticHeight
	local isOnMedia = props.isOnMedia
	local zIndex = props.zIndex
	local hasDivider = props.hasDivider
	local isRoot = props.renderLeft == nil or props.renderLeft == React.None

	local barRenderLeft = useRenderLeft(props, style)

	local barRenderCenter = React.useMemo(
		function()
			local renderFun: (() -> React.ReactElement?)? = renderCenter
			-- Render title in the center section if center renderer is empty and
			-- title is centered
			if not renderFun and not isRoot and not isSecondary and isTitleCentered then
				local centerTextFontStyle = tokens.Semantic.Typography.Header
				local centerTextSize = centerTextFontStyle.FontSize
				renderFun = function()
					return React.createElement(GenericTextLabel, {
						Selectable = false,
						ClipsDescendants = true,
						Size = UDim2.new(1, 0, 0, centerTextSize),
						Text = title,
						TextTruncate = Enum.TextTruncate.AtEnd,
						TextWrapped = false,
						fontStyle = centerTextFontStyle,
						colorStyle = tokens.Semantic.Color.Text.Emphasis,
					}, {
						TextPadding = React.createElement("UIPadding", {
							PaddingTop = UDim.new(0, tokens.Global.Space_25),
							PaddingBottom = UDim.new(0, tokens.Global.Space_25),
						}),
					})
				end
			end
			return renderFun
		end,
		if UIBloxConfig.fixHeaderBarDependenciesArray
			then { renderCenter, isRoot, isSecondary, isTitleCentered, tokens, title } :: { any }
			else { renderCenter, isRoot, isSecondary, isTitleCentered, tokens } :: { any }
	)

	local estimatedCenterWidth = React.useMemo(function()
		-- Make center fixed-width components in the center, e.g search bar
		if barRenderLeft and renderCenter and renderRight then
			return 0
		end

		-- Title is in center section. Get text width as estimatedCenterWidth
		-- to position it in the center
		if not renderCenter and not isRoot and not isSecondary and isTitleCentered then
			local centerTextFontStyle = tokens.Semantic.Typography.Header
			local centerTextSize = centerTextFontStyle.FontSize
			return GetTextSize(title, centerTextSize, centerTextFontStyle.Font, Vector2.new(math.huge, math.huge)).X
		end

		return math.huge
	end, { title, isTitleCentered, isRoot, barRenderLeft, renderCenter, renderRight, isSecondary, tokens } :: { any })

	local barContentPaddingRight = React.useMemo(function()
		if contentPaddingRight then
			return contentPaddingRight
		end

		if isRoot then
			return UDim.new(0, 0)
		end

		return UDim.new(0, tokens.Global.Space_300)
	end, { contentPaddingRight, isRoot, tokens } :: { any })

	local headerBarStyle = useHeaderBarStyle(props, style)
	local backgroundStyle = headerBarStyle.BackgroundStyle
	local padding = headerBarStyle.Padding
	local barHeight = if isOnMedia
		then props.barHeight :: number + tokens.Global.Size_500
		else props.barHeight :: number
	local threeSectionBarHeight = if automaticHeight
		then 0
		else math.max(0, props.barHeight :: number - padding.Top.Offset - padding.Bottom.Offset)

	return React.createElement("Frame", {
		Selectable = false,
		Size = UDim2.new(1, 0, 0, barHeight),
		BorderSizePixel = 0,
		BackgroundColor3 = backgroundStyle.Color3,
		BackgroundTransparency = backgroundStyle.Transparency,
		AutomaticSize = if automaticHeight then Enum.AutomaticSize.Y else nil,
		ZIndex = zIndex,
	}, {
		Gradient = if isOnMedia
			then React.createElement("UIGradient", {
				Rotation = 90,
				Color = ColorSequence.new({
					ColorSequenceKeypoint.new(0, Color3.new(0, 0, 0)),
					ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0)),
				}),
				Transparency = NumberSequence.new({
					NumberSequenceKeypoint.new(0, 0.7),
					NumberSequenceKeypoint.new(1, 1.0),
				}),
			})
			else nil,
		OnMediaExtendedHeight = if isOnMedia
			then React.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, tokens.Global.Size_500),
			})
			else nil,
		Bar = React.createElement("Frame", {
			Selectable = false,
			Size = UDim2.fromScale(1, 0),
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			AutomaticSize = Enum.AutomaticSize.Y,
		}, {
			Padding = React.createElement("UIPadding", {
				PaddingTop = padding.Top,
				PaddingRight = padding.Right,
				PaddingBottom = padding.Bottom,
				PaddingLeft = padding.Left,
			}),
			ThreeSectionBar = React.createElement(ThreeSectionBar, {
				BackgroundTransparency = 1,
				barHeight = threeSectionBarHeight,
				automaticHeight = automaticHeight,
				renderLeft = barRenderLeft,
				renderCenter = barRenderCenter,
				renderRight = renderRight,
				estimatedCenterWidth = estimatedCenterWidth,
				sectionSpacing = tokens.Global.Space_150,
				contentPaddingRight = barContentPaddingRight,
			}),
		}),
		HeaderClickArea = if onHeaderActivated
			then React.createElement("TextButton", {
				AutoButtonColor = false,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Text = "",
				Size = UDim2.fromScale(1, 1),
				Selectable = false,
				[React.Event.Activated] = onHeaderActivated,
				ZIndex = 0,
			})
			else nil,
		BottomDivider = if hasDivider
			then React.createElement("Frame", {
				Selectable = false,
				Size = UDim2.new(1, 0, 0, tokens.Global.Stroke_100),
				Position = UDim2.new(0, 0, 1, -tokens.Global.Stroke_100),
				BackgroundColor3 = tokens.Semantic.Color.Common.Divider.Color3,
				BackgroundTransparency = tokens.Semantic.Color.Common.Divider.Transparency,
				BorderSizePixel = 0,
				ZIndex = 1,
			})
			else nil,
	})
end

return HeaderBar
