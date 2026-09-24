local Main = script.Parent.Parent.Parent
local StoryTreeUtils = require(script.Parent.StoryTreeUtils)

local JestGlobals = require(Main.Packages.Dev.JestGlobals)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

describe("StoryTreeUtils", function()
	local tree = {
		{
			["Children"] = {
				{
					["Children"] = {
						{
							["Children"] = {
								{
									["Children"] = {},
									["Icon"] = "Story",
									["Name"] = "Child",
									["Path"] = "Alert",
								},
							},
							["Icon"] = "Story",
							["Name"] = "Alert",
							["Path"] = "Alert",
						},
						{
							["Children"] = {},
							["Icon"] = "Story",
							["Name"] = "Alert",
							["Path"] = "Alert",
						},
					},
					["Icon"] = "Folder",
					["Name"] = "ColorSystem",
					["Path"] = "Style",
				},
			},
			["Icon"] = "Storybook",
			["Name"] = "Developer Framework",
		},
		{
			["Children"] = {},
			["Name"] = "Second branch",
		},
	}

	describe("applySearch", function()
		it("should return the same object if filter is empty", function()
			expect(StoryTreeUtils.applySearch(tree, "")).toBe(tree)
		end)

		it("should return empty object if filter doesn't match anything", function()
			expect(StoryTreeUtils.applySearch(tree, "ThereIsAbsolutelyNoMatches")).toEqual({})
		end)

		it("should filter stories case insensitive way", function()
			expect(StoryTreeUtils.applySearch(tree, "alert")).toEqual({ tree[1] })
		end)

		it("should filter stories with name including filter", function()
			expect(StoryTreeUtils.applySearch(tree, "ert")).toEqual({ tree[1] })
		end)

		it("should preserve children of a folder matching the filter", function()
			expect(StoryTreeUtils.applySearch(tree, "Color")).toEqual({ tree[1] })
		end)
	end)

	describe("findFirst", function()
		it("should return match in the index order", function()
			expect(StoryTreeUtils.findFirst(tree, function()
				return true
			end)).toEqual(tree[1])
		end)

		it("should return nil if filter doesn't match anything", function()
			expect(StoryTreeUtils.findFirst(tree, function()
				return false
			end)).toBeNil()
		end)

		it("should works with a sophisticated filter", function()
			expect(StoryTreeUtils.findFirst(tree, function(item)
				return #item.Children == 0 and item.Name:lower() == "alert"
			end)).toEqual({
				["Children"] = {},
				["Icon"] = "Story",
				["Name"] = "Alert",
				["Path"] = "Alert",
			})
		end)
	end)
end)
