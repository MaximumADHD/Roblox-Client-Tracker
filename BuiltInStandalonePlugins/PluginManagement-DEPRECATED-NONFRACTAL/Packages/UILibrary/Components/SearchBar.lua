--[[
	Search Bar Component

	Implements a search bar component with a text box that dynamically moves as you type, and searches after a delay.

	Props:
		UDim2 Size: size of the searchBar
		number LayoutOrder = 0 : optional layout order for UI layouts
		string DefaultText = default text to show in the empty search bar.

		callback OnSearchRequested(string searchTerm) : callback for when the user presses the enter key
			or clicks the search button or types if search is live
]]

local Library = script.Parent.Parent
local Roact = require(Library.Parent.Roact)
local Theming = require(Library.Theming)
local withTheme = Theming.withTheme

local LayoutOrderIterator = require(Library.Utils.LayoutOrderIterator)

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

		isFocused = false,
		isContainerHovered = false,
		isClearButtonHovered = false,
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

	self.onTextChanged = function(rbx)
		local text = stripSearchTerm(rbx.Text)
		local textBox = self.textBoxRef.current
		if self.state.text ~= text then
			self:setState({
				text = text,
			})

			delay(TEXT_SEARCH_THRESHOLD / 1000, function()
				if text ~= "" then
					self.requestSearch()
				end
			end)

			local textBound = TextService:GetTextSize(text, textBox.TextSize, textBox.Font, Vector2.new(math.huge, math.huge))
			if textBound.x > textBox.AbsoluteSize.x then
				textBox.TextXAlignment = Enum.TextXAlignment.Right
			else
				textBox.TextXAlignment = Enum.TextXAlignment.Left
			end
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
			isFocused = true,
			isClearButtonHovered = false,
		})

		textBox.Text = ""
		textBox:CaptureFocus()
		textBox.TextXAlignment = Enum.TextXAlignment.Left
	end
end

function SearchBar:render()
	return withTheme(function(theme)
		local props = self.props
		local state = self.state

		local size = props.Size
		local layoutOrder = props.LayoutOrder or 0
		local onSearchRequested = props.OnSearchRequested

		assert(size ~= nil, "Searchbar requires a size.")
		assert(onSearchRequested ~= nil and type(onSearchRequested) == "function",
			"Searchbar requires a OnSearchRequested function.")

		local text = state.text

		local isFocused = state.isFocused
		local isContainerHovered = state.isContainerHovered
		local isClearButtonHovered = state.isClearButtonHovered

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
		local searchBarTheme = theme.searchBar

		local buttonSize = searchBarTheme.buttons.size

		local textBoxOffset = #text > 0 and -buttonSize * 2 or -buttonSize

		local borderColor
		if isFocused then
			borderColor = searchBarTheme.border.selected.color
		elseif isContainerHovered then
			borderColor = searchBarTheme.border.hovered.color
		else
			borderColor = searchBarTheme.border.color
		end

		local clearButtonImage = isClearButtonHovered and searchBarTheme.images.clear.hovered.image or searchBarTheme.images.clear.image

		local defaultText = self.props.DefaultText

		local layoutIndex = LayoutOrderIterator.new()

		return Roact.createElement("Frame", {
			Size = size,
			BackgroundColor3 = searchBarTheme.backgroundColor,
			BorderColor3 = borderColor,
			BorderSizePixel = 1,
			LayoutOrder = layoutOrder,

			[Roact.Event.MouseEnter] = self.onContainerHovered,
			[Roact.Event.MouseLeave] = self.onContainerHoverEnded,
		}, {
			Background = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
			}, {
				SearchBarLayout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, 0),
					FillDirection = Enum.FillDirection.Horizontal,
				}),

				SearchImageFrame = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.new(0, buttonSize, 0, buttonSize),
					LayoutOrder = layoutIndex:getNextOrder(),
				} , {
					SearchImage = Roact.createElement("ImageLabel", {
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Size = UDim2.new(0, searchBarTheme.buttons.iconSize,
							0, searchBarTheme.buttons.iconSize),
						BackgroundTransparency = 1,
						Image = searchBarTheme.images.search.image,
						ImageColor3 = searchBarTheme.buttons.search.color,
					}),
				}),

				TextBox = Roact.createElement("TextBox", {
					Size = UDim2.new(1, textBoxOffset, 0, buttonSize),
					LayoutOrder = layoutIndex:getNextOrder(),

					BackgroundTransparency = 1,
					ClipsDescendants = true,

					ClearTextOnFocus = false,
					Font = searchBarTheme.font,
					TextSize = searchBarTheme.textSize,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextColor3 = searchBarTheme.text.color,
					Text = text,
					TextEditable = true,

					PlaceholderText = defaultText,
					PlaceholderColor3 = searchBarTheme.text.placeholder.color,

					-- Get a reference to the text box so that clicking on the container can call :CaptureFocus()
					[Roact.Ref] = self.textBoxRef,

					[Roact.Change.Text] = self.onTextChanged,
					[Roact.Event.Focused] = self.onTextBoxFocused,
					[Roact.Event.FocusLost] = self.onTextBoxFocusLost,
				}),

				ClearButton = showClearButton and Roact.createElement("ImageButton", {
					Size = UDim2.new(0, buttonSize, 0, buttonSize),
					LayoutOrder = layoutIndex:getNextOrder(),

					BackgroundTransparency = 1,

					[Roact.Event.MouseEnter] = self.onClearButtonHovered,
					[Roact.Event.MouseLeave] = self.onClearButtonHoverEnded,
					[Roact.Event.MouseButton1Down] = self.onClearButtonClicked,
				}, {
					ClearImage = Roact.createElement("ImageLabel", {
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Size = UDim2.new(0, searchBarTheme.buttons.iconSize,
							0, searchBarTheme.buttons.iconSize),
						BackgroundTransparency = 1,
						Image = clearButtonImage,
						ImageColor3 = searchBarTheme.buttons.clear.color,
					}),
				}),
			}),
		})
	end)
end

return SearchBar
