local SquadWidget = script:FindFirstAncestor("SquadWidget")
local devDependencies = require(SquadWidget.devDependencies)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local it = JestGlobals.it

local RhodiumHelpers = devDependencies.RhodiumHelpers()
local UnitTestHelpers = devDependencies.UnitTestHelpers
local runWhileMounted = UnitTestHelpers.runWhileMounted
local createTreeWithProviders = devDependencies.createTreeWithProviders
local NotificationToast = require(SquadWidget.NotificationToast)

it("SHOULD mount and unmount", function()
	local element = createTreeWithProviders(NotificationToast, {
		props = {
			title = "Cool Title",
			subtext = "3 spots left",
			description = "This is a cool description.",
		},
	})
	runWhileMounted(element, function(parent)
		jestExpect(#parent:GetChildren()).toBe(1)
	end)
end)

it("SHOULD have all the elements", function()
	local element = createTreeWithProviders(NotificationToast, {
		props = {
			title = "Cool Title",
			subtext = "3 spots left",
			description = "This is a cool description.",
			thumbnail = "rbxassetid://2610133241",
			users = { "111" },
			totalElapsedTime = 10,
		},
	})
	runWhileMounted(element, function(parent)
		local titleText = RhodiumHelpers.findFirstInstance(parent, {
			Name = "Title",
		})
		jestExpect(titleText).never.toBeNil()

		local subtextText = RhodiumHelpers.findFirstInstance(parent, {
			Name = "Subtext",
		})
		jestExpect(subtextText).never.toBeNil()

		local descriptionText = RhodiumHelpers.findFirstInstance(parent, {
			Name = "Description",
		})
		jestExpect(descriptionText).never.toBeNil()

		local image = RhodiumHelpers.findFirstInstance(parent, {
			Name = "HeaderImage",
		})
		jestExpect(image).never.toBeNil()

		local facePile = RhodiumHelpers.findFirstInstance(parent, {
			Name = "FacePile",
		})
		jestExpect(facePile).never.toBeNil()

		local progressBar = RhodiumHelpers.findFirstInstance(parent, {
			Name = "ProgressBar",
		})
		jestExpect(progressBar).never.toBeNil()

		local declineButton = RhodiumHelpers.findFirstInstance(parent, {
			Text = "CommonUI.Controls.Action.Decline",
		})
		jestExpect(declineButton).never.toBeNil()

		local acceptButton = RhodiumHelpers.findFirstInstance(parent, {
			Text = "CommonUI.Controls.Action.Accept",
		})
		jestExpect(acceptButton).never.toBeNil()
	end)
end)

it("SHOULD hide elements when just a title is passed", function()
	local element = createTreeWithProviders(NotificationToast, {
		props = {
			title = "Cool Title",
			showButtons = false,
		},
	})
	runWhileMounted(element, function(parent)
		local subtextText = RhodiumHelpers.findFirstInstance(parent, {
			Name = "Subtext",
		})
		jestExpect(subtextText).toBeNil()

		local descriptionText = RhodiumHelpers.findFirstInstance(parent, {
			Name = "Description",
		})
		jestExpect(descriptionText).toBeNil()

		local image = RhodiumHelpers.findFirstInstance(parent, {
			Name = "HeaderImage",
		})
		jestExpect(image).toBeNil()

		local facePile = RhodiumHelpers.findFirstInstance(parent, {
			Name = "FacePile",
		})
		jestExpect(facePile).toBeNil()

		local progressBar = RhodiumHelpers.findFirstInstance(parent, {
			Name = "ProgressBar",
		})
		jestExpect(progressBar).toBeNil()

		local declineButton = RhodiumHelpers.findFirstInstance(parent, {
			Text = "CommonUI.Controls.Action.Decline",
		})
		jestExpect(declineButton).toBeNil()

		local acceptButton = RhodiumHelpers.findFirstInstance(parent, {
			Text = "CommonUI.Controls.Action.Accept",
		})
		jestExpect(acceptButton).toBeNil()
	end)
end)
