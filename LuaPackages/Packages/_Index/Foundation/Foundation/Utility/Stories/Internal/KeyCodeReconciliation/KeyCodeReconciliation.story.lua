local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Icon = require(Foundation.Components.Icon)
local KeyLabel = require(Foundation.Components.KeyLabel)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local MatrixGrid = MatrixGridShared.MatrixGrid
type MatrixGridRow = MatrixGridShared.MatrixGridRow
local BuilderIconKeycodeMappings = require(Foundation.Utility.Stories.Shared.BuilderIconKeycodeMappings)
local KeyCodeCategories = require(Foundation.Utility.Stories.Shared.KeyCodeCategories)
local KeyCodeNotes = require(Foundation.Utility.Stories.Shared.KeyCodeNotes)
local Types = require(Foundation.Components.Types)
type ColorStyleValue = Types.ColorStyleValue
local getBuilderIconForKeycode = require(Foundation.Utility.getBuilderIconForKeycode)
local getVisualForKey = require(Foundation.Components.KeyLabel.getVisualForKey)
local useTokens = require(Foundation.Providers.Style.useTokens)

local EMPTY_ROW_BACKGROUND_TRANSPARENCY = 0.9
local COMPLETE_ROW_BACKGROUND_TRANSPARENCY = 0.9
local HIGHLIGHTED_ROW_TAG = "padding-x-small radius-small size-full-0 auto-y"
local ERROR_ROW_TAG = "padding-x-small radius-medium size-full-0 auto-y"

local DEFAULT_KEY_LABEL_SIZE = UDim2.fromOffset(35, 35)
local KEYCODE_LABEL_COLUMN_WIDTH = 160
local COMPARISON_CELL_COLUMN_WIDTH = 64
local ALL_ICONS_CELL_COLUMN_WIDTH = 280
local NOTES_CELL_COLUMN_WIDTH = 220
local COMPARISON_COLUMN_HEADERS = {
	"KeyLabel",
	"Current",
	"PS4",
	"PS5",
	"Xbox",
	"All icons",
	"Notes",
}

local ALL_KEYCODES = Enum.KeyCode:GetEnumItems()
table.sort(ALL_KEYCODES, function(a, b)
	return a.Name < b.Name
end)

local function keyLabelHasContent(keyCode: Enum.KeyCode): boolean
	return getVisualForKey(keyCode).key ~= ""
end

local function isFullyEmptyKeyCode(keyCode: Enum.KeyCode): boolean
	if keyLabelHasContent(keyCode) then
		return false
	end
	if getBuilderIconForKeycode(keyCode) then
		return false
	end
	if BuilderIconKeycodeMappings.getIconForKeyCode(keyCode, "PS4") then
		return false
	end
	if BuilderIconKeycodeMappings.getIconForKeyCode(keyCode, "PS5") then
		return false
	end
	if BuilderIconKeycodeMappings.getIconForKeyCode(keyCode, "Xbox") then
		return false
	end
	if #BuilderIconKeycodeMappings.getAllIconsWithNamesForKeyCode(keyCode) > 0 then
		return false
	end
	return true
end

local function isFullyCompleteKeyCode(keyCode: Enum.KeyCode): boolean
	if not keyLabelHasContent(keyCode) then
		return false
	end
	if not getBuilderIconForKeycode(keyCode) then
		return false
	end
	if not BuilderIconKeycodeMappings.getIconForKeyCode(keyCode, "PS4") then
		return false
	end
	if not BuilderIconKeycodeMappings.getIconForKeyCode(keyCode, "PS5") then
		return false
	end
	if not BuilderIconKeycodeMappings.getIconForKeyCode(keyCode, "Xbox") then
		return false
	end
	if #BuilderIconKeycodeMappings.getAllIconsWithNamesForKeyCode(keyCode) == 0 then
		return false
	end
	return true
end

local function getKeyCodeNote(keyCode: Enum.KeyCode): string?
	local brokenMappingNote = BuilderIconKeycodeMappings.getBrokenKeycodeMappingNote(keyCode.Name)
	if brokenMappingNote then
		return brokenMappingNote
	end

	return KeyCodeNotes.getKeyCodeNote(keyCode)
end

local KEYCODES_BY_CATEGORY = KeyCodeCategories.groupByCategory(ALL_KEYCODES)

local NON_EMPTY_CATEGORIES = KeyCodeCategories.getNonEmptyCategories(KEYCODES_BY_CATEGORY)

