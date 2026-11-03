--[[
	(USES STYLESHEETS)
	A search bar component with a single line TextInput and button to request a search.

	Optional Props:
		any Width: how wide the search bar is in pixels, can be a number or a udim
		number ButtonWidth: how wide the search button is in pixels.
		number LayoutOrder: The layout order of this component in a list.
		boolean Disabled: Whether interaction is disabled (default false).
		callback OnInputBegan: callback for when user input (keystroke) begins
		callback OnInputEnded: callback for when user input (keystroke) ends
		callback OnSearchRequested: callback for when the user presses the enter key
			or clicks the search button. This will also be called with an empty string
			when the user clicks "Clear". - OnSearchRequested(searchTerm: string)
		callback OnTextChanged: callback for when the text was changed - OnTextChanged(text: string)
		boolean IncrementalTextSearch: initiate search as the user types
		number IncrementalTextSearchDelay: delay when text changes before requesting search, in ms
		string PlaceholderText: Placeholder text to show when there is no search term entered.
		string SearchTerm: Search term to populate the text input with.
		boolean ShowSearchButton: Whether to show the search button at the right of the bar (default true).
		boolean ShowSearchIcon: Whether to show an in-line search icon at the left of the Search text (default false).
		UDim2 Size: The size of the searchbar as a custom definition
		Enum.AutomaticSize AutomaticSize: The automatic size of the searchbar
		Vector2 AnchorPoint: The pivot point of this component's Position prop
		UDim2 Position: The position of this component
		Style Style: The style with which to render this component.
		StyleModifier StyleModifier: The StyleModifier index into Style.
		Stylizer Stylizer: A Stylizer ContextItem, which is provided via withContext.
		ContextItem Localization: A Localization ContextItem, which is provided via withContext.
		callback OnTextBoxFocusGained: callback for when text box focus is gained
		callback OnTextBoxFocusLost: callback for when the text box focus is lost - OnTextBoxFocusLost(enterPressed: boolean)
		boolean ShouldFocusOnMount: Whether the search bar should focus on mount (default false).
		boolean ShowFilterButton: Whether to show the search filter button (default false).
		boolean SearchIsFiltered: Whether the search is filtered or not (default false).
		callback OnSearchOptionsToggled: Shows search options when filter button is pressed.

	Style Values:
		Style BackgroundStyle: The style with which to render the background.
		Enum.Font Font: The font used to render the text in this link.
		Color3 PlaceholderTextColor: The color of the placeholder text.
		number TextSize: The font size of the text in this link.
		Color3 TextColor: The color of the search term text.
]]

local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.UI.ContextServices)
local withContext = ContextServices.withContext
local Util = require(Framework.Util)
local isInputMainPress = Util.isInputMainPress
local prioritize = Util.prioritize
local Typecheck = require(Framework.Util.Typecheck)
local StyleModifier = require(Framework.Util.StyleModifier)

local Resources = require(Framework.Resources)
local LOCALIZATION_PROJECT_NAME = Resources.LOCALIZATION_PROJECT_NAME
local COMPONENT_NAME = "SearchBar"

local Pane = require(Framework.UI.Components.Pane)
local Image = require(Framework.UI.Components.Image)
local TextInput = require(Framework.UI.Components.TextInput)
local DEPRECATED_TextInput = require(Framework.UI.Components.DEPRECATED_TextInput)

local SearchButtons = require(script.SearchButtons)

local React = if Framework.Parent:FindFirstChild("React") then require(Framework.Parent.React) else nil
local supportsStyleSheets = require(Framework.Styling.supportsStyleSheets)
local joinTags = require(Framework.Styling.joinTags)

local SearchBar = Roact.PureComponent:extend("SearchBar")
Typecheck.wrap(SearchBar, script)

SearchBar.defaultProps = {
	ButtonWidth = 24,
	LayoutOrder = 0,
	Disabled = false,
	IncrementalTextSearch = false,
	IncrementalTextSearchDelay = 500,
	ShowSearchButton = true,
	ShowSearchIcon = false,
	ShouldFocusOnMount = false,
	ShowFilterButton = false,
	SearchIsFiltered = false,
}

