-- Implements merge of style variants.
-- Close to https://cva.style/docs/getting-started/variants and https://www.tailwind-variants.org/docs/slots#slots-with-variants
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)

local Types = require(Foundation.Components.Types)

export type VariantProps = { [string]: { [string]: any } }

local function tagToTable(tag: Types.Tags)
	if type(tag) == "string" then
		return {
			[tag] = true,
		}
	end
	return tag
end

local function mergeTags(a: Types.Tags?, b: Types.Tags?)
	if not a then
		return b
	end
	if not b then
		return a
	end

	-- If either input is a table, convert both to tables and merge
	if type(a) == "table" or type(b) == "table" then
		local aTable = tagToTable(a)
		local bTable = tagToTable(b)
		return Dash.join(aTable, bTable)
	end

	-- Both are strings, concatenate them
	return `{a} {b}`
end

-- Merges props from b to a, overwriting props already existing in a. Except for the tag property.
local function mergeProps(a: { [string]: unknown }, b: { [string]: unknown })
	local res = Dash.join(a, b)
	res.tag = mergeTags(a.tag :: Types.Tags, b.tag :: Types.Tags)
	return res
end

-- Merges all the given style variant tables into one.
-- Tags are merged into one string. For the rest props the latest wins.
function composeStyleVariant(source: VariantProps, ...: VariantProps): VariantProps
	local result = Dash.copy(source)
	Dash.forEachArgs(function(arg)
		if arg == nil then
			return
		end
		for key, value in arg do
			result[key] = mergeProps(result[key] or {}, value)
		end
	end, ...)
	return result
end

return composeStyleVariant
