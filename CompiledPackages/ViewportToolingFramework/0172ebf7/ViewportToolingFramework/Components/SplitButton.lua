--!strict
local UserInputService = game:GetService("UserInputService")

local ViewportToolingFramework = script:FindFirstAncestor("ViewportToolingFramework")

local Icon = require(ViewportToolingFramework.Components.Icon)
local Framework = require(ViewportToolingFramework.Parent.Framework)
local React = require(ViewportToolingFramework.Parent.React)
local ReactRoblox = require(ViewportToolingFramework.Parent.ReactRoblox)
local ToolbarBaseContext = require(ViewportToolingFramework.Util.ToolbarBaseContext)
local Tooltip = require(ViewportToolingFramework.Components.Tooltip)
local Types = require(ViewportToolingFramework.Types)
local useStyleSheet = require(ViewportToolingFramework.Hooks.useStyleSheet)
local useToggleState = require(ViewportToolingFramework.Hooks.useToggleState)

local Focus = (Framework.ContextServices :: any).Focus

-- SBT-2914: createNextOrder
local LayoutOrderIterator: any = Framework.Util.LayoutOrderIterator

local ARROW_WIDTH = 6
local FLYOUT_DISTANCE = 10
local SECONDS_FOR_LONG_PRESS = 0.4
local X_PADS = 5

local function positionInObject(position: Vector3, guiObject: GuiObject): boolean
	return position.X >= guiObject.AbsolutePosition.X
		and position.X <= guiObject.AbsolutePosition.X + guiObject.AbsoluteSize.X
		and position.Y >= guiObject.AbsolutePosition.Y
		and position.Y <= guiObject.AbsolutePosition.Y + guiObject.AbsoluteSize.Y
end

