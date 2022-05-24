-- ROBLOX upstream: https://github.com/micromatch/picomatch/tree/2.3.1/lib/constants.js

local CurrentModule = script.Parent
local Packages = CurrentModule.Parent
local LuauPolyfill = require(Packages.LuauPolyfill)
local Object = LuauPolyfill.Object

local RegExp = require(Packages.RegExp)

-- ROBLOX deviation: skipping path
-- local path = require("path")
local WIN_SLASH = "\\\\/"
local WIN_NO_SLASH = ("[^%s]"):format(WIN_SLASH)
--[[*
 * Posix glob regex
 ]]
local DOT_LITERAL = "\\."
local PLUS_LITERAL = "\\+"
local QMARK_LITERAL = "\\?"
local SLASH_LITERAL = "\\/"
local ONE_CHAR = "(?=.)"
local QMARK = "[^/]"
local END_ANCHOR = ("(?:%s|$)"):format(SLASH_LITERAL)
local START_ANCHOR = ("(?:^|%s)"):format(SLASH_LITERAL)
local DOTS_SLASH = ("%s{1,2}%s"):format(DOT_LITERAL, END_ANCHOR)
local NO_DOT = ("(?!%s)"):format(DOT_LITERAL)
local NO_DOTS = ("(?!%s%s)"):format(START_ANCHOR, DOTS_SLASH)
local NO_DOT_SLASH = ("(?!%s{0,1}%s)"):format(DOT_LITERAL, END_ANCHOR)
local NO_DOTS_SLASH = ("(?!%s)"):format(DOTS_SLASH)
local QMARK_NO_DOT = ("[^.%s]"):format(SLASH_LITERAL)
local STAR = ("%s*?"):format(QMARK)
local POSIX_CHARS = {
	DOT_LITERAL = DOT_LITERAL,
	PLUS_LITERAL = PLUS_LITERAL,
	QMARK_LITERAL = QMARK_LITERAL,
	SLASH_LITERAL = SLASH_LITERAL,
	ONE_CHAR = ONE_CHAR,
	QMARK = QMARK,
	END_ANCHOR = END_ANCHOR,
	DOTS_SLASH = DOTS_SLASH,
	NO_DOT = NO_DOT,
	NO_DOTS = NO_DOTS,
	NO_DOT_SLASH = NO_DOT_SLASH,
	NO_DOTS_SLASH = NO_DOTS_SLASH,
	QMARK_NO_DOT = QMARK_NO_DOT,
	STAR = STAR,
	START_ANCHOR = START_ANCHOR,
}
--[[*
 * Windows glob regex
 ]]
local WINDOWS_CHARS = Object.assign({}, POSIX_CHARS, {
	SLASH_LITERAL = ("[%s]"):format(WIN_SLASH),
	QMARK = WIN_NO_SLASH,
	STAR = ("%s*?"):format(WIN_NO_SLASH),
	DOTS_SLASH = ("%s{1,2}(?:[%s]|$)"):format(DOT_LITERAL, WIN_SLASH),
	NO_DOT = ("(?!%s)"):format(DOT_LITERAL),
	NO_DOTS = ("(?!(?:^|[%s])%s{1,2}(?:[%s]|$))"):format(WIN_SLASH, DOT_LITERAL, WIN_SLASH),
	NO_DOT_SLASH = ("(?!%s{0,1}(?:[%s]|$))"):format(DOT_LITERAL, WIN_SLASH),
	NO_DOTS_SLASH = ("(?!%s{1,2}(?:[%s]|$))"):format(DOT_LITERAL, WIN_SLASH),
	QMARK_NO_DOT = ("[^.%s]"):format(WIN_SLASH),
	START_ANCHOR = ("(?:^|[%s])"):format(WIN_SLASH),
	END_ANCHOR = ("(?:[%s]|$)"):format(WIN_SLASH),
})
--[[*
 * POSIX Bracket Regex
 ]]
local POSIX_REGEX_SOURCE = {
	alnum = "a-zA-Z0-9",
	alpha = "a-zA-Z",
	ascii = "\\x00-\\x7F",
	blank = " \\t",
	cntrl = "\\x00-\\x1F\\x7F",
	digit = "0-9",
	graph = "\\x21-\\x7E",
	lower = "a-z",
	print = "\\x20-\\x7E ",
	punct = "\\-!\"#$%&'()\\*+,./:;<=>?@[\\]^_`{|}~",
	space = " \\t\\r\\n\\v\\f",
	upper = "A-Z",
	word = "A-Za-z0-9_",
	xdigit = "A-Fa-f0-9",
}

