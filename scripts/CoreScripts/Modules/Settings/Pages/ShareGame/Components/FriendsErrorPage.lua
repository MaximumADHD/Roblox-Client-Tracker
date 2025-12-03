local CorePackages = game:GetService("CorePackages")

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame

local Roact = require(CorePackages.Packages.Roact)
local Constants = require(ShareGame.Constants)
local Theme = require(RobloxGui.Modules.Settings.Theme)

local getTranslator = require(ShareGame.getTranslator)
local RobloxTranslator = getTranslator()

local FriendsErrorPage = Roact.PureComponent:extend("FriendsErrorPage")

function FriendsErrorPage:render()
	local layoutOrder = self.props.LayoutOrder
	local zIndex = self.props.ZIndex

	local incrementingLayoutOrder = 0
	local function incrementLayoutOrder()
		incrementingLayoutOrder = incrementingLayoutOrder + 1
		return incrementingLayoutOrder
	end

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		LayoutOrder = layoutOrder,
		ZIndex = zIndex,
	}, {
		listLayout = Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		subtitle = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Text = RobloxTranslator:FormatByKey("Feature.SettingsHub.Label.LoadingFriendsListFailed"),
			TextColor3 = Constants.Color.GRAY5,
			TextTransparency = 0.22,
			TextSize = Theme.textSize(21),
			TextWrapped = true,
			Font = Theme.font(Enum.Font.SourceSans),
			LayoutOrder = incrementLayoutOrder(),
			Size = UDim2.new(0, 280, 0, 42),
			TextYAlignment = Enum.TextYAlignment.Top,
			ZIndex = zIndex,
		}),
	})
end

return FriendsErrorPage
