local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)
local ReactUtils = require(Packages.ReactUtils)

local Foundation = require(Packages.Foundation)
local View = Foundation.View
local Text = Foundation.Text
local PopoverSide = Foundation.Enums.PopoverSide
local PopoverAlign = Foundation.Enums.PopoverAlign

type PopoverAlign = Foundation.PopoverAlign
type PopoverSide = Foundation.PopoverSide

local useUniqueWidget = require(Main.Hooks.useUniqueWidget)

local Menu = require(Main.Components.Menu)
local PanelsContext = require(Main.Panels.PanelsContext)

local function MenuExample(props: { side: PopoverSide, align: PopoverAlign, children: React.ReactNode })
	local anchor = useUniqueWidget()
	local isOpenState = ReactUtils.useToggleState(false)

	return React.createElement(
		React.Fragment,
		nil,
		React.createElement(View, {
			tag = "auto-xy bg-system-emphasis padding-medium",
			ref = anchor.ref,
			onActivated = isOpenState.toggle,
		}, React.createElement(Text, { tag = "auto-xy", Text = "Click me to see the menu" })),
		React.createElement(Menu, {
			isOpen = isOpenState.enabled,
			onClose = isOpenState.disable,
			anchorUri = anchor.uri,
			side = { position = props.side, offset = 8 },
			align = props.align,
		}, props.children)
	)
end

local function ElementWithSubmenu(props)
	local anchor = useUniqueWidget()
	local isOpenState = ReactUtils.useToggleState(false)

	return React.createElement(
		React.Fragment,
		nil,
		React.createElement(View, {
			tag = "size-full-0 auto-y padding-medium bg-surface-300",
			onActivated = isOpenState.toggle,
			ref = anchor.ref,
		}, React.createElement(Text, { tag = "auto-xy", Text = props.text })),
		React.createElement(
			Menu,
			{
				isOpen = isOpenState.enabled,
				onClose = isOpenState.disable,
				anchorUri = anchor.uri,
				side = { position = PopoverSide.Right, offset = 8 },
				align = PopoverAlign.Start,
			},
			React.createElement(
				View,
				{ tag = "auto-xy col gap-small bg-surface-300" },
				React.createElement(
					View,
					{ tag = "size-full-0 auto-y padding-medium", onActivated = function() end },
					React.createElement(Text, { tag = "auto-xy", Text = "A" })
				),
				React.createElement(
					View,
					{ tag = "size-full-0 auto-y padding-medium", onActivated = function() end },
					React.createElement(Text, { tag = "auto-xy", Text = "B" })
				),
				React.createElement(ElementWithSubmenu, { text = "I have submenu!" })
			)
		)
	)
end

local function SubMenuExample(props: { side: PopoverSide, align: PopoverAlign })
	local anchor = useUniqueWidget()
	local isOpenState = ReactUtils.useToggleState(false)

	return React.createElement(
		React.Fragment,
		nil,
		React.createElement(View, {
			tag = "auto-xy bg-system-emphasis padding-medium",
			ref = anchor.ref,
			onActivated = isOpenState.toggle,
		}, React.createElement(Text, { tag = "auto-xy", Text = "Click me to see the menu" })),
		React.createElement(
			Menu,
			{
				isOpen = isOpenState.enabled,
				onClose = isOpenState.disable,
				anchorUri = anchor.uri,
				side = { position = props.side, offset = 8 },
				align = props.align,
			},
			React.createElement(
				View,
				{ tag = "auto-xy col gap-small bg-surface-300" },
				React.createElement(
					View,
					{ tag = "size-full-0 auto-y padding-medium", onActivated = function() end },
					React.createElement(Text, { tag = "auto-xy", Text = "A" })
				),
				React.createElement(
					View,
					{ tag = "size-full-0 auto-y padding-medium", onActivated = function() end },
					React.createElement(Text, { tag = "auto-xy", Text = "B" })
				),
				React.createElement(
					View,
					{ tag = "size-full-0 auto-y padding-medium", onActivated = function() end },
					React.createElement(Text, { tag = "auto-xy", Text = "C" })
				),
				React.createElement(
					ElementWithSubmenu,
					{ text = "I have submenu!", side = { position = props.side, offset = 8 }, align = props.align }
				)
			)
		)
	)
end

