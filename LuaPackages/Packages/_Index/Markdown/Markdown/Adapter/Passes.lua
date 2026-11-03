-- The passes after adapting. mergeText joins a run's text into one TEXT as it is added (Engine's
-- emitText), and the joined text is assembled here. dropEmpty removes a QUOTE with no children,
-- which the renderer would draw as an empty padded quote (Elvis, 2026-10-08), as for a lone `>`;
-- either can be turned off by name. Index and offset are set on append, so they're assigned again
-- last in each container dropEmpty changes, and a block after a dropped first one gets offset 0.

local Root = script:FindFirstAncestor("Markdown")
local Registry = require(script.Parent.Registry)
local RendererNodes = require(script.Parent.RendererNodes)
local Types = require(Root.Types)

type Passes = Registry.Passes
type RendererNode = Types.Node

local DROPPED_WHEN_EMPTY = table.freeze({
	QUOTE = true,
})

local Passes = {}

-- Whether dropEmpty removes a block of this name when it ends up with no children
function Passes.isDroppable(name: string): boolean
	return DROPPED_WHEN_EMPTY[name] == true
end

-- `droppable` maps each droppable block to its parent.
function Passes.finish(
	textParts: { [RendererNode]: { string } },
	droppable: { [RendererNode]: RendererNode },
	passes: Passes
)
	for text, parts in textParts do
		text.text = table.concat(parts)
	end
	if not passes.dropEmpty then
		return
	end
	local dropped: { [RendererNode]: boolean } = {}
	local changed: { [RendererNode]: boolean } = {}
	for node, parent in droppable do
		if #node.children == 0 then
			dropped[node] = true
			changed[parent] = true
		end
	end
	for parent in changed do
		local children = parent.children
		local kept = 0
		for i = 1, #children do
			local child = children[i]
			if not dropped[child] then
				kept += 1
				children[kept] = child
				child.index = kept
				child.offset = RendererNodes.offsetAt(parent, child, kept)
			end
		end
		for i = #children, kept + 1, -1 do
			children[i] = nil
		end
	end
end

return Passes
