local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local NotLocalizedStrings = require(FriendsLanding.Enums.NotLocalizedStrings)

local devDependencies = require(FriendsLanding.devDependencies)
local DarkTheme = devDependencies.AppStyle.DarkTheme
local Font = devDependencies.AppStyle.Font

local JestGlobals = devDependencies.JestGlobals
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local friendsWithPresence = require(script.Parent.friendsWithPresence)
local createRelevancyInfo = require(script.Parent.createRelevancyInfo)

describe("SHOULD properly format relevancyInfo WHEN given:", function()
	local noOpt, openGameDetails

	beforeEach(function()
		noOpt = function() end
		openGameDetails = jest.fn().mockReturnValue(noOpt)
	end)

	it("an online user", function()
		local user = friendsWithPresence.OnlineFriend

		local info = createRelevancyInfo(user, "online", "component_assets/circle_16", openGameDetails, DarkTheme, 1)

		expect(info).toEqual({
			iconSize = UDim2.fromOffset(12, 12),
			iconColor = DarkTheme.OnlineStatus.Color,
			iconTransparency = DarkTheme.OnlineStatus.Transparency,
			icon = expect.any("table"),
			text = "online",
		})
	end)

	it("an offline user", function()
		local user = friendsWithPresence.OfflineFriend

		local info = createRelevancyInfo(user, "offline", nil, openGameDetails, DarkTheme, 1)

		expect(info).toEqual({
			text = "offline",
		})
	end)

	it("an inExperience user", function()
		local user = friendsWithPresence.InGameFriend

		local info =
			createRelevancyInfo(user, "presenceText", "component_assets/circle_16", openGameDetails, DarkTheme, 1)

		expect(info).toEqual({
			icon = expect.any("table"),
			text = user.lastLocation,
			onActivated = noOpt,
		})
	end)

	it("an inExperience user should have caption header", function()
		local user = friendsWithPresence.InGameFriend

		local info = createRelevancyInfo(
			user,
			"presenceText",
			"component_assets/circle_16",
			openGameDetails,
			DarkTheme,
			1,
			false, -- isLuobu
			Font
		)

		expect(info).toEqual({
			icon = expect.any("table"),
			text = user.lastLocation,
			onActivated = noOpt,
			fontStyle = Font.CaptionHeader,
		})
	end)

	it("an offline user should have caption body", function()
		local user = friendsWithPresence.OfflineFriend

		local info = createRelevancyInfo(
			user,
			"offline",
			nil,
			openGameDetails,
			DarkTheme,
			1,
			false, -- isLuobu
			Font
		)

		expect(info).toEqual({
			text = "offline",
			fontStyle = Font.CaptionBody,
		})
	end)

	it("an sets up onActivated correctly for inExperience user", function()
		local user = friendsWithPresence.InGameFriend
		createRelevancyInfo(user, "presenceText", "component_assets/circle_16", openGameDetails, DarkTheme, 1)

		expect(openGameDetails).toHaveBeenCalledTimes(1)
		expect(openGameDetails).toHaveBeenCalledWith(user.universeId, user.id, 1)
	end)

	it("an inStudio user", function()
		local user = friendsWithPresence.InStudioFriend

		local info =
			createRelevancyInfo(user, "presenceText", "component_assets/circle_16", openGameDetails, DarkTheme, 1)

		expect(info).toEqual({
			text = "LastLocation",
			icon = expect.any("table"),
		})
	end)

	it("an inStudio LuoBu user", function()
		local user = friendsWithPresence.InStudioFriend
		local isLuobu = true

		local info = createRelevancyInfo(
			user,
			"presenceText",
			"component_assets/circle_16",
			openGameDetails,
			DarkTheme,
			1,
			isLuobu,
			Font
		)

		expect(info).toEqual({
			text = "LastLocation",
			icon = expect.any("table"),
			fontStyle = Font.CaptionBody,
		})
	end)

	it("an inStudio user without lastLocation", function()
		local user = friendsWithPresence.InStudioWithoutLastLocationFriend

		local info =
			createRelevancyInfo(user, "presenceText", "component_assets/circle_16", openGameDetails, DarkTheme, 1)

		expect(info).toEqual({
			text = NotLocalizedStrings.StudioPresenceTextGlobal.rawValue(),
			icon = expect.any("table"),
		})
	end)

	it("an inStudio LuoBu user without lastLocation", function()
		local user = friendsWithPresence.InStudioWithoutLastLocationFriend
		local isLuobu = true

		local info = createRelevancyInfo(
			user,
			"presenceText",
			"component_assets/circle_16",
			openGameDetails,
			DarkTheme,
			1,
			isLuobu,
			Font
		)

		expect(info).toEqual({
			text = NotLocalizedStrings.StudioPresenceTextLuobu.rawValue(),
			icon = expect.any("table"),
			fontStyle = Font.CaptionBody,
		})
	end)

	it("a deleted user", function()
		local user = friendsWithPresence.OfflineFriend
		user["isDeleted"] = true
		local isLuobu = false
		local accountDeletedText = "Feature.Friends.Action.AccountDeleted"

		local info = createRelevancyInfo(
			user,
			"presenceText",
			"component_assets/circle_16",
			openGameDetails,
			DarkTheme,
			1,
			isLuobu,
			Font,
			accountDeletedText
		)

		expect(info).toEqual({
			text = accountDeletedText,
			icon = expect.any("table"),
			fontStyle = Font.CaptionBody,
		})
	end)
end)
