local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local ApolloClientModule = require(CorePackages.Packages.ApolloClient)
local GraphQLServer = require(CorePackages.Workspace.Packages.GraphQLServer)
local UserProfiles = require(CorePackages.Workspace.Packages.UserProfiles)

local ApolloClientTestUtils = GraphQLServer.ApolloClientTestUtils
local mockApolloClient = ApolloClientTestUtils.mockApolloClient

local CallHistoryItem = require(script.Parent.CallHistoryItem)

local client = mockApolloClient({})
local function writeNameQuery(userId: string, alias: string, username: string)
	UserProfiles.Mutations.writeNamesQuery({
		userId = userId,
		client = client,
		names = {
			alias = alias,
			contactName = username,
			displayName = username,
			username = username,
			platformName = username,
		},
		query = UserProfiles.Queries.userProfilesCombinedNameAndUsernameByUserIds,
	})
end

writeNameQuery("1", "localuserDisplayName", "localuser")
writeNameQuery("2", "SuperCoolDisplayName", "SuperCoolUsername")

return {
	stories = {
		Incoming = function(props)
			return React.createElement(ApolloClientModule.ApolloProvider, { client = client }, {
				React.createElement(CallHistoryItem, {
					callRecord = {
						callId = "test_call_id",
						callerId = 2,
						participants = {
							{
								userId = 1,
								displayName = "localuserDisplayName",
								userName = "localuser",
							},
							{
								userId = 2,
								displayName = "SuperCoolDisplayName",
								userName = "SuperCoolUsername",
							},
						},
						status = "CallFinished",
						startUtc = 1681338167883,
						endUtc = 1681338335366,
						universeId = 123,
						placeId = 456,
					},
					localUserId = 1,
					showDivider = props.controls.showDivider,
					dismissCallback = function() end,
				}),
			})
		end,
		Outgoing = function(props)
			return React.createElement(CallHistoryItem, {
				callRecord = {
					callId = "test_call_id",
					callerId = 1,
					participants = {
						{
							userId = 1,
							displayName = "localuserDisplayName",
							userName = "localuser",
						},
						{
							userId = 2,
							displayName = "SuperCoolDisplayName",
							userName = "SuperCoolUsername",
						},
					},

					status = "CallFinished",
					startUtc = 1681338167883,
					endUtc = 1681338335366,
					universeId = 123,
					placeId = 456,
				},
				localUserId = 1,
				showDivider = props.controls.showDivider,
				dismissCallback = function() end,
			})
		end,
		Missed = function(props)
			return React.createElement(CallHistoryItem, {
				callRecord = {
					callId = "test_call_id",
					callerId = 2,
					participants = {
						{
							userId = 1,
							displayName = "localuserDisplayNamw",
							userName = "localuser",
						},
						{
							userId = 2,
							displayName = "SuperCoolDisplayName",
							userName = "SuperCoolUsername",
						},
					},
					status = "CallMissed",
					startUtc = 1681338167883,
					endUtc = 1681338335366,
					universeId = 123,
					placeId = 456,
				},
				localUserId = 1,
				showDivider = props.controls.showDivider,
				dismissCallback = function() end,
			})
		end,
	},
	controls = {
		showDivider = true,
	},
	state = {
		Navigation = {
			tag = "",
		},
	},
}
