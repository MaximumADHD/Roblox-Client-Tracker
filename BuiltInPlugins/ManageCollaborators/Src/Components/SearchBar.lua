--[[
	Search Bar Component

	Implements a search bar component with a text box that dynamically moves as you type, and a button to request a search.

	Props:
		number LayoutOrder = 0 : optional layout order for UI layouts

		string DefaultText = default text to show in the empty search bar.
		string NoResultsText = text to show when there is no search results

		table Results : table of search results to display
			format should be
			{
				"Users" = {
					{Icon=RoactElement, Name="UsernameA", Key=theirUserId},
					{Icon=RoactElement, Name="UsernameB", Key=theirUserId},
				},
				"Groups" = {
					...
				},
			}
		bool LoadingMore : true if making web request for more results to display loading animation

		int MaxItems : The maximum number of entries that can display at a time.
			If this is less than the number of entries in the dropdown, a scrollbar will appear.
		int HeaderHeight : The height of headers in dropdown in pixels
		int ItemHeight : The height of each entry in the dropdown, in pixels.
		int TextPadding : The amount of padding, in pixels, around the text elements.
		int ScrollBarPadding : The padding which appears on either side of the scrollbar.
		int ScrollBarThickness : The horizontal width of the scrollbar.

		callback onSearchRequested(string searchTerm) : callback for when the user presses the enter key
			or clicks the search button
		callback onTextChanged(string text) : callback for when the text was changed
		callback OnItemClicked(key) : A callback when the user selects an item in the dropdown.
			Returns the key as it was defined in the Results array.
]]
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)

local Constants = require(Plugin.Src.Util.Constants)

local ContextServices = require(Plugin.Packages.Framework).ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization

local Framework = require(Plugin.Packages.Framework)
local Stylizer = Framework.Style.Stylizer
local LayoutOrderIterator = Framework.Util.LayoutOrderIterator

local COLLABORATORTYPE_USER = Constants.COLLABORATORTYPE_USER

local UI = Framework.UI
local DropdownMenu = UI.DropdownMenu

local createFitToContent = require(Plugin.Src.Util.CreateFitToContent)
local LoadingIndicator = Framework.UI.LoadingIndicator 

local TextService = game:GetService("TextService")

local ContentFit = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 0),
})

local HorizontalContentFit = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 0),
	FillDirection = Enum.FillDirection.Horizontal,
})

