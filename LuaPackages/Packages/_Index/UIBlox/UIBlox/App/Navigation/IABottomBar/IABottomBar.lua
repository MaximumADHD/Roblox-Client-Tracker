--!nocheck
local IABottomBarFolder = script.Parent
local Navigation = script.Parent.Parent
local App = Navigation.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

-- Packages
local Roact = require(Packages.Roact)
local t = require(Packages.t)
local Cryo = require(Packages.Cryo)

-- UIBlox Core
local withStyle = require(UIBlox.Core.Style.withStyle)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local validateImageSetData = require(UIBlox.Core.ImageSet.Validator.validateImageSetData)
local GetTextSize = require(UIBlox.Core.Text.GetTextSize)
local InteractableList = require(UIBlox.Core.Control.InteractableList)
local withAnimation = require(UIBlox.Core.Animation.withAnimation)

-- UIBlox App
local BadgeStates = require(UIBlox.App.Indicator.Enum.BadgeStates)

-- Navigation
local RippleState = require(Navigation.Enum.RippleState)

-- IABottomBar
local Consts = require(IABottomBarFolder.Constants)
local Icon = require(IABottomBarFolder.Icon)
local Ripple = require(IABottomBarFolder.Ripple)

-- Tooltips
local Dialog = Packages.UIBlox.App.Dialog
local withTooltip = require(Dialog.TooltipV2.Controllers).withTooltip
local TooltipOrientation = require(Dialog.Tooltip.Enum.TooltipOrientation)

--[[
	A navigation bar that adapts to orientation, screen resize and can be hidden.
	it also notifies on safe area (area outside the navbar) change
	safe area can change by resizing the window or hiding the bar
]]
--

-- lucid chart tech spec: https://lucid.app/lucidchart/115898b1-ca03-4194-b216-d6dd68af6345/edit?beaconFlowId=BED12AAFFF908189&invitationId=inv_024d14aa-ee0c-45ac-aaa7-41e3c206f5a8&page=0_0#
local IABottomBar = Roact.PureComponent:extend("IABottomBar")

IABottomBar.validateProps = t.strictInterface({
	-- list of bottom bar items
	itemList = t.array(t.strictInterface({
		-- title text under each icon
		title = t.optional(t.string),
		-- icon if the item is currently selected
		iconOn = t.optional(validateImageSetData),
		-- icon if the item is not selected
		iconOff = t.optional(validateImageSetData),
		-- icon component to use if not using iconOn or iconOff
		iconComponent = t.optional(t.union(t.table, t.callback)),
		-- action when clicking on this item
		onActivated = t.callback,
		-- number to display as badge next to the icon
		badgeValue = t.optional(t.union(t.integer, t.string, BadgeStates.isEnumValue)),
		-- boolean to determine if item should display ripple animation
		isRippled = t.optional(t.boolean),
		-- boolean to determine if item should display a tooltip
		isTooltipActive = t.optional(t.boolean),
		-- tooltip header text
		tooltipHeader = t.optional(t.string),
		-- tooltip body text
		tooltipBody = t.optional(t.string),
	})),
	-- index of the currently selected item
	selection = t.optional(t.integer),
	-- hides the system bar (with animation) when true
	hidden = t.optional(t.boolean),
	-- function({Position, AbsolutePosition, Size, AbsoluteSize}) called when the safe area is resized
	onSafeAreaChanged = t.optional(t.callback),
	--- options for the main Frame (contains both bottom bar and safe area)
	size = t.optional(t.UDim2),
	-- height of the entire navbar
	height = t.optional(t.number),
	position = t.optional(t.UDim2),
	layoutOrder = t.optional(t.integer),
	-- option to control whether empty badge or nubmered badge is shown
	showNumberedBadge = t.optional(t.boolean),
	-- the gui we display the tooltip on (IMPORTANT: will error if not passed and an item in itemList has an active tooltip!)
	tooltipGui = t.optional(t.any),
	-- the DisplayOrder of the ScreenGui the tooltip renders in
	tooltipDisplayOrder = t.optional(t.number),
	-- children are placed in a Frame occupying the safe area
	[Roact.Children] = t.optional(t.any),
	-- option to display title for each item
	showTitle = t.optional(t.boolean),
})

