local CorePackages = game:GetService("CorePackages")

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Packages.Roact)
local Constants = require(RobloxGui.Modules.Settings.Pages.ShareGame.Constants)

local SearchBox = Roact.Component:extend("SearchBox")

local ShareGameIcons = require(RobloxGui.Modules.Settings.Pages.ShareGame.Spritesheets.ShareGameIcons)
local SHARE_GAME_SPRITE_PATH = ShareGameIcons:GetImagePath()

local SEARCH_BORDER_SPRITE_IMAGE = SHARE_GAME_SPRITE_PATH
local SEARCH_BORDER_SPRITE_FRAME = ShareGameIcons:GetFrame("search_border")
local SEARCH_BORDER_SLICE = Rect.new(3, 3, 4, 4)

local SEARCH_ICON_SPRITE_IMAGE = SHARE_GAME_SPRITE_PATH
local SEARCH_ICON_SPRITE_FRAME = ShareGameIcons:GetFrame("search_small")
local SEARCH_ICON_SIZE = 16

local CLEAR_ICON_SPRITE_IMAGE = SHARE_GAME_SPRITE_PATH
local CLEAR_ICON_SPRITE_FRAME = ShareGameIcons:GetFrame("clear")
local CLEAR_ICON_SIZE = 16

local SEARCH_MARGINS_HORIZONTAL = 8
local SEARCH_MARGINS_VERTICAL = 6
local SEARCH_FIELD_MARGINS = 12

local SEARCH_BOX_TEXT_SIZE = 16

local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local Theme = require(RobloxGui.Modules.Settings.Theme)
local getTranslator = require(ShareGame.getTranslator)
local RobloxTranslator = getTranslator()

function SearchBox:init()
	self.state = {
		isTextWritten = false,
	}
	self.searchField = nil
end

function SearchBox:render()
	local anchorPoint = self.props.anchorPoint
	local onTextBoxFocusLost = self.props.onTextBoxFocusLost
	local onTextBoxFocused = self.props.onTextBoxFocused
	local position = self.props.position
	local searchFieldRef = self.props.searchFieldRef
	local size = self.props.size
	local visible = self.props.visible
	local zIndex = self.props.zIndex

	local isTextWritten = self.state.isTextWritten
	return Roact.createElement("ImageLabel", {
		BackgroundTransparency = 1,
		AnchorPoint = anchorPoint,
		Position = position,
		Size = size,
		Visible = visible,
		Image = SEARCH_BORDER_SPRITE_IMAGE,
		ImageRectOffset = SEARCH_BORDER_SPRITE_FRAME.offset,
		ImageRectSize = SEARCH_BORDER_SPRITE_FRAME.size,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = SEARCH_BORDER_SLICE,
		ZIndex = zIndex,
	}, {
		UIPadding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, SEARCH_MARGINS_HORIZONTAL),
			PaddingRight = UDim.new(0, SEARCH_MARGINS_HORIZONTAL),
			PaddingTop = UDim.new(0, SEARCH_MARGINS_VERTICAL),
			PaddingBottom = UDim.new(0, SEARCH_MARGINS_VERTICAL),
		}),
		SearchIcon = Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Image = SEARCH_ICON_SPRITE_IMAGE,
			ImageRectOffset = SEARCH_ICON_SPRITE_FRAME.offset,
			ImageRectSize = SEARCH_ICON_SPRITE_FRAME.size,
			Size = UDim2.new(0, SEARCH_ICON_SIZE, 0, SEARCH_ICON_SIZE),
			ZIndex = zIndex,
		}),
		SearchField = Roact.createElement("TextBox", {
			BackgroundTransparency = 1,
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new(0, SEARCH_ICON_SIZE + SEARCH_FIELD_MARGINS, 0.5, 0),
			Size = UDim2.new(1, -(SEARCH_ICON_SIZE + CLEAR_ICON_SIZE + SEARCH_FIELD_MARGINS * 2), 1, 0),
			ClearTextOnFocus = false,
			PlaceholderColor3 = Constants.Color.GRAY3,
			PlaceholderText = RobloxTranslator:FormatByKey("Feature.SettingsHub.Label.SearchForFriendsPlaceholder"),
			Text = "",
			TextColor3 = Constants.Color.WHITE,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextSize = Theme.textSize(SEARCH_BOX_TEXT_SIZE),
			Font = Theme.font(Enum.Font.SourceSans),
			ZIndex = zIndex,
			[Roact.Ref] = function(rbx)
				self.searchField = rbx

				-- Check if a higher reference function has been passed in and
				-- then call it.
				if searchFieldRef then
					searchFieldRef(rbx)
				end
			end,
			[Roact.Event.Focused] = function()
				if onTextBoxFocused then
					onTextBoxFocused()
				end
			end,
			[Roact.Event.FocusLost] = function(rbx)
				if onTextBoxFocusLost then
					onTextBoxFocusLost(rbx.Text)
				end
			end,
		}),
		ClearButton = Roact.createElement("ImageButton", {
			BackgroundTransparency = 1,
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.new(1, 0, 0, 0),
			Size = UDim2.new(0, CLEAR_ICON_SIZE, 0, SEARCH_ICON_SIZE),
			Image = CLEAR_ICON_SPRITE_IMAGE,
			ImageRectOffset = CLEAR_ICON_SPRITE_FRAME.offset,
			ImageRectSize = CLEAR_ICON_SPRITE_FRAME.size,
			ZIndex = zIndex,
			Visible = isTextWritten,
			[Roact.Event.Activated] = function()
				if self.searchField then
					self.searchField.Text = ""

					-- We lost focus when clicking this button so we have to
					-- recapture it.
					self.searchField:CaptureFocus()
				end
			end,
		}),
	})
end

function SearchBox:didMount()
	local searchField = self.searchField
	local onTextChanged = self.props.onTextChanged

	if searchField then
		self.textBoxChangedConnection = searchField:GetPropertyChangedSignal("Text"):Connect(function()
			local text = searchField.Text
			self:setState({
				isTextWritten = text:len() > 0,
			})
			onTextChanged(text)
		end)
	end
end

function SearchBox:willUnmount()
	if self.textBoxChangedConnection then
		self.textBoxChangedConnection:Disconnect()
	end
end

return SearchBox