-- We need to handle the mouse cursor stuff especially in here because if the options are of different sizes,
-- they will also have different hitboxes.
local function FlyoutMenu(props: {
	Options: { Types.SplitButtonChoice },

	OnClickOption: (index: number) -> (),

	Close: () -> (),
})
	local focus: GuiObject = Focus:use():get()
	local toolbarContext = React.useContext(ToolbarBaseContext)
	local styleSheet = useStyleSheet()

	local flyoutPosition: Vector2?, setFlyoutPosition = React.useState(nil :: Vector2?)

	local calculateFlyoutPosition = React.useCallback(function(ref: GuiObject)
		if toolbarContext.Direction == "Horizontal" then
			setFlyoutPosition(
				(ref.AbsolutePosition + Vector2.new(0, ref.AbsoluteSize.Y + FLYOUT_DISTANCE)) - focus.AbsolutePosition
			)
		elseif toolbarContext.Direction == "Vertical" then
			setFlyoutPosition(
				(ref.AbsolutePosition + Vector2.new(ref.AbsoluteSize.X + FLYOUT_DISTANCE, 0)) - focus.AbsolutePosition
			)
		else
			local _: never = toolbarContext.Direction
		end
	end, { focus, toolbarContext.Direction } :: { unknown })

	local layoutOrderIterator = LayoutOrderIterator.new()

	local contentsRef = React.useRef(nil :: GuiObject?)

	-- SBT-2914: Replace with useEventConnection
	React.useEffect(function()
		local inputBeganConnection = UserInputService.InputBegan:Connect(function(inputObject)
			if inputObject.UserInputType ~= Enum.UserInputType.MouseButton1 then
				return
			end

			local contents = contentsRef.current
			if contents == nil then
				return
			end
			assert(contents ~= nil, "Luau")

			if positionInObject(inputObject.Position, contents) then
				return
			end

			props.Close()
		end)

		return function()
			inputBeganConnection:Disconnect()
		end
	end, { props.Close })

	local options: { [string]: React.Node } = {}

	local optionRefsRef = React.useRef({} :: { [number]: GuiObject? })
	assert(optionRefsRef.current ~= nil, "Luau")

	for index, option in props.Options do
		options[`Option{index}`] = React.createElement("Frame", {
			LayoutOrder = index,

			ref = function(instance: GuiObject)
				optionRefsRef.current[index] = instance

				return function()
					optionRefsRef.current[index] = nil
				end
			end,

			[React.Tag] = "X-Pad X-RowS X-Middle X-Fit X-Corner" :: any,
		}, {
			Icon = React.createElement("Frame", {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Size = UDim2.fromOffset(24, 24),

				[React.Tag] = "VPF-X-Square",
			}, {
				Icon = React.createElement(Icon, {
					Icon = option.Icon,
				}),
			}),

			Label = React.createElement("TextLabel", {
				Font = Enum.Font.BuilderSans,
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Text = option.Text,

				[React.Tag] = "X-Fit",
			}),
		})
	end

	local hoveredOptionIndex: number?, setHoveredOptionIndex = React.useState(nil :: number?)

	local function getOptionIndexAtPosition(position: Vector3): number?
		for index, guiObject in optionRefsRef.current do
			assert(guiObject ~= nil, "Luau")
			if not positionInObject(position, guiObject) then
				continue
			end

			return index
		end

		return nil
	end

	-- SBT-2914: useEventConnection
	React.useEffect(function()
		local inputChangedConnection = UserInputService.InputChanged:Connect(function(inputObject)
			if inputObject.UserInputType ~= Enum.UserInputType.MouseMovement then
				return
			end

			setHoveredOptionIndex(getOptionIndexAtPosition(inputObject.Position))
		end)

		return function()
			inputChangedConnection:Disconnect()
		end
	end, {})

	-- SBT-2914: useRefToState
	local onClickOptionRef = React.useRef(props.OnClickOption)
	onClickOptionRef.current = props.OnClickOption
	assert(onClickOptionRef.current ~= nil, "Luau")

	React.useEffect(function(): (() -> ())?
		local startedClickAt: number? = nil
		local cancelNextEnded = false

		-- Multiple checks here to make sure you start and end a click on the same index
		local inputBeganConnection = UserInputService.InputBegan:Connect(function(inputObject)
			if inputObject.UserInputType ~= Enum.UserInputType.MouseButton1 then
				return
			end

			startedClickAt = getOptionIndexAtPosition(inputObject.Position)
		end)

		local inputChangedConnection = UserInputService.InputChanged:Connect(function(inputObject)
			if inputObject.UserInputType ~= Enum.UserInputType.MouseMovement then
				return
			end

			if startedClickAt == nil then
				return
			end

			local newIndex = getOptionIndexAtPosition(inputObject.Position)
			if newIndex ~= startedClickAt then
				cancelNextEnded = true
			end
		end)

		local inputEndedConnection = UserInputService.InputEnded:Connect(function(inputObject)
			if inputObject.UserInputType ~= Enum.UserInputType.MouseButton1 then
				return
			end

			if startedClickAt == nil then
				return
			end
			assert(startedClickAt ~= nil, "Luau")

			if cancelNextEnded then
				cancelNextEnded = false
				return
			end

			onClickOptionRef.current(startedClickAt)
			props.Close()
		end)

		return function()
			inputBeganConnection:Disconnect()
			inputChangedConnection:Disconnect()
			inputEndedConnection:Disconnect()
		end
	end, {})

	local hoveredOptionObject = hoveredOptionIndex and optionRefsRef.current[hoveredOptionIndex]

	local zIndexIterator = LayoutOrderIterator.new()

	local referenceRef = React.useRef(nil :: GuiObject?)
	React.useEffect(function()
		assert(referenceRef.current ~= nil, "Reference must have been mounted")
		calculateFlyoutPosition(referenceRef.current)
	end, {})

	return React.createElement(React.Fragment, {}, {
		Reference = React.createElement("Frame", {
			[React.Change.AbsolutePosition] = calculateFlyoutPosition :: any,
			[React.Change.AbsoluteSize] = calculateFlyoutPosition :: any,

			[React.Tag] = "X-Fill",

			ref = referenceRef,
		}),

		FlyoutMenu = flyoutPosition and ReactRoblox.createPortal(
			React.createElement("Folder", {}, {
				StyleLink = React.createElement("StyleLink", {
					StyleSheet = styleSheet,
				}),

				-- Sink clicks. Clicking connections handled above
				Contents = React.createElement("TextButton", {
					BackgroundTransparency = 0,
					Position = UDim2.fromOffset(flyoutPosition.X, flyoutPosition.Y),
					ZIndex = zIndexIterator:getNextOrder(),

					[React.Tag] = "X-Fit X-Stroke X-Corner VPF-X-MainBg",

					ref = contentsRef,
				}, {
					-- No great way to do automatic size on sub-contents
					HoverBackground = hoveredOptionObject and contentsRef.current and React.createElement("Frame", {
						Position = UDim2.fromOffset(
							0,
							hoveredOptionObject.AbsolutePosition.Y - contentsRef.current.AbsolutePosition.Y
						),
						Size = UDim2.new(1, 0, 0, hoveredOptionObject.AbsoluteSize.Y),
						ZIndex = zIndexIterator:getNextOrder(),

						[React.Tag] = "X-Corner VPF-X-ContrastBg",
					}),

					Options = React.createElement("Frame", {
						ZIndex = zIndexIterator:getNextOrder(),

						[React.Tag] = "X-Fit X-Column",
					}, options),
				}),
			}),
			focus
		),
	})
