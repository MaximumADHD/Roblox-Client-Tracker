local UserSearch = script:FindFirstAncestor("UserSearch")
local Packages = UserSearch.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local SocialTestHelpers = require(Packages.Dev.SocialTestHelpers).TestHelpers
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local React = require(Packages.React)
local RhodiumHelpers = require(Packages.Dev.RhodiumHelpers)

local createTreeWithProviders = SocialTestHelpers.createTreeWithProviders
local runWhileMounted = SocialTestHelpers.runWhileMounted

local CollectionService = game:GetService("CollectionService")
local ImpressionsTagWrapper = require(script.Parent)

describe("ImpressionsTagWrapper", function()
	it("SHOULD mount and unmount", function()
		local ImpressionsTagWrapperComponent = createTreeWithProviders(ImpressionsTagWrapper, {
			props = {
				index = 1,
				impressionsTag = "tagImpression",
				renderComponent = function()
					return nil
				end,
			},
		})

		runWhileMounted(ImpressionsTagWrapperComponent, function(parent)
			expect(#parent:GetChildren()).toBe(1)
		end)
	end)

	it("SHOULD render child component", function()
		local ImpressionsTagWrapperComponent = createTreeWithProviders(ImpressionsTagWrapper, {
			props = {
				index = 1,
				impressionsTag = "tagImpression",
				renderComponent = function()
					return React.createElement("Frame", {})
				end,
			},
		})

		runWhileMounted(ImpressionsTagWrapperComponent, function(parent)
			expect(#parent:GetChildren()).toBe(1)

			local FrameTest = RhodiumHelpers.findFirstInstance(parent, {
				Name = "ComponentWithImpressionsTag",
			})

			expect(FrameTest).never.toBeNil()
		end)
	end)

	it("SHOULD set correct tag and index", function()
		local IMPRESSION_TAG = "tagImpressionTest"
		local INDEX = 100
		local ImpressionsTagWrapperComponent = createTreeWithProviders(ImpressionsTagWrapper, {
			props = {
				index = 100,
				impressionsTag = IMPRESSION_TAG,
				renderComponent = function()
					return nil
				end,
			},
		})

		runWhileMounted(ImpressionsTagWrapperComponent, function(parent)
			expect(#parent:GetChildren()).toBe(1)
			local impressionItems = CollectionService:GetTagged(IMPRESSION_TAG)
			expect(impressionItems).never.toBeNil()
			expect(#impressionItems).toBe(1)
			expect(impressionItems[1]:GetAttribute("ITEMINDEX")).toBe(INDEX)
		end)
	end)
end)