local SearchBarContentFit = createFitToContent("ImageLabel", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 0),
	FillDirection = Enum.FillDirection.Horizontal,
})

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
		isKeyHovered = false,

		showDropdown = false,
		dropdownItem = nil,

		lastDelay = {},

		lastResults = {},
		mergedItems = {},
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
					if not self.state.showDropdown and next(self.state.mergedItems) ~= nil then
						self.showDropdown()
					end
				end
			end)

			local textBound = TextService:GetTextSize(text, textBox.TextSize, textBox.Font, Vector2.new(0, math.huge))
			if textBound.x > textBox.AbsoluteSize.x then
				textBox.TextXAlignment = Enum.TextXAlignment.Right
			else
				textBox.TextXAlignment = Enum.TextXAlignment.Left
			end
		end
	end

	self.onTextBoxFocused = function(textboxEnabled, rbx)
		local textBox = self.textBoxRef.current

		self:setState({
			isFocused = true,
		})

		if not textboxEnabled then
			textBox:ReleaseFocus()
		end

		if next(self.state.mergedItems) ~= nil then
			self.showDropdown()
		end
	end

	self.onTextBoxFocusLost = function(rbx, enterPressed, inputObject)
		self:setState({
			isFocused = false,
			isContainerHovered = false,
		})

		-- We also trigger a focus loss of the textbox when we are clicking on a dropdownItem
		-- If we hide it now, it will hide before our click can be registered with the dropdownItem,
		-- so don't hide it if we're hovering over one (selecting an item will hide the dropdown itself)
		if not self.state.dropdownItem then
			self.hideDropdown()
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
			isFocused = true,
		})

		-- Update property and not state so our onTextChanged path and its special behavior is run
		textBox.Text = ""
		textBox:CaptureFocus()
		textBox.TextXAlignment = Enum.TextXAlignment.Left


		-- Stop hovering on the clear button so that when it reappears,
		-- it doesn't start in a hover state
		self.onClearButtonHoverEnded()
	end

	self.onItemClicked = function(item)
		self.props.OnItemClicked(item.Key)
		self.hideDropdown()
	end

	self.showDropdown = function()
		self:setState({
			showDropdown = true,
		})
	end

	self.hideDropdown = function()
		if not self.state.isFocused then
			self:setState({
				showDropdown = false,
				dropdownItem = Roact.None, -- MouseLeave does not fire when the element goes away. We need to manually clear this
				isKeyHovered = false,
			})
		end
	end

	self.onKeyMouseEnter = function(item)
		self:setState({
			dropdownItem = item,
			isKeyHovered = true,
		})
	end

	self.onKeyMouseLeave = function(item)
		if self.state.dropdownItem == item then
			self:setState({
				dropdownItem = Roact.None,
				isKeyHovered = false,
			})
		end
	end

	self.onRenderItem = function(item, index, activated)
		local props = self.props
		local theme = props.Stylizer

		local isGroupGame = props.IsGroupGame
		
		local localization = props.Localization
		
		local searchBarTheme = theme.searchBar

		local dropdownItem = self.state.dropdownItem

		local noResultsText = props.NoResultsText
		local headerHeight = props.HeaderHeight
		local itemHeight = props.ItemHeight
		local textPadding = searchBarTheme.textPadding

		local searchBarExtents
		local searchBarRef = self.textBoxRef and self.textBoxRef.current

		if searchBarRef then
			searchBarRef = searchBarRef.Parent
			local searchBarMin = searchBarRef.AbsolutePosition
			local searchBarSize = searchBarRef.AbsoluteSize
			local searchBarMax = searchBarMin + searchBarSize
			searchBarExtents = Rect.new(searchBarMin.X, searchBarMin.Y, searchBarMax.X, searchBarMax.Y)
		end

		local contentWidth = searchBarExtents.Width - searchBarTheme.dropDown.item.offset
		
		if typeof(item) == "string" and (item ~= "LoadingIndicator"  and item ~= "NoResults") then
			return Roact.createElement("Frame", {
				Size = UDim2.new(0, contentWidth, 0, headerHeight),
				BackgroundColor3 = searchBarTheme.dropDown.backgroundColor,
				LayoutOrder = index,
				BorderSizePixel = 0,
			}, {
				CollabTypeText = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.searchBar.dropDown.collaboratorTypeText, {
					Text = localization:getText("CollaboratorTypes", item),
					TextXAlignment = Enum.TextXAlignment.Left,
					Position = theme.searchBar.collabTypeTextPosition,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
				})),
				
				FriendsEditAccessText = not isGroupGame and item == COLLABORATORTYPE_USER and Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.searchBar.dropDown.collaboratorTypeText, {
					Text = localization:getText("Description", "FriendsEditAccess"),
					TextXAlignment = Enum.TextXAlignment.Right,
					Position = searchBarTheme.friendsAccessTextPosition,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
				})) or nil,
			})
		elseif item == "NoResults" then
			return Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Normal, {
				Size = UDim2.new(0, contentWidth, 0, itemHeight),
				Text = noResultsText,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = searchBarTheme.dropDown.backgroundColor,
				BorderSizePixel = 0,
				TextWrapped = true,
				LayoutOrder = index,
			}), {
				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, textPadding),
				}),
			})
		elseif item == "LoadingIndicator" then
			return Roact.createElement("Frame", {
				Size = UDim2.new(0, contentWidth, 0, itemHeight),
				BackgroundColor3 = searchBarTheme.dropDown.backgroundColor,
				BorderSizePixel = 0,
				LayoutOrder = index,
			}, {
				LoadingIndicator = Roact.createElement(LoadingIndicator, {
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					ZIndex = 3,
				}),
			})
		-- user/group items
		else
			local key = item.Key
			local isFriend = item.IsFriend
			local isHovered = dropdownItem == key
			
			local layoutOrderIterator = LayoutOrderIterator.new()

			local backgroundColor = isHovered and searchBarTheme.dropDown.hovered.backgroundColor
				or searchBarTheme.dropDown.backgroundColor
			return Roact.createElement("ImageButton", {
					Size = UDim2.new(0, contentWidth, 0, itemHeight),
					BackgroundColor3 = backgroundColor,
					BorderSizePixel = 0,
					LayoutOrder = index,
					AutoButtonColor = false,
					[Roact.Event.Activated] = activated,
					[Roact.Event.MouseEnter] = function()
						self.onKeyMouseEnter(key)
					end,
					[Roact.Event.MouseLeave] = function()
						self.onKeyMouseLeave(key)
					end,
				}, {
					Roact.createElement(HorizontalContentFit, {
						LayoutOrder = index,
						BackgroundTransparency = 1,
					} , {
					IconFrame = Roact.createElement("Frame", {
						BackgroundTransparency = 1,
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						Size = UDim2.new(0, itemHeight,
							0, itemHeight),
					} , {
						SmallIcon = Roact.createElement("Frame", {
							AnchorPoint = Vector2.new(0.5, 0.5),
							Position = UDim2.new(0.5, 0, 0.5, 0),
							Size = UDim2.new(0, searchBarTheme.thumbnailSize, 0, searchBarTheme.thumbnailSize),

							BackgroundColor3 = backgroundColor,
							BorderSizePixel = 0,
						}, {
							Icon = item.Icon,
						}),

						Padding = Roact.createElement("UIPadding", {
							PaddingLeft = UDim.new(0, searchBarTheme.thumbnailPaddingLeft),
						}),
					}),

					TextLabel = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Normal, {
						Size = UDim2.new(0, searchBarTheme.nameLabelWidth, 0, itemHeight),
						Text = item.Name,
						TextXAlignment = Enum.TextXAlignment.Left,
						TextColor3 = isHovered and searchBarTheme.dropDown.hovered.displayText or searchBarTheme.dropDown.displayText,
						BackgroundTransparency = 1,
						TextWrapped = true,
						ClipsDescendants = true,
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						BorderSizePixel = 0,
					}), {
						Padding = Roact.createElement("UIPadding", {
							PaddingLeft = UDim.new(0, searchBarTheme.renderItemTextPadding),
						}),
					}),
					
					FriendIconFrame = if isFriend then Roact.createElement("Frame", {
						BackgroundTransparency = 1,
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						Size = UDim2.new(0, searchBarTheme.friendIcon.FrameWidth, 0, itemHeight)
					}, {
						FriendImageLabel = Roact.createElement("ImageLabel", {
							Size = UDim2.new(0, searchBarTheme.friendIcon.LabelWidth, 0, searchBarTheme.friendIcon.LabelHeight),
							Image = searchBarTheme.friendIcon.Image,
							AnchorPoint = Vector2.new(.5, .5),
							Position = UDim2.new(.5, 0, .5, 0),
							BackgroundTransparency = 1,
						})
					}) else nil,

					FriendTextLabel = if isFriend then Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Normal, {
						Size = UDim2.new(1, 0, 0, itemHeight),
						AutomaticSize = Enum.AutomaticSize.X,
						Text = localization:getText("SearchBar", "FriendLabel"),
						TextXAlignment = Enum.TextXAlignment.Left,
						TextYAlignment = Enum.TextYAlignment.Center,
						TextColor3 = isHovered and searchBarTheme.dropDown.hovered.displayText or searchBarTheme.dropDown.displayText,
						BackgroundTransparency = 1,
						LayoutOrder = layoutOrderIterator:getNextOrder(),
						BorderSizePixel = 0,
					}), {
							Padding = Roact.createElement("UIPadding", {
								PaddingRight = UDim.new(0, 29),
							}),
						}) else nil,
				})
			})
		end
	end

	-- A store provided by the consumer arbitrates which results are displayed, but is dependent
	-- on this component to updates those results. This store persists between re-opening Game Settings,
	-- so it will show results from last session unless we tell it the text has changed
	if self.props.onTextChanged then
		self.props.onTextChanged("")
	end
