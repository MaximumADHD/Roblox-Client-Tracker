local CorePackages = game:GetService("CorePackages")
local AppTempCommon = CorePackages.AppTempCommon

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local Roact = require(CorePackages.Roact)

local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local Constants = require(ShareGame.Constants)
local User = require(AppTempCommon.LuaApp.Models.User)

local LIST_PADDING = 2

local TITLE_FONT = Enum.Font.SourceSans
local TITLE_COLOR = Constants.Color.WHITE
local TITLE_TEXT_SIZE = 19

local PRESENCE_FONT = Enum.Font.SourceSans
local PRESENCE_TEXT_SIZE = 16

local ConversationDetails = Roact.PureComponent:extend("ConversationDetails")

function ConversationDetails:render()
	local title = self.props.title
	local presence = self.props.presence
	local size = self.props.size
	local layoutOrder = self.props.layoutOrder
	local zIndex = self.props.zIndex

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
			LayoutOrder = 1,
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
		Presence = presenceTextComponent,
	})
end

return ConversationDetails
