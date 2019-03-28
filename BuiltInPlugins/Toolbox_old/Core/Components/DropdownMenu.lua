--[[
	A drop down menu

	Props:
		UDim2 Position
		UDim2 Size
		number LayoutOrder = 0
		number selectedDropDownIndex
		number visibleDropDownCount = 5
		number rowHeight = 24
		[string] items

		callback onItemClicked(number index)
]]

local Plugin = script.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Constants = require(Plugin.Core.Util.Constants)
local ContextGetter = require(Plugin.Core.Util.ContextGetter)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local DebugFlags = require(Plugin.Core.Util.DebugFlags)
local Images = require(Plugin.Core.Util.Images)

local getModal = ContextGetter.getModal
local withModal = ContextHelper.withModal
local withTheme = ContextHelper.withTheme

local StyledScrollingFrame = require(Plugin.Core.Components.StyledScrollingFrame)
local RoundButton = require(Plugin.Core.Components.RoundButton)
local RoundFrame = require(Plugin.Core.Components.RoundFrame)

local DropdownMenu = Roact.PureComponent:extend("DropdownMenu")

function DropdownMenu:init(props)
	self.state = {
		isShowingDropdown = false,
		showDropDownButtonHovered = false,
		dropdownHoveredItemIndex = 0
	}

	self.currentSelectionRef = Roact.createRef()

	self.openDropdown = function()
		self:setState(function(prevState, props)
			getModal(self).onDropdownToggled(true)

			return {
				isShowingDropdown = true,
			}
		end)
	end

	self.showDropDownButtonEntered = function()
		self:setState({
			showDropDownButtonHovered = true,
		})
	end

	self.showDropDownButtonLeft = function()
		self:setState({
			showDropDownButtonHovered = false,
		})
	end

	self.closeDropdown = function()
		getModal(self).onDropdownToggled(false)

		self:setState({
			isShowingDropdown = false,
		})
	end

	self.focusLost = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.Focus then
			self.closeDropdown()
		end
	end
end

