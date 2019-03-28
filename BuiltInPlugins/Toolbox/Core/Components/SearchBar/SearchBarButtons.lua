local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Constants = require(Plugin.Core.Util.Constants)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)
local Images = require(Plugin.Core.Util.Images)

local withTheme = ContextHelper.withTheme

local SearchBarButtons = Roact.PureComponent:extend("SearchBar")

function SearchBarButtons:init()
	self.state = {
		isSearchButtonHovered = false,
		isClearButtonHovered = false,
	}

	self.onClearButtonHovered = function()
		self:setState({
			isClearButtonHovered = true,
		})
	end

	self.onClearButtonHoverEnded = function()
		self:setState({
			isClearButtonHovered = false,
		})
	end

	self.onClearButtonClicked = function()
		self.props.onClearButtonClicked()

		-- Stop hovering on the clear button so that when it reappears,
		-- it doesn't start in a hover state
		self.onClearButtonHoverEnded()
	end

	self.onSearchButtonHovered = function()
		self:setState({
			isSearchButtonHovered = true,
		})
	end

	self.onSearchButtonHoverEnded = function()
		self:setState({
			isSearchButtonHovered = false,
		})
	end
end

function SearchBarButtons:render()
	return withTheme(function(theme)
		local props = self.props
		local state = self.state

		local isSearchButtonHovered = state.isSearchButtonHovered
		local isClearButtonHovered = state.isClearButtonHovered

		local showClearButton = props.showClearButton
		local showSearchButton = props.showSearchButton

		local onSearchButtonClicked = props.onSearchButtonClicked

		local buttonWidth = Constants.SEARCH_BAR_BUTTON_WIDTH
		local buttonsWidth = showSearchButton and (2 * buttonWidth) + 1 or buttonWidth
		local buttonInset = Constants.SEARCH_BAR_BUTTON_INSET

		local searchBarTheme = theme.searchBar

		return Roact.createElement("Frame", {
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.new(1, 0, 0, 0),
			Size = UDim2.new(0, buttonsWidth, 1, 0),
			BackgroundTransparency = 1,
		}, {
			ClearButton = showClearButton and Roact.createElement("ImageButton", {
				AnchorPoint = Vector2.new(0, 0),
				Position = UDim2.new(0, buttonInset, 0, buttonInset),
				Size = UDim2.new(0, buttonWidth - (2 * buttonInset), 1, -(2 * buttonInset)),
				BackgroundTransparency = 1,

				[Roact.Event.MouseEnter] = self.onClearButtonHovered,
				[Roact.Event.MouseMoved] = self.onClearButtonHovered,
				[Roact.Event.MouseLeave] = self.onClearButtonHoverEnded,
				[Roact.Event.MouseButton1Down] = self.onClearButtonClicked,
			}, {
				ImageLabel = Roact.createElement("ImageLabel", {
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(0, Constants.SEARCH_BAR_BUTTON_ICON_SIZE,
						0, Constants.SEARCH_BAR_BUTTON_ICON_SIZE),
					BackgroundTransparency = 1,
					Image = isClearButtonHovered and Images.CLEAR_ICON_HOVER or Images.CLEAR_ICON,
					ImageColor3 = isClearButtonHovered and searchBarTheme.clearButton.imageSelectedColor
						or searchBarTheme.clearButton.imageColor
				}),
			}),

			-- Thin dividing line between the text box
			Line = showSearchButton and Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(0, 0),
				-- Remove a pixel from top and bottom
				-- So it doesn't overlap the external border
				Position = UDim2.new(0, buttonWidth, 0, 1),
				Size = UDim2.new(0, 1, 1, -2),
				BackgroundColor3 = searchBarTheme.divideLineColor,
				BorderSizePixel = 0,
			}),

			SearchButton = showSearchButton and Roact.createElement("ImageButton", {
				AnchorPoint = Vector2.new(1, 0),
				Position = UDim2.new(1, -buttonInset, 0, buttonInset), -- Negative inset because anchor point
				Size = UDim2.new(0, buttonWidth - (2 * buttonInset), 1, -(2 * buttonInset)),
				BackgroundTransparency = 1,

				[Roact.Event.MouseEnter] = self.onSearchButtonHovered,
				[Roact.Event.MouseMoved] = self.onSearchButtonHovered,
				[Roact.Event.MouseLeave] = self.onSearchButtonHoverEnded,
				[Roact.Event.MouseButton1Down] = onSearchButtonClicked,
			}, {
				ImageLabel = Roact.createElement("ImageLabel", {
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(0, Constants.SEARCH_BAR_BUTTON_ICON_SIZE,
						0, Constants.SEARCH_BAR_BUTTON_ICON_SIZE),
					BackgroundTransparency = 1,
					Image = Images.SEARCH_ICON,
					ImageColor3 = isSearchButtonHovered and searchBarTheme.searchButton.imageSelectedColor
						or searchBarTheme.searchButton.imageColor
				}),
			}),
		})
	end)
end

return SearchBarButtons
