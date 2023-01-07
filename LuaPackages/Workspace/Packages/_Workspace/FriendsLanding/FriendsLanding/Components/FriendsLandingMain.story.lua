--!nonstrict
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local EnumScreens = require(FriendsLanding.EnumScreens)
local getBaseTestStates = require(FriendsLanding.TestHelpers.getBaseTestStates)
local RoactNavigation = dependencies.RoactNavigation
local installReducer = require(FriendsLanding.installReducer)
local FriendsLandingEntryPoint = require(FriendsLanding.Components.FriendsLandingEntryPoint)
local manyFriends = getBaseTestStates().manyFriends

local Story = Roact.PureComponent:extend("Story")

local COMPACT_VIEW_MAX_WIDTH = 600

local store = nil
local getStore = function()
	return store
end

Story.defaultProps = {
	initialState = manyFriends,
}

function Story:init()
	self.initializeStore = function(config)
		store = Rodux.Store.new(
			Rodux.combineReducers({
				FriendsLanding = installReducer(),
				ScreenSize = function(state, action)
					state = state or Vector2.new(0, 0)

					if action.type == "SetScreenSize" then
						return action.screenSize
					end

					return state
				end,

				FormFactor = function(state, action)
					state = state or "COMPACT"

					if action.type == "SetFormFactor" then
						return action.formFactor
					end

					return state
				end,

				LocalUserId = function(state, action)
					state = state or ""

					if action.type == "SetLocalUserId" then
						return action.userId
					end

					return state
				end,
			}),
			config.initialState,
			{ Rodux.thunkMiddleware }
		)

		return store
	end

	self.store = self.initializeStore({
		initialState = self.props.initialState,
	})

	self.navigateToLuaAppPages = {
		[EnumScreens.FriendFinder] = function()
			warn("Navigating to FriendFinder")
		end,
	}

	self.androidBackButtonNavigationHandler = function(navigation)
		return Roact.createElement("Frame")
	end

	self.size = 0
end

function Story:render()
	local navigationAppContainer = RoactNavigation.createAppContainer(FriendsLandingEntryPoint)

	return Roact.createElement(RoactRodux.StoreProvider, {
		-- You can pass in initial state here
		store = self.store,
	}, {
		Story = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			[Roact.Change.AbsoluteSize] = function(rbx)
				local currentScreenSize = self.store:getState().ScreenSize.X
				if currentScreenSize ~= rbx.AbsoluteSize.X then
					self.store:dispatch({
						type = "SetScreenSize",
						screenSize = Vector2.new(rbx.AbsoluteSize.X, rbx.AbsoluteSize.Y),
					})
					if currentScreenSize > COMPACT_VIEW_MAX_WIDTH and rbx.AbsoluteSize.X < COMPACT_VIEW_MAX_WIDTH then
						self.store:dispatch({
							type = "SetFormFactor",
							formFactor = "COMPACT",
						})
					end
					if currentScreenSize < COMPACT_VIEW_MAX_WIDTH and rbx.AbsoluteSize.X > COMPACT_VIEW_MAX_WIDTH then
						self.store:dispatch({
							type = "SetFormFactor",
							formFactor = "WIDE",
						})
					end
				end
			end,
		}, {
			layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
			}),

			-- If you want to test how a NetworkRequest, or event would affect the FriendsLanding page. Add test events
			-- to the button. Feel free to add more buttons!
			HelperButtons = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 100),
				BackgroundTransparency = 1,
				LayoutOrder = -1,
			}, {
				layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
				}),
				addTestEvent1 = Roact.createElement("TextButton", {
					Size = UDim2.new(0, 100, 0, 100),
					Text = "toggle wide mode",
					[Roact.Event.Activated] = self.props.testEvent1,
				}),
				addTestEvent2 = Roact.createElement("TextButton", {
					Size = UDim2.new(0, 100, 0, 100),
					Text = "addTestEvent2",
					[Roact.Event.Activated] = self.props.testEvent2,
				}),
			}),

			-- This is the actual User's view, if you want to check how a change affects UI.
			AppContainer = Roact.createElement(navigationAppContainer, {
				exitFriendsLanding = self.props.navigateBackInAppRoute or self.navigateBackInAppRoute,
				navigateToLuaAppPages = self.props.navigateToLuaAppPages or self.navigateToLuaAppPages,
				renderAndroidBackButtonNavigationHandler = self.androidBackButtonNavigationHandler,
			}),
		}),
	})
end

return {
	-- In a test, if you need to dispatch actions to change state, or if you wanted to check something about the store.
	getStore = getStore,
	story = Story,
}
