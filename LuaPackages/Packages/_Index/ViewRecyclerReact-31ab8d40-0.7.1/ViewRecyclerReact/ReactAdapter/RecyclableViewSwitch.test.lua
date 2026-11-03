--!nonstrict
local Root = script:FindFirstAncestor("ViewRecyclerReact")
local TestDependencies = require(Root.TestDependencies)
local JestGlobals = TestDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local React = require(Root.Parent.React)
local ReactRoblox = TestDependencies.ReactRoblox
local Signals = require(Root.Parent.Signals)
local ViewRecycler = require(Root)

local e = React.createElement

local function label(name: string)
	return ViewRecycler.createRecyclableComponent(function(props)
		return e("TextLabel", {
			Name = name,
			Text = props.text,
		})
	end)
end

local Plain = label("PlainContent")
local Link = label("LinkContent")
local VIEWS = {
	Plain = Plain,
	Link = Link,
}

describe("RecyclableViewSwitch", function()
	it("mounts only the selected inline view and follows the selection without rendering the parent", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local selected, setSelected = Signals.createSignal("Plain" :: string?)
		local parentRenders = 0
		local function Parent()
			parentRenders += 1
			return e(ViewRecycler.RecyclableViewSwitch, {
				itemSignal = Signals.createSignal({ text = "inline" }),
				selected = selected,
				views = VIEWS,
			})
		end

		ReactRoblox.act(function()
			root:render(e(Parent))
		end)
		expect(container:FindFirstChild("PlainContent", true).Text).toBe("inline")
		expect(container:FindFirstChild("LinkContent", true)).toBeNil()
		local initialParentRenders = parentRenders

		ReactRoblox.act(function()
			setSelected("Link")
		end)
		expect(container:FindFirstChild("PlainContent", true)).toBeNil()
		expect(container:FindFirstChild("LinkContent", true).Text).toBe("inline")

		ReactRoblox.act(function()
			setSelected(nil)
		end)
		expect(container:FindFirstChild("PlainContent", true)).toBeNil()
		expect(container:FindFirstChild("LinkContent", true)).toBeNil()
		expect(parentRenders).toBe(initialParentRenders)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("accepts a plain selected key", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local itemSignal = Signals.createSignal({ text = "plain key" })
		local function render(selected)
			root:render(e(ViewRecycler.RecyclableViewSwitch, {
				itemSignal = itemSignal,
				selected = selected,
				views = VIEWS,
			}))
		end

		ReactRoblox.act(function()
			render("Link")
		end)
		expect(container:FindFirstChild("PlainContent", true)).toBeNil()
		expect(container:FindFirstChild("LinkContent", true)).never.toBeNil()

		ReactRoblox.act(function()
			render("Plain")
		end)
		expect(container:FindFirstChild("PlainContent", true)).never.toBeNil()
		expect(container:FindFirstChild("LinkContent", true)).toBeNil()

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("moves a composed view between variants without rendering the parent ItemView", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local selected, setSelected = Signals.createSignal("Plain" :: string?)
		local parentRenders = 0
		local RowItemView = ViewRecycler.createRecyclableView(function(props)
			parentRenders += 1
			return e(ViewRecycler.RecyclableViewSwitch, {
				itemSignal = props.itemSignal,
				selected = selected,
				views = VIEWS,
			})
		end)

		ReactRoblox.act(function()
			root:render(e("Frame", {
				Size = UDim2.fromOffset(300, 100),
			}, {
				List = e(ViewRecycler.VirtualList, {
					data = {
						items = { { id = "row", text = "composed" } },
						getItemKey = function(item)
							return item.id
						end,
					},
					layout = layout,
					axis = ViewRecycler.Axis.Y,
					overscan = 0,
					itemType = RowItemView,
				}),
			}))
		end)
		expect(container:FindFirstChild("PlainContent", true).Text).toBe("composed")
		expect(container:FindFirstChild("LinkContent", true)).toBeNil()
		local initialParentRenders = parentRenders

		ReactRoblox.act(function()
			setSelected("Link")
		end)
		expect(container:FindFirstChild("PlainContent", true)).toBeNil()
		expect(container:FindFirstChild("LinkContent", true).Text).toBe("composed")

		ReactRoblox.act(function()
			setSelected(nil)
		end)
		expect(container:FindFirstChild("PlainContent", true)).toBeNil()
		expect(container:FindFirstChild("LinkContent", true)).toBeNil()
		expect(parentRenders).toBe(initialParentRenders)

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("selects a reassigned row's variant in the same pass", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local layout = ViewRecycler.Layout.uniform({ itemLength = 50 })
		local listRef = React.createRef()
		local RowItemView = ViewRecycler.createRecyclableView(function(props)
			local selected = React.useMemo(function()
				return Signals.createComputed(function(scope)
					return props.itemSignal(scope).kind
				end)
			end, { props.itemSignal })
			return e("Frame", { Size = UDim2.fromOffset(100, 50) }, {
				Body = e(ViewRecycler.RecyclableViewSwitch, {
					itemSignal = props.itemSignal,
					selected = selected,
					views = VIEWS,
				}),
			})
		end)
		local rows = {}
		for index = 1, 20 do
			table.insert(rows, {
				id = `row{index}`,
				kind = if index % 2 == 0 then "Link" else "Plain",
				text = `Row {index}`,
			})
		end

		ReactRoblox.act(function()
			root:render(e("Frame", {
				Size = UDim2.fromOffset(300, 50),
			}, {
				List = e(ViewRecycler.VirtualList, {
					data = {
						items = rows,
						getItemKey = function(item)
							return item.id
						end,
					},
					layout = layout,
					axis = ViewRecycler.Axis.Y,
					overscan = 0,
					itemType = RowItemView,
					listRef = listRef,
				}),
			}))
		end)
		-- Both variants must have mounted once, because a type's first placement
		-- mounts its content on a commit. Afterwards each reuses a Vacant view.
		ReactRoblox.act(function()
			listRef.current.scrollToOffset(50)
		end)
		ReactRoblox.act(function()
			listRef.current.scrollToOffset(0)
		end)
		expect(container:FindFirstChild("PlainContent", true).Text).toBe("Row 1")
		expect(container:FindFirstChild("LinkContent", true)).toBeNil()

		-- Asserted without an intervening act, so only work the pass itself
		-- performed is observable.
		listRef.current.scrollToOffset(50)
		expect(container:FindFirstChild("PlainContent", true)).toBeNil()
		expect(container:FindFirstChild("LinkContent", true)).never.toBeNil()

		ReactRoblox.act(function()
			root:unmount()
		end)
		layout.destroy()
		container:Destroy()
	end)

	it("rejects a view that is not a Recyclable view type", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local function NotRecyclable()
			return nil
		end

		expect(function()
			ReactRoblox.act(function()
				root:render(e(ViewRecycler.RecyclableViewSwitch, {
					itemSignal = Signals.createSignal({}),
					selected = "Plain",
					views = { Plain = NotRecyclable },
				}))
			end)
		end).toThrow("RecyclableViewSwitch: views.Plain is not a Recyclable view type")

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)
end)
