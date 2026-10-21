local Foundation = script:FindFirstAncestor("Foundation")

local ColorMode = require(Foundation.Enums.ColorMode)
local Device = require(Foundation.Enums.Device)
local PreferencesProvider = require(Foundation.Providers.Preferences.PreferencesProvider)
local ThemeName = require(Foundation.Enums.ThemeName)

type ColorMode = ColorMode.ColorMode
type Device = Device.Device
type Preferences = PreferencesProvider.PreferencesProps
type ThemeName = ThemeName.ThemeName

local Types = {}

export type DeveloperStorybookStoryProps = {
	focus: LayerCollector,
	-- Light/Dark from the storybook control.
	colorMode: ColorMode?,
	-- Deprecated Light/Dark control. Used when `colorMode` is absent.
	theme: ColorMode?,
	-- App-level theme (Default, Kids, and the rest of ThemeName).
	themeName: ThemeName?,
	platform: Platform,
	settings: Preferences,
	plugin: Plugin,
	host: GuiObject,
}

function Types.toDeveloperStorybookStoryProps(storyProps: StoryProps): DeveloperStorybookStoryProps?
	if rawget(storyProps, "focus") then
		return storyProps :: DeveloperStorybookStoryProps
	end
	return nil
end

export type FlipbookStoryProps = {
	-- Flipbook names the Light/Dark control `theme`.
	theme: string,
	colorMode: string?,
	themeName: string?,
	plugin: Plugin,
	locale: string,
	container: GuiObject,
	controls: { [string]: any },
	widget: DockWidgetPluginGui,
}

function Types.toFlipbookStoryProps(storyProps: StoryProps): FlipbookStoryProps?
	if rawget(storyProps, "widget") then
		return storyProps :: FlipbookStoryProps
	end
	return nil
end

export type StoryProps = FlipbookStoryProps | DeveloperStorybookStoryProps

return Types