function SearchBar:init()
	self.state = {
		text = "",
		lastSearchTermAsProp = "",
		isFocused = false,
		isHovered = false,
		shouldFocus = false,
	}

	if not supportsStyleSheets then
		self.mouseEnter = function()
			if self.props.Disabled then
				return
			end
			self:setStateAndStyleModifier({
				isHovered = true,
			})
		end

		self.mouseLeave = function()
			if self.props.Disabled then
				return
			end
			self:setStateAndStyleModifier({
				isHovered = false,
			})
		end
	end

	self.requestSearch = function()
		if self.props.Disabled then
			return
		end

		-- An explicit call to requestSearch will cancel any pending incremental
		-- search delays
		if self.searchDelayTask then
			task.cancel(self.searchDelayTask)
			self.searchDelayTask = nil
		end

		if self.props.OnSearchRequested then
			self.props.OnSearchRequested(self.state.text)
		end
	end

	-- Handle clicking in the small gaps between the TextBox and the buttons or the left edge of the SearchBar
	self.onBackgroundInputBegan = function(_rbx, input)
		if self.props.Disabled then
			return
		end

		local isMainPress = isInputMainPress(input)
		if isMainPress then
			self:setState({
				shouldFocus = true,
			})
		end
	end

	self.onBackgroundFocusLost = function(_rbx, input)
		if self.props.Disabled then
			return
		end
		if input.UserInputType == Enum.UserInputType.Focus then
			self:onFocusLost(false)
		end
	end

	self.startIncrementalTextSearch = function()
		if self.props.IncrementalTextSearch then
			if self.searchDelayTask then
				task.cancel(self.searchDelayTask)
			end
			self.searchDelayTask = task.delay(self.props.IncrementalTextSearchDelay / 1000, function()
				-- Ensure that this delayed call doesn't extend beyond the effective lifetime
				-- of this widget
				if self.isMounted then
					self.searchDelayTask = nil
					self.requestSearch()
				end
			end)
		end
	end

	self.onTextChanged = function(text)
		if Util.isRoact17(Roact) then
			self:setState(function(state)
				if state.text == text then
					return
				end

				return {
					text = text,
				}
			end, function()
				self.startIncrementalTextSearch()
			end)
		else
			self:setState(function(state)
				if state.text == text then
					return
				end

				return {
					text = text,
				}
			end)

			self.startIncrementalTextSearch()
		end
	end

	self.onTextBoxFocusGained = function()
		if self.props.Disabled then
			return
		end

		if self.props.OnTextBoxFocusGained then
			self.props.OnTextBoxFocusGained()
		end

		if supportsStyleSheets then
			self:setState({
				isFocused = true,
			})
		else
			self:setStateAndStyleModifier({
				isFocused = true,
			})
		end
	end

	self.onTextBoxFocusLost = function(enterPressed)
		if self.props.OnTextBoxFocusLost then
			self.props.OnTextBoxFocusLost(enterPressed)
		end

		self:onFocusLost(enterPressed)
	end

	self.onClearButtonClicked = function()
		if self.props.Disabled then
			return
		end

		if supportsStyleSheets then
			self:setState({
				text = "",
				isFocused = true,
				shouldFocus = true,
			}, if Util.isRoact17(Roact) then self.requestSearch else nil)
		else
			self:setStateAndStyleModifier({
				text = "",
				isFocused = true,
				shouldFocus = true,
			}, if Util.isRoact17(Roact) then self.requestSearch else nil)
		end
	end

	self.onSearchButtonClicked = function()
		if self.props.Disabled then
			return
		end

		self.requestSearch()
	end
end

function SearchBar:didUpdate(_prevProps, prevState)
	if self.props.OnTextChanged and prevState.text ~= self.state.text then
		self.props.OnTextChanged(self.state.text)
	end
end

if not supportsStyleSheets then
	--[[
		Set StyleModifier (for Theme.getStyle) based on hover and focus state.
		If the SearchBar is still focused when hover ends, keep the StyleModifier as Hover
	]]
	function SearchBar:setStateAndStyleModifier(newState, callback)
		self:setState(function(state)
			local isNowFocused = newState.isFocused
			if isNowFocused == nil then
				isNowFocused = state.isFocused
			end

			local isNowHovered = newState.isHovered
			if isNowHovered == nil then
				isNowHovered = state.isHovered
			end

			if isNowFocused or isNowHovered then
				newState.StyleModifier = StyleModifier.Hover
			else
				newState.StyleModifier = Roact.None
			end

			return newState
		end, if Util.isRoact17(Roact) then callback else nil)
	end
