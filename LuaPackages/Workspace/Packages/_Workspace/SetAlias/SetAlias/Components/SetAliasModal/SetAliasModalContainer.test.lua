local SetAlias = script.Parent.Parent.Parent
local devDependencies = require(SetAlias.devDependencies)
local dependencies = require(SetAlias.dependencies)

local NetworkingAliases = dependencies.NetworkingAliases
local jestExpect = devDependencies.jestExpect
local describe = devDependencies.describe
local it = devDependencies.it
local expect = devDependencies.expect
local jest = devDependencies.jest
local UnitTestHelpers = devDependencies.UnitTestHelpers
local ReactRoblox = devDependencies.ReactRoblox
local RhodiumHelpers = devDependencies.RhodiumHelpers()
local runWhileMounted = UnitTestHelpers.runWhileMounted

local mockStore = require(SetAlias.TestHelpers.mockStore)
local createTreeWithProviders = require(SetAlias.TestHelpers.createTreeWithProviders)

local SetAliasModalContainer = require(script.Parent.SetAliasModalContainer)

describe("SetAliasModalContainer", function()
	local params = {
		profileUserId = "1",
	}
	local DEFAULT_PROPS = {
		navigation = {
			getParam = function(param: string): string
				return params[param]
			end,
			pop = function() end,
		},
		alias = "John Smith",
		cancelOnActivated = function() end,
	}
	local DEFAULT_STORE = {
		ScreenSize = Vector2.new(500, 500),
		SetAlias = {
			Aliases = {
				byUserId = {
					["1"] = "foo",
				},
			},
		},
	}

	it("SHOULD mount and unmount with default state", function()
		local setAliasModalContainer = createTreeWithProviders(SetAliasModalContainer, {
			store = mockStore(DEFAULT_STORE),
			props = DEFAULT_PROPS,
		})
		runWhileMounted(setAliasModalContainer, function(parent)
			jestExpect(#parent:GetChildren()).toBe(1)
		end)
	end)

	it("SHOULD prefill textbox if alias exists", function()
		local setAliasModalContainer = createTreeWithProviders(SetAliasModalContainer, {
			store = mockStore(DEFAULT_STORE),
			props = DEFAULT_PROPS,
		})

		runWhileMounted(setAliasModalContainer, function(parent)
			local inputTextBox = RhodiumHelpers.findFirstElement(parent, {
				Name = "inputTextBox",
			})
			expect(inputTextBox).never.toBeNil()
			expect(inputTextBox:getText()).toBe("foo")
		end)
	end)

	it("SHOULD save on button pressed", function()
		local setUserTagSpy = jest.fn()
		NetworkingAliases.SetUserTag.Mock.reply(function()
			setUserTagSpy()
			return {
				responseBody = {},
			}
		end)

		local setAliasModalContainer = createTreeWithProviders(SetAliasModalContainer, {
			store = mockStore(DEFAULT_STORE),
			props = DEFAULT_PROPS,
		})
		runWhileMounted(setAliasModalContainer, function(parent)
			ReactRoblox.act(function()
				-- Wait for animation to play before attempting to interact
				task.wait(0.5)
			end)
			local buttons = RhodiumHelpers.findFirstInstance(parent, {
				Name = "Buttons",
			})
			local button = buttons[2]
			expect(button).never.toBeNil()

			ReactRoblox.act(function()
				RhodiumHelpers.clickInstance(button)
			end)

			expect(setUserTagSpy).toHaveBeenCalledTimes(1)
		end)
	end)
end)
