local strict = require(script.Utility.strict)

local Types = require(script.Components.Types)

export type Bindable<T> = Types.Bindable<T>
export type CommonProps = Types.CommonProps
export type StateChangedCallback = Types.StateChangedCallback
export type StateLayer = Types.StateLayer
export type Tags = Types.Tags

-- Token types
export type ColorStyle = Types.ColorStyle
export type ColorStyleValue = Types.ColorStyleValue
export type FontStyle = Types.FontStyle

local Foundation = strict({
	-- Components
	Badge = require(script.Components.Badge),
	Button = require(script.Components.Button),
	Checkbox = require(script.Components.Checkbox),
	Empty = require(script.Components.Empty),
	Icon = require(script.Components.Icon),
	IconButton = require(script.Components.IconButton),
	Image = require(script.Components.Image),
	InputLabel = require(script.Components.InputLabel),
	Loading = require(script.Components.Loading),
	Pill = require(script.Components.Pill),
	RadioGroup = require(script.Components.RadioGroup),
	ScrollView = require(script.Components.ScrollView),
	Skeleton = require(script.Components.Skeleton),
	Toggle = require(script.Components.Toggle),
	Text = require(script.Components.Text),
	TextInput = require(script.Components.TextInput),
	Toast = require(script.Components.Toast),
	View = require(script.Components.View),
	KeyLabel = require(script.Components.KeyLabel),

	-- Providers
	FoundationProvider = require(script.Providers.Foundation),

	-- Hooks
	Hooks = {
		useCursor = require(script.Providers.Cursor.useCursor),
		withCursor = require(script.Providers.Cursor.withCursor),
		useDefaultTags = require(script.Utility.useDefaultTags),
		usePreferences = require(script.Providers.Preferences.usePreferences),
		useStyleTags = require(script.Providers.Style.useStyleTags),
		useTokens = require(script.Providers.Style.useTokens),
	},

	-- Enums
	Enums = {
		BadgeVariant = require(script.Enums.BadgeVariant),
		ButtonSize = require(script.Enums.ButtonSize),
		ButtonVariant = require(script.Enums.ButtonVariant),
		CheckboxSize = require(script.Enums.CheckboxSize),
		ControlState = require(script.Enums.ControlState),
		CursorType = require(script.Enums.CursorType),
		Device = require(script.Enums.Device),
		FillBehavior = require(script.Enums.FillBehavior),
		IconPosition = require(script.Enums.IconPosition),
		IconSize = require(script.Enums.IconSize),
		InputLabelSize = require(script.Enums.InputLabelSize),
		Radius = require(script.Enums.Radius),
		ScrollBarVisibility = require(script.Enums.ScrollBarVisibility),
		StateLayerAffordance = require(script.Enums.StateLayerAffordance),
		StateLayerMode = require(script.Enums.StateLayerMode),
		Theme = require(script.Enums.Theme),
		ToggleSize = require(script.Enums.ToggleSize),
	},

	-- Utility
	Utility = {
		composeStyleVariant = require(script.Utility.composeStyleVariant),
		indexBindable = require(script.Utility.indexBindable),
		mockComponent = require(script.Utility.mockComponent),
		withCommonProps = require(script.Utility.withCommonProps),
		withDefaults = require(script.Utility.withDefaults),
	},
})

if _G.__FOUNDATION_TRACK_USAGE__ then
	local UsageTracker = require(script.Parent.UsageTracker)

	Foundation = UsageTracker.trackMemberAccess("Foundation", Foundation, UsageTracker.isReactComponent)
end

if _G.__FOUNDATION_TRACE_LOG__ then
	local Logger = require(script.Utility.Logger)
	Logger:enableTraceLog()
end

return Foundation
