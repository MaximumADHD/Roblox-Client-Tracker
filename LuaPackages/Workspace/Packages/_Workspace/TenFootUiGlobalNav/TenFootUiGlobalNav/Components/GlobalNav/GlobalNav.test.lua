local Packages = script:FindFirstAncestor("TenFootUiGlobalNav").Parent
local Cryo = require(Packages.Cryo)
local React = require(Packages.React)
local SharedFlags = require(Packages.SharedFlags)
local GlobalNav = require(script.Parent.GlobalNav)
local ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)
local JestGlobals = require(Packages.Dev.JestGlobals)
local ProviderContainer = require(Packages.RoactUtils).Components.ProviderContainer
local TestHelpers = require(Packages.Dev.TenFootUiTesting).TestHelpers
local mocks = TestHelpers.mocks
local mapProviderListToSpecs = TestHelpers.mapProviderListToSpecs
local render = ReactTestingLibrary.render
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local GetFFlagUIBloxEnableRoDSDesignTokenSupport = SharedFlags.UIBlox.GetFFlagUIBloxEnableRoDSDesignTokenSupport

describe("GlobalNav", function()
	it("should show the correct number of controls", function()
		if GetFFlagUIBloxEnableRoDSDesignTokenSupport() then
			local providers = mocks.makeMockProviders()
			local providerSpecs = mapProviderListToSpecs(providers)

			local tabGroupItems = {
				{
					title = "tab 1",
					icon = "rbxassetid://icon1",
					onActivated = function() end,
					showRoundedBackground = false,
				},
				{
					title = "tab 2",
					icon = "rbxassetid://icon2",
					onActivated = function() end,
					showRoundedBackground = false,
				},
				{
					title = "tab 3",
					icon = "rbxassetid://icon3",
					onActivated = function() end,
					showRoundedBackground = false,
				},
			}
			local optionGroupItems = {
				{
					onActivated = function() end,
					icon = "rbxassetid://icon1",
					label = "option 1",
				},
				{
					onActivated = function() end,
					icon = "rbxassetid://icon2",
					label = "option 2",
				},
				{
					onActivated = function() end,
					icon = "rbxassetid://icon3",
					label = "option 3",
				},
			}

			local element = React.createElement(
				ProviderContainer,
				{ providers = providerSpecs },
				React.createElement(GlobalNav, {
					tabGroupProps = {
						items = tabGroupItems,
					},
					optionGroupProps = {
						items = optionGroupItems,
					},
				})
			)

			local renderResult = render(element)

			local descendants = (renderResult.container :: GuiObject):GetDescendants()
			local buttons = Cryo.List.filter(descendants, function(descendant)
				return descendant:IsA("ImageButton")
			end)

			expect(#buttons).toBe(#tabGroupItems + #optionGroupItems)
		end
	end)
end)
