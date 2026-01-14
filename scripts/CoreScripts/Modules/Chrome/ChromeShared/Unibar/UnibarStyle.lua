local CorePackages = game:GetService("CorePackages")

local React = require(CorePackages.Packages.React)
local Foundation = require(CorePackages.Packages.Foundation)
local useTokens = Foundation.Hooks.useTokens

local UnibarStyleContext = React.createContext({} :: { [string]: any })

local function UnibarStyleConstants()
	local tokens = useTokens()

	return {
		ICON_CELL_WIDTH = tokens.Size.Size_1100,
		ICON_SIZE = tokens.Size.Size_900,
		UNIBAR_ICON_SIZE = tokens.Size.Size_800,
		ICON_HIGHLIGHT_SIZE = UDim2.new(0, tokens.Size.Size_900, 0, tokens.Size.Size_900),
		ICON_DIVIDER_POSITION = UDim2.new(0, tokens.Size.Size_50, 0.5, 0),
		ICON_BADGE_OFFSET_X = tokens.Gap.XXLarge,
		ICON_BADGE_OFFSET_Y = tokens.Gap.Small,
		MEDIUM_ICON_SIZE = tokens.Size.Size_700,
		UNIBAR_END_PADDING = tokens.Padding.XSmall,
		MENU_SUBMENU_PADDING = tokens.Padding.Small,
		UNIBAR_LEFT_MARGIN = tokens.Padding.Small,
		SUB_MENU_ROW_HEIGHT = tokens.Size.Size_1400,
		SUBMENU_CORNER_RADIUS = tokens.Radius.Medium,
		SUBMENU_PADDING_LEFT = tokens.Padding.Small,
		SUBMENU_PADDING_RIGHT = tokens.Padding.Small,
		SUBMENU_ROW_LABEL_FONT = tokens.Typography.TitleLarge,
		SUBMENU_ROW_PADDING = tokens.Padding.Small,
		SUBMENU_ROW_CORNER_RADIUS = tokens.Radius.Medium,
		SUBMENU_BOTTOM_PADDING = tokens.Padding.XLarge,
		CLOSE_BUTTON_FRAME = UDim2.new(0, tokens.Size.Size_1100, 0, tokens.Size.Size_1100),
		WINDOW_DEFAULT_PADDING = tokens.Padding.Small,
	}
end

local function UnibarStyleProvider(props)
	return React.createElement(UnibarStyleContext.Provider, {
		value = UnibarStyleConstants(),
	}, props.children)
end

local function use()
	local unibarStyleContext = React.useContext(UnibarStyleContext)

	if unibarStyleContext then
		return unibarStyleContext
	else
		error(
			"attempt to use UnibarStyleContext with no provider. Add `UnibarStyleContext.Provider` to the React tree and try again"
		)
	end
end

return {
	Context = UnibarStyleContext,
	Provider = UnibarStyleProvider,
	use = use,
}
