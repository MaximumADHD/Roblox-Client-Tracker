local FriendsCarousel = script.Parent.Parent.Parent
local devDependencies = require(FriendsCarousel.devDependencies)
local dependencies = require(FriendsCarousel.dependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local it = JestGlobals.it
local RoduxPresence = dependencies.RoduxPresence
local PresenceType = RoduxPresence.Enums.PresenceType

local getCarouselList = require(script.Parent.getCarouselList)

it("SHOULD return function", function()
	jestExpect(getCarouselList).toEqual(jestExpect.any("function"))
end)

it("SHOULD return friends list if recommendations are empty", function()
	local friendsList = { { id = "1", userPresenceType = PresenceType.Online } }
	local recsList = {}
	local carouselList = getCarouselList(friendsList, recsList)
	jestExpect(carouselList).toEqual(friendsList)
end)

it("SHOULD return correct list", function()
	local friendsList = {
		{ id = "1", userPresenceType = PresenceType.InGame },
		{ id = "2", userPresenceType = PresenceType.Online },
		{ id = "3", userPresenceType = PresenceType.Offline },
	}
	local recsList = {
		{ id = "123" },
		{ id = "456" },
	}
	local carouselList = getCarouselList(friendsList, recsList)
	jestExpect(carouselList).toEqual({
		{ id = "1", userPresenceType = PresenceType.InGame },
		{ id = "2", userPresenceType = PresenceType.Online },
		{ id = "3", userPresenceType = PresenceType.Offline },
		{ id = "123" },
		{ id = "456" },
	})
end)
