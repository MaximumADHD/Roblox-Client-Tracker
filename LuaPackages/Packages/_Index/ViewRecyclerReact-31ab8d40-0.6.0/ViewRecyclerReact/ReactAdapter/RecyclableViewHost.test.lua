local Root = script:FindFirstAncestor("ViewRecyclerReact")
local TestDependencies = require(Root.TestDependencies)
local JestGlobals = TestDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local Core = require(Root.Parent.ViewRecycler)
local React = require(Root.Parent.React)
local ReactRoblox = TestDependencies.ReactRoblox
local RecyclableView = require(Root.ReactAdapter.Private.RecyclableView)
local RecyclableViewHost = require(Root.ReactAdapter.RecyclableViewHost)
local RecyclableViewReadiness = require(Root.ReactAdapter.RecyclableViewReadiness)
local Roblox = require(Root.Parent.ViewRecyclerRoblox)
local SignalsExperimental = require(Root.Parent.SignalsExperimental)
local SignalsReact = require(Root.Parent.SignalsReact)
local ViewRecycler = require(Root)
local createRecyclableView = require(Root.ReactAdapter.createRecyclableView)

local e = React.createElement
local HostPlacement = Roblox.Internal.HostPlacement
local indexByAssignment = setmetatable({}, { __mode = "k" })

local function assignmentReady(component)
	return createRecyclableView(component)
end

local function commitReady(component, hideWhilePending)
	return createRecyclableView(component, {
		readiness = RecyclableViewReadiness.ReadyOnCommit,
		hideWhilePending = hideWhilePending,
	})
end

local function assignment(key: string, index: number, value: string)
	local result = {
		key = key,
		value = value,
	}
	indexByAssignment[result] = index
	return result
end

local function viewState(current)
	local index = indexByAssignment[current]
	return {
		assignment = current,
		index = index,
		itemRevision = 0,
		pinnedPosition = nil,
		itemLayout = {
			startOffset = ((index :: number) - 1) * 50,
			length = 50,
		},
		canvasPlacement = {},
		viewportPlacement = nil,
		contentStartOffset = 0,
	}
end

local function physicalState(current)
	return viewState(current)
end

local function createLayoutResolver(selfSizing: boolean)
	return {
		requiresItemMeasurement = function()
			return selfSizing
		end,
		resolveState = function(itemView)
			local current = itemView.signal(false)
			return if current == nil then nil else viewState(current)
		end,
	}
end

local function PlacementHarness(props)
	local host = React.useState(function()
		local configuration = {
			container = nil,
			viewportContainer = nil,
			axis = Core.Axis.Y,
			selfSizing = props.virtualizer.requiresItemMeasurement(),
		}
		local placement = HostPlacement.new({
			container = nil,
			viewportContainer = nil,
			axis = configuration.axis,
			selfSizing = configuration.selfSizing,
			onItemMeasurements = function(measurements)
				for _, measurement in measurements do
					local state = measurement.state
					props.onItemMeasured({
						key = state.assignment.key,
						index = state.index,
						assignment = state.assignment,
						itemRevision = state.itemRevision,
						pinnedPosition = state.pinnedPosition,
					}, measurement.length)
				end
			end,
			onItemViewPresentationChanged = function(itemView, current)
				if props.onItemViewPresentationChanged ~= nil then
					props.onItemViewPresentationChanged(itemView, current)
				end
			end,
		})
		local sink = table.freeze({
			apply = function(state)
				placement.apply(props.view, state)
			end,
			setMeasurementDependencies = function(dependencies)
				placement.setMeasurementDependencies(props.view, dependencies)
			end,
		})
		return {
			placement = placement,
			configuration = configuration,
			transition = function(current, nextIndex)
				local index = if current == nil then nil else nextIndex or indexByAssignment[current]
				if current ~= nil then
					indexByAssignment[current] = index
				end
				local intent = if current == nil then nil else viewState(current)
				props.view.transition(if intent == nil
					then nil
					else table.freeze({
						assignment = intent.assignment,
						index = intent.index,
						destination = table.freeze({
							kind = "list",
							state = intent,
							sink = sink,
							compositionPlacement = nil,
						}),
					}))
			end,
		}
	end)
	React.useLayoutEffect(function()
		local current = props.view.signal(false)
		if current ~= nil then
			host.transition(current)
		end
		props.onTransitionReady(host.transition)
		return function()
			props.onTransitionReady(nil)
			host.placement.destroy()
		end
	end, { host, props.onTransitionReady, props.view })
	return e(React.Fragment, nil, {
		Host = e(RecyclableViewHost, {
			itemView = props.view,
			createPortal = ReactRoblox.createPortal,
		}),
		Canvas = e("ScrollingFrame", {
			Size = UDim2.fromScale(1, 1),
			ref = function(instance)
				local nextConfiguration = table.clone(host.configuration)
				nextConfiguration.container = instance
				host.configuration = nextConfiguration
				host.placement.setConfiguration(nextConfiguration)
			end,
		}),
	})
