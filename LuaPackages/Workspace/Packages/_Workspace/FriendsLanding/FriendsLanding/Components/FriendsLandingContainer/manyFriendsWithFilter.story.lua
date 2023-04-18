local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local FriendsLandingContainer = require(script.Parent)
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)
local filterStates = require(FriendsLanding.Friends.filterStates)
local getBaseTestStates = require(FriendsLanding.TestHelpers.getBaseTestStates)
local smallNumbersOfFriends = getBaseTestStates().smallNumbersOfFriends

local getFFlagFriendsLandingInactiveFriendsEnabled =
	require(FriendsLanding.Flags.getFFlagFriendsLandingInactiveFriendsEnabled)

local BASE_STORE = Rodux.Store.new(function()
	return smallNumbersOfFriends
end, {}, { Rodux.thunkMiddleware })

local Story = Roact.PureComponent:extend("Story")

function Story:init()
	self.state = {
		filter = filterStates.All,
	}

	self.clearFilter = function()
		self:setState({
			filter = filterStates.All,
		})
	end

	self.filterByOnline = function()
		self:setState({
			filter = filterStates.Online,
		})
	end

	self.filterInExperience = function()
		self:setState({
			filter = filterStates.InExperience,
		})
	end

	self.filterByOffline = function()
		self:setState({
			filter = filterStates.Offline,
		})
	end

	self.filterByInactive = if getFFlagFriendsLandingInactiveFriendsEnabled()
		then function()
			self:setState({
				filter = filterStates.Inactive,
			})
		end
		else nil
end

function Story:render()
	local container = Roact.createElement(FriendsLandingContext.Provider, {
		value = {
			filter = self.state.filter,
		},
	}, {
		Story = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, {
			layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
			}),
			HelperButtons = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 100),
				BackgroundTransparency = 1,
				LayoutOrder = 0,
			}, {
				layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
				}),
				filterByOnline = Roact.createElement("TextButton", {
					Size = UDim2.new(0, 100, 0, 100),
					Text = "filterByOnline",
					[Roact.Event.Activated] = self.filterByOnline,
				}),
				filterByOffline = Roact.createElement("TextButton", {
					Size = UDim2.new(0, 100, 0, 100),
					Text = "filterByOffline",
					[Roact.Event.Activated] = self.filterByOffline,
				}),
				clearFilter = Roact.createElement("TextButton", {
					Size = UDim2.new(0, 100, 0, 100),
					Text = "clearFilter",
					[Roact.Event.Activated] = self.clearFilter,
				}),
				filterInExperience = Roact.createElement("TextButton", {
					Size = UDim2.new(0, 100, 0, 100),
					Text = "filterInExperience",
					[Roact.Event.Activated] = self.filterInExperience,
				}),
				filterByInactive = if getFFlagFriendsLandingInactiveFriendsEnabled()
					then Roact.createElement("TextButton", {
						Size = UDim2.new(0, 100, 0, 100),
						Text = "filterByInactive",
						[Roact.Event.Activated] = self.filterByInactive,
					})
					else nil,
			}),

			withContext = Roact.createElement(FriendsLandingContainer, self.props),
		}),
	})

	-- This is so when running in RhodiumTests we don't have 2 competing RoactRodux Stores
	if self.props.hasStore then
		return container
	else
		return Roact.createElement(RoactRodux.StoreProvider, {
			store = self.props.store or BASE_STORE,
		}, {
			container = container,
		})
	end
end

return Story
