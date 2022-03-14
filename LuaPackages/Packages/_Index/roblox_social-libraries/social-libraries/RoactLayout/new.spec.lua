return function()
	local new = require(script.Parent.new)
	local insert = require(script.Parent.insert)

	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local Packages = SocialLibraries.Parent
    local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect
	local dependencies = require(SocialLibraries.dependencies)
	local Roact = dependencies.Roact

	local layout = Roact.createElement("UIListLayout")

	describe("WHEN given no arguments", function()
		it("SHOULD return with a mountable Roact.Children prop", function()
			local tree = Roact.createElement("Folder", nil, new(layout))

			local instance = Roact.mount(tree)
			Roact.unmount(instance)
		end)

		it("SHOULD mount a UIListLayout by default", function()
			local folder = Instance.new("Folder")
			local tree = Roact.createElement("Folder", nil, new(layout))

			local instance = Roact.mount(tree, folder)

			local layoutInstance = folder:FindFirstChildWhichIsA("UIListLayout", true)
			jestExpect(layoutInstance).never.toBeNil()

			Roact.unmount(instance)
		end)
	end)

	describe("WHEN given an array", function()
		local folder = Instance.new("Folder")

		local mockName1 = "foobar-baz_findMe1"
		local mockName2 = "foobar-baz_findMe2"
		local block = new(layout, {
			insert(
				UDim2.new(1, 0, 0, 100),
				Roact.createElement("Frame", nil, {
					[mockName1] = Roact.createElement("Frame"),
				})
			),

			insert(
				UDim2.new(1, 0, 0, 100),
				Roact.createElement("Frame", nil, {
					[mockName2] = Roact.createElement("Frame"),
				})
			),
		})
		local tree = Roact.createElement("Folder", nil, block)
		local instance = Roact.mount(tree, folder)

		local findMe1Instance = folder:FindFirstChild(mockName1, true)
		local findMe2Instance = folder:FindFirstChild(mockName2, true)

		-- These names are generated from
		local block1Instance = folder:FindFirstChild("1" .. "-block", true)
		local block2Instance = folder:FindFirstChild("2" .. "-block", true)

		it("SHOULD generate a new block for every entry", function()
			jestExpect(findMe1Instance).toEqual(jestExpect.any("Instance"))
			jestExpect(findMe2Instance).toEqual(jestExpect.any("Instance"))
			jestExpect(block1Instance).toEqual(jestExpect.any("Instance"))
			jestExpect(block2Instance).toEqual(jestExpect.any("Instance"))
		end)

		it("SHOULD apply a layoutOrder to each inserted block in sequence", function()
			jestExpect(block1Instance).toEqual(jestExpect.any("Instance"))
			jestExpect(block2Instance).toEqual(jestExpect.any("Instance"))
			jestExpect(block1Instance.LayoutOrder).toBe(1)
			jestExpect(block2Instance.LayoutOrder).toBe(2)
		end)

		Roact.unmount(instance)
	end)
end
