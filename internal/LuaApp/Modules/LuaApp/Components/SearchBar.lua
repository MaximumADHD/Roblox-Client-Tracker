local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Roact = require(Modules.Common.Roact)
local Constants = require(Modules.LuaApp.Constants)
local LocalizedTextBox = require(Modules.LuaApp.Components.LocalizedTextBox)
local LocalizedTextButton = require(Modules.LuaApp.Components.LocalizedTextButton)


local SEARCH_BAR_ICON_SIZE = 28
local SEARCH_BAR_ICON_MARGIN = 12
local SEARCH_BAR_ICON_PADDING = 12
local SEARCH_BAR_TEXT_SIZE = 16
local CANCEL_BUTTON_WIDTH = 56
local SEARCH_BAR_FONT = Enum.Font.SourceSansLight
local CANCEL_FONT = Enum.Font.SourceSans

local SearchBar = Roact.PureComponent:extend("SearchBar")

function SearchBar:didMount()
	self.captureFocus()
end

function SearchBar:render()
	local exitSearch = self.props.exitSearch
	local confirmSearch = self.props.confirmSearch

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = Constants.Color.RED_PRIMARY,
		BackgroundTransparency = 1,
	},{
		Padding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, SEARCH_BAR_ICON_MARGIN),
			PaddingRight = UDim.new(0, SEARCH_BAR_ICON_MARGIN),
		}),
		Layout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Right,
			Padding = UDim.new(0, SEARCH_BAR_ICON_PADDING),
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),
		searchArea = Roact.createElement("ImageLabel",{
			Size = UDim2.new(1, -2 * SEARCH_BAR_ICON_SIZE - SEARCH_BAR_ICON_PADDING, 0, SEARCH_BAR_ICON_SIZE),
			Position = UDim2.new(0, SEARCH_BAR_ICON_MARGIN, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			BackgroundTransparency = 1,
			Image = "rbxasset://textures/ui/LuaChat/9-slice/search.png",
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(3, 3, 4, 4),
		},{
			searchIcon = Roact.createElement("ImageLabel",{
				Size = UDim2.new(0, SEARCH_BAR_TEXT_SIZE, 0, SEARCH_BAR_TEXT_SIZE),
				Position = UDim2.new(0, 6, 0.5, 0),
				Image = "rbxasset://textures/ui/LuaChat/icons/ic-search.png",
				BackgroundTransparency = 1,
				AnchorPoint = Vector2.new(0, 0.5),
				ImageColor3 = Constants.Color.GRAY3,
			}),
			searchBox = Roact.createElement(LocalizedTextBox, {
				Size = UDim2.new(1, -SEARCH_BAR_ICON_SIZE, 1, 0),
				Position = UDim2.new(0, SEARCH_BAR_ICON_SIZE, 0.5, 0),
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextSize = SEARCH_BAR_TEXT_SIZE,
				OverlayNativeInput = true,
				LayoutOrder = 1,
				Font = SEARCH_BAR_FONT,
				PlaceholderColor3 = Constants.Color.GRAY3,
				PlaceholderText = "Search.GlobalSearch.Example.SearchGames",
				[Roact.Event.FocusLost] = function(rbx, enterPressed)
					if enterPressed then
						confirmSearch(rbx.Text)
					end
					exitSearch()
				end,
				[Roact.Ref] = function(rbx)
					self.captureFocus = function()
						rbx:captureFocus()
					end
				end,
			}),
		}),
		cancelButton = Roact.createElement(LocalizedTextButton, {
			AnchorPoint = Vector2.new(0, 0.5),
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			Font = CANCEL_FONT,
			Text = "Feature.GamePage.LabelCancelField",
			TextSize = 24,
			TextColor3 = Constants.Color.GRAY5,
			Size = UDim2.new(0, CANCEL_BUTTON_WIDTH, 0, 20),
			LayoutOrder = 2,
			[Roact.Event.Activated] = exitSearch,
		}),
	})
end

return SearchBar