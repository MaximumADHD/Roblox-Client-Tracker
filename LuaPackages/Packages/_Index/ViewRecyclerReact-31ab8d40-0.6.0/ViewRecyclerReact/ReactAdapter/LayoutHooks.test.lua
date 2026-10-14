--!nonstrict
local Root = script:FindFirstAncestor("ViewRecyclerReact")
local TestDependencies = require(Root.TestDependencies)
local JestGlobals = TestDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local React = require(Root.Parent.React)
local ReactRoblox = TestDependencies.ReactRoblox
local ViewRecycler = require(Root)

local e = React.createElement

describe("managed Layout hooks", function()
	it("replaces a uniform Layout when geometry changes", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local currentLayout = nil
		local destroyCount = 0
		local originalUniform = ViewRecycler.Layout.uniform
		ViewRecycler.Layout.uniform = function()
			return {
				destroy = function()
					destroyCount += 1
				end,
			}
		end
		local function Harness(props)
			currentLayout = ViewRecycler.useUniformLayout({
				itemLength = props.itemLength,
			})
			return nil
		end

		ReactRoblox.act(function()
			root:render(e(Harness, { itemLength = 40 }))
		end)
		local firstLayout = currentLayout

		ReactRoblox.act(function()
			root:render(e(Harness, { itemLength = 60 }))
		end)
		expect(currentLayout).never.toBe(firstLayout)
		expect(destroyCount).toBe(1)

		ReactRoblox.act(function()
			root:unmount()
		end)
		expect(destroyCount).toBe(2)
		ViewRecycler.Layout.uniform = originalUniform
		container:Destroy()
	end)

	it("samples measured Layout construction options once", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local currentLayout = nil
		local createCount = 0
		local destroyedLayouts = {}
		local originalMeasured = ViewRecycler.Layout.measured
		ViewRecycler.Layout.measured = function()
			createCount += 1
			local layout = {}
			layout.destroy = function()
				destroyedLayouts[layout] = true
			end
			return layout
		end
		local function Harness(props)
			currentLayout = ViewRecycler.useMeasuredLayout({
				estimatedItemLength = props.estimatedItemLength,
			})
			return nil
		end

		ReactRoblox.act(function()
			root:render(e(Harness, { estimatedItemLength = 40 }))
		end)
		local firstLayout = currentLayout
		local createCountAfterMount = createCount

		ReactRoblox.act(function()
			root:render(e(Harness, { estimatedItemLength = 60 }))
		end)
		expect(currentLayout).toBe(firstLayout)
		expect(createCount).toBe(createCountAfterMount)

		ReactRoblox.act(function()
			root:unmount()
		end)
		expect(destroyedLayouts[firstLayout]).toBe(true)
		ViewRecycler.Layout.measured = originalMeasured
		container:Destroy()
	end)
end)