local function Dropdown()
	local anchor = useUniqueWidget()
	local isOpenState = ReactUtils.useToggleState(false)
	local selectedValue, setSelectedValue = React.useState(nil :: string?)

	local selectAndClose = React.useCallback(function(value: string)
		setSelectedValue(value)
		isOpenState.disable()
	end, { setSelectedValue :: unknown, isOpenState.disable })

	return React.createElement(
		React.Fragment,
		nil,
		React.createElement(View, {
			tag = {
				["auto-y padding-medium radius-medium"] = true,
				["stroke-contrast"] = not isOpenState.enabled,
				["stroke-system-emphasis"] = isOpenState.enabled,
			},
			Size = UDim2.fromOffset(320, 0),
			ref = anchor.ref,
			onActivated = isOpenState.toggle,
		}, React.createElement(Text, { tag = "size-full-0 auto-y", Text = selectedValue or "Select a value" })),
		React.createElement(
			Menu,
			{
				isOpen = isOpenState.enabled,
				onClose = isOpenState.disable,
				anchorUri = anchor.uri,
				side = { position = PopoverSide.Bottom, offset = 8 },
			},
			React.createElement(
				View,
				{ tag = "auto-y col gap-small bg-surface-300", Size = UDim2.fromOffset(320, 0) },
				React.createElement(View, {
					tag = "size-full-0 auto-y padding-medium",
					onActivated = function()
						selectAndClose("A")
					end,
				}, React.createElement(Text, { tag = "auto-xy", Text = "A" })),
				React.createElement(View, {
					tag = "size-full-0 auto-y padding-medium",
					onActivated = function()
						selectAndClose("B")
					end,
				}, React.createElement(Text, { tag = "auto-xy", Text = "B" })),
				React.createElement(View, {
					tag = "size-full-0 auto-y padding-medium",
					onActivated = function()
						selectAndClose("C")
					end,
				}, React.createElement(Text, { tag = "auto-xy", Text = "C" }))
			)
		)
	)
end

local function ContextMenuExample(props: { side: PopoverSide, align: PopoverAlign })
	local anchor = useUniqueWidget()
	local menuPosition, setMenuPosition: (value: Vector2?) -> () = React.useState(nil :: Vector2?)

	local onClose = React.useCallback(function()
		setMenuPosition(nil)
	end, { setMenuPosition })

	local isOpen = menuPosition ~= nil

	React.useEffect(function()
		if not anchor.ref.current then
			return
		end

		-- Key 'InputBegan' not found in class 'GuiBase2d', but it's a story, type cast won't kill anyone.
		local mouseButtonRightConnection = (anchor.ref.current :: any).InputBegan:Connect(function(input: InputObject)
			if input.UserInputType == Enum.UserInputType.MouseButton2 then
				setMenuPosition(
					Vector2.new(
						input.Position.X - anchor.ref.current.AbsolutePosition.X,
						input.Position.Y - anchor.ref.current.AbsolutePosition.Y
					)
				)
			end
		end)

		return function()
			mouseButtonRightConnection:Disconnect()
		end
	end, { anchor.ref })

	return React.createElement(
		React.Fragment,
		nil,
		React.createElement(View, {
			tag = {
				["auto-y padding-medium radius-medium"] = true,
				["stroke-contrast"] = not isOpen,
				["stroke-system-emphasis"] = isOpen,
			},
			Size = UDim2.fromOffset(320, 0),
			ref = anchor.ref,
		}, React.createElement(Text, { tag = "size-full-0 auto-y", Text = "Right-click to open the context menu" })),
		React.createElement(
			Menu,
			{
				isOpen = isOpen,
				onClose = onClose,
				anchorUri = anchor.uri,
				side = { position = props.side, offset = 8 },
				position = menuPosition,
			},
			React.createElement(
				View,
				{ tag = "auto-y col gap-small bg-surface-300", Size = UDim2.fromOffset(320, 0) },
				React.createElement(View, {
					tag = "size-full-0 auto-y padding-medium",
					onActivated = function()
						onClose()
					end,
				}, React.createElement(Text, { tag = "auto-xy", Text = "A" })),
				React.createElement(View, {
					tag = "size-full-0 auto-y padding-medium",
					onActivated = function()
						onClose()
					end,
				}, React.createElement(Text, { tag = "auto-xy", Text = "B" })),
				React.createElement(View, {
					tag = "size-full-0 auto-y padding-medium",
					onActivated = function()
						onClose()
					end,
				}, React.createElement(Text, { tag = "auto-xy", Text = "C" }))
			)
		)
	)
end

return {
	summary = "Menu",
	stories = {
		Basic = {
			name = "Basic",
			story = function(props)
				return React.createElement(
					PanelsContext.Provider,
					{ uriScope = "BasicStory" },
					React.createElement(
						MenuExample,
						props.controls,
						React.createElement(Text, {
							tag = "size-2000-2000 bg-system-default",
							Text = "text",
						})
					)
				)
			end,
		},
		Submenu = {
			name = "Submenu",
			story = function(props)
				return React.createElement(
					PanelsContext.Provider,
					{ uriScope = "SubmenuStory" },
					React.createElement(SubMenuExample, props.controls)
				)
			end,
		},
		Dropdown = {
			name = "Dropdown",
			story = function(props)
				return React.createElement(
					PanelsContext.Provider,
					{ uriScope = "DropdownStory" },
					React.createElement(Dropdown)
				)
			end,
		},
		ContextMenu = {
			name = "ContextMenu",
			story = function(props)
				return React.createElement(
					PanelsContext.Provider,
					{ uriScope = "ContextMenuStory" },
					React.createElement(ContextMenuExample, props.controls)
				)
			end,
		},
	},
	controls = {
		side = Dash.values(PopoverSide),
		align = Dash.values(PopoverAlign),
	},
}
