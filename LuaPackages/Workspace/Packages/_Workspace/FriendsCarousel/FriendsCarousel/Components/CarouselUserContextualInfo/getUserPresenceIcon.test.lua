local getUserPresenceIcon = require(script.Parent.getUserPresenceIcon)

local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)
local RoduxPresence = dependencies.RoduxPresence
local EnumPresenceType = RoduxPresence.Enums.PresenceType
local devDependencies = require(FriendsCarousel.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local mockTheme = {
	OnlineStatus = {
		Color = Color3.fromRGB(0, 0, 0),
		Transparency = 1,
	},
	IconEmphasis = {
		Color = Color3.fromRGB(1, 0, 0),
		Transparency = 0.7,
	},
} :: dependencies.UIBloxTheme

local defaultArgs = {
	presence = EnumPresenceType.Offline,
	theme = mockTheme,
}

describe("WHEN getUserPresenceIcon called", function()
	it("SHOULD return no icon path Offline presence", function()
		jestExpect(getUserPresenceIcon(defaultArgs)).toEqual({
			path = nil,
		})
	end)

	it("SHOULD return correct icon path and style for Online presence", function()
		defaultArgs.presence = EnumPresenceType.Online
		jestExpect(getUserPresenceIcon(defaultArgs)).toEqual({
			path = "component_assets/circle_16",
			color = mockTheme.OnlineStatus.Color,
			transparency = mockTheme.OnlineStatus.Transparency,
			size = UDim2.fromOffset(12, 12),
		})
	end)

	it("SHOULD return correct icon path for InGame presence", function()
		defaultArgs.presence = EnumPresenceType.InGame
		jestExpect(getUserPresenceIcon(defaultArgs)).toEqual({
			path = "icons/menu/games_small",
			transparency = mockTheme.IconEmphasis.Transparency,
		})
	end)

	it("SHOULD return correct icon path for InStudio presence", function()
		defaultArgs.presence = EnumPresenceType.InStudio
		jestExpect(getUserPresenceIcon(defaultArgs)).toEqual({
			path = "icons/logo/studiologo_small",
		})
	end)
end)
