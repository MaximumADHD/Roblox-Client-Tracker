local SocialLibraries = script:FindFirstAncestor("social-libraries")
local dependencies = require(SocialLibraries.dependencies)

local Roact = dependencies.Roact

local SortedList = require(script.Parent.SortedList)
local CallbackInputBoxWithIcon = require(script.Parent.CallbackInputBoxWithIcon)

local FilteredScrollingList = Roact.Component:extend("FilteredScrollingList")
FilteredScrollingList.defaultProps = {
	searchBoxHeight = 48,
	searchBackgroundTransparency = 0,
	searchBackgroundColor3 = Color3.new(1, 0, 1),

	searchIconCellWidth = 60,
	searchIconSize = 24,
	searchIconColor3 = Color3.new(1, 0, 1),
	searchIconTransparency = 0,
	searchIconImage = "rbxasset://textures/ui/LuaChat/icons/ic-search.png",

	searchInputTextFont = nil,
	searchInputTextColor3 = nil,
	searchInputTextSize = nil,
	searchInputTextTransparency = nil,
	searchPlaceholderTextTransparency = nil,
	searchPlaceholderTextColor3 = nil,
	searchPlaceholderText = nil,

	searchClearIconColor3 = nil,
	searchClearIcon = "rbxasset://textures/ui/LuaChat/icons/ic-close-white.png",

	searchDividerColor3 = Color3.new(1, 0, 1),
	searchDividerTransparency = 0,
	searchDividerHeight = 1,

	scrollBarImageTransparency = 0,
	scrollBarImageColor3 = Color3.new(1, 0, 1),

	entries = {}, --tables of information used for sorting/filtering and also passed as props to the entryElement
	renderEntry = nil,

	entryHeight = 54,

	scrollTouchedBottomCallback = nil,

	filterPredicate = function(filterInput, entry)
		return true
	end,

	sortComparator = function(entryA, entryB)
		return true
	end,
}

function FilteredScrollingList:shouldUpdate(newProps, newState)
	-- In a vast majority of cases, if state updated, something has updated.
	-- We don't bother checking in this case.
	if newState ~= self.state then
		return true
	end

	if newProps == self.props then
		return false
	end

	for key, value in pairs(newProps) do
		-- if we are receiving extra props and we
		-- did not have any before, we should update
		if key == "extraProps" and not self.props.extraProps then
			return true
		elseif self.props[key] ~= value then
			return true
		end
	end

	for key, value in pairs(self.props) do
		if key == "extraProps" then
			-- if we had extra props but its gone now, we
			-- should update
			if not newProps.extraProps then
				return true
			end

			for extraKey, extraValue in pairs(value) do
				if newProps.extraProps[extraKey] ~= extraValue then
					return true
				end
			end
		else
			if newProps[key] ~= value then
				return true
			end
		end
	end

	return false
end

function FilteredScrollingList:render()
	local filterPredicate = self.props.filterPredicate
	local filterText = self.state.filterText

	--filter out entries
	local validEntries = {}
	local numValidEntries = 0
	for _, entry in pairs(self.props.entries) do
		local notFiltered = filterPredicate(filterText, entry)

		if notFiltered then
			numValidEntries = numValidEntries + 1
			table.insert(validEntries, entry)
		end
	end

	local listChildren = {
		sortedList = Roact.createElement(SortedList, {
			entries = validEntries,
			renderEntry = self.props.renderEntry,
			entryHeight = self.props.entryHeight,

			sortComparator = self.props.sortComparator,
		})
	}

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		layout = Roact.createElement("UIListLayout", {
			VerticalAlignment = Enum.VerticalAlignment.Top,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		dividerTop = Roact.createElement("Frame", {
			BackgroundColor3 = self.props.searchDividerColor3,
			BackgroundTransparency = self.props.searchDividerTransparency,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, self.props.searchDividerHeight),
			LayoutOrder = 1,
		}),

		callbackBoxContainer = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, self.props.searchBoxHeight),
			LayoutOrder = 2,
		}, {
			callbackBox = Roact.createElement(CallbackInputBoxWithIcon, {
				backgroundTransparency = self.props.searchBackgroundTransparency,
				backgroundColor3 = self.props.searchBackgroundColor3,

				iconCellWidth = self.props.searchIconCellWidth,
				iconSize = self.props.searchIconSize,
				iconColor3 = self.props.searchIconColor3,
				iconTransparency = self.props.searchIconTransparency,
				iconImage = self.props.searchIconImage,

				inputTextFont = self.props.searchInputTextFont,
				inputTextColor3 = self.props.searchInputTextColor3,
				inputTextSize = self.props.searchInputTextSize,
				inputTextTransparency = self.props.searchInputTextTransparency,
				placeholderTextTransparency = self.props.searchPlaceholderTextTransparency,
				placeholderTextColor3 = self.props.searchPlaceholderTextColor3,
				placeholderText = self.props.searchPlaceholderText,

				clearIconColor3 = self.props.searchClearIconColor3,
				clearIcon = self.props.searchClearIcon,

				textChangedCallback = function(filterText)
					self:setState({filterText = filterText})
				end,
			}),
		}),

		dividerBottom = Roact.createElement("Frame", {
			BackgroundColor3 = self.props.searchDividerColor3,
			BackgroundTransparency = self.props.searchDividerTransparency,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, self.props.searchDividerHeight),
			LayoutOrder = 3,
		}),

		entryList = Roact.createElement("ScrollingFrame", {
			Size = UDim2.new(1, 0, 1, -self.props.searchBoxHeight - (self.props.searchDividerHeight*2)),
			CanvasSize = UDim2.new(0, 0, 0, numValidEntries * self.props.entryHeight),
			BackgroundTransparency = 1,
			ScrollBarThickness = 5,
			ElasticBehavior = Enum.ElasticBehavior.Always,
			ScrollingDirection = Enum.ScrollingDirection.Y,

			ScrollBarImageTransparency = self.props.scrollBarImageTransparency,
			ScrollBarImageColor3 = self.props.scrollBarImageColor3,

			BottomImage = "rbxasset://textures/ui/LuaChat/9-slice/scroll-bar.png",
			MidImage = "rbxasset://textures/ui/LuaChat/9-slice/scroll-bar.png",
			TopImage = "rbxasset://textures/ui/LuaChat/9-slice/scroll-bar.png",

			LayoutOrder = 4,

			[Roact.Change.CanvasPosition] = function(rbx)
				local canvasSizeYOffset = rbx.CanvasSize.Y.Offset

				if not self.isTouchingBottom and
					rbx.CanvasPosition.Y + rbx.AbsoluteSize.Y >= canvasSizeYOffset then
					self.isTouchingBottom = true

					if self.props.scrollTouchedBottomCallback then
						self.props.scrollTouchedBottomCallback()
					end
				elseif rbx.CanvasPosition.Y + rbx.AbsoluteSize.Y < canvasSizeYOffset then
					self.isTouchingBottom = false
				end
			end,
		}, listChildren),
	})
end

return FilteredScrollingList
