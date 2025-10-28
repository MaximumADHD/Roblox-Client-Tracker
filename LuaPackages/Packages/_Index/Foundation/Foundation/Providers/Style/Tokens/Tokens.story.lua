local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Dash = require(Packages.Dash)

local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)

local Theme = require(Foundation.Enums.Theme)
local Device = require(Foundation.Enums.Device)
local Tokens = require(Foundation.Providers.Style.Tokens)
local TokenProcessingUtilities = require(Foundation.Providers.Style.Tokens.TokenProcessingUtilities)

type StoryProps = {
	theme: string,
	platform: string,
	controls: {
		searchText: string,
		flattenColors: boolean,
		alternateRowBackgrounds: boolean,
	},
}

-- Use shared utilities
local orderedTokenCategories = TokenProcessingUtilities.orderedTokenCategories
local formatTokenValue = TokenProcessingUtilities.formatTokenValue
local isColorStyle = TokenProcessingUtilities.isColorStyle
local collectTokens = TokenProcessingUtilities.collectTokens
local collectTokensWithSubcategories = TokenProcessingUtilities.collectTokensWithSubcategories
local hasSubcategories = TokenProcessingUtilities.hasSubcategories
local sortTokens = TokenProcessingUtilities.sortTokens

-- Helper to filter and sort tokens based on search text
local function filterAndSortTokens(tokens, searchText: string, category: string)
	local result = {}

	for _, token in tokens do
		local searchLower = string.lower(searchText)
		-- Build full hierarchical path for searching
		local fullSearchPath = category .. "." .. token.fullPath
		local keyLower = string.lower(fullSearchPath)

		if searchText == "" or string.find(keyLower, searchLower, 1, true) then
			table.insert(result, token)
		end
	end

	local notExclusivelyNumbers = Dash.some(result, function(token)
		return typeof(token.value) ~= "number"
	end)
	local allNumeric = not notExclusivelyNumbers

	-- Sort tokens using natural sort (handles numbers correctly)
	table.sort(result, function(a, b)
		return sortTokens(
			a.fullPath .. if allNumeric then `| {a.value} |` else "",
			b.fullPath .. if allNumeric then `| {b.value} |` else "",
			allNumeric
		)
	end)

	return result
end

local function TokenItem(props: {
	token: { key: string, value: any, category: string, fullPath: string },
	category: string?,
	subcategory: string?,
	LayoutOrder: number?,
	isOdd: boolean?,
	alternateRowBackgrounds: boolean?,
})
	local token = props.token
	local isColor = typeof(token.value) == "Color3"
	local isColorStyleValue = isColorStyle(token.value)

	return React.createElement(View, {
		tag = "size-full-0 auto-y row gap-small align-center"
			.. (if props.isOdd and props.alternateRowBackgrounds then " bg-surface-100" else ""),
		LayoutOrder = props.LayoutOrder,
	}, {
		Name = React.createElement(Text, {
			tag = "auto-y text-body-medium text-align-x-left",
			Size = UDim2.fromScale(0.5, 0),
			Text = `{props.category}.{token.fullPath}`,
			LayoutOrder = 1,
		}),
		ColorPreview = if isColor or isColorStyleValue
			then React.createElement(View, {
				tag = "size-500-500 radius-small",
				backgroundStyle = if isColor
					then {
						Color3 = token.value,
						Transparency = 0,
					}
					else if isColorStyleValue then token.value else nil,
				LayoutOrder = 2,
			})
			else nil,
		Value = React.createElement(Text, {
			tag = "size-0-0 auto-xy text-caption-large text-align-x-left",
			Text = formatTokenValue(token.value),
			LayoutOrder = 3,
		}),
	})
end

local function TokenSubsection(props: {
	subcategory: string,
	tokens: { any },
	searchText: string,
	category: string,
	LayoutOrder: number?,
	alternateRowBackgrounds: boolean?,
}): React.ReactNode
	local filteredTokens = React.useMemo(function()
		return filterAndSortTokens(props.tokens, props.searchText, props.category)
	end, { props.tokens :: unknown, props.searchText })

	if #filteredTokens == 0 then
		return nil
	end

	return React.createElement(View, {
		tag = "size-full-0 auto-y col gap-small",
		LayoutOrder = props.LayoutOrder,
	}, {
		SubHeader = React.createElement(Text, {
			Text = props.subcategory,
			tag = "size-full-0 auto-y text-title-medium text-align-x-left padding-top-medium",
			LayoutOrder = 1,
		}),

		TokensList = React.createElement(
			View,
			{
				tag = "size-full-0 auto-y col gap-small",
				LayoutOrder = 2,
			},
			Dash.map(filteredTokens, function(token, index)
				return React.createElement(TokenItem, {
					key = `{token.category}-{token.fullPath}`,
					token = token,
					category = props.category,
					subcategory = props.subcategory,
					LayoutOrder = index,
					isOdd = index % 2 == 1,
					alternateRowBackgrounds = props.alternateRowBackgrounds,
				})
			end)
		),
	})
end

