local FriendsLanding = script:FindFirstAncestor("FriendsLanding")

local dependencies = require(FriendsLanding.dependencies)
local UIBlox = dependencies.UIBlox
local Images = UIBlox.App.ImageSet.Images
local EnumPresenceType = dependencies.RoduxPresence.Enums.PresenceType
local t = dependencies.t
local llama = dependencies.llama

local devDependencies = require(FriendsLanding.devDependencies)
local Mock = devDependencies.Mock

local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local withEveryFriendStatus = require(script.Parent.withEveryFriendStatus)
local fullContextInfo = withEveryFriendStatus.fullContextInfo
local getFooterRelevanceInfo = require(script.Parent.getFooterRelevanceInfo)

describe("getFooterRelevanceInfo", function()
	local mockStyle = {
		Font = {
			CaptionHeader = Mock.MagicMock.new(),
		},
		Theme = {
			BackgroundUIDefault = {
				Transparency = "Transparency",
			},
		},
	}

	local mockLocalization = {
		mutualFriendsText = if fullContextInfo.userProps.mutualFriends
				and #fullContextInfo.userProps.mutualFriends == 1
			then "mutual friend"
			else "mutual friends",
		sentFromWithContextText = "Sent from",
		youAreFollowingText = "You are following",
		followsYouText = "Follows you",
		fromContactsText = "From Contacts",
	}

	local function getFooterRelevanceInfoWrapped(props, localization)
		return getFooterRelevanceInfo(props, mockStyle, llama.Dictionary.join(mockLocalization, localization))
	end

	describe("getFooterRelevanceInfo", function()
		it("SHOULD be a method", function()
			expect(type(getFooterRelevanceInfo)).toEqual(type(t.callback))
		end)
	end)

	describe("relevanceInfo for friendRequests", function()
		local isFriendRequest, friendStatus

		beforeEach(function()
			isFriendRequest = true
			friendStatus = Enum.FriendStatus.FriendRequestReceived
		end)

		it("SHOULD show MutualFriends state with highest priority", function()
			local resultedRelevancyInfo = getFooterRelevanceInfoWrapped({
				isFriendRequest = isFriendRequest,
				friendStatus = friendStatus,
				mutualFriends = fullContextInfo.userProps.mutualFriends,
				sentFromExperienceName = fullContextInfo.tileProps.sentFromExperienceName,
				amIFollowingUser = fullContextInfo.tileProps.amIFollowingUser,
				isUserFollowingMe = fullContextInfo.tileProps.isUserFollowingMe,
			})

			expect(resultedRelevancyInfo).never.toBeNil()
			expect(resultedRelevancyInfo.text).toContain(mockLocalization.mutualFriendsText)
			expect(resultedRelevancyInfo.icon).never.toBeNil()
		end)

		it("SHOULD show MutualFriends state correctly", function()
			local resultedRelevancyInfo = getFooterRelevanceInfoWrapped({
				isFriendRequest = isFriendRequest,
				friendStatus = friendStatus,
				mutualFriends = fullContextInfo.userProps.mutualFriends,
			})

			expect(resultedRelevancyInfo).never.toBeNil()
			expect(resultedRelevancyInfo.text).toContain(mockLocalization.mutualFriendsText)
			expect(resultedRelevancyInfo.icon).never.toBeNil()
		end)

		it("SHOULD show SentFrom state correctly", function()
			local resultedRelevancyInfo = getFooterRelevanceInfoWrapped({
				isFriendRequest = isFriendRequest,
				friendStatus = friendStatus,
				sentFromExperienceName = fullContextInfo.tileProps.sentFromExperienceName,
			})

			expect(resultedRelevancyInfo).never.toBeNil()
			expect(resultedRelevancyInfo.text).toContain(mockLocalization.sentFromWithContextText)
			expect(resultedRelevancyInfo.icon).toBeNil()
		end)

		it("SHOULD show YouAreFollowing state correctly", function()
			local resultedRelevancyInfo = getFooterRelevanceInfoWrapped({
				isFriendRequest = isFriendRequest,
				friendStatus = friendStatus,
				amIFollowingUser = fullContextInfo.tileProps.amIFollowingUser,
			})

			expect(resultedRelevancyInfo).never.toBeNil()
			expect(resultedRelevancyInfo.text).toContain(mockLocalization.youAreFollowingText)
			expect(resultedRelevancyInfo.icon).never.toBeNil()
		end)

		it("SHOULD show FollowsYou state correctly", function()
			local resultedRelevancyInfo = getFooterRelevanceInfoWrapped({
				isFriendRequest = isFriendRequest,
				friendStatus = friendStatus,
				isUserFollowingMe = fullContextInfo.tileProps.isUserFollowingMe,
			})
			expect(resultedRelevancyInfo).never.toBeNil()
			expect(resultedRelevancyInfo.text).toContain(mockLocalization.followsYouText)
			expect(resultedRelevancyInfo.icon).never.toBeNil()
		end)

		it("SHOULD show FromContacts state correctly", function()
			local resultedRelevancyInfo = getFooterRelevanceInfoWrapped({
				isFriendRequest = isFriendRequest,
				friendStatus = friendStatus,
				isUserFollowingMe = fullContextInfo.tileProps.isUserFollowingMe,
				originSourceType = "PhoneContactImporter",
			})
			expect(resultedRelevancyInfo).never.toBeNil()
			expect(resultedRelevancyInfo.text).toContain(mockLocalization.fromContactsText)
			expect(resultedRelevancyInfo.icon).toBeNil()
		end)

		it("SHOULD not show any relevancy info when all the context info is null", function()
			local resultedRelevancyInfo = getFooterRelevanceInfoWrapped({
				isFriendRequest = isFriendRequest,
				friendStatus = friendStatus,
			})
			expect(resultedRelevancyInfo).toBeNil()
		end)

		describe("FFlagContactNameOnFriendRequestEnabled", function()
			local flag

			beforeEach(function()
				flag = game:SetFastFlagForTesting("ContactNameOnFriendRequestEnabled", true)
			end)

			afterEach(function()
				game:SetFastFlagForTesting("ContactNameOnFriendRequestEnabled", flag)
			end)

			it("SHOULD show contactName state correctly", function()
				local contactNameText = "Joe Smith From Contacts"
				local resultedRelevancyInfo = getFooterRelevanceInfoWrapped({
					isFriendRequest = isFriendRequest,
					friendStatus = friendStatus,
					isUserFollowingMe = fullContextInfo.tileProps.isUserFollowingMe,
					originSourceType = "Unknown",
				}, { contactNameText = contactNameText })
				expect(resultedRelevancyInfo).never.toBeNil()
				expect(resultedRelevancyInfo.text).toContain(contactNameText)
				expect(resultedRelevancyInfo.icon).toBeNil()
			end)
		end)
	end)

	describe("relevanceInfo for friendSuggestions", function()
		local function runGetRelevanceInfo(isFriendRequest, friendStatus, presenceType)
			return getFooterRelevanceInfoWrapped({
				isFriendRequest = isFriendRequest,
				friendStatus = friendStatus,
				userPresenceType = presenceType,
				lastLocation = "LastLocation",
			})
		end

		local function everyFriendStatus(func)
			local FriendStatusToTest = {
				Enum.FriendStatus.NotFriend,
				Enum.FriendStatus.Friend,
				Enum.FriendStatus.FriendRequestSent,
				Enum.FriendStatus.Unknown,
			}
			llama.Dictionary.every(FriendStatusToTest, func)
		end

		it("SHOULD return `nil` for non-requestFriendship state when not in InGame State", function()
			everyFriendStatus(function(friendStatus)
				local info = runGetRelevanceInfo(false, friendStatus, EnumPresenceType.Offline)
				expect(info).toBeNil()
				return true
			end)
		end)

		it("SHOULD show InGame state correctly for non-requestFriendship state", function()
			everyFriendStatus(function(friendStatus)
				local info = runGetRelevanceInfo(false, friendStatus, EnumPresenceType.InGame)
				expect(info.icon).toEqual(Images["icons/actions/friends/friendsplaying"])
				return true
			end)
		end)
	end)
end)
