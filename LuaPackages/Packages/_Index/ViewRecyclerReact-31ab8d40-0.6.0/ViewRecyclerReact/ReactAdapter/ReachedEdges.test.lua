--!nonstrict
local RunService = game:GetService("RunService")

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

local function getItemKey(item)
	return item.id
end

local ItemComponent = function(props)
	return e("TextLabel", {
		Name = "Content",
		Size = UDim2.new(1, 0, 0, props.item.height or 50),
		Text = props.item.id,
	})
end

local List = ViewRecycler.createVirtualList({
	itemComponent = ItemComponent,
})

local function ManagedMeasuredList(props)
	local layout = ViewRecycler.useMeasuredLayout({
		estimatedItemLength = props.estimatedItemLength,
	})
	local listProps = table.clone(props)
	listProps.estimatedItemLength = nil
	listProps.layout = layout
	return e(List, listProps)
end

local function mount(root, props, component)
	ReactRoblox.act(function()
		root:render(e("Frame", {
			Size = UDim2.fromOffset(200, 100),
		}, {
			List = e(component or List, props),
		}))
	end)
end

describe("VirtualList reached edges", function()
	it("resolves start and end thresholds from the current viewport", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local starts = 0
		local ends = 0

		mount(root, {
			data = {
				items = {
					{ id = "1" },
					{ id = "2" },
					{ id = "3" },
					{ id = "4" },
					{ id = "5" },
				},
				getItemKey = getItemKey,
			},
			layout = layout,
			overscan = 0,
			startReachedThreshold = { viewportFraction = 0.5 },
			endReachedThreshold = { viewportFraction = 0.5 },
			onStartReached = function()
				starts += 1
			end,
			onEndReached = function()
				ends += 1
			end,
		})
		local frame = container:FindFirstChildWhichIsA("ScrollingFrame", true) :: ScrollingFrame
		expect(starts).toBe(1)
		expect(ends).toBe(0)

		ReactRoblox.act(function()
			frame.CanvasPosition = Vector2.new(0, 100)
		end)
		expect(ends).toBe(1)

		ReactRoblox.act(function()
			frame.CanvasPosition = Vector2.new(0, 51)
		end)
		expect(starts).toBe(1)

		ReactRoblox.act(function()
			frame.CanvasPosition = Vector2.new(0, 50)
		end)
		expect(starts).toBe(2)

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("fires after measured content settles under the viewport", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local ends = 0

		mount(root, {
			data = {
				items = {
					{ id = "short", height = 40 },
				},
				getItemKey = getItemKey,
			},
			estimatedItemLength = 200,
			overscan = 0,
			onEndReached = function()
				ends += 1
			end,
		}, ManagedMeasuredList)
		expect(ends).toBe(0)

		ReactRoblox.act(function()
			for _ = 1, 3 do
				RunService.Heartbeat:Wait()
			end
			task.wait()
		end)
		expect(ends).toBe(1)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)
end)
