--[[
	Search Bar Component

	Implements a search bar component with a text box that dynamically moves as you type, and a button to request a search.

	Props:
		number Width : how wide the search bar is
		number LayoutOrder = 0 : optional layout order for UI layouts
		bool ShowSearchButton : show the search bar button at the end of the bar.
		string DefaultText = default text to show in the empty search bar.
		string SearchTerm
		bool IsLive = Should this search bar be styled as a live search bar?

		callback OnSearchRequested(string searchTerm) : callback for when the user presses the enter key
			or clicks the search button or types if search is live
		callback OnTextChanged(string text) : callback for when the text was changed
]]

local Library = script.Parent.Parent
local Roact = require(Library.Parent.Roact)
local Theming = require(Library.Theming)
local withTheme = Theming.withTheme

local RoundFrame = require(Library.Components.RoundFrame)
local SearchBarButtons = require(Library.Components.SearchBarButtons)

local TextService = game:GetService("TextService")

-- in ms
local TEXT_SEARCH_THRESHOLD = 500

local SearchBar = Roact.PureComponent:extend("SearchBar")

local function stripSearchTerm(searchTerm)
	return searchTerm and searchTerm:gsub("\n", " ") or ""
end

function SearchBar:init()
	self.state = {
		text = "",
		lastSearchTermAsProp = "",

		isFocused = false,
		isContainerHovered = false,
	}

	self.textBoxRef = Roact.createRef()

	self.requestSearch = function()
		self.props.OnSearchRequested(self.state.text)
	end

	self.onContainerHovered = function()
		self:setState({
			isContainerHovered = true,
		})
	end

	self.onContainerHoverEnded = function()
		self:setState({
			isContainerHovered = false,
		})
	end

	self.onBackgroundClicked = function()
		-- Check if the search button was clicked or not
		-- If it was clicked, we don't want to focus on the text box
		if self.textBoxRef and self.textBoxRef.current then
			self.textBoxRef.current:CaptureFocus()
		end
	end

	self.onBackgroundFocusLost = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.Focus then
			self:onFocusLost(false)
		end
	end

	self.onTextChanged = function(rbx)
		local text = stripSearchTerm(rbx.Text)
		if self.state.text ~= text then
			self:setState({
				text = text,
			})
			if self.props.OnTextChanged then
				self.props.OnTextChanged(text)
			end

			if self.props.IsLive then
				local thisDelay = {}
				self.state.lastDelay = thisDelay
				delay(TEXT_SEARCH_THRESHOLD / 1000, function()
					if thisDelay == self.state.lastDelay and text ~= "" then
						self.requestSearch()
					end
				end)
			end
		end
	end

	self.onTextBoxFocused = function(rbx)
		self:setState({
			isFocused = true,
		})
	end

	self.onTextBoxFocusLost = function(rbx, enterPressed, inputObject)
		self:onFocusLost(enterPressed)
	end

	self.onClearButtonClicked = function()
		self:setState({
			text = "",
			isFocused = true,
		})
		self.textBoxRef.current:CaptureFocus()

		self.requestSearch()
	end
end

function SearchBar.getDerivedStateFromProps(nextProps, lastState)
	-- Check if the search term passed in as a prop is different to the last
	-- one passed in. If it is, then that means the user searched for
	-- something externally (e.g. clicking on a suggestion) or the search
	-- was cleared because the category changed. In that case, we should
	-- override our own text value with what was passed in. The check is so
	-- that it only happens once, rather than every time the search bar is
	-- rerendered.
	local searchTerm = stripSearchTerm(nextProps.searchTerm)
	local lastSearchTermAsProp = lastState.lastSearchTermAsProp or ""

	if (searchTerm ~= lastSearchTermAsProp) then
		return {
			text = searchTerm,
			lastSearchTermAsProp = searchTerm
		}
	end

	return {}
end

function SearchBar:onFocusLost(enterPressed)
	self:setState({
		isFocused = false,
		isContainerHovered = false,
	})

	if (enterPressed) then
		self.requestSearch()
	end
end