end

local function SplitButton(props: {
	Item: Types.SplitButton,
	NextOrder: () -> number,
})
	local layoutOrder = React.useMemo(props.NextOrder, { props.NextOrder })

	local currentOptionIndex, setCurrentOptionIndex = React.useState(1)

	local currentOption = props.Item.Options[currentOptionIndex]
	if currentOption == nil then
		error(`Couldn't find option at index {currentOptionIndex}. Are you dynamically changing the options?`)
	end

	-- SBT-2914: useRefToState
	local currentOptionRef = React.useRef(currentOption)
	currentOptionRef.current = currentOption
	assert(currentOptionRef.current ~= nil, "Luau")

	local flyoutMenuOpen = useToggleState()

	local onInputBegan = React.useCallback(function(instance: GuiObject, inputObject: InputObject)
		if inputObject.UserInputType ~= Enum.UserInputType.MouseButton1 then
			return
		end

		local distanceFromRight = (instance.AbsolutePosition.X + instance.AbsoluteSize.X) - inputObject.Position.X

		-- Extra for X-PadS
		if distanceFromRight <= ARROW_WIDTH + X_PADS then
			flyoutMenuOpen.toggle()
			return
		end

		local canPerformPrimaryAction = not flyoutMenuOpen.enabled

		flyoutMenuOpen.disable()

		local longPressTask = task.delay(SECONDS_FOR_LONG_PRESS, function()
			canPerformPrimaryAction = false
			flyoutMenuOpen.enable()
		end)

		inputObject:GetPropertyChangedSignal("UserInputState"):Once(function()
			local inRange = positionInObject(inputObject.Position, instance)

			task.cancel(longPressTask)

			if inRange and canPerformPrimaryAction then
				currentOptionRef.current.OnClick()
			end
		end)
	end, { flyoutMenuOpen.enabled } :: { unknown })

	local layoutOrderIterator = LayoutOrderIterator.new()

	return React.createElement("TextButton", {
		AutomaticSize = Enum.AutomaticSize.X,
		LayoutOrder = layoutOrder,

		[React.Event.InputBegan] = onInputBegan :: unknown,

		[React.Tag] = Framework.Styling.joinTags(
			"VPF-Button",
			if flyoutMenuOpen.enabled then "VPF-Button--Selected" else "VPF-Button--Unselected"
		),
	}, {
		Tooltip = not flyoutMenuOpen.enabled and React.createElement(Tooltip, {
			Title = currentOption.Text,
			Description = currentOption.TooltipDescription,
		}),

		FlyoutMenu = flyoutMenuOpen.enabled and React.createElement(FlyoutMenu, {
			Options = props.Item.Options,
			OnClickOption = function(index)
				setCurrentOptionIndex(index)

				local newOption = props.Item.Options[index]
				if newOption.OnSelect ~= nil then
					newOption.OnSelect()
				end
			end,
			Close = flyoutMenuOpen.disable,
		}),

		Inner = React.createElement("Frame", {
			[React.Tag] = "X-Fill X-PadS X-Row",
		}, {
			Icon = React.createElement(Icon, {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Icon = currentOption.Icon,
			}),

			Arrow = React.createElement("Frame", {
				LayoutOrder = layoutOrderIterator:getNextOrder(),
				Size = UDim2.new(0, ARROW_WIDTH, 1, 0),
			}, {
				ArrowImage = React.createElement("ImageLabel", {
					AnchorPoint = Vector2.new(0.5, 1),
					Image = "rbxasset://studio_svg_textures/Lua/ViewportToolingFramework/Light/Standard/flyoutArrow.png",
					Position = UDim2.fromScale(0.5, 1),
					Size = UDim2.fromOffset(4, 4),

					[React.Tag] = "VPF-X-Primary",
				}),
			}),
		}),
	})
end

return SplitButton
