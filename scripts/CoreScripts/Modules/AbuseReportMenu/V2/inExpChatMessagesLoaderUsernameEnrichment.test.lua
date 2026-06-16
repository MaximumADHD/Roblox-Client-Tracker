local CorePackages = game:GetService("CorePackages")

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local mockFetchNamesByUserIds = jest.fn()

jest.mock(CorePackages.Workspace.Packages.UserProfiles, function()
	return {
		Stores = {
			UserProfileStore = {
				get = function()
					return {
						fetchNamesByUserIds = mockFetchNamesByUserIds,
					}
				end,
			},
		},
	}
end)

local enrichment = require(script.Parent.inExpChatMessagesLoaderUsernameEnrichment)

local function makeItem(id: string, userId: string, username: string?): { [string]: any }
	return {
		id = id,
		meta = {
			userId = userId,
			username = username,
		},
	}
end

local function makeGroup(items)
	return {
		{
			id = "RBXGeneral",
			label = "Here",
			items = items,
		},
	}
end

describe("inExpChatMessagesLoaderUsernameEnrichment", function()
	beforeEach(function()
		mockFetchNamesByUserIds:mockClear()
	end)

	describe("collectUserIdsMissingUsername", function()
		it("should dedupe userIds with empty username", function()
			local groups = makeGroup({
				makeItem("msg-1", "111", nil),
				makeItem("msg-2", "111", nil),
				makeItem("msg-3", "222", nil),
				makeItem("msg-4", "333", "already"),
			})

			local missing = enrichment.collectUserIdsMissingUsername(groups)

			expect(missing).toEqual({ "111", "222" })
		end)
	end)

	describe("enrichGroupsWithProfileUsernames", function()
		it("should fill username only on items still missing it", function()
			local groups = makeGroup({
				makeItem("msg-1", "111", nil),
				makeItem("msg-2", "222", "syncName"),
			})

			enrichment.enrichGroupsWithProfileUsernames(groups, {
				{
					userId = "111",
					names = {
						getUsername = function()
							return "profileUser"
						end,
					},
				},
			})

			expect(groups[1].items[1].meta.username).toEqual("profileUser")
			expect(groups[1].items[2].meta.username).toEqual("syncName")
		end)
	end)

	describe("enrichMissingUsernames", function()
		it("should skip UserProfileStore when all usernames are filled", function()
			local groups = makeGroup({
				makeItem("msg-1", "111", "syncName"),
			})

			return enrichment.enrichMissingUsernames(groups):andThen(function(result)
				expect(result[1].items[1].meta.username).toEqual("syncName")
				expect(mockFetchNamesByUserIds).never.toHaveBeenCalled()
			end)
		end)

		it("should wait for terminal callback before resolving promise", function()
			local groups = makeGroup({
				makeItem("msg-1", "8693054111", nil),
			})
			local resolveCount = 0

			mockFetchNamesByUserIds.mockImplementation(function(_userIds, callback)
				callback({
					status = "fetching",
					data = {
						{
							userId = "8693054111",
							names = {
								getUsername = function()
									return ""
								end,
							},
						},
					},
				})
				callback({
					status = "success",
					data = {
						{
							userId = "8693054111",
							names = {
								getUsername = function()
									return "WaffleSniper47"
								end,
							},
						},
					},
				})
			end)

			return enrichment.enrichMissingUsernames(groups):andThen(function(result)
				resolveCount += 1
				expect(resolveCount).toEqual(1)
				expect(result[1].items[1].meta.username).toEqual("WaffleSniper47")
			end)
		end)

		it("should fetch and enrich missing usernames", function()
			local groups = makeGroup({
				makeItem("msg-1", "8693054111", nil),
			})

			mockFetchNamesByUserIds.mockImplementation(function(userIds, callback)
				expect(userIds).toEqual({ "8693054111" })
				callback({
					status = "success",
					data = {
						{
							userId = "8693054111",
							names = {
								getUsername = function()
									return "WaffleSniper47"
								end,
							},
						},
					},
				})
			end)

			return enrichment.enrichMissingUsernames(groups):andThen(function(result)
				expect(result[1].items[1].meta.username).toEqual("WaffleSniper47")
				expect(mockFetchNamesByUserIds).toHaveBeenCalledTimes(1)
			end)
		end)

		it("should resolve without enriching when profile fetch fails", function()
			local groups = makeGroup({
				makeItem("msg-1", "8693054111", nil),
			})

			mockFetchNamesByUserIds.mockImplementation(function(_userIds, callback)
				callback({
					status = "failed",
					data = {},
				})
			end)

			return enrichment.enrichMissingUsernames(groups):andThen(function(result)
				expect(result[1].items[1].meta.username).toBeNil()
			end)
		end)
	end)
end)
