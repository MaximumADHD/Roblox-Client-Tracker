--!nonstrict
local Root = script:FindFirstAncestor("ViewRecyclerReact")
local TestDependencies = require(Root.TestDependencies)
local JestGlobals = TestDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local React = require(Root.Parent.React)
local RecyclableViewContext = require(Root.ReactAdapter.Private.RecyclableViewContext)
local ReactRoblox = TestDependencies.ReactRoblox
local Signals = require(Root.Parent.Signals)
local SignalsReact = require(Root.Parent.SignalsReact)
local ViewRecycler = require(Root)

local e = React.createElement

local function render(root, component, props, contextValue)
	ReactRoblox.act(function()
		local content = e(component, props)
		if contextValue ~= nil then
			content = e(RecyclableViewContext.Provider, {
				value = contextValue,
			}, {
				Content = content,
			})
		end
		root:render(content)
	end)
end

local function hostedContext(itemKeySignal, itemSignal, assignmentSignal)
	return {
		itemKeySignal = itemKeySignal,
		itemSignal = itemSignal,
		assignmentSignal = assignmentSignal,
	}
end

describe("ItemHooks", function()
	it("resets state implicitly for a new assignment key and rejects a stale setter", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local itemKeySignal, setItemKey = Signals.createSignal("a")
		local setManagedCount
		local resetCount = 0

		local function Consumer()
			local count, setCount = ViewRecycler.useRecyclingState(0, nil, function()
				resetCount += 1
			end)
			setManagedCount = setCount
			return e("TextButton", {
				Name = "Content",
				Text = tostring(count),
				[React.Event.Activated] = function()
					setCount(function(value)
						return value + 1
					end)
				end,
			})
		end

		render(root, Consumer, nil, hostedContext(itemKeySignal))
		ReactRoblox.act(function()
			setManagedCount(function(value)
				return value + 1
			end)
		end)
		local staleSetter = setManagedCount
		expect(container.Content.Text).toBe("1")
		expect(resetCount).toBe(0)

		ReactRoblox.act(function()
			setItemKey("b")
		end)
		expect(container.Content.Text).toBe("0")
		expect(resetCount).toBe(1)
		ReactRoblox.act(function()
			staleSetter(9)
		end)
		expect(container.Content.Text).toBe("0")

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("resets a recycling signal implicitly and rejects its stale setter", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local itemKeySignal, setItemKey = Signals.createSignal("a")
		local setManagedSignal

		local function Consumer()
			local countSignal, setCount = ViewRecycler.useRecyclingSignal(0)
			setManagedSignal = setCount
			local count = SignalsReact.useSignalState(countSignal)
			return e("TextLabel", {
				Name = "Content",
				Text = tostring(count),
			})
		end

		render(root, Consumer, nil, hostedContext(itemKeySignal))
		ReactRoblox.act(function()
			setManagedSignal(3)
		end)
		local staleSetter = setManagedSignal
		expect(container.Content.Text).toBe("3")
		ReactRoblox.act(function()
			setItemKey("b")
		end)
		expect(container.Content.Text).toBe("0")
		ReactRoblox.act(function()
			staleSetter(9)
		end)
		expect(container.Content.Text).toBe("0")

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("resets state for an additional dependency", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local itemKeySignal = Signals.createSignal("a")
		local revisionSignal, setRevision = Signals.createSignal(1)
		local setManagedCount

		local function Consumer()
			local count, setCount = ViewRecycler.useRecyclingState(0, { revisionSignal })
			setManagedCount = setCount
			return e("TextLabel", {
				Name = "Content",
				Text = tostring(count),
			})
		end

		render(root, Consumer, nil, hostedContext(itemKeySignal))
		ReactRoblox.act(function()
			setManagedCount(3)
			setRevision(2)
		end)
		expect(container.Content.Text).toBe("0")

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("reads the hosted item and assignment Signals from Recyclable view context", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local itemKeySignal = Signals.createSignal("a")
		local itemSignal, setItem = Signals.createSignal({ text = "Alpha" })
		local assignmentSignal, setAssignment = Signals.createSignal({
			key = "a",
			index = 1,
			value = { text = "Alpha" },
		})

		local function Consumer()
			local item = SignalsReact.useSignalState(ViewRecycler.useRecyclingItem())
			local assignment = SignalsReact.useSignalState(ViewRecycler.useRecyclingAssignment())
			return e("TextLabel", {
				Name = "Content",
				Text = `{item.text}:{assignment.key}:{assignment.index}`,
			})
		end

		render(root, Consumer, nil, hostedContext(itemKeySignal, itemSignal, assignmentSignal))
		expect(container.Content.Text).toBe("Alpha:a:1")

		ReactRoblox.act(function()
			setItem({ text = "Beta" })
			setAssignment({
				key = "b",
				index = 2,
				value = { text = "Beta" },
			})
		end)
		expect(container.Content.Text).toBe("Beta:b:2")

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("rejects recycling hooks outside a Recyclable view", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local observedError

		local function Consumer()
			local ok, result = pcall(ViewRecycler.useRecyclingItem)
			if not ok then
				observedError = result
			end
			return nil
		end

		render(root, Consumer)
		expect(tostring(observedError)).toContain("Recycling hooks must be called within a Recyclable view")

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("reads structural item values and follows reassignment", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local itemSignal, setItem = Signals.createSignal({ text = "Alpha" })
		local renders = 0

		local function Consumer(props)
			renders += 1
			local item = SignalsReact.useSignalState(props.itemSignal)
			return e("TextLabel", {
				Name = "Content",
				Text = item.text,
			})
		end

		render(root, Consumer, { itemSignal = itemSignal })
		expect(container.Content.Text).toBe("Alpha")

		ReactRoblox.act(function()
			setItem({ text = "Beta" })
		end)
		expect(container.Content.Text).toBe("Beta")
		expect(renders).toBeGreaterThan(1)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("updates engine properties from assignment and nested signals without rerendering", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local firstProgress, setFirstProgress = Signals.createSignal(1)
		local secondProgress, setSecondProgress = Signals.createSignal(10)
		local itemSignal, setItem = Signals.createSignal({
			label = "Alpha",
			progress = firstProgress,
			unrelated = 1,
		})
		local renders = 0

		local function Consumer(props)
			renders += 1
			local text = SignalsReact.useSignalBinding(function(scope)
				local item = props.itemSignal(scope)
				return `{item.label}: {item.progress(scope)}`
			end)
			return e("TextLabel", {
				Name = "Content",
				Text = text,
			})
		end

		render(root, Consumer, { itemSignal = itemSignal })
		local initialRenders = renders
		expect(container.Content.Text).toBe("Alpha: 1")

		ReactRoblox.act(function()
			setItem({
				label = "Alpha",
				progress = firstProgress,
				unrelated = 2,
			})
		end)
		expect(container.Content.Text).toBe("Alpha: 1")
		expect(renders).toBe(initialRenders)

		ReactRoblox.act(function()
			setFirstProgress(2)
		end)
		expect(container.Content.Text).toBe("Alpha: 2")
		expect(renders).toBe(initialRenders)

		ReactRoblox.act(function()
			setItem({
				label = "Beta",
				progress = secondProgress,
				unrelated = 2,
			})
		end)
		expect(container.Content.Text).toBe("Beta: 10")
		expect(renders).toBe(initialRenders)

		ReactRoblox.act(function()
			setFirstProgress(3)
			setSecondProgress(11)
		end)
		expect(container.Content.Text).toBe("Beta: 11")
		expect(renders).toBe(initialRenders)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("recomputes a binding when its selector changes", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local itemSignal = Signals.createSignal({ label = "row" })

		local function Consumer(props)
			local text = SignalsReact.useSignalBinding(function(scope)
				local item = props.itemSignal(scope)
				return `{props.prefix}{item.label}`
			end)
			return e("TextLabel", {
				Name = "Content",
				Text = text,
			})
		end

		render(root, Consumer, {
			itemSignal = itemSignal,
			prefix = "A:",
		})
		expect(container.Content.Text).toBe("A:row")

		render(root, Consumer, {
			itemSignal = itemSignal,
			prefix = "B:",
		})
		expect(container.Content.Text).toBe("B:row")

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)
end)
