local Root = script:FindFirstAncestor("Utils").Parent
local Packages = Root.Parent
local NodeType = require(Root.Enums.NodeType)

local isInlineElement = require(Packages.InlineLayout).Utils.isInlineElement
local Dash = require(Packages.Dash)
local ReactIs = require(Packages.ReactIs)

export type NodeTypeConfig = {
	children: { [NodeType.NodeType]: boolean },
	validateRenderResult: (result: any) -> boolean,
}

local NodeTypeConfig = {
	[NodeType.Root] = {
		children = {
			[NodeType.Block] = true,
			[NodeType.TextBlock] = true,
		},
		validateRenderResult = function(result: any)
			return result ~= nil and ReactIs.isElement(result)
		end,
	},
	[NodeType.Block] = {
		children = {
			[NodeType.Block] = true,
			[NodeType.TextBlock] = true,
		},
		validateRenderResult = function(result: any)
			return result == nil or ReactIs.isElement(result) or Dash.all(result, ReactIs.isElement)
		end,
	},
	[NodeType.TextBlock] = {
		children = {
			[NodeType.InlineSpan] = true,
			[NodeType.InlineLeaf] = true,
		},
		validateRenderResult = function(result: any)
			return result == nil or ReactIs.isElement(result) or Dash.all(result, ReactIs.isElement)
		end,
	},
	[NodeType.InlineSpan] = {
		children = {
			[NodeType.InlineSpan] = true,
			[NodeType.InlineLeaf] = true,
		},
		validateRenderResult = function(result: any)
			return result == nil or isInlineElement(result) or Dash.all(result, isInlineElement)
		end,
	},
	[NodeType.InlineLeaf] = {
		children = {},
		validateRenderResult = function(result: any)
			return result == nil or isInlineElement(result)
		end,
	},
}

return NodeTypeConfig
