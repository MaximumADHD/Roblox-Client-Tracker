local Root = script:FindFirstAncestor("ViewRecyclerRoblox")
local Core = require(Root.Parent.ViewRecycler)
local JestGlobals = require(Root.TestDependencies).JestGlobals

local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local CanvasItemPlacer = require(Root.RobloxAdapter.CanvasItemPlacer)

describe("CanvasItemPlacer", function()
	it("resolves ordinary and viewport-relative geometry", function()
		local itemLayout = {
			startOffset = 20,
			length = 30,
		}

		expect(CanvasItemPlacer.getGeometry(itemLayout, {}, Core.Axis.Y, false, 5)).toEqual({
			position = UDim2.fromOffset(0, 25),
			size = UDim2.new(1, 0, 0, 30),
			automaticSize = Enum.AutomaticSize.None,
			zIndexOffset = nil,
		})
		expect(CanvasItemPlacer.getGeometry(itemLayout, {
			mainAxisOffset = 7,
			mainAxisLength = 11,
			zIndex = 4,
		}, Core.Axis.Y, false, 5)).toEqual({
			position = UDim2.fromOffset(0, 7),
			size = UDim2.new(1, 0, 0, 11),
			automaticSize = Enum.AutomaticSize.None,
			zIndexOffset = 4,
		})
	end)

	it("places and detaches a host while restoring its ZIndex", function()
		local canvas = Instance.new("ScrollingFrame")
		local host = Instance.new("Frame")
		host.ZIndex = 3
		local state = CanvasItemPlacer.createState()
		local geometry = CanvasItemPlacer.getGeometry({
			startOffset = 20,
			length = 30,
		}, {
			zIndex = 4,
		}, Core.Axis.Y, true, 5)

		expect(CanvasItemPlacer.place(host, canvas, geometry, state, true)).toBe(7)
		expect(CanvasItemPlacer.place(host, canvas, geometry, state, true)).toBe(0)

		expect(host.Parent).toBe(canvas)
		expect(host.Position).toBe(UDim2.fromOffset(0, 25))
		expect(host.Size).toBe(UDim2.fromScale(1, 0))
		expect(host.AutomaticSize).toBe(Enum.AutomaticSize.Y)
		expect(host.ZIndex).toBe(7)
		expect(host.Visible).toBe(true)

		expect(CanvasItemPlacer.detach(host, state)).toBe(3)

		expect(host.Parent).toBeNil()
		expect(host.Visible).toBe(false)
		expect(host.ZIndex).toBe(3)
		host:Destroy()
		canvas:Destroy()
	end)

	it("does not rewrite unchanged placement properties and resets after reparenting", function()
		local firstCanvas = Instance.new("ScrollingFrame")
		local secondCanvas = Instance.new("ScrollingFrame")
		local host = Instance.new("Frame")
		local state = CanvasItemPlacer.createState()
		local geometry = CanvasItemPlacer.getGeometry({
			startOffset = 20,
			length = 30,
		}, {}, Core.Axis.Y, false, 0)

		expect(CanvasItemPlacer.place(host, firstCanvas, geometry, state, true)).toBe(6)
		expect(CanvasItemPlacer.place(host, firstCanvas, geometry, state, true)).toBe(0)
		host.Parent = secondCanvas
		expect(CanvasItemPlacer.place(host, firstCanvas, geometry, state, true)).toBe(6)
		expect(CanvasItemPlacer.detach(host, state)).toBe(2)

		host:Destroy()
		firstCanvas:Destroy()
		secondCanvas:Destroy()
	end)
end)
