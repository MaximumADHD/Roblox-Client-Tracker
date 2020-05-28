local CorePackages = game:GetService("CorePackages")

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Roact)

local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local Constants = require(ShareGame.Constants)

local LIST_PADDING = 2

local TITLE_FONT = Enum.Font.SourceSans
local TITLE_COLOR = Constants.Color.WHITE
local TITLE_TEXT_SIZE = 19

local SUB_TITLE_FONT = Enum.Font.SourceSans
local SUB_TITLE_COLOR = Constants.Color.GRAY3
local SUB_TITLE_TEXT_SIZE = 16

local PRESENCE_FONT = Enum.Font.SourceSans
local PRESENCE_TEXT_SIZE = 16

local getTranslator = require(ShareGame.getTranslator)
local RobloxTranslator = getTranslator()

local ConversationDetails = Roact.PureComponent:extend("ConversationDetails")

function ConversationDetails:render()
	local title = self.props.title
	local subtitle = self.props.subtitle
	local presence = self.props.presence
	local size = self.props.size
	local layoutOrder = self.props.layoutOrder
	local zIndex = self.props.zIndex

	-- Show subtitle if it exists
	local subtitleTextComponent
	if subtitle ~= nil then
		subtitleTextComponent = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, SUB_TITLE_TEXT_SIZE),
			Text = subtitle,
			Font = SUB_TITLE_FONT,
			TextColor3 = SUB_TITLE_COLOR,
			TextSize = SUB_TITLE_TEXT_SIZE,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextWrapped = true,
			LayoutOrder = 1,
			ZIndex = zIndex,
		})
	end

	-- Show user presence if it was passed in
	local presenceTextComponent
	if presence ~= nil then
		presenceTextComponent = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, PRESENCE_TEXT_SIZE),
			Text =  RobloxTranslator:FormatByKey(Constants.PresenceTextKey[presence]),
			Font = PRESENCE_FONT,
			TextColor3 = Constants.PresenceColors[presence],
			TextSize = PRESENCE_TEXT_SIZE,
			TextXAlignment = Enum.TextXAlignment.Left,
			LayoutOrder = 2,
			ZIndex = zIndex,
		})
	end

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = size,
		LayoutOrder = layoutOrder,
		ZIndex = zIndex,
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Padding = UDim.new(0, LIST_PADDING)
		}),
		Title = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, TITLE_TEXT_SIZE),
			Text = title or "",
			Font = TITLE_FONT,
			TextColor3 = TITLE_COLOR,
			TextSize = TITLE_TEXT_SIZE,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextWrapped = true,
			LayoutOrder = 0,
			ZIndex = zIndex,
		}),
		Subtitle = subtitleTextComponent,
		Presence = presenceTextComponent,
	})
end

return ConversationDetails
