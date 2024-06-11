--[[
	Define the Luau types for Storybook and its API.

	See https://confluence.rbx.com/display/RDE/Developer+Storybook for documentation on these types.
]]

-- TODO #luau: support these internally
export type Array<T> = { [number]: T }
export type Record<K, V> = { [K]: V }
export type AnyRecord = Record<any, any>

-- TODO #lua-foundation: types for Roact & Rodux
export type Roact = any
export type RoactComponent = any
export type RoactElement = any
export type RoduxStore = any
export type ReactRoblox = any

export type MapStoryDefinition = (StoryDefinition) -> StoryDefinition
export type MapStory = (Story) -> Story

-- A storybook is a collection of stories which are grouped when viewed
export type Storybook = {
	group: string?,
	storyRoots: { Instance }?,
	roact: Roact?,
	reactRoblox: ReactRoblox?,
	definition: StoryDefinition?,
	mapDefinition: MapStoryDefinition?,
	mapStory: MapStory?,
	exclude: { string }?,
}

-- A story definition contains all the information about single story script
export type StoryDefinition = {
	name: string?,
	summary: string?,
	props: Record<any, any>,
	story: Story?,
	stories: Record<string | number, SubStory>?,
	source: ModuleScript?,
	create: ((StoryProps) -> ())?,
	destroy: ((StoryProps) -> ())?,
	roact: Roact?,
	controls: StoryControls?,
}

-- Stories in Horsecat are currently provided as a constructor function which returns a destructor function, taking a host argument.
-- This is deprecated, but supported to ease migration.
export type DeprecatedLifecycleFunction = (Instance) -> () -> ()

-- A story translates to a single instance/example displayed on screen.
export type Story = Instance | RoactComponent | RoactElement | DeprecatedLifecycleFunction

-- A sub-story is one of multiple examples displayed for a single story script
export type SubStory = Story | {
	name: string?,
	summary: string?,
	story: Story,
}

-- The StoryItem represents a single row in the story tree view
export type StoryItem = {
	Name: string,
	Icon: string,
	Path: string?,
	Children: { StoryItem },
	GetChildren: (StoryItem) -> { StoryItem },
	Storybook: Storybook?,
	Script: ModuleScript?,
	StorybookLoadError: string?,
}

-- The story props are passed to any ReactComponent stories
export type StoryProps = {
	controls: StoryControls,
	setControls: (StoryControls) -> (),
	theme: string,
	definition: StoryDefinition,
}

export type ValueArray = { string | number }

export type Settings = {
	reducedMotion: boolean,
	preferredTransparency: number,
}

-- Story controls are UI control components which display above your story and be used to control the incoming props to the story
export type StoryControls = Record<string, boolean | number | string | ValueArray>

-- These are kept in sync with DocUtils prop type definition
-- This package does not have a dependency on DocUtils so the types need to be redefined.
export type Prop = {
	Name: string,
	Type: string | PropType,
	IsOptional: boolean,
	Default: any?,
	Comment: string?,
}

local PropTypeQualifiers = { Array = "Array", Interface = "Interface" }
export type PropTypeQualifier = typeof(PropTypeQualifiers.Array) | typeof(PropTypeQualifiers.Interface)

export type PropType = { Qualifier: PropTypeQualifier, Props: { Prop } }

return {
	PropTypeQualifiers = PropTypeQualifiers,
}
