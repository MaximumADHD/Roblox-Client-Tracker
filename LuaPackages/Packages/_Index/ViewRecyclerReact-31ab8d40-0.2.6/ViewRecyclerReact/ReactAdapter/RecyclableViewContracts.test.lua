local Root = script:FindFirstAncestor("ViewRecyclerReact")
local TestDependencies = require(Root.TestDependencies)
local JestGlobals = TestDependencies.JestGlobals
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local React = require(Root.Parent.React)
local RecyclableViewRegistry = require(Root.ReactAdapter.Private.RecyclableViewRegistry)
local ViewRecycler = require(Root)

describe("Recyclable view contracts", function()
	it("creates a distinct plain function identity for every factory call", function()
		local function FirstContent()
			return nil
		end
		local function SecondContent()
			return nil
		end
		local first = ViewRecycler.createRecyclableView(FirstContent)
		local second = ViewRecycler.createRecyclableView(SecondContent)

		expect(typeof(first)).toBe("function")
		expect(first).never.toBe(second)
		expect(RecyclableViewRegistry.isRegistered(first)).toBe(true)
		expect(RecyclableViewRegistry.isRegistered(second)).toBe(true)
		expect(RecyclableViewRegistry.getMetadata(first).signalComponent).toBe(FirstContent)
		expect(RecyclableViewRegistry.getMetadata(second).signalComponent).toBe(SecondContent)
	end)

	it("defaults both factories to assignment-ready presentation", function()
		local function Content()
			return nil
		end
		local signalDefinition = ViewRecycler.createRecyclableView(Content)
		local componentDefinition = ViewRecycler.createRecyclableComponent(Content)

		local signalMetadata = RecyclableViewRegistry.getMetadata(signalDefinition)
		local componentMetadata = RecyclableViewRegistry.getMetadata(componentDefinition)
		expect(signalMetadata.readiness).toBe(ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment)
		expect(signalMetadata.hideWhilePending).toBe(false)
		expect(componentMetadata.readiness).toBe(ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment)
		expect(componentMetadata.hideWhilePending).toBe(false)
	end)

	it("supports commit-gated presentation as an opt-in", function()
		local function Content()
			return nil
		end
		local definition = ViewRecycler.createRecyclableView(Content, {
			readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnCommit,
			hideWhilePending = true,
		})
		local metadata = RecyclableViewRegistry.getMetadata(definition)
		expect(metadata.readiness).toBe(ViewRecycler.RecyclableViewReadiness.ReadyOnCommit)
		expect(metadata.hideWhilePending).toBe(true)
	end)

	it("keeps Assignment generation and commit callbacks out of consumer props", function()
		local receivedProps
		local definition = ViewRecycler.createRecyclableView(function(props)
			receivedProps = props
			return React.createElement(React.Fragment)
		end, {
			readiness = ViewRecycler.RecyclableViewReadiness.ReadyOnCommit,
		})
		local metadata = RecyclableViewRegistry.getMetadata(definition)

		expect((metadata :: any).generation).toBeNil()
		expect((metadata :: any).commit).toBeNil()
		expect(receivedProps :: any).toBeNil()
	end)

	it("exports RecyclableViewReadiness and re-exported Core enum tables", function()
		expect(ViewRecycler.RecyclableViewReadiness.ReadyOnAssignment).toBe("ReadyOnAssignment")
		expect(ViewRecycler.RecyclableViewReadiness.ReadyOnCommit).toBe("ReadyOnCommit")
		expect(ViewRecycler.ScrollDirection.Forward).toBe("forward")
		expect(ViewRecycler.PinnedPosition.Start).toBe("start")
		expect(ViewRecycler.IdentityKind.Data).toBe("data")
		expect(type(ViewRecycler.useRecyclingItem)).toBe("function")
		expect(type(ViewRecycler.useRecyclingAssignment)).toBe("function")
	end)
end)
