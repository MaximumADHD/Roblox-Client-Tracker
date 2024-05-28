-- ROBLOX NOTE: no upstream
-- ROBLOX TODO: fix PrettyFormat types imports

type CompareKeys = ((a: string, b: string) -> number) | nil

type Plugin = any

export type Plugins = { [number]: Plugin }

type ThemeReceived = {
	comment: string?,
	content: string?,
	prop: string?,
	tag: string?,
	value: string?,
}

export type PrettyFormatOptions = {
	callToJSON: boolean?,
	compareKeys: CompareKeys,
	escapeRegex: boolean?,
	escapeString: boolean?,
	highlight: boolean?,
	indent: number?,
	maxDepth: number?,
	min: boolean?,
	plugins: Plugins?,
	printBasicPrototype: boolean?,
	printFunctionName: boolean?,
	theme: ThemeReceived?,
}

export type OptionsReceived = PrettyFormatOptions

return {}
