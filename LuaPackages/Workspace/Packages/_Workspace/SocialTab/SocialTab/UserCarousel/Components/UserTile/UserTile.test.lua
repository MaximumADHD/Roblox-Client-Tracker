local SocialTab = script:FindFirstAncestor("SocialTab")
local createInstanceWithProps = require(SocialTab.TestHelpers.createInstanceWithProps)

local dependencies = require(SocialTab.dependencies)
local RoduxPresence = dependencies.RoduxPresence
local EnumPresenceType = RoduxPresence.Enums.PresenceType

local devDependencies = require(SocialTab.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers
local JestGlobals = devDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local UserTile = require(script.Parent)

-- FIXME: APPFDN-1925
local inGameUserStory = require((script :: any).Parent["inGameUser.story"]) :: any
local defaultPropsStory = require((script :: any).Parent["UserTile.story"]) :: any
local enabledDisplayNameStory = require((script :: any).Parent["enabledDisplayName.story"]) :: any

describe("lifecycle", function()
	it("SHOULD mount and render without issue", function()
		local _, cleanup = createInstanceWithProps(UserTile, {
			user = {
				id = "id",
				username = "username",
				displayName = "displayName",
				thumbnail = "",
				isPremium = false,
				userPresenceType = EnumPresenceType.Offline,
			},
		})

		cleanup()
	end)

	it("SHOULD fire the onActivated callback with the right props when clicked", function()
		local activatedMock = jest.fn()
		local validateUser = expect.objectContaining({
			id = expect.any("string"),
			username = expect.any("string"),
			displayName = expect.any("string"),
			thumbnail = expect.any("string"),
			isPremium = expect.any("boolean"),
			userPresenceType = expect.any("userdata"),
			lastLocation = expect.any("string"),
		})
		local viewUserInterface = expect.objectContaining({
			user = validateUser,
			positionIndex = expect.any("number"),
			absolutePosition = expect.any("number"),
			anchorSpaceSize = expect.any("Vector2"),
			anchorSpacePosition = expect.any("Vector2"),
		})
		local parent, cleanup = createInstanceWithProps(inGameUserStory, {
			onActivated = activatedMock,
		})

		local button = RhodiumHelpers.findFirstInstance(parent, {
			Name = "UserInfo",
		})
		RhodiumHelpers.clickInstance(button)

		expect(activatedMock).toHaveBeenCalledTimes(1)
		expect(activatedMock).toHaveBeenCalledWith(viewUserInterface)

		cleanup()
	end)
end)

describe("User Presence", function()
	it("SHOULD not show presence ICON is user is offline", function()
		local parent, cleanup = createInstanceWithProps(defaultPropsStory)

		local presenceIcon = RhodiumHelpers.findFirstInstance(parent, {
			Name = "PresenceIcon",
		})
		local displayName = RhodiumHelpers.findFirstInstance(parent, {
			Text = "DisplayName",
		})
		local userName = RhodiumHelpers.findFirstInstance(parent, {
			Text = "Username",
		})

		expect(presenceIcon).toBeNil()
		expect(displayName).toBeNil()
		expect(userName).toEqual(expect.any("Instance"))
		cleanup()
	end)

	it("SHOULD show presence ICON and game name is user is online", function()
		local parent, cleanup = createInstanceWithProps(inGameUserStory)

		local presenceIcon = RhodiumHelpers.findFirstInstance(parent, {
			Name = "PresenceIcon",
		})
		local inGameName = RhodiumHelpers.findFirstInstance(parent, {
			Text = "this cool game",
		})

		expect(presenceIcon).toEqual(expect.any("Instance"))
		expect(inGameName).toEqual(expect.any("Instance"))
		cleanup()
	end)

	it("SHOULD show display name if is user is online", function()
		local parent, cleanup = createInstanceWithProps(enabledDisplayNameStory)

		local userName = RhodiumHelpers.findFirstInstance(parent, {
			Text = "This shouldn't show",
		})
		local displayName = RhodiumHelpers.findFirstInstance(parent, {
			Text = "Stacey",
		})

		expect(userName).toBeNil()
		expect(displayName).toEqual(expect.any("Instance"))
		cleanup()
	end)

	it("SHOULD have the same height when the user is offline or in game", function()
		local parentInGame, cleanupInGame = createInstanceWithProps(inGameUserStory)
		local guiObjectInGame = parentInGame:FindFirstChildWhichIsA("GuiObject") :: GuiObject

		local parentOffline, cleanupOffline = createInstanceWithProps(defaultPropsStory)
		local guiObjectOffline = parentOffline:FindFirstChildWhichIsA("GuiObject") :: GuiObject

		expect(guiObjectInGame.AbsoluteSize.Y).toBe(guiObjectOffline.AbsoluteSize.Y)

		cleanupInGame()
		cleanupOffline()
	end)
end)
