--!nonstrict
local Root = script:FindFirstAncestor("ViewRecyclerReact")
local TestDependencies = require(Root.TestDependencies)
local JestGlobals = TestDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local React = require(Root.Parent.React)
local RecyclableViewContext = require(Root.ReactAdapter.Private.RecyclableViewContext)
local ReactRoblox = TestDependencies.ReactRoblox
local Signals = require(Root.Parent.Signals)
local SignalsReact = require(Root.Parent.SignalsReact)
local ViewRecycler = require(Root)

local e = React.createElement

describe("createRecyclableView", function()
	it("exports signal-first and ordinary-props factories as plain React functions", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local function SignalLabel(props)
			local value = SignalsReact.useSignalState(props.itemSignal)
			return e("TextLabel", {
				Name = value.name,
				Text = value.text,
			})
		end
		local function OrdinaryLabel(props)
			return e("TextLabel", {
				Name = props.name,
				Text = props.text,
			})
		end
		local SignalAssignment: ViewRecycler.RecyclableViewType<{ name: string, text: string }> =
			ViewRecycler.createRecyclableView(SignalLabel, {
				readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
			})
		local SignalCommit: ViewRecycler.RecyclableViewType<{ name: string, text: string }> =
			ViewRecycler.createRecyclableView(SignalLabel, {
				readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnCommit,
			})
		local OrdinaryAssignment: ViewRecycler.RecyclableViewType<{ name: string, text: string }> =
			ViewRecycler.createRecyclableComponent(OrdinaryLabel, {
				readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
			})
		local OrdinaryCommit: ViewRecycler.RecyclableViewType<{ name: string, text: string }> =
			ViewRecycler.createRecyclableComponent(OrdinaryLabel, {
				readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnCommit,
			})

		ReactRoblox.act(function()
			root:render(e(React.Fragment, nil, {
				SignalAssignment = e(SignalAssignment, {
					name = "SignalAssignment",
					text = "signal-assignment",
				}),
				SignalCommit = e(SignalCommit, {
					name = "SignalCommit",
					text = "signal-commit",
				}),
				OrdinaryAssignment = e(OrdinaryAssignment, {
					name = "OrdinaryAssignment",
					text = "ordinary-assignment",
				}),
				OrdinaryCommit = e(OrdinaryCommit, {
					name = "OrdinaryCommit",
					text = "ordinary-commit",
				}),
			}))
		end)
		expect(typeof(SignalAssignment)).toBe("function")
		expect(typeof(SignalCommit)).toBe("function")
		expect(typeof(OrdinaryAssignment)).toBe("function")
		expect(typeof(OrdinaryCommit)).toBe("function")
		expect(container.SignalAssignment.Text).toBe("signal-assignment")
		expect(container.SignalCommit.Text).toBe("signal-commit")
		expect(container.OrdinaryAssignment.Text).toBe("ordinary-assignment")
		expect(container.OrdinaryCommit.Text).toBe("ordinary-commit")

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("provides recycling identity while rendering inline", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local setCount
		local function Content()
			local value = SignalsReact.useSignalState(ViewRecycler.useRecyclingItem())
			local assignment = SignalsReact.useSignalState(ViewRecycler.useRecyclingAssignment())
			local count, updateCount = ViewRecycler.useRecyclingState(0)
			setCount = updateCount
			return e("TextLabel", {
				Name = "Content",
				Text = `{value.value}:{count}:{assignment == nil}`,
			})
		end
		local RecyclableView = ViewRecycler.createRecyclableView(Content)

		ReactRoblox.act(function()
			root:render(e(RecyclableView, { value = "first" }))
		end)
		ReactRoblox.act(function()
			setCount(3)
		end)
		expect(container.Content.Text).toBe("first:3:true")

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)

	it("registers a private component identity and placement for each scoped wrapper", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local placements = {}
		local unregister = jest.fn()
		local setPlaceholderCalls = {}
		local setPropsCalls = {}
		local placement = {
			register = function(viewType, placementToken, _parentSignal, props, placeholder)
				local setPlaceholder = jest.fn()
				local setProps = jest.fn()
				table.insert(setPlaceholderCalls, setPlaceholder)
				table.insert(setPropsCalls, setProps)
				table.insert(placements, {
					viewType = viewType,
					placementToken = placementToken,
					props = props,
					placeholder = placeholder,
				})
				return {
					setPlaceholder = setPlaceholder,
					setProps = setProps,
					unregister = unregister,
				}
			end,
		}
		local function Content()
			return e("TextLabel", { Name = "InlineContent" })
		end
		local RecyclableView = ViewRecycler.createRecyclableComponent(Content, {
			readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
		})
		local parentSignal = Signals.createSignal(nil)
		local placementSignal = Signals.createSignal(placement)
		local contextValue = {
			placement = placementSignal,
			assignmentSignal = parentSignal,
		}

		ReactRoblox.act(function()
			root:render(e(RecyclableViewContext.Provider, {
				value = contextValue,
			}, {
				First = e(RecyclableView, { value = "first" }),
				Second = e(RecyclableView, { value = "second" }),
			}))
		end)

		expect(#placements).toBe(2)
		expect(placements[1].viewType).toBe(placements[2].viewType)
		expect(placements[1].placementToken).never.toBe(placements[2].placementToken)
		local firstPlacement = if placements[1].props.value == "first" then placements[1] else placements[2]
		expect(firstPlacement.props.value).toBe("first")
		local recyclablePrefix = string.find(firstPlacement.placeholder.Name, "Recyclable", 1, true)
		expect(recyclablePrefix).toBe(1)
		expect(container:FindFirstChild("InlineContent", true)).toBeNil()

		ReactRoblox.act(function()
			root:render(e(RecyclableViewContext.Provider, {
				value = contextValue,
			}, {
				First = e(RecyclableView, { value = "updated" }),
				Second = e(RecyclableView, { value = "second" }),
			}))
		end)
		expect(#placements).toBe(2)
		expect(setPlaceholderCalls[1]).never.toHaveBeenCalled()
		expect(setPlaceholderCalls[2]).never.toHaveBeenCalled()
		expect(setPropsCalls[1]).toHaveBeenCalledTimes(2)
		expect(setPropsCalls[2]).toHaveBeenCalledTimes(2)

		ReactRoblox.act(function()
			root:unmount()
		end)
		expect(unregister).toHaveBeenCalledTimes(2)
		container:Destroy()
	end)

	it("creates distinct private view types for separate wrappers around one component", function()
		local container = Instance.new("Folder")
		local root = ReactRoblox.createRoot(container)
		local viewTypes = {}
		local placement = {
			register = function(viewType)
				table.insert(viewTypes, viewType)
				return {
					setPlaceholder = function() end,
					setProps = function() end,
					unregister = function() end,
				}
			end,
		}
		local function Content()
			return nil
		end
		local First = ViewRecycler.createRecyclableComponent(Content, {
			readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
		})
		local Second = ViewRecycler.createRecyclableComponent(Content, {
			readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment,
		})
		local parentSignal = Signals.createSignal(nil)
		local placementSignal = Signals.createSignal(placement)

		ReactRoblox.act(function()
			root:render(e(RecyclableViewContext.Provider, {
				value = {
					placement = placementSignal,
					assignmentSignal = parentSignal,
				},
			}, {
				First = e(First),
				Second = e(Second),
			}))
		end)

		expect(viewTypes[1]).never.toBe(viewTypes[2])
		expect(typeof(viewTypes[1])).toBe("function")
		expect(typeof(viewTypes[2])).toBe("function")

		ReactRoblox.act(function()
			root:unmount()
		end)
		container:Destroy()
	end)
end)
