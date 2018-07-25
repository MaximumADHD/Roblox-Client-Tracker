local CorePackages = game:GetService("CorePackages")
local TextService = game:GetService("TextService")
local Roact = require(CorePackages.Roact)

local Constants = require(script.Parent.Parent.Constants)
local TAB_HEIGHT = Constants.TabRowFormatting.FrameHeight
local DROP_DOWN_WIDTH = Constants.TabRowFormatting.TabDropDownWidth

local UTIL_HEIGHT = Constants.UtilityBarFormatting.FrameHeight
local SMALL_UTIL_HEIGHT = Constants.UtilityBarFormatting.SmallFrameHeight
local SMALL_PADDING = Constants.UtilityBarFormatting.SmallUtilPadding
local CS_BUTTON_WIDTH = Constants.UtilityBarFormatting.ClientServerButtonWidth
local SMALL_CS_BUTTON_WIDTH = Constants.UtilityBarFormatting.ClientServerDropDownWidth

local PADDING = Constants.GeneralFormatting.MainRowPadding

local CANCEL_BUTTON_TEXT = "Cancel"
local CANCEL_BUTTON_PADDING = 6

local Components = script.Parent
local ClientServerButton = require(Components.ClientServerButton)
local CheckBoxContainer = require(Components.CheckBoxContainer)
local TabRowContainer = require(Components.TabRowContainer)
local SearchBar =  require(Components.SearchBar)

local UtilAndTab = Roact.Component:extend("UtilAndTab")

function UtilAndTab:init()
	local tabList = self.props.tabList
	local totalTabWidth = 0
	local tabCount = 0

	for _, tab in ipairs(tabList) do
		local textVector = TextService:GetTextSize(
			tab.label,
			Constants.DefaultFontSize.TabBar,
			Constants.Font.TabBar,
			Vector2.new(0, 0)
		)
		totalTabWidth = totalTabWidth + textVector.X
		tabCount = tabCount + 1
	end

	self.showSearchBar = function()
		self:setState({
			activeSearchTerm = true,
		})
	end

	self.cancelInput = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or
			(input.UserInputType == Enum.UserInputType.Touch and
			input.UserInputState == Enum.UserInputState.End) then
			if self.searchRef.current then
				self.searchRef.current.Text = ""
			end

			local onSearchTermChanged = self.props.onSearchTermChanged
			if onSearchTermChanged then
				onSearchTermChanged("")
			end

			-- the clear button displays based on if the
			self:setState({
				activeSearchTerm = false
			})
		end
	end

	self.focusLost = function(rbx, enterPressed, inputThatCausedFocusLoss)
		if enterPressed then
			local searchTerm = rbx.text
			local onSearchTermChanged = self.props.onSearchTermChanged
			if onSearchTermChanged then
				onSearchTermChanged(searchTerm)
			end
			local hasSearchTerm = searchTerm ~= ""
			if self.state.activeSearchTerm ~= hasSearchTerm then
				self:setState({
					activeSearchTerm = hasSearchTerm,
				})
			end
		end
	end

	self.state = {
		totalTabWidth = totalTabWidth,
		totalTabCount = tabCount,
		activeSearchTerm = false,
	}

	self.utilRef = Roact.createRef()
	self.searchRef = Roact.createRef()
end