IABottomBar.defaultProps = {
	showNumberedBadge = false,
	tooltipDisplayOrder = 10,
	height = Consts.DEFAULT_NAV_HEIGHT,
	showTitle = true,
}

function IABottomBar:getRippleState() -- get values for ripple animation depending on current value in self.state
	local rippleState
	if self.state.rippleState == RippleState.State1 then
		rippleState = Consts.RIPPLE_CONSTS.State1
	elseif self.state.rippleState == RippleState.State2 then
		rippleState = Consts.RIPPLE_CONSTS.State2
	elseif self.state.rippleState == RippleState.State3 then
		rippleState = Consts.RIPPLE_CONSTS.State3
	elseif self.state.rippleState == RippleState.State4 then
		rippleState = Consts.RIPPLE_CONSTS.State4
	end

	return rippleState
end

function IABottomBar:setTextProperties(items, font) -- set sizing/visibility of text depending on its size
	-- way to check whether a title is too big and such all titles need to be minimized (or vice versa)
	local function containsValue(list, value)
		for i = 1, #list do
			if list[i] == value then
				return true
			end
		end
		return false
	end

	local titles = Cryo.List.map(items, function(item, _)
		return item.title or ""
	end)

	-- if any regular title text is bigger than item width, we need to minimize (or hide)
	local shouldTitlesMinimize = Cryo.List.map(titles, function(title, _)
		local estimatedTextWidth = GetTextSize(title, Consts.TEXT_SIZE, font.Header2.Font, Vector2.new(0, 0)).X
		return estimatedTextWidth > Consts.ITEM_SIZE_X
	end)

	-- if any small title text is bigger than item width, we need to hide
	local shouldTitlesHide = Cryo.List.map(titles, function(title, _)
		local estimatedTextWidthSmall =
			GetTextSize(title, Consts.TEXT_SIZE_SMALL, font.Header2.Font, Vector2.new(0, 0)).X
		return estimatedTextWidthSmall > Consts.ITEM_SIZE_X
	end)

	-- resets state if all title text is small enough to show with regular font
	local shouldTitlesNormalize = Cryo.List.map(titles, function(title, _)
		local estimatedTextWidth = GetTextSize(title, Consts.TEXT_SIZE, font.Header2.Font, Vector2.new(0, 0)).X
		return estimatedTextWidth <= Consts.ITEM_SIZE_X
	end)

	if not containsValue(shouldTitlesNormalize, false) then
		self:setState({
			textSize = Consts.TEXT_SIZE,
			isTextVisible = true,
		})
	else
		if containsValue(shouldTitlesMinimize, true) then
			if containsValue(shouldTitlesHide, true) then
				self:setState({
					isTextVisible = false,
				})
				warn(
					"A title is too large for it to be displayed in the interactable area. All titles are being hidden"
				)
			else
				self:setState({
					textSize = Consts.TEXT_SIZE_SMALL,
					isTextVisible = true,
				})
			end
		end
	end
end

function IABottomBar:activateRipple(callback) -- activate 3 ripples in succession
	-- callback parameter to activate consecutive ripples so they run asynchronously
	self:setState({
		rippleState = RippleState.State1,
	})
	task.delay(0.3, function()
		self:setState({
			rippleState = RippleState.State2,
		})
		task.delay(0.3, function()
			self:setState({
				rippleState = RippleState.State3,
			})
			task.delay(0.3, function()
				self:setState({
					rippleState = RippleState.State4,
				})
				if callback ~= nil then
					callback()
				end
			end)
		end)
	end)
end

