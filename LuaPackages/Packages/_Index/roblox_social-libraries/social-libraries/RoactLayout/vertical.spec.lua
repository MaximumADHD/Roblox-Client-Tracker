return function()
	local vertical = require(script.Parent.vertical)

	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)
	local Roact = dependencies.Roact
	local Packages = SocialLibraries.Parent
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect

	describe("WHEN given an array", function()
		local folder = Instance.new("Folder")
		local block = vertical({})
		local tree = Roact.createElement("Folder", nil, block)
		Roact.mount(tree, folder)

		it("SHOULD return a tree with a UIListLayout with Vertical FillDirection", function()
			local layout = folder:FindFirstChildWhichIsA("UIListLayout", true)

			jestExpect(layout).never.toBeNil()
			jestExpect(layout.FillDirection).toBe(Enum.FillDirection.Vertical)
		end)
	end)
end
