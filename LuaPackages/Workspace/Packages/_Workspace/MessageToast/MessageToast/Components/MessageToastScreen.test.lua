local MessageToast = script:FindFirstAncestor("MessageToast")
local TextKeys = require(MessageToast.Common.TextKeys)
local Types = require(MessageToast.Common.Types)

local dependencies = require(MessageToast.dependencies)
local Dash = dependencies.Dash

local devDependencies = require(MessageToast.devDependencies)
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local UnitTestHelpers = devDependencies.UnitTestHelpers
local runWhileMounted = UnitTestHelpers.runWhileMounted
local createTreeWithProviders = devDependencies.createTreeWithProviders
local JestGlobals = devDependencies.JestGlobals
local expect = JestGlobals.expect
local it = JestGlobals.it

local MessageToastScreen = require(script.Parent.MessageToastScreen)

local DEFAULT_PROPS = {
	-- This is to prevent it disappearing mid test
	duration = 100000,
}

it("SHOULD mount and unmount", function()
	local element = createTreeWithProviders(MessageToastScreen, {
		props = DEFAULT_PROPS,
	})

	runWhileMounted(element, function(parent)
		expect(#parent:GetChildren()).toBe(1)
	end)
end)

it("SHOULD show expected default text", function()
	local element = createTreeWithProviders(MessageToastScreen, {
		props = DEFAULT_PROPS,
	})
	runWhileMounted(element, function(parent)
		local title = RhodiumHelpers.findFirstInstance(parent, {
			Text = TextKeys.DefaultErrorTitle,
		})
		local subtitle = RhodiumHelpers.findFirstInstance(parent, {
			Text = TextKeys.DefaultErrorSubtitle,
		})

		expect(title).never.toBeNil()
		expect(subtitle).never.toBeNil()
	end)
end)

it("SHOULD show custom text if given custom message type", function()
	local element = createTreeWithProviders(MessageToastScreen, {
		props = Dash.join(DEFAULT_PROPS, {
			messageType = Types.Custom,
			localizationOverrides = {
				toastTitle = "aaaaa",
			},
		}),
	})
	runWhileMounted(element, function(parent)
		local defaultTitle = RhodiumHelpers.findFirstInstance(parent, {
			Text = TextKeys.DefaultErrorTitle,
		})
		local defaultSubtitle = RhodiumHelpers.findFirstInstance(parent, {
			Text = TextKeys.DefaultErrorSubtitle,
		})
		local title = RhodiumHelpers.findFirstInstance(parent, {
			Text = "aaaaa",
		})

		expect(title).never.toBeNil()
		expect(defaultSubtitle).toBeNil()
		expect(defaultTitle).toBeNil()
	end)
end)

it("SHOULD call goBack when closing", function()
	local element = createTreeWithProviders(MessageToastScreen, {
		props = Dash.join(DEFAULT_PROPS, {
			messageType = Types.Custom,
			localizationOverrides = {
				toastTitle = "aaaaa",
			},
		}),
	})
	runWhileMounted(element, function(parent)
		local defaultTitle = RhodiumHelpers.findFirstInstance(parent, {
			Text = TextKeys.DefaultErrorTitle,
		})
		local defaultSubtitle = RhodiumHelpers.findFirstInstance(parent, {
			Text = TextKeys.DefaultErrorSubtitle,
		})
		local title = RhodiumHelpers.findFirstInstance(parent, {
			Text = "aaaaa",
		})

		expect(title).never.toBeNil()
		expect(defaultSubtitle).toBeNil()
		expect(defaultTitle).toBeNil()
	end)
end)
