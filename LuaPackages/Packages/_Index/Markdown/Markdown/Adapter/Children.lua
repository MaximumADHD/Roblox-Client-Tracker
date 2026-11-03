-- How the adapter's block walks see a container's children.

local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local CommonMark = require(Packages.CommonMark)
local Registry = require(script.Parent.Registry)

type ParserNode = CommonMark.Node
type Registry = Registry.Registry

-- A block, or a run of inline nodes standing where a block would (an unknown custom block holding
-- inlines, or inline nodes placed directly in a container, makes one), which is treated as a
-- paragraph's content.
export type Unit = {
	block: ParserNode?,
	inlines: { ParserNode }?,
}

local Children = {}

-- The container's children as units, in order. A block whose rule is "drop" is left out, and one
-- whose rule is "children" is replaced by its children. A ListItem is a unit of its own only in a
-- list (`inList`); elsewhere it follows its rule, by default the unknown-block fallback. The
-- descent keeps a stack of sibling cursors instead of recursing.
function Children.units(container: ParserNode, registry: Registry, inList: boolean): { Unit }
	local units: { Unit } = {}
	local run: { ParserNode }? = nil
	local function flushRun()
		if run ~= nil then
			table.insert(units, { inlines = run })
			run = nil
		end
	end

	local cursors: { ParserNode? } = { container:getFirstChild() }
	local depth = 1
	while depth > 0 do
		local node = cursors[depth]
		if node == nil then
			cursors[depth] = nil
			depth -= 1
			-- A run doesn't continue across the edge of a replaced block
			flushRun()
		else
			cursors[depth] = node:getNext()
			if not node.isBlock then
				if run == nil then
					run = { node }
				else
					table.insert(run, node)
				end
				continue
			end
			local form = if inList and node.kind == "ListItem"
				then "handler"
				else (registry.block[node.kind] or registry.unknownBlock).form
			if form == "drop" then
				continue
			elseif form == "children" then
				flushRun()
				depth += 1
				cursors[depth] = node:getFirstChild()
			else
				flushRun()
				table.insert(units, { block = node })
			end
		end
	end
	return units
end

function Children.isList(unit: Unit): boolean
	local block = unit.block
	return block ~= nil and (block.kind == "BulletList" or block.kind == "OrderedList")
end

-- Whether the unit is what a renderer TextBlock shows as is: a paragraph's inline content.
function Children.isParagraphLike(unit: Unit): boolean
	local block = unit.block
	return block == nil or block.kind == "Paragraph"
end

return Children
