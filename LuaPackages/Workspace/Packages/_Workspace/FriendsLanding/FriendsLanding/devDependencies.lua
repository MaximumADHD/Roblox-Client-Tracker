local FriendsLanding = script.Parent
local Packages = FriendsLanding.Parent
local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)

local baseSize = 16
-- Nominal size conversion
-- https://confluence.rbx.com/display/PX/Font+Metrics
local nominalSizeFactor = 1.2

return {
	AppStyle = {
		LightTheme = require(Packages.Dev.Style).Themes.LightTheme,
		DarkTheme = require(Packages.Dev.Style).Themes.DarkTheme,
		Gotham = require(Packages.Dev.Style).Fonts.Gotham,
		Font = {
			BaseSize = baseSize * nominalSizeFactor,
			Title = {
				Font = Enum.Font.GothamBlack,
				RelativeSize = 32 / baseSize,
				RelativeMinSize = 24 / baseSize,
			},
			Header1 = {
				Font = Enum.Font.GothamMedium,
				RelativeSize = 20 / baseSize,
				RelativeMinSize = 16 / baseSize,
			},
			Header2 = {
				Font = Enum.Font.GothamMedium,
				RelativeSize = 16 / baseSize,
				RelativeMinSize = 12 / baseSize,
			},
			SubHeader1 = {
				Font = Enum.Font.GothamMedium,
				RelativeSize = 16 / baseSize,
				RelativeMinSize = 12 / baseSize,
			},
			Body = {
				Font = Enum.Font.Gotham,
				RelativeSize = 16 / baseSize,
				RelativeMinSize = 12 / baseSize,
			},
			CaptionHeader = {
				Font = Enum.Font.GothamMedium,
				RelativeSize = 12 / baseSize,
				RelativeMinSize = 9 / baseSize,
			},
			CaptionSubHeader = {
				Font = Enum.Font.GothamMedium,
				RelativeSize = 12 / baseSize,
				RelativeMinSize = 9 / baseSize,
			},
			CaptionBody = {
				Font = Enum.Font.Gotham,
				RelativeSize = 12 / baseSize,
				RelativeMinSize = 9 / baseSize,
			},
			Footer = {
				Font = Enum.Font.GothamMedium,
				RelativeSize = 10 / baseSize,
				RelativeMinSize = 8 / baseSize,
			},
		},
	},
	Mock = LuaSocialLibrariesDeps.Mock,
	CollisionMatchers = LuaSocialLibrariesDeps.CollisionMatchers,
	Rhodium = require(Packages.Dev.Rhodium),
	findImageSet = require(Packages.Dev.SocialTestHelpers).TestHelpers.findImageSet,
	DeferredLuaHelpers = require(Packages.Dev.TestUtils).DeferredLuaHelpers,
	UnitTestHelpers = require(Packages.Dev.UnitTestHelpers),
	RhodiumHelpers = require(Packages.Dev.RhodiumHelpers),
	ReactRoblox = require(Packages.Dev.ReactRoblox),
	JestGlobals = require(Packages.Dev.JestGlobals),
}
