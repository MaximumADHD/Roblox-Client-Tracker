local AccordionRoot = script.Parent
local AppRoot = AccordionRoot.Parent
local UIBloxRoot = AppRoot.Parent
local Packages = UIBloxRoot.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local SpringAnimatedItem = require(UIBloxRoot.Utility.SpringAnimatedItem)

local ITEM_PADDING = 10
local ITEM_WIDTH_SHRINK_STEP = 20 -- How much each item shrinks below card above it
local COMPACT_VIEW_PLACEHOLDER_HEIGHT = 10
local PRESSED_SCALE = 0.9

local ANIMATION_SPRING_SETTINGS = {
	dampingRatio = 1,
	frequency = 3.5,
}

local AccordionView = Roact.PureComponent:extend("AccordionView")

AccordionView.defaultProps = {
	maxItemsInCompactView = 3,
}

local validateProps = t.strictInterface({
	items = t.table,
	itemWidth = t.number,
	itemHeight = t.number,
	renderItem = t.callback,

	placeholderColor = t.Color3,
	placeholderBaseTransparency = t.number,

	collapseButtonSize = t.number,
	renderCollapseButton = t.callback,

	LayoutOrder = t.optional(t.integer),
	maxItemsInCompactView = t.numberPositive,
})

function AccordionView:init()
	self.state = {
		expanded = false,
		isExpandButtonPressed = false,
	}

	self.onExpandButtonActivated = function()
		self:setState({
			expanded = true,
			isExpandButtonPressed = false,
		})
	end

	self.onCollapseButtonActivated = function()
		self:setState({
			expanded = false,
		})
	end

	self.onExpandButtonInputBegan = function(_, inputObject)
		if inputObject.UserInputState == Enum.UserInputState.Begin and
			(inputObject.UserInputType == Enum.UserInputType.Touch or
			inputObject.UserInputType == Enum.UserInputType.MouseButton1) then
			self:setState({
				isExpandButtonPressed = true,
			})
		end
	end

	self.onExpandButtonInputEnded = function()
		if self.state.isExpandButtonPressed then
			self:setState({
				isExpandButtonPressed = false,
			})
		end
	end

	self.rootFrameRef = Roact.createRef()

	self.onListLayoutAbsoluteContentSizeChanged = function(rbx)
		if self.rootFrameRef.current then
			local itemWidth = self.props.itemWidth
			local minimumHeight = self:getCompactTotalHeight()

			self.rootFrameRef.current.Size = UDim2.new(0, itemWidth,
				0, math.max(rbx.AbsoluteContentSize.Y, minimumHeight))
		end
	end
end

function AccordionView:getCompactTotalHeight()
	local items = self.props.items
	local itemHeight = self.props.itemHeight
	local maxItemsInCompactView = self.props.maxItemsInCompactView
	local totalNumberOfItems = #items

	if totalNumberOfItems == 0 then
		return 0
	else
		return itemHeight + (math.min(maxItemsInCompactView, totalNumberOfItems) - 1) * COMPACT_VIEW_PLACEHOLDER_HEIGHT
	end
end

function AccordionView:getLayoutInfo()
	local items = self.props.items
	local itemWidth = self.props.itemWidth
	local itemHeight = self.props.itemHeight
	local placeholderBaseTransparency = self.props.placeholderBaseTransparency
	local maxItemsInCompactView = self.props.maxItemsInCompactView
	local expanded = self.state.expanded

	local layoutData = {}
	local totalNumberOfItems = #items
	local itemsShownInCompactView = math.min(maxItemsInCompactView, totalNumberOfItems)

	local placeholderTransparencyStep = 0
	if itemsShownInCompactView > 1 then
		placeholderTransparencyStep = (1 - placeholderBaseTransparency) / (itemsShownInCompactView - 1)
	end

	for index = 1, totalNumberOfItems do
		if expanded then
			layoutData[index] = {
				width = itemWidth,
				height = itemHeight,
				placeholderTransparency = 1,
				itemTransparency = 0,
			}
		else
			if index == 1 then
				layoutData[index] = {
					width = itemWidth,
					height = itemHeight,
					placeholderTransparency = 1,
					itemTransparency = 0,
				}
			elseif index <= maxItemsInCompactView then
				layoutData[index] = {
					width = itemWidth - ITEM_WIDTH_SHRINK_STEP * (index - 1),
					height = COMPACT_VIEW_PLACEHOLDER_HEIGHT,
					placeholderTransparency = placeholderBaseTransparency + placeholderTransparencyStep * (index - 2),
					itemTransparency = 1,
				}
			else
				layoutData[index] = {
					width = itemWidth - ITEM_WIDTH_SHRINK_STEP * (index - 1),
					height = 0,
					placeholderTransparency = 1,
					itemTransparency = 1,
				}
			end
		end
	end

	return layoutData
