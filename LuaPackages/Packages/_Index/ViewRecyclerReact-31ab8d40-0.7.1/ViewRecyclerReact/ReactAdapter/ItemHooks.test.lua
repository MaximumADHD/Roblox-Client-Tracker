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
local EMPTY_SIGNAL = Signals.createSignal(nil)

local ErrorBoundary = React.Component:extend("ItemHooksErrorBoundary")

function ErrorBoundary:init()
	self:setState({
		failed = false,
	})
end

function ErrorBoundary.getDerivedStateFromError()
	return {
		failed = true,
	}
end

function ErrorBoundary:render()
	if self.state.failed then
		return e("Folder", { Name = "Fallback" })
	end
	return self.props.children
end

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

local function hostedContext(itemKeySignal, itemSignal, assignmentSignal, indexSignal)
	return {
		itemKeySignal = itemKeySignal,
		itemSignal = itemSignal or EMPTY_SIGNAL,
		assignmentSignal = assignmentSignal or EMPTY_SIGNAL,
		indexSignal = indexSignal or EMPTY_SIGNAL,
	}
end

describe("ItemHooks", function()
	it("resets state implicitly for a new assignment key and rejects a stale setter", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local itemKeySignal, setItemKey = Signals.createSignal("a")
		local setManagedCount
		local resetCount = 0
		local renders = 0
		local commits = 0

		local function Consumer()
			renders += 1
			React.useLayoutEffect(function()
				commits += 1
			end)
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
		local rendersBeforeStateUpdate = renders
		ReactRoblox.act(function()
			setManagedCount(function(value)
				return value + 1
			end)
		end)
		local rendersPerStateUpdate = renders - rendersBeforeStateUpdate
		local staleSetter = setManagedCount
		expect(container.Content.Text).toBe("1")
		expect(resetCount).toBe(0)
		local rendersBeforeReset = renders
		local commitsBeforeReset = commits

		ReactRoblox.act(function()
			setItemKey("b")
		end)
		expect(container.Content.Text).toBe("0")
		expect(resetCount).toBe(1)
		expect(renders - rendersBeforeReset).toBe(rendersPerStateUpdate)
		expect(commits - commitsBeforeReset).toBe(1)
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
		local resetCount = 0

		local function Consumer()
			local countSignal, setCount = ViewRecycler.useRecyclingSignal(0, nil, function()
				resetCount += 1
			end)
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

	it("does not publish a recycling-signal reset from an erroring render", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local itemKeySignal, setItemKey = Signals.createSignal("a")
		local committedGetter
		local committedSetter
		local shouldThrow = false

		local function Consumer()
			local getter, setter = ViewRecycler.useRecyclingSignal(0)
			committedGetter = committedGetter or getter
			committedSetter = committedSetter or setter
			SignalsReact.useSignalState(getter)
			if shouldThrow then
				error("interrupted assignment render")
			end
			return e("TextLabel", {
				Name = "Content",
				Text = tostring(getter(false)),
			})
		end

		local function App()
			return e(ErrorBoundary, nil, {
				Content = e(Consumer),
			})
		end

		render(root, App, nil, hostedContext(itemKeySignal))
		ReactRoblox.act(function()
			committedSetter(3)
		end)
		expect(committedGetter(false)).toBe(3)

		shouldThrow = true
		ReactRoblox.act(function()
			setItemKey("b")
		end)
		expect(committedGetter(false)).toBe(3)
		ReactRoblox.act(function()
			committedSetter(4)
		end)
		expect(committedGetter(false)).toBe(4)

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
			value = { text = "Alpha" },
		})
		local indexSignal, setIndex = Signals.createSignal(1)

		local function Consumer()
			local item = SignalsReact.useSignalState(ViewRecycler.useRecyclingItem())
			local assignment = SignalsReact.useSignalState(ViewRecycler.useRecyclingAssignment())
			local index = SignalsReact.useSignalState(ViewRecycler.useRecyclingIndex())
			return e("TextLabel", {
				Name = "Content",
				Text = `{item.text}:{assignment.key}:{index}`,
			})
		end

		render(root, Consumer, nil, hostedContext(itemKeySignal, itemSignal, assignmentSignal, indexSignal))
		expect(container.Content.Text).toBe("Alpha:a:1")

		ReactRoblox.act(function()
			setItem({ text = "Beta" })
			setAssignment({
				key = "b",
				value = { text = "Beta" },
			})
			setIndex(2)
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
