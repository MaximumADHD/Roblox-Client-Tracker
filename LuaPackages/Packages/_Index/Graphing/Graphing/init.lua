--!strict
--[[
    Unified graphing
]]

local components = {
	Canvas = require(script.Components.Canvas),
	CanvasContext = require(script.CanvasContext),

	Curve = require(script.Components.Curve),
	Grid = require(script.Components.Grid),
	GridLine = require(script.Components.GridLine),
	InputDetector = require(script.Components.InputDetector),
	Label = require(script.Components.Label),
	Panel = require(script.Components.Panel),
	Path2DWrapper = require(script.Components.Path2DWrapper),
	Point = require(script.Components.Point),
	ResizablePanel = require(script.Components.ResizablePanel),
	Scale = require(script.Components.Scale),
	ScaleTick = require(script.Components.ScaleTick),
	Scrollbar = require(script.Components.Scrollbar),
	ScrollbarButton = require(script.Components.ScrollbarButton),

	GridUtil = require(script.Util.GridUtil),
	MathUtil = require(script.Util.MathUtil),
	StyleUtil = require(script.Util.StyleUtil),
	Types = require(script.Types),
	useViewportBinding = require(script.Util.useViewportBinding).useViewportBinding,
	useViewportVisibility = require(script.Util.useViewportBinding).useViewportVisibility,
	-- CanvasUtil is private because it is only for the Canvas component
	-- TestUtil is private because it is only for unit tests
}

return components :: typeof(components)
