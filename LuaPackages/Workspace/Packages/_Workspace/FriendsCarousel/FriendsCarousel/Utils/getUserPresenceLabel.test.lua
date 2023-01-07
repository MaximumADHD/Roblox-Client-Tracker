local getUserPresenceLabel = require(script.Parent.getUserPresenceLabel)

local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)
local RoduxPresence = dependencies.RoduxPresence
local EnumPresenceType = RoduxPresence.Enums.PresenceType
local devDependencies = require(FriendsCarousel.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local TextKeys = require(FriendsCarousel.Common.TextKeys)
local NotLocalizedStrings = require(FriendsCarousel.Common.NotLocalizedStrings)

local mockFont = {
	BaseSize = 1,
	CaptionHeader = {
		RelativeSize = 5,
		RelativeMinSize = 5,
		Font = Enum.Font.Arial,
	},
} :: dependencies.UIBloxFontPalette

local mockTheme = {
	TextEmphasis = {
		Color = Color3.fromRGB(0, 0, 0),
		Transparency = 1,
	},
} :: dependencies.UIBloxTheme

local defaultArgs = {
	presence = EnumPresenceType.Offline,
	lastLocation = "",
	font = mockFont,
	theme = mockTheme,
}

describe("WHEN getUserPresenceLabel called", function()
	it("SHOULD return correct textKey for Offline presence", function()
		jestExpect(getUserPresenceLabel(defaultArgs)).toEqual({
			textKey = TextKeys.PresenceOffline,
		})
	end)

	it("SHOULD return correct textKey for Online presence", function()
		defaultArgs.presence = EnumPresenceType.Online
		jestExpect(getUserPresenceLabel(defaultArgs)).toEqual({
			textKey = TextKeys.PresenceOnline,
		})
	end)

	it("SHOULD return correct text and font for InGame presence", function()
		defaultArgs.presence = EnumPresenceType.InGame
		defaultArgs.lastLocation = "last location"

		jestExpect(getUserPresenceLabel(defaultArgs)).toEqual({
			font = mockFont.CaptionHeader,
			text = "last location",
			colorStyle = mockTheme.TextEmphasis,
		})
	end)

	it("SHOULD return correct text InStudio presence with lastLocation", function()
		defaultArgs.presence = EnumPresenceType.InStudio
		defaultArgs.lastLocation = "last location"
		jestExpect(getUserPresenceLabel(defaultArgs)).toEqual({
			font = mockFont.CaptionHeader,
			text = "last location",
			colorStyle = mockTheme.TextEmphasis,
		})
	end)

	it("SHOULD return correct text InStudio presence without lastLocation", function()
		defaultArgs.presence = EnumPresenceType.InStudio
		defaultArgs.lastLocation = ""
		jestExpect(getUserPresenceLabel(defaultArgs)).toEqual({
			text = NotLocalizedStrings.StudioPresenceTextGlobal,
		})
	end)
end)
