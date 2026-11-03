-- A user mention (ROACTCHAT-2831 #10): `<@123456>` or `<@123456:maybe_liquid>`. The id and name
-- are kept exactly as written; how a mention displays is left to the adapter and renderer.

local Root = script:FindFirstAncestor("Markdown")
local Packages = Root.Parent
local CommonMark = require(Packages.CommonMark)

type CustomNode = CommonMark.CustomNode

export type Mention = CustomNode & {
	id: string,
	name: string?,
}

local function Mention(id: string, name: string?): Mention
	local mention: Mention = CommonMark.Node.CustomNode.new("Mention") :: any
	mention.id = id
	mention.name = name
	return mention
end

return Mention
