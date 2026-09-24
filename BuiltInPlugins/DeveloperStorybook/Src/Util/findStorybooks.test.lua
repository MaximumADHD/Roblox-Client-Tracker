local Main = script.Parent.Parent.Parent
local findStorybooks = require(script.Parent.findStorybooks)

local JestGlobals = require(Main.Packages.Dev.JestGlobals)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local beforeAll = JestGlobals.beforeAll

local function forEachItem(items, visit)
	for _, item in items do
		visit(item)
		forEachItem(item.Children, visit)
	end
end

describe("findStorybooks", function()
	local storybooks

	beforeAll(function()
		storybooks = findStorybooks()
	end)

	it("discovers at least one storybook", function()
		-- Sanity that discovery actually ran against the data model / _Index rather
		-- than silently returning nothing (which would make the rest vacuous).
		expect(#storybooks > 0).toBe(true)
	end)

	it("orders each item's GetChildren alphabetically by name", function()
		-- getChildren sorts on read; assert that contract holds everywhere in the
		-- tree rather than snapshotting the discovered set.
		forEachItem(storybooks, function(item)
			local children = item.GetChildren(item)
			for index = 2, #children do
				expect(children[index - 1].Name <= children[index].Name).toBe(true)
			end
		end)
	end)

	it("attaches a source ModuleScript to every discovered story", function()
		-- Every leaf story carries the .story ModuleScript it was discovered from and
		-- the storybook that owns it -- the contract StoryHost relies on to mount it.
		local storyCount = 0
		forEachItem(storybooks, function(item)
			if item.Icon == "Story" then
				storyCount += 1
				expect(item.Script).toBeDefined()
				expect(item.Script:IsA("ModuleScript")).toBe(true)
				expect(item.Storybook).toBeDefined()
			end
		end)
		-- Discovery surfaced real stories, not just empty storybook shells.
		expect(storyCount > 0).toBe(true)
	end)
end)