function IABottomBar:renderIconWithText(item, state, selected)
	-- determine values for ripple based off of state
	local rippleState = self:getRippleState()

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local font = stylePalette.Font

		return withTooltip({
			headerText = item.tooltipHeader or nil,
			bodyText = item.tooltipBody or nil,
		}, {
			preferredOrientation = TooltipOrientation.Top,
			guiTarget = self.props.tooltipGui,
			DisplayOrder = self.props.tooltipDisplayOrder,
			triggerPointName = "TriggerPoint",
			active = self.state.tooltipTable[item.title],
		}, function(triggerPointChanged)
			return Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
				[Roact.Change.AbsoluteSize] = triggerPointChanged,
				[Roact.Change.AbsolutePosition] = triggerPointChanged,
				[Roact.Event.InputEnded] = function(_)
					-- Upon clicking the tooltip, it is no longer active. reflect this in state
					local newTooltipTable = self.state.tooltipTable
					newTooltipTable[item.title] = false
					self:setState({
						tooltipTable = newTooltipTable,
					})
				end,
			}, {
				Icon = Icon(item, state, selected, self.props.showNumberedBadge, {
					BackgroundTransparency = 1,
					Size = UDim2.fromOffset(Consts.ICON_SIZE_X, Consts.ICON_SIZE_Y),
					-- absolutely place the icon to the center of the navbar item
					Position = UDim2.fromScale(0.5, (Consts.ITEM_SIZE_X / 2) / Consts.ITEM_SIZE_Y),
					AnchorPoint = Vector2.new(0.5, 0.5),
					ZIndex = 2,
				}),
				Ripple = Ripple(item, rippleState),
				IconText = self.props.showTitle
						and Roact.createElement("TextLabel", {
							Text = item.title,
							TextColor3 = selected and theme.TextEmphasis.Color or theme.TextDefault.Color,
							-- absolutely place the text to the bottom of the Frame
							Position = UDim2.fromScale(
								0.5,
								(Consts.BAR_SIZE + Consts.BOTTOM_TEXT_PADDING + (Consts.TEXT_LINE_HEIGHT / 1.5))
									/ Consts.ITEM_SIZE_Y
							),
							AnchorPoint = Vector2.new(0.5, 0.5),
							Font = font.Header2.Font,
							TextSize = self.state.textSize,
							TextTransparency = selected and theme.TextEmphasis.Transparency
								or theme.TextDefault.Transparency,
							Visible = self.state.isTextVisible,
							BorderSizePixel = 0, -- remove dot placed on text normally
						})
					or nil,
			})
		end)
	end)
end

function IABottomBar:renderNavItem(items, internalPadding, order)
	local blurSize = (Consts.SHADOW_SIZE - Consts.BAR_SIZE) / 2 -- size of DropShadow radius in a single direction

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		return Roact.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
			LayoutOrder = order or nil,
		}, {
			DropShadow = Roact.createElement(ImageSetComponent.Label, {
				AutomaticSize = Enum.AutomaticSize.X,
				Size = UDim2.fromOffset(0, Consts.SHADOW_SIZE),
				BackgroundTransparency = 1,
				Image = Consts.DROP_SHADOW_CONSTS.IMAGE,
				ImageColor3 = theme.DropShadow.Color,
				ImageTransparency = theme.DropShadow.Transparency,
				-- 9-slice the dropshadow image so it scales properly
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Consts.DROP_SHADOW_CONSTS.SLICE_CENTER,
			}, {
				-- since drop shadow must be bigger than the NavItem itself, we add padding around it to match its size to the DropShadow
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, blurSize),
					PaddingRight = UDim.new(0, blurSize),
					PaddingTop = UDim.new(0, blurSize),
					PaddingBottom = UDim.new(0, blurSize),
				}),
				NavItem = Roact.createElement(
					"Frame",
					{
						AutomaticSize = Enum.AutomaticSize.X,
						Size = UDim2.fromOffset(0, Consts.BAR_SIZE),
						BackgroundColor3 = theme.BackgroundUIDefault.Color,
						BackgroundTransparency = 0,
					},
					Cryo.Dictionary.join({
						Corner = Roact.createElement("UICorner", {
							CornerRadius = UDim.new(0, Consts.NAVBAR_CORNER_RADIUS),
						}),
						Stroke = Roact.createElement("UIStroke", {
							Color = theme.Divider.Color,
							Transparency = theme.Divider.Transparency,
							Thickness = 1,
						}),
						Layout = Roact.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Horizontal,
							HorizontalAlignment = Enum.HorizontalAlignment.Center,
							VerticalAlignment = Enum.VerticalAlignment.Top,
							Padding = UDim.new(0, internalPadding),
						}),
					}, items)
				),
			}),
		})
	end)
