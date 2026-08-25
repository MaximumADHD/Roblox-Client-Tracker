local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest

local InGameMenuDependencies = require(CorePackages.Packages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)

local InGameMenu = script.Parent.Parent.Parent

local SendInviteButton = require(script.Parent.SendInviteButton)

local Constants = require(InGameMenu.Resources.Constants)
local InviteStatus = Constants.InviteStatus

it("should create and destroy without errors", function()
	local element = UnitTestHelpers.createStyleProvider({
		SendInviteButton = Roact.createElement(SendInviteButton, {
			onActivated = function()
				print("onActivated")
			end,
			animationBegun = function()
				print("animationBegun")
			end,
			animationEnded = function()
				print("animationEnded")
			end,
			userInviteStatus = nil,
		}),
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)

describe("animations", function()
	it("should call animation began and ended once", function()
		local beginSpy, beginFn = jest.fn()
		local endSpy, endFn = jest.fn()

		local element = UnitTestHelpers.createStyleProvider({
			SendInviteButton = Roact.createElement(SendInviteButton, {
				onActivated = function()
					print("onActivated")
				end,
				animationBegun = beginFn,
				animationEnded = endFn,
				userInviteStatus = InviteStatus.Failed,
			}),
		})

		local instance = Roact.mount(element)
		wait(1)
		Roact.unmount(instance)

		expect(beginSpy).toHaveBeenCalledTimes(1)
		expect(endSpy).toHaveBeenCalledTimes(1)
	end)
end)
