--[[
	Public interface for Util
]]
local strict = require(script.strict)
local FFlagRemoveUILibraryGetTextSize = game:GetFastFlag("RemoveUILibraryGetTextSize")

return strict({
	-- Plugin Utilities
	Action = require(script.Action),

	-- Studio Utilities
	AssetRenderUtil = require(script.AssetRenderUtil),
	DoubleClickDetector = require(script.DoubleClickDetector),

	-- TODO DEVTOOLS-4459: Remove this export
	Cryo = require(script.Cryo),
	CrossPluginCommunication = require(script.CrossPluginCommunication),
	Embed = require(script.Embed),
	deepEqual = require(script.deepEqual),
	deepJoin = require(script.deepJoin),
	deepCopy = require(script.deepCopy),
	getDeepFolder = require(script.getDeepFolder),
	GetTextSize = if FFlagRemoveUILibraryGetTextSize then require(script.GetTextSize) else nil,

	-- TODO DEVTOOLS-4459: Remove this export
	FitFrame = require(script.FitFrame),
	ellipsizeMiddle = require(script.ellipsizeMiddle),
	enumerate = require(script.enumerate),
	formatDuration = require(script.formatDuration),
	formatLocalDateTime = require(script.formatLocalDateTime),
	Flags = require(script.Flags),
	Immutable = require(script.Immutable),
	isInputMainPress = require(script.isInputMainPress),
	LayoutOrderIterator = require(script.LayoutOrderIterator),
	Math = require(script.Math),
	Promise = require(script.Promise),
	Signal = require(script.Signal),
	Symbol = require(script.Symbol),
	ThunkWithArgsMiddleware = require(script.ThunkWithArgsMiddleware),
	strict = strict,
	tableCache = require(script.tableCache),

	-- Style and Theming Utilities
	Palette = require(script.Palette),
	prioritize = require(script.prioritize),
	sendResultToKibana = require(script.sendResultToKibana),
	Spritesheet = require(script.Spritesheet),
	Style = require(script.Style),
	StyleModifier = require(script.StyleModifier),
	StyleTable = require(script.StyleTable),
	StyleValue = require(script.StyleValue),
	createFolderDataLookup = require(script.createFolderDataLookup),

	-- Document Generation and Type Enforcement Utilities
	Typecheck = require(script.Typecheck),

	RefactorFlags = require(script.RefactorFlags)
})
