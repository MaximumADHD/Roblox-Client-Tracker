--[[
	Search Bar Component

	Implements a search bar component with a text box that dynamically moves as you type, and a button to request a search.

	Props:
		number width : how wide the search bar is
		number LayoutOrder = 0 : optional layout order for UI layouts
		string searchTerm

		callback onSearchRequested(string searchTerm) : callback for when the user presses the enter key
			or clicks the search button
]]

local Plugin = script.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)

local Constants = require(Plugin.Core.Util.Constants)
local ContextHelper = require(Plugin.Core.Util.ContextHelper)

local withTheme = ContextHelper.withTheme
local withLocalization = ContextHelper.withLocalization

local RoundButton = require(Plugin.Core.Components.RoundButton)
local SearchBarButtons = require(Plugin.Core.Components.SearchBar.SearchBarButtons)

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
		self.props.onSearchRequested(self.state.text)
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
		-- Also clear the hovered state because otherwise when it gets set to
		-- visible = false because the text is empty, it won't get the mouse
		-- leave event
		self:setState({
			text = "",
		})

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
		return withLocalization(function(localization, localizedContent)
			local props = self.props
			local state = self.state

			local containerWidth = props.width
			local layoutOrder = props.LayoutOrder or 0

			local text = state.text

			local isFocused = state.isFocused
			local isContainerHovered = state.isContainerHovered

			local showClearButton = #text > 0

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

			local innerPadding = 4

			local buttonsWidth = (2 * Constants.SEARCH_BAR_BUTTON_WIDTH) + 1
			-- Let the text box get closer to the buttons
			local adjustedButtonsWidth = buttonsWidth - 6

			local parentWidth = containerWidth - adjustedButtonsWidth - (2 * innerPadding)

			local textWidth = Constants.getTextSize(text).x
			local isShorterThanParent = textWidth < parentWidth

			local searchBarTheme = theme.searchBar
			local focusOrHovered = isFocused or isContainerHovered

			return Roact.createElement("Frame", {
				Size = UDim2.new(0, containerWidth, 1, 0),
				BackgroundTransparency = 1,
				LayoutOrder = layoutOrder,
			}, {
				Background = Roact.createElement(RoundButton, {
					Position = UDim2.new(0, -1, 0, -1),
					Size = UDim2.new(1, 2, 1, 2),

					BorderColor3 = focusOrHovered and searchBarTheme.borderSelectedColor or searchBarTheme.borderColor,
					ClipsDescendants = true,

					BackgroundColor3 = searchBarTheme.backgroundColor,

					[Roact.Event.MouseEnter] = self.onContainerHovered,
					[Roact.Event.MouseMoved] = self.onContainerHovered,
					[Roact.Event.MouseLeave] = self.onContainerHoverEnded,
					[Roact.Event.MouseButton1Down] = self.onBackgroundClicked,
					[Roact.Event.InputEnded] = self.onBackgroundFocusLost,
				}, {
					-- Parent the text box to another frame to make the logic for calculating position with the padding easier
					TextContainer = Roact.createElement("Frame", {
						Position = UDim2.new(0, innerPadding, 0, innerPadding),
						Size = UDim2.new(1, -(adjustedButtonsWidth + (innerPadding * 2)), 1, -innerPadding * 2),
						BackgroundTransparency = 1,
						ZIndex = 2,
					}, {
						TextBox = Roact.createElement("TextBox", {
							AnchorPoint = Vector2.new(isShorterThanParent and 0 or 1, 0),
							Position = UDim2.new(isShorterThanParent and 0 or 1, 0, 0, 0),
							Size = UDim2.new(0, textWidth, 1, 0),
							BackgroundTransparency = 1,

							ClearTextOnFocus = false,
							Font = Constants.FONT,
							TextSize = Constants.FONT_SIZE_MEDIUM,
							TextXAlignment = Enum.TextXAlignment.Left,
							TextColor3 = searchBarTheme.textColor,
							Text = text,

							PlaceholderText = localizedContent.SearchBarDefaultText,
							PlaceholderColor3 = searchBarTheme.placeholderTextColor,

							-- Get a reference to the text box so that clicking on the container can call :CaptureFocus()
							[Roact.Ref] = self.textBoxRef,

							[Roact.Change.Text] = self.onTextChanged,
							[Roact.Event.Focused] = self.onTextBoxFocused,
							[Roact.Event.FocusLost] = self.onTextBoxFocusLost,
						}),
					}),

					Buttons = Roact.createElement(SearchBarButtons, {
						showClearButton = showClearButton,
						onClearButtonClicked = self.onClearButtonClicked,
						onSearchButtonClicked = self.requestSearch,
					})
				}),
			})
		end)
	end)
end

return SearchBar
