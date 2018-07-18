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
			activeSearchTerm = true
		})
	end

	self.closeSearchBar = function(searchTerm)
		local onSearchTermChanged = self.props.onSearchTermChanged
		if onSearchTermChanged then
			onSearchTermChanged(searchTerm)
		end
		if searchTerm == "" then
			self:setState({
				activeSearchTerm = false
			})
		end
	end

	self.state = {
		totalTabWidth = totalTabWidth,
		totalTabCount = tabCount,
		activeSearchTerm = false
	}

	self.utilRef = Roact.createRef()
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

	if (formFactor == Constants.FormFactor.Small) or
		(tabOverLap < 0 and windowWidth > 0) then
		local frameHeight = SMALL_UTIL_HEIGHT + SMALL_PADDING
		if activeSearchTerm then
			frameHeight = frameHeight + SMALL_UTIL_HEIGHT + SMALL_PADDING
		end

		local useCSButton = onClientButton and onServerButton

		local endFrameWidth = windowWidth - SMALL_UTIL_HEIGHT - DROP_DOWN_WIDTH

		if useCSButton then
			endFrameWidth = endFrameWidth - SMALL_CS_BUTTON_WIDTH
		end

		return Roact.createElement("Frame",{
			Size = UDim2.new(1, 0, 0, frameHeight),
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,

			[Roact.Ref] = self.props.refForParent
		}, {
			MainFrame = Roact.createElement("Frame",{
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
						useFullScreenDropDown = true,
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

					[Roact.Event.Activated] = self.showSearchBar,
				}),
			}),

			SearchBar = activeSearchTerm and Roact.createElement(SearchBar, {
				size = UDim2.new(1, 0, 0, SMALL_UTIL_HEIGHT),
				pos = UDim2.new(0, 0, 0, SMALL_UTIL_HEIGHT + SMALL_PADDING),
				searchTerm = searchTerm,
				textSize = Constants.DefaultFontSize.UtilBar,
				frameHeight = Constants.UtilityBarFormatting.FrameHeight,
				borderColor = Constants.Color.BorderGray,
				textBoxColor = Constants.Color.UnselectedGray,
				onTextEntered = self.closeSearchBar,
			})
		})
	else
		local useCSButton = onClientButton and onServerButton

		local endFrameWidth = windowWidth - (SMALL_PADDING * 3) - (2 * CS_BUTTON_WIDTH)

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

			UtilBar = Roact.createElement("Frame",{
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
						useFullScreenDropDown = false,
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
					textSize = Constants.DefaultFontSize.UtilBar,
					frameHeight = Constants.UtilityBarFormatting.FrameHeight,
					borderColor = Constants.Color.BorderGray,
					textBoxColor = Constants.Color.UnselectedGray,
					onTextEntered = onSearchTermChanged,
				}),
			}),
		})
	end


end

return UtilAndTab
