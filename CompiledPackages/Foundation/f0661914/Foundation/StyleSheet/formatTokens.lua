local Foundation = script:FindFirstAncestor("Foundation")

local Tokens = require(Foundation.Providers.Style.Tokens)
local Types = require(script.Parent.Rules.Types)

type Tokens = Tokens.Tokens
type FormattedTokens = Types.FormattedTokens

local KeepPrefix = {
	System = true,
}

local function pascalToKebab(str: string)
	-- Replace underscores with hyphens
	str = str:gsub("_", "-")

	-- Convert PascalCase to kebab-case
	local result = string.gsub(str, "(%u)", function(c)
		return "-" .. c:lower()
	end)

	-- Remove the leading hyphen if it exists
	if result:sub(1, 1) == "-" then
		result = result:sub(2, #result)
	end

	return result
end

-- selene: allow(high_cyclomatic_complexity)
local function formatTokens(tokens: Tokens?): FormattedTokens
	local colors = {}
	local variants = {}
	local strokes = {}
	local gaps = {}
	local radii = {}
	local sizes = {}
	local typography = {}
	local paddings = {}
	local margins = {}
	local gutters = {}
	local formattedTokens = {
		colors = colors,
		variants = variants,
		strokes = strokes,
		gaps = gaps,
		radii = radii,
		sizes = sizes,
		typography = typography,
		paddings = paddings,
		margins = margins,
		gutters = gutters,
	}

	if tokens == nil or next(tokens) == nil then
		return formattedTokens
	end

	for name, value in tokens.Color :: any do
		if value.Background then
			-- ActionX color
			variants[pascalToKebab(name)] = value
		else
			-- General colors
			colors[name] = {}
			for innerName, innerValue in value do
				local tagName = if KeepPrefix[name] then name .. innerName else innerName
				colors[name][pascalToKebab(tagName)] = innerValue
			end
		end
	end

	for name, value in tokens.Inverse :: any do
		-- Generate only Content colors on purpose
		if name == "Content" then
			for innerName, innerValue in value do
				local tagName = if KeepPrefix[name] then name .. innerName else innerName
				colors[name][`inverse-{pascalToKebab(tagName)}`] = innerValue
			end
		end
	end

	for name, value in tokens.Stroke do
		table.insert(strokes, { name = pascalToKebab(name), size = value })
	end

	table.insert(strokes, { name = "none", size = 0 })

	table.sort(strokes, function(a, b)
		return a.size < b.size
	end)

	for name, value in tokens.Gap do
		table.insert(gaps, { name = string.lower(name), size = UDim.new(0, value) })
	end

	table.sort(gaps, function(a, b)
		return a.size.Offset < b.size.Offset
	end)

	for name, value in tokens.Radius do
		table.insert(radii, { name = string.lower(name), size = UDim.new(0, value) })
	end

	table.sort(radii, function(a, b)
		return a.size.Offset < b.size.Offset
	end)

	for name, value in tokens.Size do
		local number = string.split(name, "_")[2]
		table.insert(sizes, { name = pascalToKebab(number), size = UDim.new(0, value) })
	end

	-- Add full size
	table.insert(sizes, { name = "full", size = UDim.new(1, 0) })

	table.sort(sizes, function(a, b)
		return a.size.Offset < b.size.Offset
	end)

	for name, value in tokens.Typography do
		typography[pascalToKebab(name)] = {
			Font = value.Font,
			TextSize = value.FontSize,
			LineHeight = value.LineHeight,
		}
	end

	for name, value in tokens.Padding do
		table.insert(paddings, { name = string.lower(name), size = UDim.new(0, value) })
	end

	table.sort(paddings, function(a, b)
		return a.size.Offset < b.size.Offset
	end)

	for name, value in tokens.Margin do
		table.insert(margins, { name = string.lower(name), size = UDim.new(0, value) })
	end

	table.sort(margins, function(a, b)
		return a.size.Offset < b.size.Offset
	end)

	for name, value in tokens.Gutter do
		table.insert(gutters, { name = string.lower(name), size = UDim.new(0, value) })
	end

	table.sort(gutters, function(a, b)
		return a.size.Offset < b.size.Offset
	end)

	return formattedTokens
end

return formatTokens