end

function SearchBar.getDerivedStateFromProps(nextProps, lastState)
	-- Check if the search term passed in as a prop is different to the last
	-- one passed in. If it is, then that perhaps means the user searched for
	-- something externally (e.g. clicking on a suggestion) or the search
	-- was cleared because the category changed.
	--
	-- In these cases, we should
	-- override our own text value with what was passed in. This check is so
	-- that it only happens once, rather than every time the search bar is
	-- rerendered.
	local searchTerm = nextProps.SearchTerm
	local lastSearchTermAsProp = lastState.lastSearchTermAsProp or ""

	if searchTerm ~= lastSearchTermAsProp then
		return {
			text = searchTerm,
			lastSearchTermAsProp = searchTerm,
		}
	end

	return {}
end

function SearchBar:onFocusLost(enterPressed)
	if supportsStyleSheets then
		self:setState({
			isFocused = false,
			shouldFocus = false,
		})
	else
		self:setStateAndStyleModifier({
			isFocused = false,
			shouldFocus = false,
		})
	end

	if enterPressed then
		self.requestSearch()
	end
end

function SearchBar:didMount()
	self.isMounted = true

	if self.props.ShouldFocusOnMount then
		self:setState({
			shouldFocus = true,
		})
	end
end

function SearchBar:willUnmount()
	self.isMounted = false
end

