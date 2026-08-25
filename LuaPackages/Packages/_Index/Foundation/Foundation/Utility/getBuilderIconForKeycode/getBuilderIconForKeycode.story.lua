local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Icon = require(Foundation.Components.Icon)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local BuilderIconKeycodeMappings = require(Foundation.Utility.Stories.Shared.BuilderIconKeycodeMappings)
local MatrixGridShared = require(Foundation.Utility.Stories.Shared.MatrixGrid)
local MatrixGrid = MatrixGridShared.MatrixGrid
type MatrixGridRow = MatrixGridShared.MatrixGridRow

local INPUT_PLATFORM_ORDER = BuilderIconKeycodeMappings.INPUT_PLATFORM_ORDER
local INPUT_PLATFORM_COLUMN_HEADERS = BuilderIconKeycodeMappings.getInputPlatformColumnHeaders()
local KEY_NAME_ORDER = BuilderIconKeycodeMappings.getMappedKeyNames()

local LABEL_COLUMN_WIDTH = 120
local CELL_COLUMN_WIDTH = 72

local function KeycodeIconCell(props: { icon: string? }): React.ReactNode
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

return {
	summary = "Returns the BuilderIcon for a KeyCode, using gamepad or keyboard mappings based on the detected input platform.",
	story = function(): React.ReactNode
		return React.createElement(View, {
			tag = "col gap-large auto-xy padding-large",
		}, {
			Description = React.createElement(Text, {
				Text = "Each row is a KeyCode name; columns show the BuilderIcon for that key on each input platform. The Default column is the keyboard fallback. A dash means that platform has no mapping for the key. The icons shown are a snapshot of the current mappings and may be updated in BuilderIcons independently of this story.",
				tag = "auto-xy text-body-medium text-wrap text-align-x-left content-muted",
				LayoutOrder = 1,
			}),
			Matrix = React.createElement(View, {
				tag = "auto-xy",
				LayoutOrder = 2,
			}, {
				Grid = React.createElement(MatrixGrid, {
					labelColumnWidth = LABEL_COLUMN_WIDTH,
					columnHeaders = INPUT_PLATFORM_COLUMN_HEADERS,
					cellColumnWidth = CELL_COLUMN_WIDTH,
					headerTextAlign = "left",
					cellAlign = "left",
					rows = Dash.map(KEY_NAME_ORDER, function(keyName): MatrixGridRow
						return {
							label = React.createElement(Text, {
								Text = keyName,
								tag = "auto-xy text-caption-small text-align-x-left",
							}),
							cells = Dash.map(INPUT_PLATFORM_ORDER, function(platform)
								return React.createElement(KeycodeIconCell, {
									icon = BuilderIconKeycodeMappings.getIconForKeyName(keyName, platform),
								})
							end),
						}
					end),
				}),
			}),
		})
	end,
}
