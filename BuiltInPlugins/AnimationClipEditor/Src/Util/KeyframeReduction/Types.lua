--!strict
--[[
	Types used by the Visvalingam-Whyatt algorithm
]]

export type VectorN = { number }

export type Point = {
	vertex: VectorN,
	area: number,
}

export type Triangle = {
	a: VectorN,
	b: VectorN,
	c: VectorN,
	area: number,
	prev: Triangle?,
	next: Triangle?,
	_order: number?,

	updateArea: () -> (),
}

return nil
