local InviteLinkExpiredModal = script:FindFirstAncestor("InviteLinkExpiredModal")

local devDependencies = require(InviteLinkExpiredModal.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local UnitTestHelpers = devDependencies.UnitTestHelpers
local waitForEvents = devDependencies.DeferredLuaHelpers.waitForEvents
local ReactRoblox = devDependencies.ReactRoblox
local runWhileMounted = UnitTestHelpers.runWhileMounted
local createTreeWithProviders = devDependencies.createTreeWithProviders
local JestGlobals = devDependencies.JestGlobals
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local InviteLinkExpiredModalComponent = require(script.Parent.InviteLinkExpiredModal)

it("SHOULD mount and unmount", function()
	local element = createTreeWithProviders(InviteLinkExpiredModalComponent, {
		props = {
			closeModal = function() end,
			experienceName = "",
			linkStatus = "Expired",
			isLoading = false,
			screenSize = Vector2.new(250, 250),
		},
	})
	runWhileMounted(element, function(parent)
		expect(#parent:GetChildren()).toBe(1)
	end)
end)

it("SHOULD show loading state when appropriate", function()
	local element = createTreeWithProviders(InviteLinkExpiredModalComponent, {
		props = {
			closeModal = function() end,
			experienceName = "This is not shown.",
			linkStatus = "Expired",
			isLoading = true,
			screenSize = Vector2.new(250, 250),
		},
	})
	runWhileMounted(element, function(parent)
		local loadingSpinner = RhodiumHelpers.findFirstInstance(parent, {
			Name = "Spinner",
		})
		expect(loadingSpinner).never.toBeNil()

		local instructionsText = RhodiumHelpers.findFirstInstance(parent, {
			Text = "Feature.SocialShare.Description.InviteExpiredError",
		})
		expect(instructionsText).toBeNil()
	end)
end)

it("SHOULD show experience name when appropriate", function()
	local element = createTreeWithProviders(InviteLinkExpiredModalComponent, {
		props = {
			closeModal = function() end,
			experienceName = "This is shown.",
			linkStatus = "Expired",
			isLoading = false,
			screenSize = Vector2.new(250, 250),
		},
	})
	runWhileMounted(element, function(parent)
		local loadingSpinner = RhodiumHelpers.findFirstInstance(parent, {
			Name = "Spinner",
		})
		expect(loadingSpinner).toBeNil()

		local titleText = RhodiumHelpers.findFirstInstance(parent, {
			Text = "Feature.SocialShare.Label.InviteExpiredError",
		})
		expect(titleText).never.toBeNil()

		local instructionsText = RhodiumHelpers.findFirstInstance(parent, {
			Text = "Feature.SocialShare.Description.InviteExpiredError",
		})
		expect(instructionsText).never.toBeNil()
	end)
end)

it("SHOULD show inviter not in experience instructions when appropriate", function()
	local element = createTreeWithProviders(InviteLinkExpiredModalComponent, {
		props = {
			closeModal = function() end,
			experienceName = "This is shown.",
			linkStatus = "InviterNotInExperience",
			isLoading = false,
			screenSize = Vector2.new(250, 250),
		},
	})
	runWhileMounted(element, function(parent)
		local loadingSpinner = RhodiumHelpers.findFirstInstance(parent, {
			Name = "Spinner",
		})
		expect(loadingSpinner).toBeNil()

		local titleText = RhodiumHelpers.findFirstInstance(parent, {
			Text = "Feature.SocialShare.Label.InviterNotHereError",
		})
		expect(titleText).never.toBeNil()

		local instructionsText = RhodiumHelpers.findFirstInstance(parent, {
			Text = "Feature.SocialShare.Description.InviterNotHereError",
		})
		expect(instructionsText).never.toBeNil()
	end)
end)

it("SHOULD close when cancel is pressed.", function()
	local closeModal = jest.fn()

	local element = createTreeWithProviders(InviteLinkExpiredModalComponent, {
		props = {
			closeModal = function()
				closeModal()
			end,
			experienceName = "This is shown.",
			linkStatus = "Expired",
			isLoading = false,
			screenSize = Vector2.new(250, 250),
		},
	})
	runWhileMounted(element, function(parent)
		ReactRoblox.act(function()
			task.wait()
		end)
		local cancelButton = RhodiumHelpers.findFirstInstance(parent, {
			Text = "Feature.Friends.Label.Cancel",
		})
		expect(cancelButton).never.toBeNil()

		local confirmButton = RhodiumHelpers.findFirstInstance(parent, {
			Text = "Feature.Chat.Drawer.Join",
		})
		expect(confirmButton).never.toBeNil()

		waitForEvents.act()
		ReactRoblox.act(function()
			RhodiumHelpers.clickInstance(cancelButton)
		end)
		expect(closeModal).toHaveBeenCalledTimes(1)
	end)
end)

it("SHOULD launch game when join game is pressed.", function()
	local closeModal = jest.fn()
	local launchGame = jest.fn()

	local element = createTreeWithProviders(InviteLinkExpiredModalComponent, {
		props = {
			closeModal = function()
				closeModal()
			end,
			launchGame = function()
				launchGame()
			end,
			experienceName = "This is shown.",
			linkStatus = "Expired",
			isLoading = false,
			screenSize = Vector2.new(250, 250),
		},
	})
	runWhileMounted(element, function(parent)
		ReactRoblox.act(function()
			task.wait()
		end)
		local cancelButton = RhodiumHelpers.findFirstInstance(parent, {
			Text = "Feature.Friends.Label.Cancel",
		})
		expect(cancelButton).never.toBeNil()

		local confirmButton = RhodiumHelpers.findFirstInstance(parent, {
			Text = "Feature.Chat.Drawer.Join",
		})
		expect(confirmButton).never.toBeNil()

		waitForEvents.act()
		ReactRoblox.act(function()
			RhodiumHelpers.clickInstance(confirmButton)
		end)
		expect(launchGame).toHaveBeenCalledTimes(1)
		expect(closeModal).toHaveBeenCalledTimes(1)
	end)
end)