local function Section(props: {
	layoutOrder: number,
	name: string,
	contentTag: string?,
	children: React.ReactNode,
})
	return React.createElement(View, {
		tag = "col gap-medium size-full-0 auto-y",
		LayoutOrder = props.layoutOrder,
	}, {
		Title = React.createElement(Text, {
			Text = props.name,
			tag = "auto-xy text-label-medium content-default",
			LayoutOrder = 1,
		}),
		Content = React.createElement(View, {
			tag = props.contentTag or "row gap-large auto-xy wrap",
			LayoutOrder = 2,
		}, props.children),
	})
end

local function BuilderIconCell(props: { icon: string? }): React.ReactNode
	if props.icon then
		return React.createElement(Icon, {
			name = props.icon,
		})
	end

	return React.createElement(Text, {
		Text = "—",
		tag = "auto-xy text-caption-small content-muted",
	})
end

local function AllIconsCell(props: { entries: { BuilderIconKeycodeMappings.KeycodeIconEntry } }): React.ReactNode
	if #props.entries == 0 then
		return React.createElement(Text, {
			Text = "—",
			tag = "auto-xy text-caption-small content-muted",
		})
	end

	local children: { [string]: React.ReactNode } = {}
	local layoutOrder = 0

	for index, entry in props.entries do
		layoutOrder += 1
		children[`Icon-{index}`] = React.createElement(Icon, {
			name = entry.icon,
			LayoutOrder = layoutOrder,
		})

		layoutOrder += 1
		children[`Name-{index}`] = React.createElement(Text, {
			Text = entry.name,
			tag = "auto-xy text-caption-small text-align-x-left content-muted",
			LayoutOrder = layoutOrder,
		})
	end

	return React.createElement(View, {
		tag = "row wrap align-y-center gap-xsmall auto-xy",
	}, children)
end

local function KeyCodeNoteCell(props: { note: string? }): React.ReactNode
	if props.note == nil or props.note == "" then
		return React.createElement(Text, {
			Text = "—",
			tag = "auto-xy text-caption-small content-muted",
		})
	end

	return React.createElement(Text, {
		Text = props.note,
		tag = "auto-xy text-caption-small text-wrap text-align-x-left content-muted",
	})
end

local function KeyLabelComparisonMatrix(props: { keyCodes: { Enum.KeyCode } }): React.ReactNode
	local tokens = useTokens()
	local emptyRowBackground: ColorStyleValue = {
		Color3 = tokens.Color.System.Alert.Color3,
		Transparency = EMPTY_ROW_BACKGROUND_TRANSPARENCY,
	}
	local completeRowBackground: ColorStyleValue = {
		Color3 = tokens.Color.System.Success.Color3,
		Transparency = COMPLETE_ROW_BACKGROUND_TRANSPARENCY,
	}
	local errorRowStroke = {
		Color = tokens.Color.System.Alert.Color3,
		Transparency = tokens.Color.System.Alert.Transparency,
		Thickness = 1,
	}

	return React.createElement(MatrixGrid, {
		labelColumnWidth = KEYCODE_LABEL_COLUMN_WIDTH,
		columnHeaders = COMPARISON_COLUMN_HEADERS,
		cellColumnWidths = {
			COMPARISON_CELL_COLUMN_WIDTH,
			COMPARISON_CELL_COLUMN_WIDTH,
			COMPARISON_CELL_COLUMN_WIDTH,
			COMPARISON_CELL_COLUMN_WIDTH,
			COMPARISON_CELL_COLUMN_WIDTH,
			ALL_ICONS_CELL_COLUMN_WIDTH,
			NOTES_CELL_COLUMN_WIDTH,
		},
		headerTextAlign = "left",
		cellAlign = "left",
		rows = Dash.map(props.keyCodes, function(keyCode): MatrixGridRow
			local allIconEntries = BuilderIconKeycodeMappings.getAllIconsWithNamesForKeyCode(keyCode)
			local isBrokenMapping = BuilderIconKeycodeMappings.isBrokenKeycodeMappingForKeyCode(keyCode)
			local isFullyEmpty = isFullyEmptyKeyCode(keyCode)
			local isFullyComplete = isFullyCompleteKeyCode(keyCode)

			return {
				label = React.createElement(Text, {
					Text = KeyCodeCategories.getKeyCodeName(keyCode),
					tag = "auto-xy text-caption-small text-align-x-left content-default",
				}),
				cells = {
					React.createElement(KeyLabel, {
						keyCode = keyCode,
						Size = DEFAULT_KEY_LABEL_SIZE,
					}),
					React.createElement(BuilderIconCell, {
						icon = getBuilderIconForKeycode(keyCode),
					}),
					React.createElement(BuilderIconCell, {
						icon = BuilderIconKeycodeMappings.getIconForKeyCode(keyCode, "PS4"),
					}),
					React.createElement(BuilderIconCell, {
						icon = BuilderIconKeycodeMappings.getIconForKeyCode(keyCode, "PS5"),
					}),
					React.createElement(BuilderIconCell, {
						icon = BuilderIconKeycodeMappings.getIconForKeyCode(keyCode, "Xbox"),
					}),
					React.createElement(AllIconsCell, {
						entries = allIconEntries,
					}),
					React.createElement(KeyCodeNoteCell, {
						note = getKeyCodeNote(keyCode),
					}),
				},
				rowTag = if isBrokenMapping
					then ERROR_ROW_TAG
					elseif isFullyEmpty or isFullyComplete then HIGHLIGHTED_ROW_TAG
					else nil,
				backgroundStyle = if isBrokenMapping or isFullyEmpty
					then emptyRowBackground
					elseif isFullyComplete then completeRowBackground
					else nil,
				stroke = if isBrokenMapping then errorRowStroke else nil,
			}
		end),
	})
