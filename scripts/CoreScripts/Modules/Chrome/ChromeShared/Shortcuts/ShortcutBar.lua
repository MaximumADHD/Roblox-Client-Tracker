local Root = script:FindFirstAncestor("ChromeShared")

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local GamepadConnector = require(Root.Parent.Parent.TopBar.Components.GamepadConnector)

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Foundation = require(CorePackages.Packages.Foundation)
local ShortcutBar = UIBlox.App.Navigation.ShortcutBar
local ChromePackage = require(CorePackages.Workspace.Packages.Chrome)
local Constants = require(Root.Unibar.Constants)
local ViewportUtil = require(Root.Service.ViewportUtil)
local useObservableValue = require(Root.Hooks.useObservableValue)
local useTokens = Foundation.Hooks.useTokens

local ChromeService = require(Root.Service)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls
local isSpatial = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial
local FFlagDisableGamepadConnectorInVR = ChromePackage.Flags.FFlagDisableGamepadConnectorInVR
local FFlagGamepadIconSupportCheck = SharedFlags.FFlagGamepadIconSupportCheck

type ShortcutProps = ChromePackage.ShortcutProps

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
				local shortcut = s :: ShortcutProps
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
		local function updateShortcuts()
			if FFlagGamepadIconSupportCheck and not GamepadConnector:getGamepadActive():get() then
				return
			end
			local s = ChromeService:getCurrentShortcuts()
			setShortcuts(s)
			setTrimmedShortcuts({})
		end

		ChromeService:onShortcutBarChanged():connect(updateShortcuts)
		if FFlagGamepadIconSupportCheck then
			UserInputService.LastInputTypeChanged:Connect(updateShortcuts)
		end

		if not FFlagDisableGamepadConnectorInVR or not isSpatial() then
			local showTopBar = GamepadConnector:getShowTopBar()
			local gamepadActive = GamepadConnector:getGamepadActive()

			if FFlagEnableConsoleExpControls then
				local function shouldHideShortcutBar()
					local shouldHide = not showTopBar:get() or not gamepadActive:get()
					ChromeService:setHideShortcutBar("TopBar", shouldHide)
				end
				shouldHideShortcutBar()
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
		end
	end, {})

	local shortcutList = (if #trimmedShortcuts > 0 then trimmedShortcuts else shortcuts) :: { ShortcutProps }
	local shortcutItems = {}
	for _, s in shortcutList do
		local shortcut = s :: ShortcutProps
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
			Enabled = if FFlagEnableConsoleExpControls then nil else showShortcutBar,
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
