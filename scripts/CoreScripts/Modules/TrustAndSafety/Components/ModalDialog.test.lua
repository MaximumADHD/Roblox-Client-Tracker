local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Rodux = require(CorePackages.Packages.Rodux)
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)
local createStyleProvider = UnitTestHelpers.createStyleProvider

local ModalDialog = require(script.Parent.ModalDialog)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it

describe("mount & unmount", function()
	it("empty page", function()
		local element = createStyleProvider({
			ModalDialog = Roact.createElement(ModalDialog, {
				visible = true,
				screenSize = Vector2.new(480, 320), -- iPhone 4s
				onDismiss = function() end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("empty page with close button", function()
		local element = createStyleProvider({
			ModalDialog = Roact.createElement(ModalDialog, {
				visible = true,
				screenSize = Vector2.new(568, 320), -- iPhone 5
				titleText = "Title",
				showCloseButton = true,
				headerBar = nil,
				contents = nil,
				actionButtons = nil,
				onDismiss = function() end,
				onBackButtonActivated = nil,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("empty page with back button", function()
		local element = createStyleProvider({
			ModalDialog = Roact.createElement(ModalDialog, {
				visible = true,
				screenSize = Vector2.new(667, 375), -- iPhone 6
				titleText = "Title",
				showCloseButton = false,
				headerBar = nil,
				contents = nil,
				actionButtons = nil,
				onDismiss = function() end,
				onBackButtonActivated = function() end,
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end)