end

local function CategoryComparisonTable(props: {
	categoryName: string,
	layoutOrder: number,
}): React.ReactNode
	local keyCodes = KEYCODES_BY_CATEGORY[props.categoryName]

	return React.createElement(Section, {
		layoutOrder = props.layoutOrder,
		name = `{props.categoryName} ({#keyCodes})`,
		contentTag = "auto-xy",
	}, {
		Matrix = React.createElement(KeyLabelComparisonMatrix, {
			keyCodes = keyCodes,
			LayoutOrder = 1,
		}),
	})
end

local UNMAPPED_KEYCODE_ICON_ENTRIES = BuilderIconKeycodeMappings.getUnmappedKeycodeIconEntries()

local function UnmappedIconsSection(): React.ReactNode
	local tokens = useTokens()
	local brokenLinkBackground = {
		Color3 = tokens.Color.System.Alert.Color3,
		Transparency = EMPTY_ROW_BACKGROUND_TRANSPARENCY,
	}
	local brokenLinkStroke = {
		Color = tokens.Color.System.Alert.Color3,
		Transparency = tokens.Color.System.Alert.Transparency,
		Thickness = 1,
	}

	return React.createElement(Section, {
		layoutOrder = 2,
		name = `Unmapped keycode icons ({#UNMAPPED_KEYCODE_ICON_ENTRIES})`,
		contentTag = "col gap-medium auto-xy",
	}, {
		Description = React.createElement(Text, {
			Text = "BuilderIcons key/input glyphs with no KeyCode association in KeycodeMappings or the extended icon catalog heuristics. Includes optional catalog extras (GenericDpad, Keyboard, touchpads, KeyCommand) and mouse variants without a matching Enum.KeyCode. Icons with a red border are broken links: the catalog icon exists but KeycodeMappings still resolves to nil for the expected KeyCode.",
			tag = "auto-xy text-body-small text-wrap text-align-x-left content-muted",
			LayoutOrder = 1,
		}),
		Icons = React.createElement(
			View,
			{
				tag = "row wrap align-y-center gap-medium auto-xy",
				LayoutOrder = 2,
			},
			Dash.map(UNMAPPED_KEYCODE_ICON_ENTRIES, function(entry, index)
				return React.createElement(View, {
					tag = if entry.isBrokenLink
						then "col align-x-center gap-xsmall auto-xy padding-x-small padding-y-small radius-medium"
						else "col align-x-center gap-xsmall auto-xy",
					backgroundStyle = if entry.isBrokenLink then brokenLinkBackground else nil,
					stroke = if entry.isBrokenLink then brokenLinkStroke else nil,
					LayoutOrder = index,
				}, {
					Icon = React.createElement(Icon, {
						name = entry.icon,
						LayoutOrder = 1,
					}),
					Label = React.createElement(Text, {
						Text = entry.name,
						tag = "auto-xy text-caption-small text-wrap text-align-x-center content-muted",
						LayoutOrder = 2,
					}),
				})
			end)
		),
	})
end

return {
	summary = "Side-by-side comparison of KeyLabel and getBuilderIconForKeycode for every KeyCode.",
	story = function(): React.ReactNode
		return React.createElement(View, {
			tag = "col gap-xxlarge size-full-0 auto-y padding-large bg-surface-0",
		}, {
			UnmappedIcons = React.createElement(UnmappedIconsSection),
			ByKeyType = React.createElement(
				Section,
				{
					layoutOrder = 3,
					name = "By key type",
					contentTag = "col gap-xxlarge auto-xy",
				},
				Dash.map(NON_EMPTY_CATEGORIES, function(categoryName, index)
					return React.createElement(CategoryComparisonTable, {
						categoryName = categoryName,
						layoutOrder = index,
					})
				end)
			),
		})
	end,
}
