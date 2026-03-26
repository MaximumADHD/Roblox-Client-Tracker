--[[
	Shared utilities for processing and formatting tokens across different browsers
	(Storybook story and web documentation browser)
]]

local Foundation = script:FindFirstAncestor("Foundation")
local Types = require(Foundation.Components.Types)
type ColorStyle = Types.ColorStyle

export type TokenItem = {
	key: string,
	value: any,
	category: string,
	fullPath: string,
}

-- Helper function to detect ColorStyle tables (Color3 + Transparency)
local function isColorStyle(value: any): boolean
	return type(value) == "table"
		and value.Color3 ~= nil
		and typeof(value.Color3) == "Color3"
		and value.Transparency ~= nil
		and typeof(value.Transparency) == "number"
end

local function getRoundedNumber(value: number): number
	return math.round(value * 1000) / 1000
end

local function getRGBAValues(color: Color3, transparency: number?): (number, number, number, number?)
	local r, g, b = math.round(color.R * 255), math.round(color.G * 255), math.round(color.B * 255)
	if transparency then
		return r, g, b, getRoundedNumber(1 - transparency)
	end
	return r, g, b
end

local function formatColorPreviewHTML(color: Color3, transparency: number?): string
	local r, g, b, a = getRGBAValues(color, transparency)
	return `<span class="color-preview" style="background-color: rgba({r},{g},{b},{a or 1});"></span>`
end

-- Format token values for display (text format)
local function formatTokenValue(value: any): string
	if typeof(value) == "Color3" then
		local r, g, b = getRGBAValues(value)
		return `rgb({r}, {g}, {b})`
	elseif typeof(value) == "number" then
		return tostring(getRoundedNumber(value))
	elseif isColorStyle(value) then
		local r, g, b, alpha = getRGBAValues(value.Color3, value.Transparency)
		return `rgba({r}, {g}, {b}, {alpha})`
	else
		return tostring(value)
	end
end

-- Format token values for HTML display (with color previews)
local function formatTokenValueHTML(value: any): string
	if typeof(value) == "Color3" then
		local r, g, b = getRGBAValues(value)
		local preview = formatColorPreviewHTML(value)
		return `<span class="color">{preview} rgb({r}, {g}, {b})</span>`
	elseif typeof(value) == "number" then
		return tostring(getRoundedNumber(value))
	elseif isColorStyle(value) then
		local r, g, b, alpha = getRGBAValues(value.Color3, value.Transparency)
		local preview = formatColorPreviewHTML(value.Color3, value.Transparency)
		return `<span class="color">{preview} rgba({r}, {g}, {b}, {alpha})</span>`
	else
		return tostring(value)
	end
end

-- Recursively collect tokens from a nested structure into a flat list
local function collectTokens(tokens: any, category: string, prefix: string?, flattenColors: boolean?): { TokenItem }
	local result = {}

	for key, value in tokens do
		local fullPath = if prefix then `{prefix}.{key}` else key

		if type(value) == "table" and not getmetatable(value) and not (flattenColors and isColorStyle(value)) then
			-- Recursively collect nested tokens
			local nestedTokens = collectTokens(value, category, fullPath, flattenColors)
			for _, token in nestedTokens do
				table.insert(result, token)
			end
		else
			-- This is a leaf token value
			table.insert(result, {
				key = key,
				value = value,
				category = category,
				fullPath = fullPath,
			})
		end
	end

	return result
end

