local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local Dropdown = require(Foundation.Components.Dropdown)
local InputSize = require(Foundation.Enums.InputSize)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local getTokenOverridesStore = require(Foundation.Utility.Stories.TokenOverridesStore)
local useTokens = require(Foundation.Providers.Style.useTokens)

type DropdownItem = Dropdown.DropdownItem

local function getSourceCategories(tokens: any): { string }
	local categories = { "Surface" }
	if tokens and tokens.Color and tokens.Color.Extended then
		for subCategory in tokens.Color.Extended do
			table.insert(categories, subCategory)
		end
	end
	table.sort(categories)
	return categories
end

local function getTokensInSourceCategory(tokens: any, category: string): { { key: string, path: string } }
	local result = {}

	if not tokens or not tokens.Color then
		return result
	end

	if category == "Surface" then
		if tokens.Color.Surface then
			for key in tokens.Color.Surface do
				table.insert(result, {
					key = key,
					path = `Color.Surface.{key}`,
				})
			end
		end
	else
		local extendedTokens = tokens.Color.Extended and tokens.Color.Extended[category]
		if extendedTokens then
			for key in extendedTokens do
				table.insert(result, {
					key = key,
					path = `Color.Extended.{category}.{key}`,
				})
			end
		end
	end

	table.sort(result, function(a, b)
		return a.key < b.key
	end)

	return result
end

local function getTargetTokens(tokens: any, category: string): { { key: string, path: string } }
	local result = {}

	if not tokens or not tokens.Color then
		return result
	end

	local categoryTokens = tokens.Color[category]

	if categoryTokens then
		for key in categoryTokens do
			table.insert(result, {
				key = key,
				path = `Color.{category}.{key}`,
			})
		end
	end

	table.sort(result, function(a, b)
		return a.key < b.key
	end)

	return result
end

local function TokenRow(props: {
	tokenKey: string,
	tokenPath: string,
	tokens: any,
	currentSourcePath: string?,
	onChanged: (string?) -> (),
})
	local sourceCategories = getSourceCategories(props.tokens)

	local initialCategory = nil
	if props.currentSourcePath then
		if string.find(props.currentSourcePath, "Color.Surface.") then
			initialCategory = "Surface"
		else
			local match = string.match(props.currentSourcePath, "Color%.Extended%.([^.]+)%.")
			if match then
				initialCategory = match
			end
		end
	end

	local selectedCategory, setSelectedCategory = React.useState(initialCategory :: string?)

	local categoryItems: { DropdownItem } = {
		{ id = "__none__", text = "(No override)" },
	}
	for _, cat in sourceCategories do
		table.insert(categoryItems, { id = cat, text = cat })
	end

	local valueItems: { DropdownItem } = {
		{ id = "__select__", text = "Select..." },
	}
	if selectedCategory then
		local sourceTokens = getTokensInSourceCategory(props.tokens, selectedCategory)
		for _, token in sourceTokens do
			table.insert(valueItems, { id = token.path, text = token.key })
		end
	end

	local hasOverride = props.currentSourcePath ~= nil

	return React.createElement(View, {
		tag = "row gap-small auto-xy align-y-center",
	}, {
		Label = React.createElement(View, {
			tag = "auto-y",
			Size = UDim2.fromOffset(100, 0),
			LayoutOrder = 1,
		}, {
			Text = React.createElement(Text, {
				Text = props.tokenKey,
				tag = "auto-xy text-label-small",
			}),
		}),
		CategoryDropdown = React.createElement(Dropdown.Root, {
			label = "",
			value = selectedCategory or "__none__",
			items = categoryItems,
			size = InputSize.Small,
			onItemChanged = function(id)
				if id == "__none__" then
					setSelectedCategory(nil :: any)
					props.onChanged(nil)
				else
					setSelectedCategory(id :: string)
					props.onChanged(nil)
				end
			end,
			width = UDim.new(0, 120),
			LayoutOrder = 2,
		}),
		ValueDropdown = if selectedCategory
			then React.createElement(Dropdown.Root, {
				label = "",
				value = props.currentSourcePath or "__select__",
				items = valueItems,
				size = InputSize.Small,
				onItemChanged = function(id)
					if id == "__select__" then
						props.onChanged(nil)
					else
						props.onChanged(id :: string)
					end
				end,
				width = UDim.new(0, 140),
				LayoutOrder = 3,
			})
			else nil,
		ResetButton = if hasOverride
			then React.createElement(Button, {
				text = "Reset",
				size = InputSize.Small,
				variant = ButtonVariant.Standard,
				onActivated = function()
					setSelectedCategory(nil :: any)
					props.onChanged(nil)
				end,
				LayoutOrder = 4,
			})
			else nil,
	})
end

local function createCategoryStory(category: string)
	return function()
		local tokens = useTokens()
		local store = getTokenOverridesStore()

		local overrides, setOverrides = React.useState(function()
			return store.getTokenOverrides() or {}
		end)

		local targetTokens = getTargetTokens(tokens, category)

		local function handleOverrideChanged(targetPath: string, sourcePath: string?)
			setOverrides(function(current)
				local newOverrides = table.clone(current)
				if sourcePath then
					newOverrides[targetPath] = sourcePath
				else
					newOverrides[targetPath] = nil
				end
				return newOverrides
			end)
		end

		React.useEffect(function()
			store.setTokenOverrides(if next(overrides) then overrides else nil)
		end, { overrides } :: { unknown })

		return React.createElement(
			View,
			{
				tag = "col gap-xsmall auto-xy",
			},
			Dash.map(targetTokens, function(targetToken)
				return React.createElement(TokenRow, {
					key = targetToken.path,
					tokenKey = targetToken.key,
					tokenPath = targetToken.path,
					tokens = tokens,
					currentSourcePath = overrides[targetToken.path],
					onChanged = function(sourcePath)
						handleOverrideChanged(targetToken.path, sourcePath)
					end,
				})
			end)
		)
	end
end

return {
	summary = "Configure token overrides that apply to all other stories",
	stories = Dash.map({
		"Surface",
		"Shift",
		"OverMedia",
		"ActionAlert",
		"ActionEmphasis",
		"ActionSoftEmphasis",
		"ActionStandard",
		"ActionSubtle",
		"ActionLink",
		"ActionUtility",
		"Content",
		"Stroke",
		"System",
		"Common",
	}, function(category)
		return {
			name = category,
			story = createCategoryStory(category),
		}
	end),
}
