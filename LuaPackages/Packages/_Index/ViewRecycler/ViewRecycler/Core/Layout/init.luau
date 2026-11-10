-- Public layout factories. Stateful synchronization stays behind these
-- constructors; applications provide only geometry to Layout.create.
local LayoutRuntime = require(script.LayoutRuntime)
local measured = require(script.measured)
local uniform = require(script.uniform)

-- Internal type used by Core and adapters. It is intentionally not
-- re-exported from the package root.
export type Runtime = LayoutRuntime.Runtime
export type MeasuredOptions = measured.MeasuredOptions
export type UniformOptions = uniform.UniformOptions

local Layout = {
	uniform = uniform,
	grid = require(script.grid),
	masonry = require(script.masonry),
	create = require(script.create),
	measured = measured,
}

return Layout
