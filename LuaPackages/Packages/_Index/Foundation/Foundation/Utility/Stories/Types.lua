local Foundation = script:FindFirstAncestor("Foundation")

local ColorMode = require(Foundation.Enums.ColorMode)
local Device = require(Foundation.Enums.Device)
local PreferencesProvider = require(Foundation.Providers.Preferences.PreferencesProvider)

type ColorMode = ColorMode.ColorMode
type Device = Device.Device
type Preferences = PreferencesProvider.PreferencesProps

local Types = {}

export type DeveloperStorybookStoryProps = {
	focus: LayerCollector,
	-- Storybook control name; mapped to `colorMode` internally by StoryMiddleware.
	theme: ColorMode,
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
	-- Storybook control name; mapped to `colorMode` internally by StoryMiddleware.
	theme: string,
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
