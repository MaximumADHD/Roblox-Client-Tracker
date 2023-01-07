local Squads = script:FindFirstAncestor("Squads")

local devDependencies = require(Squads.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local UnitTestHelpers = devDependencies.UnitTestHelpers
local runWhileMounted = UnitTestHelpers.runWhileMounted
local createTreeWithProviders = devDependencies.createTreeWithProviders
local ReactRoblox = devDependencies.ReactRoblox
local waitForEvents = devDependencies.DeferredLuaHelpers.waitForEvents
local JestGlobals = devDependencies.JestGlobals
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local JoinExperienceModal = require(script.Parent.JoinExperienceModal)

it("SHOULD mount and unmount", function()
	local element = createTreeWithProviders(JoinExperienceModal, {
		props = {
			closeModal = function() end,
			experienceName = "Super Cool Experience",
			experienceServerSize = 6,
			screenSize = Vector2.new(250, 250),
			users = { "111" },
		},
	})
	runWhileMounted(element, function(parent)
		expect(#parent:GetChildren()).toBe(1)
	end)
end)

it("SHOULD show the correct components.", function()
	local element = createTreeWithProviders(JoinExperienceModal, {
		props = {
			closeModal = function() end,
			experienceName = "Super Cool Experience",
			experienceServerSize = 6,
			screenSize = Vector2.new(250, 250),
			users = { "111" },
		},
	})
	runWhileMounted(element, function(parent)
		local experienceImage = RhodiumHelpers.findFirstInstance(parent, {
			Name = "ExperienceImage",
		})
		expect(experienceImage).never.toBeNil()

		local facePile = RhodiumHelpers.findFirstInstance(parent, {
			Name = "FacePile",
		})
		expect(facePile).never.toBeNil()
	end)
end)

it("SHOULD close when decline is pressed.", function()
	local closeModal = jest.fn()

	local element = createTreeWithProviders(JoinExperienceModal, {
		props = {
			closeModal = function()
				closeModal()
			end,
			experienceName = "Super Cool Experience",
			experienceServerSize = 6,
			screenSize = Vector2.new(250, 250),
			users = { "111" },
		},
	})
	runWhileMounted(element, function(parent)
		ReactRoblox.act(function()
			task.wait()
		end)
		local declineButton = RhodiumHelpers.findFirstInstance(parent, {
			Text = "CommonUI.Controls.Action.Decline",
		})
		expect(declineButton).never.toBeNil()

		local acceptButton = RhodiumHelpers.findFirstInstance(parent, {
			Text = "CommonUI.Controls.Action.Accept",
		})
		expect(acceptButton).never.toBeNil()

		waitForEvents.act()
		ReactRoblox.act(function()
			RhodiumHelpers.clickInstance(declineButton)
		end)
		expect(closeModal).toHaveBeenCalledTimes(1)
	end)
end)

it("SHOULD close when accept is pressed.", function()
	local closeModal = jest.fn()

	local element = createTreeWithProviders(JoinExperienceModal, {
		props = {
			closeModal = function()
				closeModal()
			end,
			experienceName = "Super Cool Experience",
			experienceServerSize = 6,
			screenSize = Vector2.new(250, 250),
			users = { "111" },
		},
	})
	runWhileMounted(element, function(parent)
		ReactRoblox.act(function()
			task.wait()
		end)
		local declineButton = RhodiumHelpers.findFirstInstance(parent, {
			Text = "CommonUI.Controls.Action.Decline",
		})
		expect(declineButton).never.toBeNil()

		local acceptButton = RhodiumHelpers.findFirstInstance(parent, {
			Text = "CommonUI.Controls.Action.Accept",
		})
		expect(acceptButton).never.toBeNil()

		waitForEvents.act()
		ReactRoblox.act(function()
			RhodiumHelpers.clickInstance(acceptButton)
		end)
		expect(closeModal).toHaveBeenCalledTimes(1)
	end)
end)
