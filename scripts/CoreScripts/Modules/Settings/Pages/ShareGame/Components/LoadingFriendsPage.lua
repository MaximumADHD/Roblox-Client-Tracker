local CorePackages = game:GetService("CorePackages")

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local LoadingBar = require(CorePackages.AppTempCommon.LuaApp.Components.LoadingBar)

local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame

local Roact = require(CorePackages.Roact)
local Constants = require(ShareGame.Constants)

local LoadingFriendsPage = Roact.PureComponent:extend("LoadingFriendsPage")

local LOADING_INDICATOR_WIDTH = 70
local LOADING_INDICATOR_HEIGHT = 16

function LoadingFriendsPage:render()
	local layoutOrder = self.props.LayoutOrder
	local zIndex = self.props.ZIndex
	local scale = 1

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
		loadingIndicator = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(0, scale * LOADING_INDICATOR_WIDTH, 0, scale * LOADING_INDICATOR_HEIGHT),
			LayoutOrder = incrementLayoutOrder(),
			ZIndex = zIndex,
		}, {
			loadingBar = Roact.createElement(LoadingBar, {
				ZIndex = zIndex,
			}),
		})
	})
end

return LoadingFriendsPage
