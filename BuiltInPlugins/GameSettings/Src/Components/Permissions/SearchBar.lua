--[[
	Search Bar Component

	Implements a search bar component with a text box that dynamically moves as you type, and a button to request a search.

	Props:
		number LayoutOrder = 0 : optional layout order for UI layouts

		string defaultText = default text to show in the empty search bar.
		string searchTerm

		callback onSearchRequested(string searchTerm) : callback for when the user presses the enter key
			or clicks the search button
		callback onTextChanged(string text) : callback for when the text was changed
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)

local Constants = require(Plugin.Src.Util.Constants)

local withTheme = require(Plugin.Src.Consumers.withTheme)

local createFitToContent = require(Plugin.UILibrary.Components.createFitToContent)

local TextService = game:GetService("TextService")

local ContentFit = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 0),
})

local SearchBarContentFit = createFitToContent("ImageLabel", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 0),
	FillDirection = Enum.FillDirection.Horizontal,
})

local SEARCH_BAR_HEIGHT = 36
local SEARCH_BAR_BUTTON_ICON_SIZE = 32
local CLEAR_BUTTON_ICON_SIZE = 28
local TEXT_PADDING = 16
-- in ms
local TEXT_SEARCH_THRESHOLD = 500

local SearchBar = Roact.PureComponent:extend("SearchBar")

local function stripSearchTerm(searchTerm)
	return searchTerm and searchTerm:gsub("\n", " ") or ""
end

