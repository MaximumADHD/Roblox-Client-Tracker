local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local CallBar = require(script.Parent.CallBar)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ContactList = RobloxGui.Modules.ContactList
local dependencies = require(ContactList.dependencies)
local RoduxCall = dependencies.RoduxCall

local activeUtc = os.time() * 1000
local createdUtc = os.time() * 1000

local UserProfiles = require(CorePackages.Workspace.Packages.UserProfiles)

local ApolloClientModule = require(CorePackages.Packages.ApolloClient)
local ApolloProvider = ApolloClientModule.ApolloProvider

local GraphQLServer = require(CorePackages.Workspace.Packages.GraphQLServer)
local ApolloClientTestUtils = GraphQLServer.ApolloClientTestUtils
local mockApolloClient = ApolloClientTestUtils.mockApolloClient

local client = mockApolloClient({})
local function writeNameQuery(userId: string, username: string)
	UserProfiles.Mutations.writeNamesQuery({
		userId = userId,
		client = client,
		names = {
			alias = username,
			contactName = username,
			displayName = username,
			username = username,
			platformName = username,
		},
		query = UserProfiles.Queries.userProfilesCombinedNameAndUsernameByUserIds,
	})
end

writeNameQuery("11111111", "Display Name 1")
writeNameQuery("12345678", "Display Name 2")

return {
	stories = {
		CallBar = function(props)
			return React.createElement(ApolloProvider, {
				client = client,
			}, {
				React.createElement(CallBar, {
					size = Vector2.new(200, 44),
					activeUtc = activeUtc,
					position = UDim2.new(0.5, 0, 0, 0),
				}),
			})
		end,
	},
	controls = {},
	state = {
		Call = {
			currentCall = {
				status = RoduxCall.Enums.Status.Active,
				callerId = 11111111,
				calleeId = 12345678,
				placeId = 789,
				callId = "123456",
				callerCombinedName = "Display Name 1",
				calleeCombinedName = "Display Name 2",
				gameInstanceId = "gameId",
				createdUtc = createdUtc,
				activeUtc = activeUtc,
			},
		},
	},
}