local function TokenSection(props: {
	category: string,
	tokens: any,
	searchText: string,
	hasSubcategories: boolean?,
	LayoutOrder: number?,
	alternateRowBackgrounds: boolean?,
}): React.ReactNode
	-- Determine children content based on whether we have subcategories
	local children
	if props.hasSubcategories and type(props.tokens) == "table" then
		-- Tokens are organized by subcategories
		local subcategoryKeys = {}
		for subcategory in props.tokens do
			table.insert(subcategoryKeys, subcategory)
		end
		table.sort(subcategoryKeys, sortTokens)

		-- Filter out empty subcategories
		local hasVisibleSubcategories = false
		for _, subcategory in subcategoryKeys do
			local tokens = props.tokens[subcategory]
			if tokens and #tokens > 0 then
				-- Check if any tokens match search
				for _, token in tokens do
					local searchLower = string.lower(props.searchText)
					-- Build full hierarchical path for searching
					local fullSearchPath = `{props.category}.{token.fullPath}`
					local keyLower = string.lower(fullSearchPath)
					if props.searchText == "" or string.find(keyLower, searchLower, 1, true) then
						hasVisibleSubcategories = true
						break
					end
				end
			end
			if hasVisibleSubcategories then
				break
			end
		end

		if not hasVisibleSubcategories then
			return nil
		end

		children = Dash.map(subcategoryKeys, function(subcategory, index)
			return React.createElement(TokenSubsection, {
				key = subcategory,
				subcategory = subcategory,
				tokens = props.tokens[subcategory],
				searchText = props.searchText,
				category = props.category,
				LayoutOrder = 2 + index,
				alternateRowBackgrounds = props.alternateRowBackgrounds,
			})
		end)
	else
		-- Flat tokens (original behavior)
		local filteredTokens = React.useMemo(function()
			return filterAndSortTokens(props.tokens, props.searchText, props.category)
		end, { props.tokens :: unknown, props.searchText })

		if #filteredTokens == 0 then
			return nil
		end

		children = Dash.map(filteredTokens, function(token, index)
			return React.createElement(TokenItem, {
				key = `{token.category}-{token.fullPath}`,
				token = token,
				category = props.category,
				subcategory = nil, -- No subcategory for flat tokens
				LayoutOrder = 2 + index,
				isOdd = index % 2 == 1,
				alternateRowBackgrounds = props.alternateRowBackgrounds,
			})
		end)
	end

	-- Render the common structure with header and children
	return React.createElement(View, {
		tag = "size-full-0 auto-y col gap-medium",
		LayoutOrder = props.LayoutOrder,
	}, {
		Header = React.createElement(Text, {
			Text = props.category,
			tag = "size-full-0 auto-y text-heading-small text-align-x-left",
			LayoutOrder = 1,
		}),
		Content = React.createElement(View, {
			tag = "size-full-0 auto-y col gap-small",
			LayoutOrder = 2,
		}, children),
	})
end

local function TokensStory(props: StoryProps)
	local searchText = props.controls.searchText
	local flattenColors = props.controls.flattenColors
	local alternateRowBackgrounds = props.controls.alternateRowBackgrounds
	local selectedTheme = Theme[props.theme]
	local selectedDevice = Device[props.platform]

	-- Get tokens for current theme/device
	local allTokens = React.useMemo(function()
		local tokens = Tokens.getTokens(selectedDevice, selectedTheme)
		local collected: { [string]: any } = {}

		-- Show official categories, excluding Config and Semantic
		for _, category in orderedTokenCategories do
			if tokens[category] then
				local categoryTokens = tokens[category]

				if hasSubcategories(categoryTokens) then
					collected[category] = collectTokensWithSubcategories(categoryTokens, category, nil, flattenColors)
				else
					collected[category] = collectTokens(categoryTokens, category, nil, flattenColors)
				end
			end
		end

		return collected
	end, { selectedTheme, selectedDevice, flattenColors })

	return React.createElement(
		View,
		{
			tag = "size-full-0 auto-y col gap-xlarge",
		},
		(function()
			-- Use the predefined order for official categories
			local sortedCategories = {}
			for _, category in orderedTokenCategories do
				if allTokens[category] then
					table.insert(sortedCategories, category)
				end
			end

			return Dash.map(sortedCategories, function(category, index)
				-- Automatically detect if this category has subcategories by checking the collected tokens structure
				local categoryTokens = allTokens[category]
				local categoryHasSubcategories = false

				if categoryTokens and type(categoryTokens) == "table" then
					-- Check if the first value is a table with string keys (indicating subcategories)
					for key, value in categoryTokens do
						if type(value) == "table" and type(key) == "string" then
							categoryHasSubcategories = true
							break
						end
					end
				end

				return React.createElement(TokenSection, {
					key = category,
					category = category,
					tokens = categoryTokens,
					searchText = searchText,
					hasSubcategories = categoryHasSubcategories,
					LayoutOrder = index,
					alternateRowBackgrounds = alternateRowBackgrounds,
				})
			end)
		end)()
	)
end

return {
	name = "Tokens",
	story = TokensStory,
	controls = {
		searchText = "",
		flattenColors = true,
		alternateRowBackgrounds = false,
	},
}
