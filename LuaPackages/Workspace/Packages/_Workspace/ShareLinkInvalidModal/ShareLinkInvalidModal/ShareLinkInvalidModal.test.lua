local ShareLinkInvalidModal = script:FindFirstAncestor("ShareLinkInvalidModal")

local devDependencies = require(ShareLinkInvalidModal.devDependencies)
local ReactRoblox = devDependencies.ReactRoblox
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local UnitTestHelpers = devDependencies.UnitTestHelpers
local runWhileMounted = UnitTestHelpers.runWhileMounted
local createTreeWithProviders = devDependencies.createTreeWithProviders
local waitForEvents = devDependencies.DeferredLuaHelpers.waitForEvents
local JestGlobals = devDependencies.JestGlobals
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local ShareLinkInvalidModalComponent = require(script.Parent.ShareLinkInvalidModal)

it("SHOULD mount and unmount", function()
	local element = createTreeWithProviders(ShareLinkInvalidModalComponent, {
		props = {
			closeModal = function() end,
			screenSize = Vector2.new(250, 250),
		},
	})
	runWhileMounted(element, function(parent)
		expect(#parent:GetChildren()).toBe(1)
	end)
end)

it("SHOULD close when cancel is pressed.", function()
	local closeModal = jest.fn()

	local element = createTreeWithProviders(ShareLinkInvalidModalComponent, {
		props = {
			closeModal = function()
				closeModal()
			end,
			screenSize = Vector2.new(250, 250),
		},
	})
	runWhileMounted(element, function(parent)
		waitForEvents.act()
		local cancelButton = RhodiumHelpers.findFirstInstance(parent, {
			Text = "Feature.Friends.Label.Cancel",
		})
		expect(cancelButton).never.toBeNil()

		waitForEvents.act()
		ReactRoblox.act(function()
			RhodiumHelpers.clickInstance(cancelButton)
		end)
		expect(closeModal).toHaveBeenCalledTimes(1)
	end)
end)