end

local function renderView(root, view, virtualizer, onItemMeasured, onItemViewPresentationChanged)
	local transition
	root:render(e(PlacementHarness, {
		view = view,
		virtualizer = virtualizer,
		onItemMeasured = onItemMeasured,
		onItemViewPresentationChanged = onItemViewPresentationChanged,
		onTransitionReady = function(current)
			transition = current
		end,
	}))
	return function(current, index)
		assert(transition ~= nil, "PlacementHarness: assignment transition is not ready")
		transition(current, index)
	end
end

describe("list Host runtime and RecyclableViewHost", function()
	it("presents batched immediate reassignment only after bound content updates", function()
		local renders = 0
		local function Content(props)
			renders += 1
			return e("TextLabel", {
				Name = "Content",
				Text = SignalsReact.useSignalBinding(props.itemSignal),
			})
		end
		local view = RecyclableView(
			1,
			assignmentReady(Content),
			assignment("a", 1, "Alpha"),
			RecyclableViewReadiness.ReadyOnAssignment,
			false
		)
		local presentations = {}
		local presentedContent = {}
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local transitionAssignment
		local content: TextLabel

		ReactRoblox.act(function()
			transitionAssignment = renderView(
				root,
				view,
				createLayoutResolver(false),
				function() end,
				function(_, current)
					table.insert(presentations, if current == nil then "hidden" else current.key)
					if current ~= nil and current.key == "b" then
						table.insert(presentedContent, content.Text)
					end
				end
			)
		end)
		local host = container:FindFirstChild("ListItemViewFrame1", true) :: Frame
		content = container:FindFirstChild("Content", true) :: TextLabel
		expect(content.Text).toBe("Alpha")
		expect(presentations).toEqual({ "a" })
		local mountedRenders = renders

		SignalsExperimental.batch(function()
			transitionAssignment(assignment("b", 2, "Beta"))
		end)

		expect(host.Visible).toBe(true)
		expect(host.Position.Y.Offset).toBe(50)
		expect(content.Text).toBe("Beta")
		expect(presentations).toEqual({ "a", "hidden", "b" })
		expect(presentedContent).toEqual({ "Beta" })
		expect(renders).toBe(mountedRenders)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("does not reparent an existing host when its assignment changes", function()
		local function Content(props)
			return e("TextLabel", {
				Name = "Content",
				Text = SignalsReact.useSignalBinding(props.itemSignal),
			})
		end
		local view = RecyclableView(
			1,
			assignmentReady(Content),
			assignment("a", 1, "Alpha"),
			RecyclableViewReadiness.ReadyOnAssignment,
			false
		)
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local transitionAssignment

		ReactRoblox.act(function()
			transitionAssignment = renderView(root, view, createLayoutResolver(false), function() end)
		end)
		local host = container:FindFirstChild("ListItemViewFrame1", true) :: Frame
		local ancestryChanges = 0
		local connection = host.AncestryChanged:Connect(function()
			ancestryChanges += 1
		end)

		ReactRoblox.act(function()
			transitionAssignment(assignment("b", 2, "Beta"))
		end)
		expect(ancestryChanges).toBe(0)
		expect((container:FindFirstChild("Content", true) :: TextLabel).Text).toBe("Beta")

		connection:Disconnect()
		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("preserves ordinary local state across reassignment", function()
		local setCount
		local function Content(props)
			local item = SignalsReact.useSignalState(props.itemSignal)
			local count, updateCount = React.useState(0)
			setCount = updateCount
			return e("TextLabel", {
				Name = "Content",
				Text = `{item}:{count}`,
			})
		end
		local view = RecyclableView(
			1,
			assignmentReady(Content),
			assignment("a", 1, "Alpha"),
			RecyclableViewReadiness.ReadyOnAssignment,
			false
		)
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local transitionAssignment

		ReactRoblox.act(function()
			transitionAssignment = renderView(root, view, createLayoutResolver(false), function() end)
		end)
		ReactRoblox.act(function()
			setCount(4)
		end)
		ReactRoblox.act(function()
			transitionAssignment(assignment("b", 2, "Beta"))
		end)

		expect((container:FindFirstChild("Content", true) :: TextLabel).Text).toBe("Beta:4")

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("resets recycling state on key changes but not same-key value updates", function()
		local setCount
		local function Content(props)
			local item = SignalsReact.useSignalState(props.itemSignal)
			local count, updateCount = ViewRecycler.useRecyclingState(0)
			setCount = updateCount
			return e("TextLabel", {
				Name = "Content",
				Text = `{item}:{count}`,
			})
		end
		local view = RecyclableView(
			1,
			assignmentReady(Content),
			assignment("a", 1, "Alpha"),
			RecyclableViewReadiness.ReadyOnAssignment,
			false
		)
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local transitionAssignment

		ReactRoblox.act(function()
			transitionAssignment = renderView(root, view, createLayoutResolver(false), function() end)
		end)
		ReactRoblox.act(function()
			setCount(4)
			transitionAssignment(assignment("a", 2, "Alpha updated"))
		end)
		expect((container:FindFirstChild("Content", true) :: TextLabel).Text).toBe("Alpha updated:4")

		ReactRoblox.act(function()
			transitionAssignment(assignment("b", 2, "Beta"))
		end)
		expect((container:FindFirstChild("Content", true) :: TextLabel).Text).toBe("Beta:0")

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("exposes hosted item and assignment Signals through recycling hooks", function()
		local function Content()
			local item = SignalsReact.useSignalState(ViewRecycler.useRecyclingItem())
			local current = SignalsReact.useSignalState(ViewRecycler.useRecyclingAssignment())
			local index = SignalsReact.useSignalState(ViewRecycler.useRecyclingIndex())
			return e("TextLabel", {
				Name = "Content",
				Text = `{item}:{current.key}:{index}`,
			})
		end
		local view = RecyclableView(
			1,
			assignmentReady(Content),
			assignment("a", 1, "Alpha"),
			RecyclableViewReadiness.ReadyOnAssignment,
			false
		)
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local transitionAssignment

		ReactRoblox.act(function()
			transitionAssignment = renderView(root, view, createLayoutResolver(false), function() end)
		end)
		expect((container:FindFirstChild("Content", true) :: TextLabel).Text).toBe("Alpha:a:1")

		ReactRoblox.act(function()
			transitionAssignment(assignment("b", 2, "Beta"))
		end)
		expect((container:FindFirstChild("Content", true) :: TextLabel).Text).toBe("Beta:b:2")

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("exposes pending and keeps content visible by default", function()
		local observedPending
		local function Content(props)
			observedPending = props.pending
			local text = SignalsReact.useSignalBinding(props.itemSignal)
			return e("TextButton", {
				Name = "Content",
				Selectable = true,
				Text = text,
			})
		end
		local view = RecyclableView(
			1,
			commitReady(Content, false),
			assignment("a", 1, "Alpha"),
			RecyclableViewReadiness.ReadyOnCommit,
			false
		)
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local transitionAssignment

		ReactRoblox.act(function()
			transitionAssignment = renderView(root, view, createLayoutResolver(false), function() end)
		end)
		local host = container:FindFirstChild("ListItemViewFrame1", true) :: Frame
		expect(host.Visible).toBe(true)
		expect(observedPending:getValue()).toBe(false)

		transitionAssignment(assignment("b", 2, "Beta"))
		expect(host.Visible).toBe(true)
		expect(observedPending:getValue()).toBe(true)
		expect((host:FindFirstChild("Content", true) :: TextButton).Text).toBe("Beta")

		ReactRoblox.act(function() end)
		expect(observedPending:getValue()).toBe(false)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("clears selected descendants before a host changes logical key", function()
		local function Content(props)
			local text = SignalsReact.useSignalBinding(props.itemSignal)
			return e("TextButton", {
				Name = "Content",
				Selectable = true,
				Text = text,
			})
		end
		local view = RecyclableView(
			1,
			commitReady(Content, true),
			assignment("a", 1, "Alpha"),
			RecyclableViewReadiness.ReadyOnCommit,
			true
		)
		local container = Instance.new("ScreenGui")
		container.Parent = game:GetService("CoreGui")
		local root = ReactRoblox.createRoot(container)
		local transitionAssignment
		ReactRoblox.act(function()
			transitionAssignment = renderView(root, view, createLayoutResolver(false), function() end)
		end)
		local content = container:FindFirstChild("Content", true) :: TextButton
		local guiService = game:GetService("GuiService")
		guiService.SelectedObject = content

		transitionAssignment(assignment("b", 2, "Beta"))

		expect(guiService.SelectedObject).toBeNil()
		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("clears focus when a same-key item gets a new Assignment", function()
		local function Content(props)
			local text = SignalsReact.useSignalBinding(props.itemSignal)
			return e("TextButton", {
				Name = "Content",
				Selectable = true,
				Text = text,
			})
		end
		local view = RecyclableView(
			1,
			assignmentReady(Content),
			assignment("a", 1, "Alpha"),
			RecyclableViewReadiness.ReadyOnAssignment,
			false
		)
		local container = Instance.new("ScreenGui")
		container.Parent = game:GetService("CoreGui")
		local root = ReactRoblox.createRoot(container)
		local transitionAssignment
		ReactRoblox.act(function()
			transitionAssignment = renderView(root, view, createLayoutResolver(false), function() end)
		end)
		local content = container:FindFirstChild("Content", true) :: TextButton
		local guiService = game:GetService("GuiService")
		guiService.SelectedObject = content

		transitionAssignment(assignment("a", 2, "Updated"), 2)

		expect(guiService.SelectedObject).toBeNil()
		guiService.SelectedObject = nil
		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("reports presentation only after the current Assignment commits", function()
		local function Content(props)
			local text = SignalsReact.useSignalState(props.itemSignal)
			return e("TextLabel", {
				Name = "Content",
				Text = text,
			})
		end
		local view = RecyclableView(
			1,
			commitReady(Content, true),
			assignment("a", 1, "Alpha"),
			RecyclableViewReadiness.ReadyOnCommit,
			true
		)
		local events = {}
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local transitionAssignment
		ReactRoblox.act(function()
			transitionAssignment = renderView(
				root,
				view,
				createLayoutResolver(false),
				function() end,
				function(_, current)
					table.insert(events, if current == nil then "hidden" else current.key)
				end
			)
		end)
		expect(events).toEqual({ "a" })

		transitionAssignment(assignment("b", 2, "Beta"))
		local staleAssignment = view.signal(false)
		local staleRevision = view.contentRevision(false)
		transitionAssignment(assignment("c", 3, "Gamma"))
		local currentAssignment = view.signal(false)

		expect(events).toEqual({ "a", "hidden" })
		view.commitContent(staleRevision)
		expect(events).toEqual({ "a", "hidden" })
		expect(currentAssignment).never.toBe(staleAssignment)
		ReactRoblox.act(function() end)
		expect(events).toEqual({ "a", "hidden", "c" })

		ReactRoblox.act(function()
			root:unmount()
		end)
		expect(events).toEqual({ "a", "hidden", "c" })
		container:Destroy()
	end)

	it("retains readiness for same-Assignment metadata updates and resets it after vacancy", function()
		local function Content(props)
			return e("TextLabel", {
				Name = "Content",
				Text = SignalsReact.useSignalBinding(props.itemSignal),
			})
		end
		local view = RecyclableView(
			1,
			commitReady(Content, true),
			assignment("a", 1, "Alpha"),
			RecyclableViewReadiness.ReadyOnCommit,
			true
		)
		local presentations = {}
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local transitionAssignment
		ReactRoblox.act(function()
			transitionAssignment = renderView(
				root,
				view,
				createLayoutResolver(false),
				function() end,
				function(_, current)
					table.insert(presentations, if current == nil then "hidden" else current.value)
				end
			)
		end)
		local host = container:FindFirstChild("ListItemViewFrame1", true) :: Frame
		local content = container:FindFirstChild("Content", true) :: TextLabel
		local committedAssignment = view.signal(false)
		local committedRevision = view.contentRevision(false)

		transitionAssignment(committedAssignment, 2)
		expect(view.signal(false)).toBe(committedAssignment)
		expect(host.Visible).toBe(true)
		expect(content.Text).toBe("Alpha")
		expect(presentations).toEqual({ "Alpha" })

		transitionAssignment(nil)
		transitionAssignment(assignment("a", 1, "Reacquired"), 1)
		expect(view.signal(false)).never.toBe(committedAssignment)
		expect(host.Visible).toBe(false)

		view.commitContent(committedRevision)
		expect(host.Visible).toBe(false)
		expect(presentations).toEqual({ "Alpha", "hidden" })

		ReactRoblox.act(function()
			view.commitContent(view.contentRevision(false))
		end)
		expect(host.Visible).toBe(true)
		expect(content.Text).toBe("Reacquired")
		expect(presentations).toEqual({ "Alpha", "hidden", "Reacquired" })

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("commits a new Assignment without rerendering a binding-driven view", function()
		local renders = 0
		local function Content(props)
			renders += 1
			return e("TextLabel", {
				Name = "Content",
				Text = SignalsReact.useSignalBinding(props.itemSignal),
			})
		end
		local view = RecyclableView(
			1,
			commitReady(Content, true),
			assignment("a", 1, "Alpha"),
			RecyclableViewReadiness.ReadyOnCommit,
			true
		)
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local transitionAssignment
		ReactRoblox.act(function()
			transitionAssignment = renderView(root, view, createLayoutResolver(false), function() end)
		end)
		local host = container:FindFirstChild("ListItemViewFrame1", true) :: Frame
		local mountedRenders = renders

		ReactRoblox.act(function()
			transitionAssignment(assignment("b", 2, "Beta"))
		end)

		expect(renders).toBe(mountedRenders)
		expect(host.Visible).toBe(true)
		expect((host:FindFirstChild("Content", true) :: TextLabel).Text).toBe("Beta")

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("does not measure pending fallback geometry", function()
		local function Content()
			return e("Frame", {
				Size = UDim2.new(1, 0, 0, 40),
			})
		end
		local view = RecyclableView(
			1,
			commitReady(Content, true),
			assignment("a", 1, "Alpha"),
			RecyclableViewReadiness.ReadyOnCommit,
			true
		)
		local measurements = {}
		local container = Instance.new("Frame")
		container.Size = UDim2.fromOffset(200, 200)
		local root = ReactRoblox.createRoot(container)
		local transitionAssignment

		ReactRoblox.act(function()
			transitionAssignment = renderView(root, view, createLayoutResolver(true), function(identity, length)
				table.insert(measurements, {
					key = identity.key,
					index = identity.index,
					assignment = identity.assignment,
					itemRevision = identity.itemRevision,
					length = length,
				})
			end)
		end)
		game:GetService("RunService").Heartbeat:Wait()
		task.wait()
		table.clear(measurements)

		transitionAssignment(assignment("b", 2, "Beta"))
		game:GetService("RunService").Heartbeat:Wait()
		task.wait()
		expect(measurements).toEqual({})

		ReactRoblox.act(function() end)
		game:GetService("RunService").PreRender:Wait()
		game:GetService("RunService").Heartbeat:Wait()
		task.wait()
		expect(measurements[1].key).toBe("b")
		expect(measurements[1].index).toBe(2)
		expect(measurements[1].assignment).toBe(view.signal(false))
		expect(measurements[1].length).toBe(40)

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("fully detaches physical list placement and rejects stale measurement work", function()
		local viewType = assignmentReady(function()
			return nil
		end)
		local view = RecyclableView(1, viewType, nil, RecyclableViewReadiness.ReadyOnAssignment, false)
		local host = view.portalFrame(false) :: Frame
		local canvas = Instance.new("ScrollingFrame")
		canvas.Size = UDim2.fromOffset(200, 200)
		local screen = Instance.new("ScreenGui")
		screen.Parent = game:GetService("CoreGui")
		canvas.Parent = screen
		local measurements = {}
		local placement = HostPlacement.new({
			container = canvas,
			axis = Core.Axis.Y,
			selfSizing = true,
			onItemMeasurements = function(batch)
				for _, measurement in batch do
					table.insert(measurements, measurement)
				end
			end,
			onItemViewPresentationChanged = function() end,
		})
		local current = assignment("a", 1, "Alpha")
		local currentIntent = physicalState(current)
		view.transition({
			assignment = current,
			index = currentIntent.index,
			destination = {
				kind = "list",
				state = currentIntent,
				sink = {
					apply = function(physical)
						placement.apply(view, physical)
					end,
					setMeasurementDependencies = function(dependencies)
						placement.setMeasurementDependencies(view, dependencies)
					end,
				},
				compositionPlacement = nil,
			},
		})
		game:GetService("RunService").Heartbeat:Wait()
		task.wait()
		table.clear(measurements)
		game:GetService("GuiService").SelectedObject = host

		view.transition(nil)

		expect(game:GetService("GuiService").SelectedObject).toBeNil()
		expect(host.Parent).toBeNil()
		expect(host.Position).toBe(UDim2.new())
		expect(host.Size).toBe(UDim2.new())
		expect(host.AutomaticSize).toBe(Enum.AutomaticSize.None)
		host.Size = UDim2.fromOffset(100, 100)
		game:GetService("RunService").Heartbeat:Wait()
		task.wait()
		expect(measurements).toEqual({})

		placement.destroy()
		view.destroy()
		screen:Destroy()
	end)

	it("transfers one view between list ports with one detach, attach, resolve, and placement", function()
		local viewType = assignmentReady(function()
			return nil
		end)
		local view = RecyclableView(1, viewType, nil, RecyclableViewReadiness.ReadyOnAssignment, false)
		local host = view.portalFrame(false) :: Frame
		local firstCanvas = Instance.new("ScrollingFrame")
		local secondCanvas = Instance.new("ScrollingFrame")
		local firstResolves = 0
		local secondResolves = 0
		local firstVirtualizer = createLayoutResolver(false)
		local secondVirtualizer = createLayoutResolver(false)
		local firstResolve = firstVirtualizer.resolveState
		local secondResolve = secondVirtualizer.resolveState
		firstVirtualizer.resolveState = function(itemView)
			firstResolves += 1
			return firstResolve(itemView)
		end
		secondVirtualizer.resolveState = function(itemView)
			secondResolves += 1
			return secondResolve(itemView)
		end
		local firstPlacement = HostPlacement.new({
			container = firstCanvas,
			axis = Core.Axis.Y,
			selfSizing = false,
			onItemMeasurements = function() end,
			onItemViewPresentationChanged = function() end,
		})
		local secondPlacement = HostPlacement.new({
			container = secondCanvas,
			axis = Core.Axis.Y,
			selfSizing = false,
			onItemMeasurements = function() end,
			onItemViewPresentationChanged = function() end,
		})

		local first = assignment("a", 1, "Alpha")
		local firstIntent = physicalState(first)
		view.transition({
			assignment = first,
			index = firstIntent.index,
			destination = {
				kind = "list",
				state = firstIntent,
				sink = {
					apply = function(physical)
						firstPlacement.apply(view, physical)
					end,
				},
				compositionPlacement = nil,
			},
		})
		firstVirtualizer.resolveState(view)
		expect(first.adapterData).toBeNil()
		firstResolves = 0
		local parentWrites = 0
		local positionWrites = 0
		local sizeWrites = 0
		local parentConnection = host:GetPropertyChangedSignal("Parent"):Connect(function()
			parentWrites += 1
		end)
		local positionConnection = host:GetPropertyChangedSignal("Position"):Connect(function()
			positionWrites += 1
		end)
		local sizeConnection = host:GetPropertyChangedSignal("Size"):Connect(function()
			sizeWrites += 1
		end)

		view.transition(nil)
		expect(host.Parent).toBeNil()
		expect(host.Position).toBe(UDim2.new())
		expect(host.Size).toBe(UDim2.new())
		local second = assignment("b", 2, "Beta")
		local attaches = 0
		local secondIntent = physicalState(second)
		view.transition({
			assignment = second,
			index = secondIntent.index,
			destination = {
				kind = "list",
				state = secondIntent,
				sink = {
					apply = function(physical)
						secondPlacement.apply(view, physical)
					end,
				},
				compositionPlacement = nil,
			},
		})
		secondVirtualizer.resolveState(view)
		attaches += 1

		expect(attaches).toBe(1)
		expect(second.adapterData).toBeNil()
		expect(firstResolves).toBe(0)
		expect(secondResolves).toBe(1)
		expect(parentWrites).toBe(2)
		expect(positionWrites).toBe(1)
		expect(sizeWrites).toBe(2)
		expect(host.Parent).toBe(secondCanvas)
		expect(host.Position).toBe(UDim2.fromOffset(0, 50))
		expect(host.Size).toBe(UDim2.new(1, 0, 0, 50))

		parentConnection:Disconnect()
		positionConnection:Disconnect()
		sizeConnection:Disconnect()
		view.destroy()
		firstPlacement.destroy()
		secondPlacement.destroy()
		firstCanvas:Destroy()
		secondCanvas:Destroy()
	end)

	it("never presents stale content during an unbatched reassignment", function()
		local ItemViewType = commitReady(function(props)
			local value = SignalsReact.useSignalState(props.itemSignal)
			return e("TextLabel", {
				Name = "Content",
				Text = value,
			})
		end, true)
		local view =
			RecyclableView(1, ItemViewType, assignment("a", 1, "Alpha"), RecyclableViewReadiness.ReadyOnCommit, true)
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local transitionAssignment

		ReactRoblox.act(function()
			transitionAssignment = renderView(root, view, createLayoutResolver(false), function() end)
		end)
		local host = container:FindFirstChild("ListItemViewFrame1", true) :: Frame

		transitionAssignment(assignment("b", 2, "Beta"))

		if host.Visible then
			expect((host:FindFirstChild("Content", true) :: TextLabel).Text).toBe("Beta")
		end
		task.wait()
		ReactRoblox.act(function() end)
		expect(host.Visible).toBe(true)
		expect((host:FindFirstChild("Content", true) :: TextLabel).Text).toBe("Beta")

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)
end)