-- Recursively collect tokens while preserving one level of subcategories
local function collectTokensWithSubcategories(
	tokens: any,
	category: string,
	prefix: string?,
	flattenColors: boolean?
): { [string]: { TokenItem } }
	local result = {}

	for key, value in tokens do
		local fullPath = if prefix then `{prefix}.{key}` else key

		if type(value) == "table" then
			-- Check if we should flatten this color token
			if flattenColors and isColorStyle(value) then
				-- Create a flattened color token
				local subcategory = if prefix then prefix:split(".")[1] else "Default"
				if not result[subcategory] then
					result[subcategory] = {}
				end
				table.insert(result[subcategory], {
					key = key,
					value = value,
					category = category,
					fullPath = fullPath,
				})
			else
				-- Check if this is a first-level subcategory (no prefix yet)
				if not prefix then
					-- This is a subcategory, collect its tokens
					local subcategoryTokens = collectTokens(value, category, key, flattenColors)
					if #subcategoryTokens > 0 then
						result[key] = subcategoryTokens
					end
				else
					-- Recursively collect nested tokens
					local nestedTokens = collectTokens(value, category, fullPath, flattenColors)
					local subcategory = prefix:split(".")[1]
					if not result[subcategory] then
						result[subcategory] = {}
					end
					for _, token in nestedTokens do
						table.insert(result[subcategory], token)
					end
				end
			end
		else
			-- This is a leaf token value
			local subcategory = if prefix then prefix:split(".")[1] else "Default"
			if not result[subcategory] then
				result[subcategory] = {}
			end
			table.insert(result[subcategory], {
				key = key,
				value = value,
				category = category,
				fullPath = fullPath,
			})
		end
	end

	return result
end

-- Detect if a category has subcategories by examining its structure
local function hasSubcategories(categoryTokens: any): boolean
	-- Check if any of the first-level values are tables (indicating subcategories)
	for _, value in categoryTokens do
		if type(value) == "table" then
			-- Check if this looks like a subcategory (contains nested tokens, not a direct token value)
			local hasNestedTokens = false
			for _, nestedValue in value do
				if
					type(nestedValue) == "table"
					or typeof(nestedValue) == "Color3"
					or typeof(nestedValue) == "number"
				then
					hasNestedTokens = true
					break
				end
			end
			if hasNestedTokens then
				return true
			end
		end
	end
	return false
end

-- Sort tokens with natural number ordering
-- Handles patterns like "Orange_100", "Orange_200", etc. so that Orange_100 comes before Orange_200
local numberTokenPattern = "(%u%a+)_(%d+)%.?(%u?%w*)"
local numberValuePattern = "| (%-?[%d.]+) |$"
local function sortTokens(a: string, b: string, allNumeric: boolean?): boolean
	-- Handle token names with numbers (e.g., Orange_100, Orange_200)
	if a:find(numberTokenPattern) and b:find(numberTokenPattern) then
		local aPrefix, aNumber, aRemainder = a:match(numberTokenPattern)
		local bPrefix, bNumber, bRemainder = b:match(numberTokenPattern)
		if aPrefix == bPrefix then
			if aNumber == bNumber then
				return aRemainder < bRemainder
			end
			return tonumber(aNumber) < tonumber(bNumber)
		end
		return a < b
	end

	if allNumeric then
		local aNumber = a:match(numberValuePattern)
		local bNumber = b:match(numberValuePattern)
		return tonumber(aNumber) < tonumber(bNumber)
	end

	-- Default to lexicographic sorting
	return a < b
end

-- Ordered token categories for consistent display across tools
local orderedTokenCategories = {
	"Color",
	"Stroke",
	"Size",
	"Radius",
	"Padding",
	"Margin",
	"Gap",
	"Typography",
	"FontSize",
	"FontWeight",
	"LineHeight",
	"Ease",
	"Time",
	"Inverse",
	"DarkMode",
	"LightMode",
	"Config",
}

return {
	isColorStyle = isColorStyle,
	formatColorPreviewHTML = formatColorPreviewHTML,
	formatTokenValue = formatTokenValue,
	formatTokenValueHTML = formatTokenValueHTML,
	collectTokens = collectTokens,
	collectTokensWithSubcategories = collectTokensWithSubcategories,
	hasSubcategories = hasSubcategories,
	sortTokens = sortTokens,
	orderedTokenCategories = orderedTokenCategories,
}
