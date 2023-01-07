local FriendsLanding = script:FindFirstAncestor("FriendsLanding")

local devDependencies = require(FriendsLanding.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local sortFriendRequests = require(script.Parent.sortFriendRequests)

type FriendRequest = sortFriendRequests.FriendRequest

describe("sortFriendRequests", function()
	local requests = {
		{ sentAt = DateTime.fromIsoDate("2022-02-08T21:52:41.710Z"), displayName = "h", username = "h" },
		{ sentAt = DateTime.fromIsoDate("2022-02-09T00:52:41.714Z"), displayName = "q", username = "q" },
		{ sentAt = DateTime.fromIsoDate("2022-02-08T22:52:41.224Z"), displayName = "c", username = "c" },
		{ sentAt = DateTime.fromIsoDate("2022-02-09T00:44:41.777Z"), displayName = "y", username = "y" },
		{ sentAt = DateTime.fromIsoDate("2022-02-07T00:14:41.014Z"), displayName = "a", username = "a" },
		{ sentAt = DateTime.fromIsoDate("2022-02-04T00:52:41.914Z"), displayName = "l", username = "l" },
	}
	local sortedRequests = {
		{ sentAt = DateTime.fromIsoDate("2022-02-09T00:52:41.714Z"), displayName = "q", username = "q" },
		{ sentAt = DateTime.fromIsoDate("2022-02-09T00:44:41.777Z"), displayName = "y", username = "y" },
		{ sentAt = DateTime.fromIsoDate("2022-02-08T22:52:41.224Z"), displayName = "c", username = "c" },
		{ sentAt = DateTime.fromIsoDate("2022-02-08T21:52:41.710Z"), displayName = "h", username = "h" },
		{ sentAt = DateTime.fromIsoDate("2022-02-07T00:14:41.014Z"), displayName = "a", username = "a" },
		{ sentAt = DateTime.fromIsoDate("2022-02-04T00:52:41.914Z"), displayName = "l", username = "l" },
	}
	local requestsSameTimestamp = {
		{ sentAt = DateTime.fromIsoDate("2022-02-08T21:52:41.710Z"), displayName = "h", username = "h" },
		{ sentAt = DateTime.fromIsoDate("2022-02-09T00:52:41.714Z"), displayName = "q", username = "q" },
		{ sentAt = DateTime.fromIsoDate("2022-02-08T22:52:41.224Z"), displayName = "c", username = "c" },
		{ sentAt = DateTime.fromIsoDate("2022-02-08T22:52:41.224Z"), displayName = "y", username = "y" },
		{ sentAt = DateTime.fromIsoDate("2022-02-08T21:52:41.710Z"), displayName = "a", username = "a" },
		{ sentAt = DateTime.fromIsoDate("2022-02-09T00:52:41.714Z"), displayName = "l", username = "l" },
	}
	local sortedRequestsSameTimestamp = {
		{ sentAt = DateTime.fromIsoDate("2022-02-09T00:52:41.714Z"), displayName = "l", username = "l" },
		{ sentAt = DateTime.fromIsoDate("2022-02-09T00:52:41.714Z"), displayName = "q", username = "q" },
		{ sentAt = DateTime.fromIsoDate("2022-02-08T22:52:41.224Z"), displayName = "c", username = "c" },
		{ sentAt = DateTime.fromIsoDate("2022-02-08T22:52:41.224Z"), displayName = "y", username = "y" },
		{ sentAt = DateTime.fromIsoDate("2022-02-08T21:52:41.710Z"), displayName = "a", username = "a" },
		{ sentAt = DateTime.fromIsoDate("2022-02-08T21:52:41.710Z"), displayName = "h", username = "h" },
	}
	local requestsSameTimestampAndDisplayName = {
		{ sentAt = DateTime.fromIsoDate("2022-02-08T21:52:41.710Z"), displayName = "a", username = "h" },
		{ sentAt = DateTime.fromIsoDate("2022-02-09T00:52:41.714Z"), displayName = "q", username = "q" },
		{ sentAt = DateTime.fromIsoDate("2022-02-08T22:52:41.224Z"), displayName = "c", username = "c" },
		{ sentAt = DateTime.fromIsoDate("2022-02-08T22:52:41.224Z"), displayName = "c", username = "y" },
		{ sentAt = DateTime.fromIsoDate("2022-02-08T21:52:41.710Z"), displayName = "a", username = "a" },
		{ sentAt = DateTime.fromIsoDate("2022-02-09T00:52:41.714Z"), displayName = "q", username = "l" },
	}
	local sortedRequestsSameTimestampAndDisplayName = {
		{ sentAt = DateTime.fromIsoDate("2022-02-09T00:52:41.714Z"), displayName = "q", username = "l" },
		{ sentAt = DateTime.fromIsoDate("2022-02-09T00:52:41.714Z"), displayName = "q", username = "q" },
		{ sentAt = DateTime.fromIsoDate("2022-02-08T22:52:41.224Z"), displayName = "c", username = "c" },
		{ sentAt = DateTime.fromIsoDate("2022-02-08T22:52:41.224Z"), displayName = "c", username = "y" },
		{ sentAt = DateTime.fromIsoDate("2022-02-08T21:52:41.710Z"), displayName = "a", username = "a" },
		{ sentAt = DateTime.fromIsoDate("2022-02-08T21:52:41.710Z"), displayName = "a", username = "h" },
	}

	it("SHOULD sort requests by recent, aka descending order by sentAt timestamp", function()
		local requests = sortFriendRequests(requests)

		expect(requests).toEqual(sortedRequests)
	end)

	it("SHOULD sort requests by displayName if sentAt timestamps are the same", function()
		local requests = sortFriendRequests(requestsSameTimestamp)

		expect(requests).toEqual(sortedRequestsSameTimestamp)
	end)

	it("SHOULD sort requests by username if both sentAt timestamps and displayNames are the same", function()
		local requests = sortFriendRequests(requestsSameTimestampAndDisplayName)

		expect(requests).toEqual(sortedRequestsSameTimestampAndDisplayName)
	end)

	it("SHOULD sort requests by username if sentAt timestamps are the same and displayNames are nil", function()
		local requestsDisplayNameNil = {
			{ sentAt = DateTime.fromIsoDate("2022-02-09T00:52:41.714Z"), displayName = nil, username = "x" },
			{ sentAt = DateTime.fromIsoDate("2022-02-09T00:52:41.714Z"), displayName = nil, username = "l" },
			{ sentAt = DateTime.fromIsoDate("2022-02-09T00:52:41.714Z"), displayName = nil, username = "q" },
		}
		local expectedResult = {
			{ sentAt = DateTime.fromIsoDate("2022-02-09T00:52:41.714Z"), displayName = nil, username = "l" },
			{ sentAt = DateTime.fromIsoDate("2022-02-09T00:52:41.714Z"), displayName = nil, username = "q" },
			{ sentAt = DateTime.fromIsoDate("2022-02-09T00:52:41.714Z"), displayName = nil, username = "x" },
		}

		local requests = sortFriendRequests(requestsDisplayNameNil)

		expect(requests).toEqual(expectedResult)
	end)

	it(
		"SHOULD sort requests that item with valid displayName is prior to the other with nil displayName if both timestamps are the same",
		function()
			local requestsDisplayNameNil: { FriendRequest } = {
				{ sentAt = DateTime.fromIsoDate("2022-02-09T00:44:41.714Z"), displayName = nil, username = "q" },
				{
					sentAt = DateTime.fromIsoDate("2022-02-09T00:44:41.714Z"),
					displayName = "valid",
					username = "z",
				},
				{ sentAt = DateTime.fromIsoDate("2022-02-09T00:52:44.714Z"), displayName = nil, username = "x" },
			}
			local expectedResult: { FriendRequest } = {
				{ sentAt = DateTime.fromIsoDate("2022-02-09T00:52:44.714Z"), displayName = nil, username = "x" },
				{
					sentAt = DateTime.fromIsoDate("2022-02-09T00:44:41.714Z"),
					displayName = "valid",
					username = "z",
				},
				{ sentAt = DateTime.fromIsoDate("2022-02-09T00:44:41.714Z"), displayName = nil, username = "q" },
			}

			local requests = sortFriendRequests(requestsDisplayNameNil)

			expect(requests).toEqual(expectedResult)
		end
	)

	it(
		"SHOULD sort requests that item with valid username is prior to the other with nil username if both timestamps and displayNames are the same",
		function()
			local requestsDisplayNameNil: { FriendRequest } = {
				{
					sentAt = DateTime.fromIsoDate("2022-02-09T00:44:41.714Z"),
					displayName = "displayName",
					username = nil,
				},
				{
					sentAt = DateTime.fromIsoDate("2022-02-09T00:44:41.714Z"),
					displayName = "displayName",
					username = "valid",
				},
				{ sentAt = DateTime.fromIsoDate("2022-02-09T00:52:44.714Z"), displayName = nil, username = "x" },
			}
			local expectedResult: { FriendRequest } = {
				{ sentAt = DateTime.fromIsoDate("2022-02-09T00:52:44.714Z"), displayName = nil, username = "x" },
				{
					sentAt = DateTime.fromIsoDate("2022-02-09T00:44:41.714Z"),
					displayName = "displayName",
					username = "valid",
				},
				{
					sentAt = DateTime.fromIsoDate("2022-02-09T00:44:41.714Z"),
					displayName = "displayName",
					username = nil,
				},
			}

			local requests = sortFriendRequests(requestsDisplayNameNil)

			expect(requests).toEqual(expectedResult)
		end
	)
end)