return {
	MAX_LENGTH = 1024 * 64,
	POSIX_REGEX_SOURCE = POSIX_REGEX_SOURCE,

	-- regular expressions
	-- ROBLOX TODO: no "g" flag supported yet
	-- REGEX_BACKSLASH = RegExp("\\\\(?![*+?^${}(|)[\\]])", "g"),
	REGEX_NON_SPECIAL_CHARS = "^[^@![%].,$*+?^{}()|\\/]+",
	REGEX_SPECIAL_CHARS = "[-*+?.^${}(|)[%]]",
	-- ROBLOX TODO START: no "g" flag supported yet
	REGEX_SPECIAL_CHARS_BACKREF = RegExp("(\\\\?)((\\W)(\\3*))"),
	-- REGEX_SPECIAL_CHARS_GLOBAL = RegExp("([-*+?.^${}(|)[\\]])", "g"),
	-- REGEX_REMOVE_BACKSLASH = RegExp("(?:\\[.*?[^\\\\]\\]|\\\\(?=.))", "g"),
	-- ROBLOX TODO END

	-- Replace globs with equivalent patterns to reduce parsing time.
	REPLACEMENTS = {
		["***"] = "*",
		["**/**"] = "**",
		["**/**/**"] = "**",
	},

	-- Digits
	CHAR_0 = 48, --[[ 0 ]]
	CHAR_9 = 57, --[[ 9 ]]

	-- Alphabet chars.
	CHAR_UPPERCASE_A = 65, --[[ A ]]
	CHAR_LOWERCASE_A = 97, --[[ a ]]
	CHAR_UPPERCASE_Z = 90, --[[ Z ]]
	CHAR_LOWERCASE_Z = 122, --[[ z ]]
	CHAR_LEFT_PARENTHESES = 40, --[[ ( ]]
	CHAR_RIGHT_PARENTHESES = 41, --[[ ) ]]
	CHAR_ASTERISK = 42, --[[ * ]]

	-- Non-alphabetic chars.
	CHAR_AMPERSAND = 38, --[[ & ]]
	CHAR_AT = 64, --[[ @ ]]
	CHAR_BACKWARD_SLASH = 92, --[[ \ ]]
	CHAR_CARRIAGE_RETURN = 13, --[[ \r ]]
	CHAR_CIRCUMFLEX_ACCENT = 94, --[[ ^ ]]
	CHAR_COLON = 58, --[[ : ]]
	CHAR_COMMA = 44, --[[ , ]]
	CHAR_DOT = 46, --[[ . ]]
	CHAR_DOUBLE_QUOTE = 34, --[[ " ]]
	CHAR_EQUAL = 61, --[[ = ]]
	CHAR_EXCLAMATION_MARK = 33, --[[ ! ]]
	CHAR_FORM_FEED = 12, --[[ \f ]]
	CHAR_FORWARD_SLASH = 47, --[[ / ]]
	CHAR_GRAVE_ACCENT = 96, --[[ ` ]]
	CHAR_HASH = 35, --[[ # ]]
	CHAR_HYPHEN_MINUS = 45, --[[ - ]]
	CHAR_LEFT_ANGLE_BRACKET = 60, --[[ < ]]
	CHAR_LEFT_CURLY_BRACE = 123, --[[ { ]]
	CHAR_LEFT_SQUARE_BRACKET = 91, --[[ [ ]]
	CHAR_LINE_FEED = 10, --[[ \n ]]
	CHAR_NO_BREAK_SPACE = 160, --[[ \u00A0 ]]
	CHAR_PERCENT = 37, --[[ % ]]
	CHAR_PLUS = 43, --[[ + ]]
	CHAR_QUESTION_MARK = 63, --[[ ? ]]
	CHAR_RIGHT_ANGLE_BRACKET = 62, --[[ > ]]
	CHAR_RIGHT_CURLY_BRACE = 125, --[[ } ]]
	CHAR_RIGHT_SQUARE_BRACKET = 93, --[[ ] ]]
	CHAR_SEMICOLON = 59, --[[ ; ]]
	CHAR_SINGLE_QUOTE = 39, --[[ ' ]]
	CHAR_SPACE = 32, --[[   ]]
	CHAR_TAB = 9, --[[ \t ]]
	CHAR_UNDERSCORE = 95, --[[ _ ]]
	CHAR_VERTICAL_LINE = 124, --[[ | ]]
	CHAR_ZERO_WIDTH_NOBREAK_SPACE = 65279, --[[ \uFEFF ]]

	-- ROBLOX FIXME
	SEP = "/", -- path.sep,

	--[[*
	 * Create EXTGLOB_CHARS
	]]

	extglobChars = function(chars)
		return {
			["!"] = { type = "negate", open = "(?:(?!(?:", close = ("))%s)"):format(chars.STAR) },
			["?"] = { type = "qmark", open = "(?:", close = ")?" },
			["+"] = { type = "plus", open = "(?:", close = ")+" },
			["*"] = { type = "star", open = "(?:", close = ")*" },
			["@"] = { type = "at", open = "(?:", close = ")" },
		}
	end,

	--[[*
	 * Create GLOB_CHARS
	]]

	globChars = function(win32)
		return if win32 == true then WINDOWS_CHARS else POSIX_CHARS
	end,
}