function DropdownMenu:render()
	return withTheme(function(theme)
		return withModal(function(modalTarget)
			local props = self.props
			local state = self.state

			local key = props.key or nil

			local position = props.Position
			local size = props.Size
			local layoutOrder = props.LayoutOrder or 0

			local items = props.items or {}
			local length = #items
			local visibleCount = math.min(props.visibleDropDownCount or 5, length)
			local rowHeight = props.rowHeight or 24
			local selectedDropDownIndex = props.selectedDropDownIndex or 1

			if selectedDropDownIndex > #items then
				selectedDropDownIndex = 0
			end

			local onItemClicked = props.onItemClicked
			local dropdownHoveredItemIndex = state.dropdownHoveredItemIndex
			local showDropDownButtonHovered = state.showDropDownButtonHovered

			local currentSelection = self.currentSelectionRef and self.currentSelectionRef.current

			local indexInRange = selectedDropDownIndex > 0 and selectedDropDownIndex <= #items

			local currentSelectionText = "Choose one"
			if indexInRange and items[selectedDropDownIndex] and items[selectedDropDownIndex].name then
				currentSelectionText = items[selectedDropDownIndex].name
			end

			local selectedBarWidth = Constants.DROPDOWN_SELECTED_BAR
			local textInset = selectedBarWidth + Constants.DROPDOWN_TEXT_INSET
			local dropdownIconSize = Constants.DROPDOWN_ICON_SIZE
			local dropdownIconFromRight = Constants.DROPDOWN_ICON_FROM_RIGHT

			local isShowingDropdown = state.isShowingDropdown
			local hoverOrShow = isShowingDropdown or showDropDownButtonHovered

			local isDarkerTheme = theme.isDarkerTheme
			local dropdownTheme = theme.dropdownMenu
			local currentSelectionTheme = dropdownTheme.currentSelection
			local itemTheme = dropdownTheme.item

			-- Show the current selection object as blue when hovered or clicked, but only in a lighter theme
			local showCurrentSelectionActive = hoverOrShow

			local currentSelectionBorderColor = showCurrentSelectionActive and currentSelectionTheme.borderSelectedColor
				or currentSelectionTheme.borderColor
			local currentSelectionBackgroundColor = showCurrentSelectionActive and currentSelectionTheme.backgroundSelectedColor
				or currentSelectionTheme.backgroundColor
			local currentSelectionTextColor = showCurrentSelectionActive and currentSelectionTheme.textSelectedColor
				or currentSelectionTheme.textColor
			local dropdownIconColor = (isDarkerTheme or hoverOrShow) and currentSelectionTheme.iconSelectedColor
				or currentSelectionTheme.iconColor

			local dropdownFrame = {}
			if isShowingDropdown and currentSelection then
				local scrollButtons = {
					UIListLayout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						SortOrder = Enum.SortOrder.LayoutOrder
					})
				}

				for index, data in ipairs(items) do
					if not data.name and DebugFlags.shouldDebugWarnings() then
						warn(("Index %d in DropdownMenu doesn't have a 'name' member"):format(index))
					end
					-- let if error if we got incorrect data
					local itemName = data.name
					local isHovered = dropdownHoveredItemIndex == index

					local itemKey = (key and data[key]) or itemName

					scrollButtons[itemKey or itemName] = Roact.createElement("ImageButton",{
						Size = UDim2.new(1, -Constants.SCROLLBAR_BACKGROUND_THICKNESS + Constants.SCROLLBAR_PADDING, 0, rowHeight),
						BackgroundColor3 = isHovered and itemTheme.backgroundSelectedColor or itemTheme.backgroundColor,
						BorderSizePixel = 0,
						LayoutOrder = index,
						ZIndex = 2,

						AutoButtonColor = false,

						[Roact.Event.MouseButton1Down] = function(rbx, x, y)
							if onItemClicked then
								onItemClicked(index)
							end
							self.closeDropdown()
						end,

						[Roact.Event.InputEnded] = self.focusLost,

						[Roact.Event.MouseEnter] = function(rbx, x, y)
							self:setState({
								dropdownHoveredItemIndex = index,
							})
						end,

						[Roact.Event.MouseLeave] = function(rbx, x, y)
							if self.state.dropdownHoveredItemIndex == index then
								self:setState({
									dropdownHoveredItemIndex = 0,
								})
							end
						end,
					}, {
						SelectedBar = not isDarkerTheme and Roact.createElement("Frame", {
							Size = UDim2.new(0, selectedBarWidth, 1, 0),
							BorderSizePixel = 0,
							BackgroundColor3 = dropdownTheme.item.selectedBarColor,
							Visible = isHovered,
							ZIndex = 2,
						}),

						TextLabel = Roact.createElement("TextLabel", {
							Position = UDim2.new(0, textInset, 0, 0),
							Size = UDim2.new(1, -textInset, 1, 0),
							BackgroundTransparency = 1,
							Text = itemName,
							TextColor3 = itemTheme.textColor,
							Font = Constants.FONT,
							TextSize = Constants.FONT_SIZE_MEDIUM,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextYAlignment = Enum.TextYAlignment.Center,
							TextTruncate = Enum.TextTruncate.AtEnd,
							ClipsDescendants = true,
							ZIndex = 3,
						})
					})
				end

				local currentSelectionSize = currentSelection.AbsoluteSize
				local currentSelectionTopLeft = currentSelection.AbsolutePosition
				local offsetFromButton = 2

				local width = currentSelectionSize.x
				local height = visibleCount * rowHeight
				local top = currentSelectionTopLeft.y + currentSelectionSize.y + offsetFromButton
				local left = currentSelectionTopLeft.x

				-- Put the scrolling frame behind the background frame, but set
				-- the background frame to be transparent. This way we see the
				-- border on top of the scrolling frame, but not the background.
				-- If the scrolling frame was a child of the rounded frame's
				-- border then it gets rendered on top of the border. This works
				-- ok for the elements in the dropdown as you can set their
				-- background to transparent, but it doesn't work for background
				-- of the scrollbar

				dropdownFrame.StyledScrollingFrame = Roact.createElement(StyledScrollingFrame, {
					Position = UDim2.new(0, left, 0, top),
					Size = UDim2.new(0, width, 0, height),
					CanvasSize = UDim2.new(0, 0, 0, length * rowHeight),
					ZIndex = 1,
				}, scrollButtons)

				dropdownFrame.DropDownContainer = Roact.createElement(RoundFrame, {
					Position = UDim2.new(0, left, 0, top),
					Size = UDim2.new(0, width, 0, height),
					BackgroundTransparency = 1,
					ZIndex = 2,
					BorderColor3 = dropdownTheme.dropdownFrame.borderColor,
				})
			end

			return Roact.createElement("Frame", {
				Position = position,
				Size = size,
				BackgroundTransparency = 1,
				LayoutOrder = layoutOrder
			}, {
				CurrentSelection = Roact.createElement(RoundButton, {
					Position = UDim2.new(0, -1, 0, -1),
					Size = UDim2.new(1, 2, 1, 2),

					BackgroundColor3 = currentSelectionBackgroundColor,
					BorderColor3 = currentSelectionBorderColor,

					[Roact.Ref] = self.currentSelectionRef,

					[Roact.Event.MouseButton1Down] = self.openDropdown,
					[Roact.Event.MouseEnter] = self.showDropDownButtonEntered,
					[Roact.Event.MouseLeave] = self.showDropDownButtonLeft,
					[Roact.Event.InputEnded] = self.focusLost,
				}, {
					CurrentSelectionLabel = Roact.createElement("TextLabel", {
						Position = UDim2.new(0, textInset, 0, 0),
						Size = UDim2.new(1, -(textInset + dropdownIconSize + dropdownIconFromRight), 1, 0),
						BackgroundTransparency = 1,
						TextColor3 = currentSelectionTextColor,
						Text = currentSelectionText,
						Font = Constants.FONT,
						TextSize = Constants.FONT_SIZE_MEDIUM,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Center,
						ClipsDescendants = true,
						TextTruncate = Enum.TextTruncate.AtEnd,
					}),

					DropDownIcon = Roact.createElement("ImageLabel", {
						AnchorPoint = Vector2.new(1, 0.5),
						Size = UDim2.new(0, dropdownIconSize, 0, dropdownIconSize),
						Position = UDim2.new(1, -dropdownIconFromRight, 0.5, 0),
						Image = Images.ARROW_DOWN_ICON,
						ImageColor3 = dropdownIconColor,
						BackgroundTransparency = 1,
					}),
				}),

				Portal = isShowingDropdown and Roact.createElement(Roact.Portal, {
					target = modalTarget,
				}, {
					-- Consume all clicks outside the dropdown to close it when it "loses focus"
					ClickEventDetectFrame = Roact.createElement("ImageButton", {
						ZIndex = 10,
						Position = UDim2.new(0, 0, 0, 0),
						Size = UDim2.new(1, 0, 1, 0),
						BackgroundTransparency = 1,
						AutoButtonColor = false,

						[Roact.Event.MouseButton1Down] = self.closeDropdown,
					}, {
						-- Also block all scrolling events going through
						ScrollBlocker = Roact.createElement("ScrollingFrame", {
							Size = UDim2.new(1, 0, 1, 0),
							-- We need to have ScrollingEnabled = true for this frame for it to block
							-- But we don't want it to actually scroll, so its canvas must be same size as the frame
							ScrollingEnabled = true,
							CanvasSize = UDim2.new(1, 0, 1, 0),
							BackgroundTransparency = 1,
							BorderSizePixel = 0,
							ScrollBarThickness = 0,
						}, dropdownFrame)
					} or dropdownFrame)
				})
			})
		end)
	end)
end

return DropdownMenu
