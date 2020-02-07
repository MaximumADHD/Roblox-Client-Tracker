local Library = script.Parent.Parent

local Roact = require(Library.Parent.Roact)
local Theming = require(Library.Theming)
local withTheme = Theming.withTheme

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

		local searchBarTheme = theme.searchBar

		local buttonWidth = searchBarTheme.buttons.size
		local buttonsWidth = showSearchButton and (2 * buttonWidth) + 1 or buttonWidth
		local buttonInset = searchBarTheme.buttons.inset

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
					Size = UDim2.new(0, searchBarTheme.buttons.iconSize,
						0, searchBarTheme.buttons.iconSize),
					BackgroundTransparency = 1,
					Image = isClearButtonHovered and searchBarTheme.images.clear.hovered.image or searchBarTheme.images.clear.image,
					ImageColor3 = searchBarTheme.buttons.clear.color,
				}),
			}),

			-- Thin dividing line between the text box
			Line = showSearchButton and Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(0, 0),
				-- Remove a pixel from top and bottom
				-- So it doesn't overlap the external border
				Position = UDim2.new(0, buttonWidth, 0, 1),
				Size = UDim2.new(0, 1, 1, -2),
				BackgroundColor3 = searchBarTheme.divideLine.color,
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
					Size = UDim2.new(0, searchBarTheme.buttons.iconSize,
						0, searchBarTheme.buttons.iconSize),
					BackgroundTransparency = 1,
					Image = searchBarTheme.images.search.image,
					ImageColor3 = isSearchButtonHovered and searchBarTheme.buttons.search.hovered.color
						or searchBarTheme.buttons.search.color
				}),
			}),
		})
	end)
end

return SearchBarButtons
