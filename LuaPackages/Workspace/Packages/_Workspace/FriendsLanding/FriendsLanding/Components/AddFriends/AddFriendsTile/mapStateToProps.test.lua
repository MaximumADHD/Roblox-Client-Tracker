local FriendsLanding = script:FindFirstAncestor("FriendsLanding")

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local mapStateToProps = require(script.Parent.mapStateToProps)

describe("AddFriendsTile should properly map to props", function()
	local mockState: any = {
		FriendStatuses = {
			["123456"] = Enum.FriendStatus.FriendRequestReceived,
		},
		LocalUserId = "123456",
	}

	it("SHOULD have the expected fields", function()
		local mockOldProps = {
			user = {
				id = "123456",
			},
		}
		local newProps = mapStateToProps(mockState, mockOldProps)
		expect(type(newProps)).toEqual("table")
		expect(newProps.friendStatus).toEqual(Enum.FriendStatus.FriendRequestReceived)
		expect(newProps.localUserId).toEqual("123456")
	end)
end)