end

-- Merge multi level table into single level for display
function SearchBar:mergeResultsTable(results)
	local mergedTable = {}
	if next(results) == nil then
		if not self.props.LoadingMore and self.state.text ~= "" then
			table.insert(mergedTable, "NoResults")
		end
	else
		local keys = {}
		for key,_ in pairs(results) do table.insert(keys, key) end
		table.sort(keys, function(a,b) return results[a].LayoutOrder < results[b].LayoutOrder end)

		for _,key in ipairs(keys) do
			table.insert(mergedTable, key)
			for _,item in ipairs(results[key]) do
				table.insert(mergedTable, item)
			end
		end
	end

	if self.props.LoadingMore then
		table.insert(mergedTable, "LoadingIndicator")
	end

	return mergedTable
end

function SearchBar:render()
	local props = self.props
	local theme = props.Stylizer

	local mouse = props.Mouse
	local state = self.state

	local layoutOrder = props.LayoutOrder or 0

	local text = state.text

	local isFocused = state.isFocused and props.Enabled
	local isContainerHovered = state.isContainerHovered and props.Enabled

	local selectHovering = (self.state.isClearButtonHovered or self.state.isKeyHovered) and props.Enabled
	local textHovering = self.state.isContainerHovered and props.Enabled
	if selectHovering then
		mouse:__pushCursor("PointingHand")
	elseif textHovering then
		mouse:__pushCursor("IBeam")
	else
		mouse:__resetCursor()
	end

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
		borderColor = searchBarTheme.borderHover
	else
		borderColor = searchBarTheme.border
	end

	local defaultText = props.DefaultText
	local errorText = props.ErrorText


	local showDropdown = state.showDropdown and self.state.text ~= ""
	local searchBarRef = self.textBoxRef and self.textBoxRef.current
	if searchBarRef then
		searchBarRef = searchBarRef.Parent
	end
	local searchBarExtents
	if searchBarRef then
		local searchBarMin = searchBarRef.AbsolutePosition
		local searchBarSize = searchBarRef.AbsoluteSize
		local searchBarMax = searchBarMin + searchBarSize
		searchBarExtents = Rect.new(searchBarMin.X, searchBarMin.Y, searchBarMax.X, searchBarMax.Y)
	end

	local results = props.Results or {}

	if state.lastResults ~= results then
		state.mergedItems = self:mergeResultsTable(results)
		state.lastResults = results
	end
	
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
			Padding = Roact.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 12)
			}),

			TextBox = Roact.createElement("TextBox", Cryo.Dictionary.join(theme.fontStyle.Normal, {
				LayoutOrder = 1,
				Size = UDim2.new(1, -searchBarTheme.searchBarHeight, 0, searchBarTheme.searchBarHeight),
				BackgroundTransparency = 1,
				ClipsDescendants = true,

				ClearTextOnFocus = false,
				TextXAlignment = Enum.TextXAlignment.Left,
				Text = props.Enabled and text or "",
				TextEditable = props.Enabled,

				PlaceholderText = errorText or defaultText,
				PlaceholderColor3 = errorText and theme.warningColor or searchBarTheme.placeholderText,

				-- Get a reference to the text box so that clicking on the container can call :CaptureFocus()
				[Roact.Ref] = self.textBoxRef,

				[Roact.Change.Text] = self.onTextChanged,
				[Roact.Event.Focused] = function(...) self.onTextBoxFocused(props.Enabled, ...) end,
				[Roact.Event.FocusLost] = self.onTextBoxFocusLost,
			}), {
				Dropdown = searchBarRef and Roact.createElement(DropdownMenu, {
					Hide = not showDropdown,
					Items = self.state.mergedItems,
					OnFocusLost = self.hideDropdown,
					OnItemActivated = self.onItemClicked,
					OnRenderItem = self.onRenderItem,
					Style = "Search",
					Width = searchBarExtents.Width,
					MaxHeight = searchBarTheme.dropDown.maxHeight,
				}),
			}),

			ClearButtonFrame = Roact.createElement("Frame", {
				BackgroundTransparency = 1,
				LayoutOrder = 2,
				Size = UDim2.new(0, searchBarTheme.searchBarHeight,
					0, searchBarTheme.searchBarHeight),
			}, {
				ClearButton = Roact.createElement("ImageButton", {
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(0, searchBarTheme.clearButtonIconSize, 0, searchBarTheme.clearButtonIconSize),
					BackgroundTransparency = 1,
					Visible = text ~= "",
					Image = theme.deleteIcon,

					[Roact.Event.MouseEnter] = self.onClearButtonHovered,
					[Roact.Event.MouseMoved] = self.onClearButtonHovered,
					[Roact.Event.MouseLeave] = self.onClearButtonHoverEnded,
					[Roact.Event.MouseButton1Down] = self.onClearButtonClicked,
				}),
			}),
		}),
	})
end


SearchBar = withContext({
	Stylizer = Stylizer,
	Localization = Localization,
	Mouse = ContextServices.Mouse,
})(SearchBar)



return SearchBar
