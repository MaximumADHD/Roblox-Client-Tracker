--[[
	Public interface for Util
]]
local strict = require(script.strict)
local Framework = script.Parent

return strict({
	-- Plugin Utilities
	Action = require(script.Action),

	-- Studio Utilities
	AssetRenderUtil = require(script.AssetRenderUtil),
	DoubleClickDetector = require(script.DoubleClickDetector),

	counter = require(script.counter),
	CrossPluginCommunication = require(script.CrossPluginCommunication),
	Embed = require(script.Embed),
	deepEqual = require(script.deepEqual),
	deepJoin = require(script.deepJoin),
	deepCopy = require(script.deepCopy),
	DialogAction = require(script.DialogAction),
	getDeepFolder = require(script.getDeepFolder),
	getRobloxLinksFromString = require(script.getRobloxLinksFromString),
	GetTextSize = require(script.GetTextSize),

	ColorStringValidators = require(script.ColorStringValidators),
	-- TODO DEVTOOLS-4459: Remove this export
	FitFrame = if Framework.Parent:FindFirstChild("FitFrame") then require(Framework.Parent.FitFrame :: any) else nil,
	ellipsizeMiddle = require(script.ellipsizeMiddle),
	enumerate = require(script.enumerate),
	formatDuration = require(script.formatDuration),
	formatLocalDateTime = require(script.formatLocalDateTime),
	formatVoteNumber = require(script.formatVoteNumber),
	Flags = require(script.Flags),
	Immutable = require(script.Immutable),
	isInputMainPress = require(script.isInputMainPress),
	LayoutOrderIterator = require(script.LayoutOrderIterator),
	Math = require(script.Math),
	openVideoFromUrl = require(script.openVideoFromUrl),
	pollUntil = require(script.pollUntil),
	Promise = require(script.Promise),
	RoundingBehaviour = require(script.RoundingBehaviour),
	Signal = require(script.Signal),
	Symbol = require(script.Symbol),
	ThunkWithArgsMiddleware = require(script.ThunkWithArgsMiddleware),
	strict = strict,
	tableCache = require(script.tableCache),
	levenshteinDistance = require(script.levenshteinDistance),
	isCli = require(script.isCli),
	MarkdownParser = require(script.Markdown.MarkdownParser),
	EditTree = require(script.EditTree),

	-- Style and Theming Utilities
	prioritize = require(script.prioritize),
	React = require(script.React),
	sendResultToKibana = require(script.sendResultToKibana),
	Spritesheet = require(script.Spritesheet),
	StyleModifier = require(script.StyleModifier),
	StyleValue = require(script.StyleValue),
	createFolderDataLookup = require(script.createFolderDataLookup),

	-- Document Generation and Type Enforcement Utilities
	Typecheck = require(script.Typecheck),

	isRoact17 = require(script.isRoact17),

	-- Plugin Components
	StudioUri = require(script.StudioUri),
})
