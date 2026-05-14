local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Button = require(Foundation.Components.Button)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local ColorPicker = require(Foundation.Components.ColorPicker)
local Dropdown = require(Foundation.Components.Dropdown)
local Image = require(Foundation.Components.Image)
local InputSize = require(Foundation.Enums.InputSize)
local Interactable = require(Foundation.Components.Interactable)
local Popover = require(Foundation.Components.Popover)
local SegmentedControl = require(Foundation.Components.SegmentedControl)
local Text = require(Foundation.Components.Text)
local TokenProcessingUtilities = require(script.Parent.TokenProcessingUtilities)
local View = require(Foundation.Components.View)

local PopoverSide = require(Foundation.Enums.PopoverSide)
local getTokenOverridesStore = require(Foundation.Utility.Stories.TokenOverridesStore)
local useTokens = require(Foundation.Providers.Style.useTokens)

type DropdownItem = Dropdown.DropdownItem

-- Story only supports color tokens: path string or ColorStyle literal.
type StoryColorOverride = string | { Color3: Color3, Transparency: number }

type OverrideKind = "None" | "Path" | "Custom"

local OverrideKind = {
	None = "None" :: "None",
	Path = "Path" :: "Path",
	Custom = "Custom" :: "Custom",
}

local function isColorStyleLiteral(value: unknown): boolean
	return type(value) == "table"
		and typeof((value :: any).Color3) == "Color3"
		and typeof((value :: any).Transparency) == "number"
end

local function overrideKind(value: StoryColorOverride?): OverrideKind
	if value == nil then
		return OverrideKind.None
	end
	if type(value) == "string" then
		return OverrideKind.Path
	end
	if isColorStyleLiteral(value) then
		return OverrideKind.Custom
	end
	return OverrideKind.None
end

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

local function initialCategoryFromPath(sourcePath: string): string?
	if string.find(sourcePath, "Color.Surface.") then
		return "Surface"
	end
	local match = string.match(sourcePath, "Color%.Extended%.([^.]+)%.")
	return match
end

local function defaultLiteralFromTarget(tokens: any, targetPath: string): { Color3: Color3, Transparency: number }
	local target = TokenProcessingUtilities.getTokenValue(tokens, targetPath)
	if isColorStyleLiteral(target) then
		return {
			Color3 = (target :: any).Color3,
			Transparency = (target :: any).Transparency,
		}
	end
	local fallback = tokens.Color.Extended.Magenta.Magenta_700
	return {
		Color3 = fallback.Color3,
		Transparency = fallback.Transparency,
	}
end