function SearchBar:init()
	self.state = {
		text = "",

		isFocused = false,
		isContainerHovered = false,
		isClearButtonHovered = false,

		lastDelay = {},
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

	self.onTextChanged = function(rbx)
		local text = stripSearchTerm(rbx.Text)
		local textBox = self.textBoxRef.current
		if self.state.text ~= text then
			self:setState({
				text = text,
			})
			if self.props.onTextChanged then
				self.props.onTextChanged(text)
			end

			local thisDelay = {}
			self.state.lastDelay = thisDelay
			delay(TEXT_SEARCH_THRESHOLD / 1000, function()
				if thisDelay == self.state.lastDelay and text ~= "" then
					self.requestSearch()
				end
			end)
		end

		local textBound = TextService:GetTextSize(text, textBox.TextSize, textBox.Font, Vector2.new(maxWidth, math.huge))
		if textBound.x > textBox.AbsoluteSize.x then
			textBox.TextXAlignment = Enum.TextXAlignment.Right 
		else
			textBox.TextXAlignment = Enum.TextXAlignment.Left
		end
	end

	self.onTextBoxFocused = function(rbx)
		self:setState({
			isFocused = true,
		})
	end

	self.onTextBoxFocusLost = function(rbx, enterPressed, inputObject)
		self:setState({
			isFocused = false,
			isContainerHovered = false,
		})
	
		if (enterPressed) then
			self.requestSearch()
		end
	end

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
		local textBox = self.textBoxRef.current
		self:setState({
			text = "",
			isFocused = true,
		})
		textBox:CaptureFocus()

		-- Stop hovering on the clear button so that when it reappears,
		-- it doesn't start in a hover state
		self.onClearButtonHoverEnded()
	end
end

function SearchBar:render()
	return withTheme(function(theme)
		local props = self.props
		local state = self.state

		local layoutOrder = props.LayoutOrder or 0

		local text = state.text

		local isFocused = state.isFocused
		local isContainerHovered = state.isContainerHovered

		--[[
		By default, TextBoxes let you keep typing infinitely and it will just go out of the bounds
		(unless you set properties like ClipDescendants, TextWrapped)
		Elsewhere, text boxes shift their contents to the left as you're typing past the bounds
		So what you're typing is on the screen

		This is implemented here by:
		- Set ClipsDescendants = true on the container
		- Get the width of the container, subtracting any padding and the width of the button on the right
		- Get the width of the text being rendered (this is calculated in the Roact.Change.Text event)
		- If the text is shorter than the text box size, then:
			- Anchor the text label to the left side of the parent
		- Else
			- Anchor the text label to the right side of the parent
		]]

		local searchBarTheme = theme.searchBar
		local borderColor
		if isFocused then
			borderColor = searchBarTheme.borderSelected
		elseif isContainerHovered then
			borderColor = searchBarTheme.borderHovered
		else
			borderColor = searchBarTheme.border
		end

		local defaultText = props.DefaultText

		local textBoxOffset = text ~= "" and -SEARCH_BAR_HEIGHT * 2 or -SEARCH_BAR_HEIGHT

		return Roact.createElement(ContentFit, {
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
		}, {
			Background =  Roact.createElement(SearchBarContentFit, {
				BackgroundTransparency = 1,
				Image = Constants.ROUNDED_BORDER_IMAGE,
				ImageColor3 = borderColor,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Constants.ROUNDED_FRAME_SLICE,

				[Roact.Event.MouseEnter] = self.onContainerHovered,
				[Roact.Event.MouseMoved] = self.onContainerHovered,
				[Roact.Event.MouseLeave] = self.onContainerHoverEnded,
			}, {
				ImageFrame = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 0,
					Size = UDim2.new(0, SEARCH_BAR_HEIGHT,
						0, SEARCH_BAR_HEIGHT),
				} , {
					Image = Roact.createElement("ImageLabel", {						
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Size = UDim2.new(0, SEARCH_BAR_BUTTON_ICON_SIZE,
							0, SEARCH_BAR_BUTTON_ICON_SIZE),
						BackgroundTransparency = 1,
						-- TODO: placeholder asset
						Image = "http://www.roblox.com/asset/?id=924320031",
					}),
				}),			

				TextBox = Roact.createElement("TextBox", Cryo.Dictionary.join(theme.fontStyle.Normal, {
					LayoutOrder = 1,
					Size = UDim2.new(1, textBoxOffset, 0, SEARCH_BAR_HEIGHT),
					BackgroundTransparency = 1,
					ClipsDescendants = true,

					ClearTextOnFocus = false,
					TextXAlignment = Enum.TextXAlignment.Left,
					Text = text,

					PlaceholderText = defaultText,
					PlaceholderColor3 = searchBarTheme.placeholderText,

					-- Get a reference to the text box so that clicking on the container can call :CaptureFocus()
					[Roact.Ref] = self.textBoxRef,

					[Roact.Change.Text] = self.onTextChanged,
					[Roact.Event.Focused] = self.onTextBoxFocused,
					[Roact.Event.FocusLost] = self.onTextBoxFocusLost,
				}) , {
					TextPadding = Roact.createElement("UIPadding", {
						PaddingLeft = UDim.new(0, TEXT_PADDING),
					})
				}),
				
				ClearButtonFrame = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 2,
					Size = UDim2.new(0, SEARCH_BAR_HEIGHT,
						0, SEARCH_BAR_HEIGHT),
				} , {
					ClearButton = Roact.createElement("ImageButton", {
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Size = UDim2.new(0, CLEAR_BUTTON_ICON_SIZE, 0, CLEAR_BUTTON_ICON_SIZE),
						BackgroundTransparency = 1,
						Visible = text ~= "",
						Image = isClearButtonHovered and "http://www.roblox.com/asset/?id=924320031" or "http://www.roblox.com/asset/?id=924320031",
						ImageColor3 = isClearButtonHovered and searchBarTheme.clearButton.imageSelected
							or searchBarTheme.clearButton.image,
		
						[Roact.Event.MouseEnter] = self.onClearButtonHovered,
						[Roact.Event.MouseMoved] = self.onClearButtonHovered,
						[Roact.Event.MouseLeave] = self.onClearButtonHoverEnded,
						[Roact.Event.MouseButton1Down] = self.onClearButtonClicked,
					}),
				}),
			}),
		})
	end)
end

return SearchBar