function SearchBar:render()
	return withTheme(function(theme)
		local props = self.props
		local state = self.state

		local containerWidth = props.Width
		local layoutOrder = props.LayoutOrder or 0

		local text = state.text

		local isFocused = state.isFocused
		local isContainerHovered = state.isContainerHovered

		local showClearButton = #text > 0
		local showSearchButton = self.props.ShowSearchButton

		local isLive = props.IsLive

		--[[
		By default, TextBoxes let you keep typing infinitely and it will just go out of the bounds
		(unless you set properties like ClipDescendants, TextWrapped)
		Elsewhere, text boxes shift their contents to the left as you're typing past the bounds
		So what you're typing is on the screen

		This is implemented here by:
		- Set ClipsDescendants = true on the container
		- Get the width of the container, subtracting any padding and the width of the button on the right
		- Get the width of the text being rendered (this is calculated in the Roact.Change.Text event)
		- If the text is shorter than the parent, then:
			- Anchor the text label to the left side of the parent
			- Set its width = container width
		- Else
			- Anchor the text label to the right side of the parent
			- Sets its width = text width (with AnchorPoint = (1, 0), this grows to the left)
		]]

		local innerPadding = 10

		local searchBarTheme = theme.searchBar

		local buttonsWidth = showSearchButton and (2 * searchBarTheme.buttons.size) + 1
			or searchBarTheme.buttons.size
		-- Let the text box get closer to the buttons
		local adjustedButtonsWidth = buttonsWidth - 6

		local parentWidth = containerWidth - adjustedButtonsWidth - (2 * innerPadding)

		local textWidth = TextService:GetTextSize(text, searchBarTheme.text.size,
			searchBarTheme.text.font, Vector2.new(math.huge, math.huge)).x
		local isShorterThanParent = textWidth < parentWidth

		local borderColor
		if isFocused then
			borderColor = searchBarTheme.border.selected.color
		elseif isContainerHovered then
			borderColor = searchBarTheme.border.hovered.color
		else
			borderColor = searchBarTheme.border.color
		end

		local defaultText = self.props.DefaultText

		return Roact.createElement("Frame", {
			Size = UDim2.new(0, containerWidth, 1, 0),
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
		}, {
			Background = Roact.createElement(RoundFrame, {
				Position = UDim2.new(0, -1, 0, -1),
				Size = UDim2.new(1, 2, 1, 2),

				BorderColor3 = borderColor,
				ClipsDescendants = true,

				BackgroundColor3 = isLive and searchBarTheme.liveBackgroundColor or searchBarTheme.backgroundColor,

				OnMouseEnter = self.onContainerHovered,
				OnMouseLeave = self.onContainerHoverEnded,
				OnActivated = self.onBackgroundClicked,
				[Roact.Event.InputEnded] = self.onBackgroundFocusLost,
			}, {
				-- Parent the text box to another frame to make the logic for calculating position with the padding easier
				TextContainer = Roact.createElement("Frame", {
					Position = UDim2.new(0, innerPadding, 0, 0),
					Size = UDim2.new(1, -(adjustedButtonsWidth + (innerPadding * 2)), 1, 0),
					BackgroundTransparency = 1,
					ZIndex = 2,
				}, {
					TextBox = Roact.createElement("TextBox", {
						LayoutOrder = 1,
						Size = UDim2.new(1, 0, 1, 0),
						BackgroundTransparency = 1,
						ClipsDescendants = true,

						ClearTextOnFocus = false,
						Font = searchBarTheme.font,
						TextSize = searchBarTheme.textSize,
						TextXAlignment = isShorterThanParent and Enum.TextXAlignment.Left or Enum.TextXAlignment.Right,
						TextColor3 = searchBarTheme.text.color,
						Text = text,

						PlaceholderText = defaultText,
						PlaceholderColor3 = searchBarTheme.text.placeholder.color,

						-- Get a reference to the text box so that clicking on the container can call :CaptureFocus()
						[Roact.Ref] = self.textBoxRef,

						[Roact.Change.Text] = self.onTextChanged,
						[Roact.Event.Focused] = self.onTextBoxFocused,
						[Roact.Event.FocusLost] = self.onTextBoxFocusLost,
					}),
				}),

				Buttons = Roact.createElement(SearchBarButtons, {
					showClearButton = showClearButton,
					showSearchButton = showSearchButton,
					onClearButtonClicked = self.onClearButtonClicked,
					onSearchButtonClicked = self.requestSearch,
				})
			}),
		})
	end)
end

return SearchBar