local function TokenRow(props: {
	tokenKey: string,
	tokenPath: string,
	tokens: any,
	currentOverride: StoryColorOverride?,
	onChanged: (StoryColorOverride?) -> (),
})
	local sourceCategories = getSourceCategories(props.tokens)

	local initialCategory = nil
	if type(props.currentOverride) == "string" then
		initialCategory = initialCategoryFromPath(props.currentOverride :: string)
	end

	local selectedCategory, setSelectedCategory = React.useState(initialCategory :: string?)
	local kind, setKind = React.useState(overrideKind(props.currentOverride) :: OverrideKind)
	local isColorPopoverOpen, setIsColorPopoverOpen = React.useState(false)
	local popoverDraft, setPopoverDraft = React.useState(nil :: { Color3: Color3, alpha: number }?)
	local popoverPickerKey, setPopoverPickerKey = React.useState(0)
	local originalLiteralRef = React.useRef(nil :: { Color3: Color3, Transparency: number }?)
	local tokens = useTokens()

	React.useEffect(function()
		if props.currentOverride ~= nil then
			setKind(overrideKind(props.currentOverride))
			if type(props.currentOverride) == "string" then
				setSelectedCategory(initialCategoryFromPath(props.currentOverride :: string))
			else
				setSelectedCategory(nil :: any)
			end
		else
			-- Clearing the override must not jump Path → None (e.g. Custom → Path clears the literal).
			setKind(function(prevKind: OverrideKind): OverrideKind
				if prevKind == OverrideKind.Path or prevKind == OverrideKind.None then
					return prevKind
				end
				return OverrideKind.None
			end)
			setSelectedCategory(nil :: any)
		end
	end, { props.currentOverride } :: { unknown })

	React.useEffect(function()
		if kind ~= OverrideKind.Custom then
			setIsColorPopoverOpen(false)
		end
	end, { kind })

	local displayColor, displayOpacity = React.useMemo(function(): (Color3, number)
		if isColorPopoverOpen and popoverDraft then
			return popoverDraft.Color3, popoverDraft.alpha
		end
		if isColorStyleLiteral(props.currentOverride) then
			local lit = props.currentOverride :: any
			return lit.Color3, 1 - lit.Transparency
		end
		return tokens.Color.Extended.Magenta.Magenta_700.Color3, 1
	end, { isColorPopoverOpen, popoverDraft, props.currentOverride } :: { unknown })

	local colorHex = React.useMemo(function()
		local r = math.floor(displayColor.R * 255)
		local g = math.floor(displayColor.G * 255)
		local b = math.floor(displayColor.B * 255)
		return string.format("#%02X%02X%02X", r, g, b)
	end, { displayColor })

	local categoryItems: { DropdownItem } = {
		{ id = "__none__", text = "(Pick category)" },
	}
	for _, cat in sourceCategories do
		table.insert(categoryItems, { id = cat, text = cat })
	end

	local valueItems: { DropdownItem } = {
		{ id = "__select__", text = "Select token…" },
	}
	if selectedCategory then
		local sourceTokens = getTokensInSourceCategory(props.tokens, selectedCategory)
		for _, token in sourceTokens do
			table.insert(valueItems, { id = token.path, text = token.key })
		end
	end

	local hasOverride = props.currentOverride ~= nil
	local showCustomColorAnchor = kind == OverrideKind.Custom and isColorStyleLiteral(props.currentOverride)

	return React.createElement(View, {
		tag = "col gap-small auto-xy",
	}, {
		HeaderRow = React.createElement(View, {
			tag = "row gap-small auto-xy align-y-center",
			LayoutOrder = 1,
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
			OverrideMode = React.createElement(SegmentedControl, {
				segments = Dash.map(Dash.values(OverrideKind), function(k: OverrideKind)
					return { id = k, text = k }
				end),
				value = kind :: number | string,
				size = InputSize.Small,
				onActivated = function(id: number | string)
					if id == OverrideKind.None then
						setKind(OverrideKind.None)
						setSelectedCategory(nil :: any)
						props.onChanged(nil)
					elseif id == OverrideKind.Path then
						setKind(OverrideKind.Path)
						setSelectedCategory(nil :: any)
						if type(props.currentOverride) ~= "string" then
							props.onChanged(nil)
						end
					else
						setKind(OverrideKind.Custom)
						setSelectedCategory(nil :: any)
						props.onChanged(defaultLiteralFromTarget(props.tokens, props.tokenPath))
					end
				end,
				LayoutOrder = 2,
			}),
			PathCategory = if kind == OverrideKind.Path
				then React.createElement(Dropdown.Root, {
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
					LayoutOrder = 3,
				})
				else nil,
			PathValue = if kind == OverrideKind.Path and selectedCategory
				then React.createElement(Dropdown.Root, {
					label = "",
					value = if type(props.currentOverride) == "string"
						then props.currentOverride :: string
						else "__select__",
					items = valueItems,
					size = InputSize.Small,
					onItemChanged = function(id)
						if id == "__select__" then
							props.onChanged(nil)
						else
							props.onChanged(id :: string)
						end
					end,
					width = UDim.new(0, 200),
					LayoutOrder = 4,
				})
				else nil,
			CustomColorPopover = if showCustomColorAnchor
				then React.createElement(Popover.Root, {
					isOpen = isColorPopoverOpen,
				}, {
					Anchor = React.createElement(
						Popover.Anchor,
						{ LayoutOrder = 5 },
						React.createElement(View, {
							onActivated = function()
								if isColorPopoverOpen then
									setIsColorPopoverOpen(false)
									setPopoverDraft(nil :: any)
								else
									local lit = props.currentOverride :: any
									originalLiteralRef.current = {
										Color3 = lit.Color3,
										Transparency = lit.Transparency,
									}
									setPopoverDraft({
										Color3 = lit.Color3,
										alpha = 1 - lit.Transparency,
									})
									setPopoverPickerKey(function(k: number)
										return k + 1
									end)
									setIsColorPopoverOpen(true)
								end
							end,
							tag = "row align-y-center gap-small size-2500-800 padding-x-small radius-medium bg-shift-200 clip",
						}, {
							Swatch = React.createElement(View, {
								LayoutOrder = 1,
								tag = "radius-small size-500-500",
							}, {
								Checkerboard = React.createElement(Image, {
									Image = "component_assets/checkerboard_12",
									ScaleType = Enum.ScaleType.Tile,
									TileSize = UDim2.fromOffset(10, 10),
									tag = "size-full radius-small",
									ZIndex = 1,
								}),
								ColorOverlay = React.createElement(View, {
									tag = "size-full radius-small",
									backgroundStyle = {
										Color3 = displayColor,
										Transparency = 1 - displayOpacity,
									},
									ZIndex = 2,
								}),
							}),
							HexLabel = React.createElement(Text, {
								LayoutOrder = 2,
								Text = colorHex,
								tag = "auto-xy size-0-0 text-body-small text-truncate-end content-emphasis",
							}),
						})
					),

					Content = React.createElement(
						Popover.Content,
						{
							side = PopoverSide.Right,
							hasArrow = true,
							onPressedOutside = function()
								setIsColorPopoverOpen(false)
								setPopoverDraft(nil :: any)
							end,
						},
						if isColorPopoverOpen and popoverDraft
							then React.createElement(View, {
								tag = "col gap-medium padding-medium",
								Size = UDim2.fromOffset(300, 300),
							}, {
								Hint = React.createElement(Text, {
									Text = "Color + alpha → token Color3 and Transparency.",
									tag = "auto-xy text-caption-small text-subtle",
									LayoutOrder = 0,
								}),
								Picker = React.createElement(ColorPicker, {
									key = `{props.tokenPath}-popover-{popoverPickerKey}`,
									initialColor = popoverDraft.Color3,
									initialAlpha = popoverDraft.alpha,
									onColorChanged = function(newColor: Color3, _brick: BrickColor?)
										setPopoverDraft(function(d)
											if not d then
												return nil :: any
											end
											return { Color3 = newColor, alpha = d.alpha }
										end)
									end,
									onAlphaChanged = function(newAlpha: number)
										setPopoverDraft(function(d)
											if not d then
												return nil :: any
											end
											return { Color3 = d.Color3, alpha = newAlpha }
										end)
									end,
									LayoutOrder = 1,
								}),
								Actions = React.createElement(View, {
									tag = "row align-x-right gap-small size-full-0 auto-y",
									LayoutOrder = 2,
								}, {
									CancelButton = React.createElement(Interactable, {
										onActivated = function()
											local orig = originalLiteralRef.current
											if orig then
												props.onChanged({
													Color3 = orig.Color3,
													Transparency = orig.Transparency,
												})
											end
											setIsColorPopoverOpen(false)
											setPopoverDraft(nil :: any)
										end,
										Size = UDim2.new(0, 0, 0, 0),
										AutomaticSize = Enum.AutomaticSize.XY,
									}, {
										CancelLabel = React.createElement(View, {
											tag = "auto-xy padding-small radius-small",
											backgroundStyle = tokens.Color.Surface.Surface_100,
											stroke = {
												Color = tokens.Color.System.Neutral.Color3,
												Transparency = tokens.Color.System.Neutral.Transparency,
												Thickness = 1,
											},
										}, {
											Text = React.createElement(Text, {
												Text = "Cancel",
												fontStyle = tokens.Typography.BodyMedium,
												textStyle = tokens.Color.Content.Default,
												tag = "auto-xy",
											}),
										}),
									}),
									DoneButton = React.createElement(Interactable, {
										onActivated = function()
											local d = popoverDraft
											if d then
												props.onChanged({
													Color3 = d.Color3,
													Transparency = 1 - d.alpha,
												})
											end
											setIsColorPopoverOpen(false)
											setPopoverDraft(nil :: any)
										end,
										Size = UDim2.new(0, 0, 0, 0),
										AutomaticSize = Enum.AutomaticSize.XY,
									}, {
										DoneLabel = React.createElement(View, {
											tag = "auto-xy padding-small radius-small",
											backgroundStyle = tokens.Color.Surface.Surface_100,
											stroke = {
												Color = tokens.Color.System.Neutral.Color3,
												Transparency = tokens.Color.System.Neutral.Transparency,
												Thickness = 1,
											},
										}, {
											Text = React.createElement(Text, {
												Text = "Done",
												fontStyle = tokens.Typography.BodyMedium,
												textStyle = tokens.Color.Content.Default,
												tag = "auto-xy",
											}),
										}),
									}),
								}),
							})
							else nil
					),
				})
				else nil,
			ResetButton = if hasOverride
				then React.createElement(Button, {
					text = "Reset",
					size = InputSize.Small,
					variant = ButtonVariant.Standard,
					onActivated = function()
						setKind(OverrideKind.None)
						setSelectedCategory(nil :: any)
						props.onChanged(nil)
					end,
					LayoutOrder = 6,
				})
				else nil,
		}),
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

		local function handleOverrideChanged(targetPath: string, value: StoryColorOverride?)
			setOverrides(function(current)
				local newOverrides = table.clone(current)
				if value ~= nil then
					newOverrides[targetPath] = value
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
				tag = "col gap-xsmall auto-xy padding-medium",
			},
			Dash.map(targetTokens, function(targetToken)
				return React.createElement(TokenRow, {
					key = targetToken.path,
					tokenKey = targetToken.key,
					tokenPath = targetToken.path,
					tokens = tokens,
					currentOverride = overrides[targetToken.path] :: StoryColorOverride?,
					onChanged = function(value)
						handleOverrideChanged(targetToken.path, value)
					end,
				})
			end)
		)
	end
end

return {
	summary = "Configure token overrides (path remap or custom color) for all other stories",
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
