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

type Item = {
	id: string,
	kind: string,
	text: string,
}

local function getItemKey(item: Item): string
	return item.id
end

local function mountList(root, component, props)
	ReactRoblox.act(function()
		root:render(e("Frame", {
			Size = UDim2.fromOffset(200, 100),
		}, {
			List = e(component, props),
		}))
	end)
end

describe("createVirtualList", function()
	it("renders an Item through ordinary component props", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local receivedPending = nil
		local function ItemComponent(props)
			receivedPending = props.pending
			local state = React.useState("hook")
			return e("TextLabel", {
				Name = "Content",
				Text = `{props.item.text}:{props.index}:{state}`,
			})
		end
		local List = ViewRecycler.createVirtualList({
			itemComponent = ItemComponent,
		})

		mountList(root, List, {
			data = {
				items = {
					{ id = "a", kind = "item", text = "Alpha" },
				},
				getItemKey = getItemKey,
			},
			layout = layout,
			overscan = 0,
		})

		local content = container:FindFirstChild("Content", true) :: TextLabel
		expect(content).never.toBeNil()
		expect(content.Text).toBe("Alpha:1:hook")
		expect(typeof(receivedPending)).toBe("table")

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("renders ordinary Item components once per recycled Assignment", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local listRef = React.createRef()
		local renders = 0
		local commits = 0
		local function ItemComponent(props)
			renders += 1
			React.useLayoutEffect(function()
				commits += 1
			end)
			return e("TextLabel", {
				Name = "Content",
				Text = `{props.item.text}:{props.index}`,
			})
		end
		local List = ViewRecycler.createVirtualList({
			itemComponent = ItemComponent,
		})

		mountList(root, List, {
			data = {
				items = {
					{ id = "a", kind = "item", text = "Alpha" },
					{ id = "b", kind = "item", text = "Beta" },
					{ id = "c", kind = "item", text = "Gamma" },
					{ id = "d", kind = "item", text = "Delta" },
				},
				getItemKey = getItemKey,
			},
			layout = layout,
			overscan = 0,
			listRef = listRef,
		})
		local rendersBeforeScroll = renders
		local commitsBeforeScroll = commits

		ReactRoblox.act(function()
			listRef.current.scrollToOffset(100)
		end)

		expect(renders - rendersBeforeScroll).toBe(rendersBeforeScroll)
		expect(commits - commitsBeforeScroll).toBe(2)
		expect(container:FindFirstChild("Content", true)).never.toBeNil()

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("moves a stable Item key between component Recycling pools", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local function AlphaComponent(props)
			return e("TextLabel", {
				Name = "Alpha",
				Text = props.item.text,
			})
		end
		local function BetaComponent(props)
			return e("TextLabel", {
				Name = "Beta",
				Text = props.item.text,
			})
		end
		local List = ViewRecycler.createVirtualList({
			itemComponents = {
				{ component = AlphaComponent },
				{ component = BetaComponent },
			},
			getItemComponent = function(value)
				return if value.kind == "alpha" then AlphaComponent else BetaComponent
			end,
		})
		local function renderItem(value)
			mountList(root, List, {
				data = {
					items = { value },
					getItemKey = getItemKey,
				},
				layout = layout,
				overscan = 0,
			})
		end

		renderItem({ id = "stable", kind = "alpha", text = "Alpha" })
		expect(container:FindFirstChild("Alpha", true)).never.toBeNil()
		expect(container:FindFirstChild("Beta", true)).toBeNil()

		renderItem({ id = "stable", kind = "beta", text = "Beta" })
		expect(container:FindFirstChild("Alpha", true)).toBeNil()
		expect(container:FindFirstChild("Beta", true)).never.toBeNil()

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("rejects duplicate and undeclared component identities", function()
		local function AlphaComponent()
			return nil
		end
		local function BetaComponent()
			return nil
		end

		expect(function()
			ViewRecycler.createVirtualList({
				itemComponents = {
					{ component = AlphaComponent },
					{ component = AlphaComponent },
				},
				getItemComponent = function()
					return AlphaComponent
				end,
			})
		end).toThrow("each component may be declared only once")

		local List = ViewRecycler.createVirtualList({
			itemComponents = {
				{ component = AlphaComponent },
			},
			getItemComponent = function()
				return BetaComponent
			end,
		})
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		expect(function()
			mountList(root, List, {
				data = {
					items = {
						{ id = "a", kind = "beta", text = "Beta" },
					},
					getItemKey = getItemKey,
				},
				layout = layout,
			})
		end).toThrow("getItemComponent returned an undeclared component")

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)
end)
