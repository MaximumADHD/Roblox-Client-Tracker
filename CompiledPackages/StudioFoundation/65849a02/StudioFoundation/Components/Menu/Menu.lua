local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local React = require(Packages.React)

local Foundation = require(Packages.Foundation)
local View = Foundation.View
local useTokens = Foundation.Hooks.useTokens
local PopoverSide = Foundation.Enums.PopoverSide
local PopoverAlign = Foundation.Enums.PopoverAlign

local PopoverContent = require(Main.Components.Popover.PopoverContent)
local getPosition = require(Main.Components.Popover.getPosition)
local PanelsContext = require(Main.Panels.PanelsContext)
local usePanel = require(Main.Panels.usePanel)
local useAsyncOnAbsoluteSizeChanged = require(Main.Components.Popover.useAsyncOnAbsoluteSizeChanged)

local Types = require(Main.Types)
type PanelHandler = Types.PanelHandler
type PanelPosition = Types.PanelPosition

export type MenuData = {
	depth: number,
}

local MenuContext = React.createContext({
	depth = 1,
} :: MenuData)

type Props = {
	isOpen: boolean,
	onClose: () -> (),
	align: Types.AlignConfig?,
	side: Types.SideConfig?,
	anchorUri: StudioUri,
	position: Vector2?,
	children: React.ReactNode,
}

local function Menu(props: Props)
	local menuData = React.useContext(MenuContext)
	local panelsContextValue = PanelsContext.useValue()
	local tokens = useTokens()

	local position = React.useMemo(function()
		return getPosition(props.side or PopoverSide.Bottom, props.align or PopoverAlign.Start, props.position)
	end, { props.side :: unknown, props.align, props.position })

	local registerPanelAsync = React.useCallback(
		function(anchorUri: StudioUri, position: PanelPosition, onClose: () -> ())
			return panelsContextValue.registerMenuAsync(menuData.depth, anchorUri, position, onClose)
		end,
		{ panelsContextValue.registerMenuAsync :: unknown, menuData.depth }
	)

	local panel = usePanel({
		isOpen = props.isOpen,
		onClose = props.onClose,
		anchorUri = props.anchorUri,
		registerPanelAsync = registerPanelAsync,
		position = position,
	})

	local nestedMenuData = React.useMemo(function()
		return { depth = menuData.depth + 1 }
	end, { menuData })

	local onAbsoluteSizeChanged = useAsyncOnAbsoluteSizeChanged(panel)

	return React.createElement(
		MenuContext.Provider,
		{ value = nestedMenuData },
		React.createElement(
			PopoverContent,
			{
				isOpen = props.isOpen,
				panel = panel,
			},
			React.createElement(View, {
				tag = "auto-xy",
				onAbsoluteSizeChanged = onAbsoluteSizeChanged,
				BorderColor3 = tokens.Color.Stroke.Default.Color3,
				BorderMode = Enum.BorderMode.Inset,
				BorderSizePixel = 2,
			}, props.children)
		)
	)
end

return Menu
