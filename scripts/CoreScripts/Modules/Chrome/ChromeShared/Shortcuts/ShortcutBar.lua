local Root = script:FindFirstAncestor("ChromeShared")

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local GamepadConnector = require(Root.Parent.Parent.TopBar.Components.GamepadConnector)

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Foundation = require(CorePackages.Packages.Foundation)
local ShortcutBar = UIBlox.App.Navigation.ShortcutBar
local Types = require(Root.Service.Types)
local Constants = require(Root.Unibar.Constants)
local ViewportUtil = require(Root.Service.ViewportUtil)
local useObservableValue = require(Root.Hooks.useObservableValue)
local useTokens = Foundation.Hooks.useTokens

local ChromeService = require(Root.Service)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagChromeUnbindShortcutBarOnHide = SharedFlags.FFlagChromeUnbindShortcutBarOnHide
local FFlagChromeShortcutBarInitHide = SharedFlags.FFlagChromeShortcutBarInitHide

function ChromeShortcutBar(props)
	local shortcuts, setShortcuts = React.useState({})
	local trimmedShortcuts, setTrimmedShortcuts = React.useState({})
	local showShortcutBar, setShowShortcutBar = React.useBinding(false)
	local designTokens = useTokens()

	local screenSize = useObservableValue(ViewportUtil.screenSize) :: Vector2
	local shortcutBarWidth = React.useRef(0)

	local function checkOverflow()
		if shortcutBarWidth.current > screenSize.X then
			local removeIndex = 1
			for i, s in shortcuts do
				local shortcut = s :: Types.ShortcutProps
				local index = i :: number
				if shortcut.displayPriority <= shortcuts[removeIndex].displayPriority then
					removeIndex = index
				end
			end

			local trimmedShortcuts = table.clone(shortcuts)
			table.remove(trimmedShortcuts, removeIndex)
			setTrimmedShortcuts(trimmedShortcuts)
		end
	end

	React.useEffect(function()
		setTrimmedShortcuts({})
		checkOverflow()
	end, { screenSize })

	React.useEffect(function()
		ChromeService:onShortcutBarChanged():connect(function()
			local s = ChromeService:getCurrentShortcuts()
			setShortcuts(s)
			setTrimmedShortcuts({})
		end)

		local showTopBar = GamepadConnector:getShowTopBar()
		local gamepadActive = GamepadConnector:getGamepadActive()

		if FFlagChromeUnbindShortcutBarOnHide then
			local function shouldHideShortcutBar()
				local shouldHide = not showTopBar:get() or not gamepadActive:get()
				ChromeService:setHideShortcutBar("TopBar", shouldHide)
			end
			if FFlagChromeShortcutBarInitHide then
				shouldHideShortcutBar()
			end

			showTopBar:connect(shouldHideShortcutBar)
			gamepadActive:connect(shouldHideShortcutBar)
		else
			local function shouldShowShortcutBar()
				local shouldShow = showTopBar:get() and gamepadActive:get()
				setShowShortcutBar(shouldShow)
			end

			showTopBar:connect(shouldShowShortcutBar)
			gamepadActive:connect(shouldShowShortcutBar)
		end
	end, {})

	local shortcutList = (if #trimmedShortcuts > 0 then trimmedShortcuts else shortcuts) :: { Types.ShortcutProps }
	local shortcutItems = {}
	for _, s in shortcutList do
		local shortcut = s :: Types.ShortcutProps
		if not shortcut.label then
			continue
		end
		local item = { icon = "", text = "" }
		if shortcut.icon then
			item.icon = shortcut.icon
		end
		item.text = shortcut.label

		table.insert(shortcutItems, item)
	end

	return ReactRoblox.createPortal({
		Name = React.createElement("ScreenGui", {
			Name = "ShortcutBar",
			DisplayOrder = Constants.SHORTCUTBAR_DISPLAYORDER,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
			Enabled = if FFlagChromeUnbindShortcutBarOnHide then nil else showShortcutBar,
		}, {
			React.createElement("Frame", {
				Name = "ShortcutBarWrapper",
				AutomaticSize = Enum.AutomaticSize.XY,
				Position = UDim2.new(0.5, 0, 1, if designTokens then -designTokens.Gap.Medium else 0),
				AnchorPoint = Vector2.new(0.5, 1),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				[React.Change.AbsoluteSize] = function(rbx)
					shortcutBarWidth.current = rbx.AbsoluteSize.X
					checkOverflow()
				end,
			}, {
				Layout = React.createElement("UIListLayout"),
				React.createElement(ShortcutBar, {
					-- ShortcutBar will not render if there are no items
					items = shortcutItems,
				}),
			}),
		}),
	}, CoreGui :: Instance)
end

return ChromeShortcutBar
