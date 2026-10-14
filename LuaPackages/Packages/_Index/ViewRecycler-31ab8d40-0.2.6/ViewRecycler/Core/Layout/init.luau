-- Public layout factories. Stateful synchronization stays behind these
-- constructors; applications provide only geometry to Layout.create.
local LayoutRuntime = require(script.LayoutRuntime)

-- Internal type used by Core and adapters. It is intentionally not
-- re-exported from the package root.
export type Runtime = LayoutRuntime.Runtime

local Layout = {
	uniform = require(script.uniform),
	grid = require(script.grid),
	masonry = require(script.masonry),
	create = require(script.create),
	measured = require(script.measured),
}

return Layout