function UtilAndTab:render()
	local windowWidth = self.props.windowWidth
	local formFactor = self.props.formFactor
	local tabList = self.props.tabList
	local checkBoxNames = self.props.checkBoxNames
	local layoutOrder = self.props.layoutOrder
	local isClientView = self.props.isClientView
	local searchTerm = self.props.searchTerm

	local onClientButton = self.props.onClientButton
	local onServerButton = self.props.onServerButton
	local onCheckBoxesChanged = self.props.onCheckBoxesChanged
	local onSearchTermChanged = self.props.onSearchTermChanged

	local totalTabWidth = self.state.totalTabWidth
	local totalTabCount = self.state.totalTabCount
	local activeSearchTerm = self.state.activeSearchTerm

	local tabOverLap = (windowWidth - totalTabWidth)  / totalTabCount

	local useDropDown = tabOverLap < 0 and windowWidth > 0

	if (formFactor == Constants.FormFactor.Small) or
		useDropDown then
		local frameHeight = SMALL_UTIL_HEIGHT + SMALL_PADDING
		if activeSearchTerm then
			frameHeight = frameHeight + SMALL_UTIL_HEIGHT + SMALL_PADDING
		end

		local useCSButton = onClientButton and onServerButton

		local endFrameWidth = windowWidth - SMALL_UTIL_HEIGHT - DROP_DOWN_WIDTH

		if useCSButton then
			endFrameWidth = endFrameWidth - SMALL_CS_BUTTON_WIDTH
		end

		local cancelButtonWidth = TextService:GetTextSize(
			CANCEL_BUTTON_TEXT,
			Constants.DefaultFontSize.UtilBar,
			Constants.Font.UtilBar,
			Vector2.new(0, 0)
		).X

		cancelButtonWidth = cancelButtonWidth + (2 * CANCEL_BUTTON_PADDING)

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, frameHeight),
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,

			[Roact.Ref] = self.props.refForParent
		}, {
			MainFrame = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, SMALL_UTIL_HEIGHT),
				BackgroundTransparency = 1,
				[Roact.Ref] = self.utilRef,
			}, {
				MainRow = Roact.createElement("Frame", {
					Size = UDim2.new(1,0,1,0),
					BackgroundTransparency = 1,
				}, {
					UIListLayout = Roact.createElement("UIListLayout", {
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						SortOrder = Enum.SortOrder.LayoutOrder,
						VerticalAlignment = Enum.VerticalAlignment.Top,
						FillDirection = Enum.FillDirection.Horizontal,
						Padding = UDim.new(0,SMALL_PADDING),
					}),

					Tabs = Roact.createElement(TabRowContainer, {
						tabList = tabList,
						windowWidth = windowWidth,
						frameHeight = SMALL_UTIL_HEIGHT,
						formFactor = formFactor,
						layoutOrder = 1,
					}),

					ClientServerButton = useCSButton and Roact.createElement(ClientServerButton, {
						frameHeight = SMALL_UTIL_HEIGHT,
						formFactor = formFactor,
						useDropDown = useDropDown,
						isClientView = isClientView,
						layoutOrder = 2,
						onClientButton = onClientButton,
						onServerButton = onServerButton,
					}),

					FilterCheckBoxes = onCheckBoxesChanged and Roact.createElement(CheckBoxContainer, {
						boxNames = checkBoxNames,
						frameWidth  = endFrameWidth,
						frameHeight =  SMALL_UTIL_HEIGHT,
						pos = UDim2.new(0, 2 * (CS_BUTTON_WIDTH) + PADDING, 0, 0),
						layoutOrder = 3,
						onCheckBoxesChanged = onCheckBoxesChanged,
					}),

				}),

				SearchButton = Roact.createElement("ImageButton", {
					Size = UDim2.new(0, SMALL_UTIL_HEIGHT, 0, SMALL_UTIL_HEIGHT),
					Position = UDim2.new(1,-SMALL_UTIL_HEIGHT, 0, 0),
					BackgroundTransparency = 1,
					Image = Constants.Image.Search,
					Visible = not activeSearchTerm,

					[Roact.Event.Activated] = self.showSearchBar,
				}),
			}),

			-- the searchBar is only visible when there is an active searchterm in the textbox
			SearchBarFrame = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, SMALL_UTIL_HEIGHT),
				Position = UDim2.new(0, 0, 0, SMALL_UTIL_HEIGHT + SMALL_PADDING),
				Visible = activeSearchTerm,
				BorderSizePixel = 0,
				BackgroundTransparency = 1,

			}, {
				SearchBar = Roact.createElement(SearchBar, {
					size = UDim2.new(1, -cancelButtonWidth , 0, SMALL_UTIL_HEIGHT),
					searchTerm = searchTerm,
					showClear = activeSearchTerm,
					textSize = Constants.DefaultFontSize.UtilBar,
					font = Constants.Font.UtilBar,
					frameHeight = SMALL_UTIL_HEIGHT,

					refForParent = self.searchRef,
					cancelInput = self.cancelInput,
					focusLost = self.focusLost,
				}),

				CancelButton = Roact.createElement("TextButton", {
					Size = UDim2.new(0, cancelButtonWidth, 1, 0),
					Position = UDim2.new(1, -cancelButtonWidth, 0, 0),
					Text = CANCEL_BUTTON_TEXT,
					TextSize = Constants.DefaultFontSize.UtilBar,
					TextColor3 = Constants.Color.Text,
					Font = Constants.Font.UtilBar,
					BorderSizePixel = 0,
					BackgroundTransparency = 1,

					[Roact.Event.Activated] = self.cancelInput,
				})
			})
		})
	else
		local useCSButton = onClientButton and onServerButton

		local endFrameWidth = windowWidth - (SMALL_PADDING * 3) - (3 * CS_BUTTON_WIDTH)

		if useCSButton then
			endFrameWidth = endFrameWidth - CS_BUTTON_WIDTH
		end

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, TAB_HEIGHT + UTIL_HEIGHT + PADDING),
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,

			[Roact.Ref] = self.props.refForParent,
		}, {
			Tabs = Roact.createElement(TabRowContainer, {
				tabList = tabList,
				windowWidth = windowWidth,
				frameHeight = TAB_HEIGHT,
				formFactor = formFactor,
			}),

			UtilBar = Roact.createElement("Frame", {
				Position = UDim2.new(0, 0, 0, TAB_HEIGHT + PADDING),
				Size = UDim2.new(1, 0, 0, UTIL_HEIGHT),
				BackgroundTransparency = 1,

				[Roact.Ref] = self.utilRef,
			}, {
				MainRow = Roact.createElement("Frame", {
					Size = UDim2.new(1,0,1,0),
					BackgroundTransparency = 1,
				}, {
					UIListLayout = Roact.createElement("UIListLayout", {
						HorizontalAlignment = Enum.HorizontalAlignment.Left,
						SortOrder = Enum.SortOrder.LayoutOrder,
						VerticalAlignment = Enum.VerticalAlignment.Top,
						FillDirection = Enum.FillDirection.Horizontal,
						Padding = UDim.new(0,SMALL_PADDING),
					}),

					ClientServerButton = useCSButton and Roact.createElement(ClientServerButton, {
						formFactor = formFactor,
						isClientView = isClientView,
						onClientButton = onClientButton,
						onServerButton = onServerButton,
					}),

					FilterCheckBoxes = onCheckBoxesChanged and Roact.createElement(CheckBoxContainer, {
						boxNames = checkBoxNames,
						frameWidth  = endFrameWidth,
						frameHeight =  UTIL_HEIGHT,
						pos = UDim2.new(0, 2 * (CS_BUTTON_WIDTH) + PADDING, 0, 0),
						onCheckBoxesChanged = onCheckBoxesChanged,
					}),

				}),

				SearchBar = onSearchTermChanged and Roact.createElement(SearchBar, {
					size = UDim2.new(0, 2 * CS_BUTTON_WIDTH, 0, UTIL_HEIGHT),
					pos = UDim2.new(1, -2 * CS_BUTTON_WIDTH, 0, 0),
					searchTerm = searchTerm,
					showClear = activeSearchTerm,
					textSize = Constants.DefaultFontSize.UtilBar,
					font = Constants.Font.UtilBar,
					frameHeight = Constants.UtilityBarFormatting.FrameHeight,

					refForParent = self.searchRef,
					cancelInput = self.cancelInput,
					focusLost = self.focusLost,
				}),
			}),
		})
	end


end

return UtilAndTab