function SearchBar:render()
	local props = self.props
	local state = self.state
	local localization = self.props.Localization
	local tags = if supportsStyleSheets then props[React.Tag] else nil
	local style = if supportsStyleSheets then props.Style or {} else props.Stylizer
	if supportsStyleSheets and typeof(style) == "string" then
		tags = joinTags(tags, style)
		style = {}
	end

	local buttonWidth = props.ButtonWidth
	local layoutOrder = props.LayoutOrder
	local disabled = props.Disabled
	local placeholderText = props.PlaceholderText
		or localization:getProjectText(LOCALIZATION_PROJECT_NAME, COMPONENT_NAME, "Search")
	local showSearchButton = props.ShowSearchButton
	local showSearchIcon = props.ShowSearchIcon
	local onInputBegan = props.OnInputBegan
	local onInputEnded = props.OnInputEnded
	local showFilterButton = props.ShowFilterButton
	local searchIsFiltered = props.SearchIsFiltered

	local shouldFocus = state.shouldFocus
	local text = state.text
	local showClearButton = #text > 0

	local isFocused = state.isFocused
	local isHovered = state.isHovered

	local size = prioritize(props.Size, style.Size, UDim2.fromScale(1, 1))
	local width = prioritize(props.Width, style.Width)

	if typeof(width) == "number" then
		size = UDim2.new(UDim.new(0, width), size.Y)
	elseif typeof(width) == "UDim" then
		size = UDim2.new(width, size.Y)
	end

	local separatorWidth = 1
	local buttonsWidth: number = (if showClearButton then buttonWidth else 0)
		+ (if showSearchButton then buttonWidth + separatorWidth else 0)
		+ (if showFilterButton then buttonWidth else 0)

	local buttonSize = UDim2.new(0, buttonWidth, 1, 0)

	if supportsStyleSheets then
		return Roact.createElement(TextInput, {
			AnchorPoint = props.AnchorPoint,
			AutomaticSize = props.AutomaticSize,
			LayoutOrder = layoutOrder,
			LeadingComponent = if showSearchIcon then Image else nil,
			LeadingComponentProps = if showSearchIcon
				then {
					-- Include Size explicitly for correct Sizing calculation
					Size = UDim2.fromOffset(16, 16),
					[React.Tag] = "SearchIcon Icon16 Primary",
				}
				else nil,
			OnInputBegan = onInputBegan,
			OnInputEnded = onInputEnded,
			OnTextChanged = self.onTextChanged,
			OnFocused = self.onTextBoxFocusGained,
			OnFocusLost = self.onTextBoxFocusLost,
			Position = props.Position,
			Text = text,
			TrailingComponent = SearchButtons,
			TrailingComponentProps = {
				Disabled = disabled,
				OnClear = self.onClearButtonClicked,
				OnSearch = self.onSearchButtonClicked,
				OnSearchOptionsToggled = self.props.OnSearchOptionsToggled,
				ShowClearButton = showClearButton,
				ShowFilterButton = showFilterButton,
				ShowSearchButton = showSearchButton,
				SearchIsFiltered = searchIsFiltered,
				Size = UDim2.new(0, buttonsWidth, 1, 0),
			},
			PlaceholderText = placeholderText,
			Width = width,
			[React.Tag] = joinTags("Component-SearchBar", tags),
		})
	else
		local padding = style.Padding
		local leftPadding = type(padding) == "table" and padding.Left or padding
		local topPadding = type(padding) == "table" and padding.Top or padding

		local borderColor = if style.Hover
			then (if isFocused or isHovered then style.Hover.BorderColor else nil)
			else nil
		local iconWidth = style.IconWidth
		local iconColor = style.IconColor
		local iconOffset = style.IconOffset

		-- If not provided by a specific style, e.g., Compact, this is nil and
		-- SearchBar uses the default styled TextInput size
		local textSize = style.TextSize

		return Roact.createElement(Pane, {
			Size = size,
			AutomaticSize = props.AutomaticSize,
			ClipsDescendants = true,
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
			BorderColor = borderColor,
			Style = "InputBox",
			Position = props.Position,
			AnchorPoint = props.AnchorPoint,
			[Roact.Event.MouseEnter] = self.mouseEnter,
			[Roact.Event.MouseLeave] = self.mouseLeave,
			[Roact.Event.InputBegan] = self.onBackgroundInputBegan,
			[Roact.Event.InputEnded] = self.onBackgroundFocusLost,
		}, {
			Input = Roact.createElement(Pane, {
				Layout = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				Spacing = iconOffset,
				Padding = {
					Bottom = 0,
					Left = iconOffset,
					Right = iconOffset,
					Top = 0,
				},
			}, {
				SearchIcon = showSearchIcon and Roact.createElement(Pane, {
					Size = UDim2.fromOffset(iconWidth, iconWidth),
					ScaleType = Enum.ScaleType.Fit,
					LayoutOrder = 1,
					Style = {
						Image = style.SearchIcon,
						Background = iconColor,
					},
				}),

				TextInput = Roact.createElement(DEPRECATED_TextInput, {
					Enabled = not disabled,
					Position = UDim2.new(0, leftPadding, 0.5, 0),
					Size = UDim2.new(1, -(buttonsWidth + (leftPadding * 2)), 1, -2 * topPadding),
					AnchorPoint = Vector2.new(0, 0.5),
					LayoutOrder = 2,
					PlaceholderText = placeholderText,
					Text = text,
					TextSize = textSize,
					OnInputBegan = onInputBegan,
					OnInputEnded = onInputEnded,
					OnTextChanged = self.onTextChanged,
					OnFocusGained = self.onTextBoxFocusGained,
					OnFocusLost = self.onTextBoxFocusLost,
					ShouldFocus = shouldFocus,
				}),
			}),

			Buttons = Roact.createElement(SearchButtons, {
				ButtonSize = buttonSize,
				Disabled = disabled,
				OnClear = self.onClearButtonClicked,
				OnSearch = self.onSearchButtonClicked,
				OnSearchOptionsToggled = self.props.OnSearchOptionsToggled,
				ShowClearButton = showClearButton,
				ShowFilterButton = showFilterButton,
				ShowSearchButton = showSearchButton,
				SearchIsFiltered = searchIsFiltered,
				Size = UDim2.new(0, buttonsWidth, 1, 0),
				Style = style.Buttons,
			}),
		})
	end
end

SearchBar = withContext({
	Localization = ContextServices.Localization,
	Stylizer = if supportsStyleSheets then nil else ContextServices.Stylizer,
})(SearchBar)

return SearchBar
