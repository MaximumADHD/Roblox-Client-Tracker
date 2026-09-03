local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Dash = require(Packages.Dash)
local React = require(Packages.React)
local IconName = BuilderIcons.Icon

local Icon = require(Foundation.Components.Icon)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local MatrixGrid = require(Foundation.Utility.Stories.Shared.MatrixGrid).MatrixGrid
local getBuilderIconForCurrentPlatform = require(script.Parent.getBuilderIconForCurrentPlatform)

-- Mirrors BuilderIcons PlatformIconMap (internal module, not exposed via the public package).
local PlatformIconMap: { [Enum.Platform]: string } = {
	[Enum.Platform.PS3] = IconName.Playstation,
	[Enum.Platform.PS4] = IconName.Playstation,
	[Enum.Platform.PS5] = IconName.Playstation,
	[Enum.Platform.XBoxOne] = IconName.Xbox,
	[Enum.Platform.XBox360] = IconName.Xbox,
	[Enum.Platform.Android] = IconName.Android,
	[Enum.Platform.IOS] = IconName.Apple,
	[Enum.Platform.OSX] = IconName.Apple,
	[Enum.Platform.Windows] = IconName.Microsoft,
	[Enum.Platform.MetaOS] = IconName.Meta,
}

local UserInputService = game:GetService("UserInputService")

local LABEL_COLUMN_WIDTH = 140
local CELL_COLUMN_WIDTH = 80

local PLATFORM_ORDER: { Enum.Platform } = {
	Enum.Platform.Windows,
	Enum.Platform.OSX,
	Enum.Platform.IOS,
	Enum.Platform.Android,
	Enum.Platform.MetaOS,
	Enum.Platform.XBox360,
	Enum.Platform.XBoxOne,
	Enum.Platform.PS3,
	Enum.Platform.PS4,
	Enum.Platform.PS5,
}

local function getRuntimePlatformLabel(): string
	local success, platform = pcall(UserInputService.GetPlatform, UserInputService)
	if success and platform then
		return tostring(platform)
	end
	return "unavailable in Studio (console fallback may apply at runtime)"
end

local function PlatformIconCell(props: { icon: string? }): React.ReactNode
	if props.icon then
		return React.createElement(Icon, {
			name = props.icon,
		})
	end

	return React.createElement(Text, {
		Text = "nil",
		tag = "auto-xy text-caption-small content-muted",
	})
end

local function PlaygroundStory(): React.ReactNode
	local icon = getBuilderIconForCurrentPlatform()
	local platformLabel = getRuntimePlatformLabel()

	return React.createElement(View, {
		tag = "col gap-large auto-xy padding-large",
	}, {
		Description = React.createElement(Text, {
			Text = "Returns the BuilderIcon for the current runtime platform. Uses UserInputService:GetPlatform() when available; on console it falls back to TenFootInterface and gamepad keycode heuristics.",
			tag = "auto-xy text-body-medium text-wrap text-align-x-left content-muted",
			LayoutOrder = 1,
		}),
		CurrentPlatform = React.createElement(Text, {
			Text = `Current platform: {platformLabel}`,
			tag = "auto-xy text-caption-small text-align-x-left",
			LayoutOrder = 2,
		}),
		Result = if icon
			then React.createElement(View, {
				tag = "row align-y-center gap-medium auto-xy",
				LayoutOrder = 3,
			}, {
				Icon = React.createElement(Icon, {
					name = icon,
					LayoutOrder = 1,
				}),
				Label = React.createElement(Text, {
					Text = icon,
					tag = "auto-xy text-caption-small",
					LayoutOrder = 2,
				}),
			})
			else React.createElement(Text, {
				Text = "No BuilderIcon associated with your current platform.",
				tag = "auto-xy text-align-x-left",
				LayoutOrder = 3,
			}),
	})
end

local function PlatformMatrixStory(): React.ReactNode
	return React.createElement(View, {
		tag = "col gap-large auto-xy padding-large",
	}, {
		Description = React.createElement(Text, {
			Text = "Each row shows the icon returned for a supported Enum.Platform. Platforms not listed here have no mapped BuilderIcon. The icons shown are a snapshot of the current mappings and may be updated in BuilderIcons independently of this story.",
			tag = "auto-xy text-body-medium text-wrap text-align-x-left content-muted",
			LayoutOrder = 1,
		}),
		Matrix = React.createElement(View, {
			tag = "auto-xy",
			LayoutOrder = 2,
		}, {
			Grid = React.createElement(MatrixGrid, {
				labelColumnWidth = LABEL_COLUMN_WIDTH,
				columnHeaders = { "Icon" },
				cellColumnWidth = CELL_COLUMN_WIDTH,
				headerTextAlign = "left",
				cellAlign = "left",
				rows = Dash.map(PLATFORM_ORDER, function(platform)
					return {
						label = React.createElement(Text, {
							Text = tostring(platform),
							tag = "auto-xy text-caption-small text-align-x-left",
						}),
						cells = {
							React.createElement(PlatformIconCell, {
								icon = PlatformIconMap[platform],
							}),
						},
					}
				end),
			}),
		}),
	})
end

return {
	summary = "Returns the platform-specific BuilderIcon for the current device (Windows, Xbox, PlayStation, Apple, Android, Meta, etc.).",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "Platform matrix",
			summary = "Preview the BuilderIcon mapped to each supported Enum.Platform value.",
			story = PlatformMatrixStory,
		},
	},
}