end

function IABottomBar:renderNavBar(contents)
	local numItems = #contents
	local screenWidth = self.state.absoluteSizeX

	local barPadding = screenWidth > Consts.SMALL_BREAKPOINT and Consts.ENITRE_BAR_PADDING_HORIZONTAL
		or Consts.ENITRE_BAR_PADDING_HORIZONTAL_SMALL
	local middlePadding = screenWidth > Consts.SMALL_BREAKPOINT and Consts.MIDDLE_BAR_PADDING_HORIZONTAL
		or Consts.MIDDLE_BAR_PADDING_HORIZONTAL_SMALL

	local nonInteractableSpace = 2 * barPadding + 2 * middlePadding

	local maxIconsRenderable = math.floor((screenWidth - nonInteractableSpace) / Consts.BAR_SIZE)

	if maxIconsRenderable < numItems then
		warn("More icons passed than can be rendered given the sizing requirements. All icons may not be displayed")
		-- we never want to show less than 5 items, even if the screen size is too small
		numItems = math.max(Consts.MIN_ITEMS, maxIconsRenderable)
	end

	local firstItem = { table.unpack(contents, 1, 1) } -- just the first element wrapped in a table
	local middleItems = { table.unpack(contents, 2, numItems - 1) } -- all elements except first and last in a table
	local lastItem = { table.unpack(contents, numItems, numItems) } -- just the last element wrapped in a table

	local numMiddleItems = #middleItems

	local internalMiddlePadding = ( -- the "expandable" horizontal space between each item inside the middle bar
		screenWidth
		- (numMiddleItems * Consts.ITEM_SIZE_X) -- width of each item
		- (Consts.SHADOW_SIZE - Consts.ITEM_SIZE_X) -- shadow space of middle bar
		- 2 * (Consts.SHADOW_SIZE + barPadding + middlePadding) -- padding and shadow space of left and right bars
	)
		/ (numMiddleItems - 1) -- depending on the number of items and screen width, determine padding between items inside the middle capsule

	return Roact.createElement("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, barPadding),
			PaddingRight = UDim.new(0, barPadding),
			PaddingTop = UDim.new(0, Consts.TOP_PADDING_ENTIRE_BAR),
		}),
		FirstItem = self:renderNavItem(firstItem, internalMiddlePadding, 1),

		-- wrap middle items in a frame so that we can apply padding to it individually
		MiddleItemsWrapper = Roact.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
			LayoutOrder = 2,
		}, {
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, middlePadding),
				PaddingRight = UDim.new(0, middlePadding),
			}),
			MiddleItems = self:renderNavItem(middleItems, internalMiddlePadding),
		}),
		LastItem = self:renderNavItem(lastItem, internalMiddlePadding, 3),
	})
end

function IABottomBar:renderBackgroundWithNavBar(frameProps, contents)
	local offset
	if self.props.size then
		offset = -self.props.size.Y.Offset
	else
		offset = -self.props.height
	end
	return withAnimation({
		offset = self.props.hidden and 0 or offset,
	}, function(values)
		return withStyle(function(stylePalette)
			local theme = stylePalette.Theme
			self:setTextProperties(self.props.itemList, stylePalette.Font)
			return Roact.createElement(
				"Frame",
				Cryo.Dictionary.join(frameProps, {
					Position = UDim2.new(0, 0, 1, math.floor(values.offset + 0.5)),
					Size = self.props.size or UDim2.new(1, 0, 0, self.props.height),
					ZIndex = 99,
					BackgroundTransparency = 0,
					BackgroundColor3 = theme.BackgroundContrast.Color, -- TODO: Change to theme.NavigationBar when lightmode color gets changed from white to ash
				}),
				{
					UIGradient = Roact.createElement("UIGradient", {
						Rotation = 90,
						Color = ColorSequence.new(theme.NavigationBar.Color),
						Transparency = NumberSequence.new({
							NumberSequenceKeypoint.new(0, 1),
							NumberSequenceKeypoint.new(0.6, 0), -- 60% is when gradient ends
							NumberSequenceKeypoint.new(1, 0),
						}),
					}),
				},
				{
					NavBar = self:renderNavBar(contents),
				}
			)
		end)
	end, Consts.SPRING_OPTIONS)