end

function AccordionView:render()
	assert(validateProps(self.props))

	local items = self.props.items
	local totalNumberOfItems = #items

	if totalNumberOfItems == 0 then
		return nil
	end

	local layoutOrder = self.props.LayoutOrder
	local itemWidth = self.props.itemWidth
	local renderItem = self.props.renderItem
	local placeholderColor = self.props.placeholderColor
	local collapseButtonSize = self.props.collapseButtonSize
	local renderCollapseButton = self.props.renderCollapseButton

	local expanded = self.state.expanded
	local isExpandButtonPressed = self.state.isExpandButtonPressed

	local layoutData = self:getLayoutInfo()

	local accordionContent = {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, expanded and ITEM_PADDING or 0),
			[Roact.Change.AbsoluteContentSize] = self.onListLayoutAbsoluteContentSizeChanged,
		}),
		Scaler = Roact.createElement(SpringAnimatedItem.AnimatedUIScale, {
			springOptions = ANIMATION_SPRING_SETTINGS,
			animatedValues = {
				scale = isExpandButtonPressed and PRESSED_SCALE or 1,
			},
			mapValuesToProps = function(values)
				return {
					Scale = values.scale,
				}
			end,
		}),
		CollapseButton = Roact.createElement(SpringAnimatedItem.AnimatedFrame, {
			springOptions = ANIMATION_SPRING_SETTINGS,
			animatedValues = {
				-- Increase the size by 1 pixel so the animation looks better
				-- when the spring is damping in the end.
				sizeOffsetY = expanded and collapseButtonSize + 1 or 0,
			},
			mapValuesToProps = function(values)
				return {
					Size = UDim2.new(0, collapseButtonSize, 0, values.sizeOffsetY),
				}
			end,
			regularProps = {
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				[Roact.Children] = {
					ButtonMoveContainer = Roact.createElement(SpringAnimatedItem.AnimatedFrame, {
						springOptions = ANIMATION_SPRING_SETTINGS,
						animatedValues = {
							positionOffsetY = expanded and 0 or collapseButtonSize / 2,
						},
						mapValuesToProps = function(values)
							return {
								Position = UDim2.new(0, 0, 0, values.positionOffsetY),
							}
						end,
						regularProps = {
							Size = UDim2.new(0, collapseButtonSize, 0, collapseButtonSize),
							BackgroundTransparency = 1,
							[Roact.Children] = {
								Button = renderCollapseButton(self.onCollapseButtonActivated),
							},
						},
					}),
				},
			},
		}),
	}

	for index, _ in ipairs(items) do
		local layout = layoutData[index]

		accordionContent["Item" .. tostring(index)] = Roact.createElement(SpringAnimatedItem.AnimatedFrame, {
			springOptions = ANIMATION_SPRING_SETTINGS,
			animatedValues = {
				width = layout.width,
				height = layout.height,
			},
			mapValuesToProps = function(values)
				return {
					Size = UDim2.new(0, values.width, 0, values.height),
				}
			end,
			regularProps = {
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = index + 1,
				ZIndex = totalNumberOfItems + 1 - index;
				ClipsDescendants = true,
				[Roact.Children] = {
					Item = renderItem(items[index], layout.itemTransparency, ANIMATION_SPRING_SETTINGS),
					Placeholder = Roact.createElement(SpringAnimatedItem.AnimatedFrame, {
						springOptions = ANIMATION_SPRING_SETTINGS,
						animatedValues = {
							transparency = layout.placeholderTransparency,
						},
						mapValuesToProps = function(values)
							return {
								BackgroundTransparency = values.transparency,
							}
						end,
						regularProps = {
							Size = UDim2.new(1, 0, 1, 0),
							BackgroundColor3 = placeholderColor,
							BorderSizePixel = 0,
						},
					}),
				},
			},
		})
	end

	local canExpand = (totalNumberOfItems > 1)
	local clickToExpand = canExpand and not expanded

	return Roact.createElement("Frame", {
		Size = UDim2.new(0, itemWidth, 0, 0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		LayoutOrder = layoutOrder,
		[Roact.Ref] = self.rootFrameRef,
	}, {
		ContentFrame = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundTransparency = 1,
		},
			accordionContent
		),
		ClickToExpandButton = clickToExpand and Roact.createElement("TextButton", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ZIndex = totalNumberOfItems + 1,
			Text = "",
			[Roact.Event.Activated] = self.onExpandButtonActivated,
			[Roact.Event.InputBegan] = self.onExpandButtonInputBegan,
			[Roact.Event.InputEnded] = self.onExpandButtonInputEnded,
		}),
	})
end

return AccordionView
