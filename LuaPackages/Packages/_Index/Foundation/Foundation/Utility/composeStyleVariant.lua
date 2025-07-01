-- Implements merge of style variants.
-- Close to https://cva.style/docs/getting-started/variants and https://www.tailwind-variants.org/docs/slots#slots-with-variants
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)

export type VariantProps = { [string]: { [string]: any } }

-- Merges props from b to a, overwriting props already existing in a. Except for the tag property.
local function mergeProps(a: { [string]: unknown }, b: { [string]: unknown })
	local res = Dash.join(a, b)
	res.tag = if a.tag and b.tag then `{a.tag} {b.tag}` else if a.tag then a.tag else b.tag
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
