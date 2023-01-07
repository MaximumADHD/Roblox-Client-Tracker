local SetAlias = script.Parent.Parent.Parent
local devDependencies = require(SetAlias.devDependencies)
local dependencies = require(SetAlias.dependencies)

local Dash = dependencies.Dash
local describe = devDependencies.describe
local it = devDependencies.it
local expect = devDependencies.expect
local ReactRoblox = devDependencies.ReactRoblox
local jest = devDependencies.jest
local act = ReactRoblox.act
local UnitTestHelpers = devDependencies.UnitTestHelpers
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local runWhileMounted = UnitTestHelpers.runWhileMounted

local createTreeWithProviders = require(SetAlias.TestHelpers.createTreeWithProviders)

local SetAliasModal = require(script.Parent.SetAliasModal)

describe("SetAliasModal", function()
	local DEFAULT_PROPS = {
		screenSize = Vector2.new(500, 500),
		alias = "",
		cancelOnActivated = function() end,
		saveOnActivated = function() end,
	}

	it("SHOULD mount and unmount with default state", function()
		local setAliasModal = createTreeWithProviders(SetAliasModal, {
			props = DEFAULT_PROPS,
		})
		runWhileMounted(setAliasModal, function(parent)
			expect(#parent:GetChildren()).toBe(1)
		end)
	end)

	it("SHOULD send alias text", function()
		local saveOnActivatedSpy = jest.fn()
		local setAliasModal = createTreeWithProviders(SetAliasModal, {
			props = Dash.join(DEFAULT_PROPS, {
				saveOnActivated = saveOnActivatedSpy,
			}),
		})
		runWhileMounted(setAliasModal, function(parent)
			local buttons = RhodiumHelpers.findFirstInstance(parent, {
				Name = "Buttons",
			})
			local button = buttons[2]
			expect(button).never.toBeNil()

			local inputTextBox = RhodiumHelpers.findFirstElement(parent, {
				Name = "inputTextBox",
			})
			expect(inputTextBox).never.toBeNil()

			act(function()
				RhodiumHelpers.typeTextIntoElement(inputTextBox, "foo")
			end)
			act(function()
				RhodiumHelpers.clickInstance(button)
			end)
			expect(inputTextBox:getText()).toBe("foo")
			expect(saveOnActivatedSpy).toHaveBeenCalledTimes(1)
			expect(saveOnActivatedSpy).toHaveBeenCalledWith("foo")
		end)
	end)
end)