end

function IABottomBar:renderSafeArea()
	local position, size
	if self.props.hidden then
		position = UDim2.new(0, 0, 0, 0)
		size = UDim2.new(1, 0, 1, 0)
	else
		position = UDim2.new(0, 0, 0, 0)
		size = UDim2.new(1, 0, 1, 0)
	end
	return Roact.createElement("Frame", {
		Position = position,
		Size = size,
		BackgroundTransparency = 1,
		[Roact.Change.AbsoluteSize] = self.onSafeAreaEvent,
		[Roact.Change.AbsolutePosition] = self.onSafeAreaEvent,
	}, self.props[Roact.Children])
end

function IABottomBar:renderList(items, renderItem)
	local contents = Cryo.List.map(items, function(item, key)
		return renderItem(key)
	end)

	return Roact.createElement("Frame", {
		Position = self.props.position or UDim2.new(0, 0, 0, 0),
		Size = self.props.size or UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		ClipsDescendants = true,
		LayoutOrder = self.props.layoutOrder,
		[Roact.Change.AbsoluteSize] = function(rbx)
			self:setState({
				absoluteSizeX = rbx.AbsoluteSize.X,
			})
		end,
	}, {
		BackgroundWithNavBar = self:renderBackgroundWithNavBar({
			BorderSizePixel = 0,
		}, contents),
		SafeArea = self:renderSafeArea(),
	})
end

function IABottomBar:init()
	local tooltipTable = {}
	for _, item in pairs(self.props.itemList) do
		if item.title ~= nil then
			tooltipTable[item.title] = item.isTooltipActive -- populate table
		end
	end

	self:setState({
		portrait = true,
		absoluteSizeX = Consts.SMALL_BREAKPOINT,
		rippleState = RippleState.State1,
		isTextVisible = true,
		textSize = Consts.TEXT_SIZE,
		tooltipTable = tooltipTable, -- table to keep track of which tooltips are active on each button
	})

	self.onSelectionChanged = function(selection)
		if #selection > 0 then
			self.props.itemList[selection[1]].onActivated()
		end
	end
	self.onSafeAreaEvent = function(rbx)
		if self.props.onSafeAreaChanged then
			self.props.onSafeAreaChanged({
				Position = rbx.Position,
				AbsolutePosition = rbx.AbsolutePosition,
				Size = rbx.Size,
				AbsoluteSize = rbx.AbsoluteSize,
			})
		end
	end
	-- ripple animation, occurs 3 times in succession
	self:activateRipple(function()
		task.delay(0.8, function()
			self:activateRipple(function()
				task.delay(0.8, function()
					self:activateRipple()
				end)
			end)
		end)
	end)
end

function IABottomBar:didUpdate(previousProps, _)
	-- update tooltipTable
	-- only if new props is different than old props, we want to reflect that change in the tooltipTable
	-- state controls the tooltips, and is initialized to the initialProps
	-- a change in state DOES NOT need to be reflected in props however
	for i, item in pairs(self.props.itemList) do
		if item.title ~= nil and item.isTooltipActive ~= previousProps.itemList[i].isTooltipActive then
			local newTooltipTable = self.state.tooltipTable
			newTooltipTable[item.title] = item.isTooltipActive
			self:setState({
				tooltipTable = newTooltipTable,
			})
		end
	end
end
function IABottomBar:render()
	local itemList = self.props.itemList
	local selection = self.props.selection
	if selection then
		if itemList[selection] == nil then
			selection = nil
		else
			selection = { selection }
		end
	end

	return Roact.createElement(InteractableList, {
		itemList = itemList,
		selection = selection,
		itemSize = UDim2.fromOffset(Consts.ITEM_SIZE_X, Consts.ITEM_SIZE_Y),
		-- since renderList and renderItem depend on state and props,
		-- we should always rerender the InteractableList
		renderList = function(...)
			return self:renderList(...)
		end,
		renderItem = function(...)
			return self:renderIconWithText(...)
		end,
		onSelectionChanged = self.onSelectionChanged,
	})
end

return IABottomBar
