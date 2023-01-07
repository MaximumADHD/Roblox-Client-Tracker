local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact

local tutils = dependencies.tutils
local CINavigator = dependencies.CINavigator

local FriendsLandingContext = require(FriendsLanding.FriendsLandingContext)

local CINavigatorInFL = Roact.PureComponent:extend("CINavigatorInFL")

function CINavigatorInFL:init()
	self.context = {}
end

function CINavigatorInFL:render()
	return FriendsLandingContext.with(function(context)
		if not tutils.deepEqual(context, self.context) then
			self.context = context
		end

		return Roact.createElement(CINavigator, {
			navigation = self.props.navigation,
			context = self.context,
		})
	end)
end

CINavigatorInFL.router = CINavigator.router
return CINavigatorInFL
