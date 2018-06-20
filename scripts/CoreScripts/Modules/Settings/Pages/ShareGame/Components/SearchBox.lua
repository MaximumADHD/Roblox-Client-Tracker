local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(CorePackages.Roact)
local Constants = require(Modules.Settings.Pages.ShareGame.Constants)

local SearchBox = Roact.Component:extend("SearchBox")

local SEARCH_BORDER = "rbxasset://textures/ui/Settings/ShareGame/SearchBorder.png"
local SEARCH_BORDER_SLICE = Rect.new(3, 3, 5, 5)
local SEARCH_ICON = "rbxasset://textures/ui/Settings/ShareGame/Search16x16.png"
local SEARCH_ICON_SIZE = 16
local CLEAR_ICON = "rbxasset://textures/ui/Settings/ShareGame/Clear.png"
local CLEAR_ICON_SIZE = 16

local SEARCH_MARGINS_HORIZONTAL = 8
local SEARCH_MARGINS_VERTICAL = 6
local SEARCH_FIELD_MARGINS = 12

local SEARCH_BOX_TEXT_SIZE = 16
local SEARCH_PLACEHOLDER_TEXT = "Search for friends"

function SearchBox:init()
	self.state = {
		isTextWritten = false,
	}
	self.searchField = nil
end

function SearchBox:render()
	local anchorPoint = self.props.anchorPoint
	local position = self.props.position
	local size = self.props.size
	local visible = self.props.visible
	local zIndex = self.props.zIndex

	local isTextWritten = self.state.isTextWritten

	local onTextChanged = self.props.onTextChanged
	local onTextBoxFocusLost = self.props.onTextBoxFocusLost
	local searchFieldRef = self.props.searchFieldRef

	return Roact.createElement("ImageLabel", {
		BackgroundTransparency = 1,
		AnchorPoint = anchorPoint,
		Position = position,
		Size = size,
		Visible = visible,
		Image = SEARCH_BORDER,
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
			Image = SEARCH_ICON,
			Size = UDim2.new(0, SEARCH_ICON_SIZE, 0, SEARCH_ICON_SIZE),
			ZIndex = zIndex
		}),
		SearchField = Roact.createElement("TextBox", {
			BackgroundTransparency = 1,
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.new(0, SEARCH_ICON_SIZE + SEARCH_FIELD_MARGINS, 0.5, 0),
			Size = UDim2.new(
				1, -(SEARCH_ICON_SIZE + CLEAR_ICON_SIZE + SEARCH_FIELD_MARGINS * 2),
				1, 0
			),
			ClearTextOnFocus = false,
			PlaceholderColor3 = Constants.Color.GREY3,
			PlaceholderText = SEARCH_PLACEHOLDER_TEXT,
			TextColor3 = Constants.Color.WHITE,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextSize = SEARCH_BOX_TEXT_SIZE,
			Font = Enum.Font.SourceSans,
			ZIndex = zIndex,
			[Roact.Ref] = function(rbx)
				self.searchField = rbx

				if rbx then
					rbx.Text = "" -- Set initial text on this field
					rbx:GetPropertyChangedSignal("Text"):connect(function()
						local text = rbx.Text
						self:setState({
							isTextWritten = text:len() > 0
						})
						onTextChanged(text)
					end)
				end

				-- Check if a higher reference function has been passed in and
				-- then call it.
				if searchFieldRef then
					searchFieldRef(rbx)
				end
			end,
			[Roact.Event.FocusLost] = function(rbx)
				if onTextBoxFocusLost then
					onTextBoxFocusLost(rbx.Text)
				end
			end
		}),
		ClearButton = Roact.createElement("ImageButton", {
			BackgroundTransparency = 1,
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.new(1, 0, 0, 0),
			Size = UDim2.new(0, CLEAR_ICON_SIZE, 0, SEARCH_ICON_SIZE),
			Image = CLEAR_ICON,
			ZIndex = zIndex,
			Visible = isTextWritten,
			[Roact.Event.Activated] = function()
				if self.searchField then
					self.searchField.Text = ""

					-- We lost focus when clicking this button so we have to
					-- recapture it.
					self.searchField:CaptureFocus()
				end
			end
		})
	})
end

return SearchBox
