local SocialCommon = script:FindFirstAncestor("SocialCommon")
local Packages = SocialCommon.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local SocialTestHelpers = require(Packages.Dev.SocialTestHelpers).TestHelpers
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local RhodiumHelpers = require(Packages.Dev.RhodiumHelpers)

local createTreeWithProviders = SocialTestHelpers.createTreeWithProviders
local runWhileMounted = SocialTestHelpers.runWhileMounted

local BottomInsetBackground = require(script.Parent.BottomInsetBackground)

describe("BottomInsetBackground", function()
	it("SHOULD mount and unmount", function()
		local BottomInsetBackgroundComponent = createTreeWithProviders(BottomInsetBackground, {
			state = {
				GlobalGuiInset = { top = 20, bottom = 20, left = 20, right = 20 },
			},
		})
		runWhileMounted(BottomInsetBackgroundComponent, function(parent)
			expect(#parent:GetChildren()).toBe(1)
		end)
	end)

	it("SHOULD have same height as the bottom inset", function()
		local BOTTOM_INSET_HEIGHT = 20
		local BottomInsetBackgroundComponent = createTreeWithProviders(BottomInsetBackground, {
			state = {
				GlobalGuiInset = { top = 20, bottom = BOTTOM_INSET_HEIGHT, left = 20, right = 20 },
			},
		})
		runWhileMounted(BottomInsetBackgroundComponent, function(parent)
			expect(#parent:GetChildren()).toBe(1)
			local BottomInsetBackground = RhodiumHelpers.findFirstInstance(parent, {
				ClassName = "Frame",
			})
			expect(BottomInsetBackground.AbsoluteSize.Y).toBe(BOTTOM_INSET_HEIGHT)
		end)
	end)

	it("SHOULD have zero height when GlobalGuiInset is not present", function()
		local BottomInsetBackgroundComponent = createTreeWithProviders(BottomInsetBackground, {
			state = {},
		})
		runWhileMounted(BottomInsetBackgroundComponent, function(parent)
			expect(#parent:GetChildren()).toBe(1)
			local BottomInsetBackground = RhodiumHelpers.findFirstInstance(parent, {
				ClassName = "Frame",
			})
			expect(BottomInsetBackground.AbsoluteSize.Y).toBe(0)
		end)
	end)

	it("SHOULD have zero height when bottom inset is not present", function()
		local BottomInsetBackgroundComponent = createTreeWithProviders(BottomInsetBackground, {
			state = {
				GlobalGuiInset = { top = 20, left = 20, right = 20 },
			},
		})
		runWhileMounted(BottomInsetBackgroundComponent, function(parent)
			expect(#parent:GetChildren()).toBe(1)
			local BottomInsetBackground = RhodiumHelpers.findFirstInstance(parent, {
				ClassName = "Frame",
			})
			expect(BottomInsetBackground.AbsoluteSize.Y).toBe(0)
		end)
	end)
end)
