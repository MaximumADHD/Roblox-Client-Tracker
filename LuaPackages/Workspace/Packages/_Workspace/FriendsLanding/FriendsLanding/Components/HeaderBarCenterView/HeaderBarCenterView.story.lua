local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local Rodux = dependencies.Rodux
local RoactRodux = dependencies.RoactRodux
local HeaderBarCenterView = require(script.Parent)
local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)

local getFFlagAddFriendsSearchbarIXPEnabled = dependencies.getFFlagAddFriendsSearchbarIXPEnabled

local BASE_STORE = Rodux.Store.new(function()
	return {}
end, {}, { Rodux.thunkMiddleware })

return function(props)
	return Roact.createElement(RoactRodux.StoreProvider, {
		store = props.store or BASE_STORE,
	}, {
		container = Roact.createElement(FriendsLandingContext.Provider, {
			value = {
				friendRequestCount = 0,
				totalFriendCount = 1,
				navigateToLuaAppPages = props.navigateToLuaAppPages or {},
				getScreenTopBar = function()
					return { shouldRenderCenter = true }
				end,
				setScreenTopBar = function() end,
				wideMode = if getFFlagAddFriendsSearchbarIXPEnabled() then props.wideMode or nil else nil,
				addFriendsPageSearchbarEnabled = if getFFlagAddFriendsSearchbarIXPEnabled()
					then props.addFriendsPageSearchbarEnabled or nil
					else nil,
			},
		}, {
			Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 50),
				BackgroundTransparency = 1,
			}, {
				withContext = Roact.createElement(HeaderBarCenterView, props),
			}),
		}),
	})
end
