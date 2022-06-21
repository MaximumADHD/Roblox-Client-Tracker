local ansiStyles = {
	modifier = {
		reset = {0, 0},
		bold = {1, 22},
		dim = {2, 22},
		italic = {3, 23},
		underline = {4, 24},
		overline = {53, 55},
		inverse = {7, 27},
		hidden = {8, 28},
		strikethrough = {9, 29},
	},

	color = {
		black = {30, 39},
		red = {31, 39},
		green = {32, 39},
		yellow = {33, 39},
		blue = {34, 39},
		magenta = {35, 39},
		cyan = {36, 39},
		white = {37, 39},

		-- bright color
		blackBright = {90, 39},
		gray = {90, 39},
		grey = {90, 39},
		redBright = {91, 39},
		greenBright = {92, 39},
		yellowBright = {93, 39},
		blueBright = {94, 39},
		magentaBright = {95, 39},
		cyanBright = {96, 39},
		whiteBright = {97, 39},
	},

	bgColor = {
		bgBlack = {40, 49},
		bgRed = {41, 49},
		bgGreen = {42, 49},
		bgYellow = {43, 49},
		bgBlue = {44, 49},
		bgMagenta = {45, 49},
		bgCyan = {46, 49},
		bgWhite = {47, 49},

		-- bright color
		bgBlackBright = {100, 49},
		bgGray = {100, 49},
		bgGrey = {100, 49},
		bgRedBright = {101, 49},
		bgGreenBright = {102, 49},
		bgYellowBright = {103, 49},
		bgBlueBright = {104, 49},
		bgMagentaBright = {105, 49},
		bgCyanBright = {106, 49},
		bgWhiteBright = {107, 49},
	}
}

local ansi16 = '%c[%dm'
local ansi256 = '%c[%d;5;%dm'
local ESC = 27
local ANSI_SET_FOREGROUND = 38
local ANSI_SET_BACKGROUND = 48

local styles = {}

for groupName, group in pairs(ansiStyles) do
	for styleName, style in pairs(group) do
		styles[styleName] = {
			open = string.format(
				ansi16,
				ESC,
				style[1]
			),
			close = string.format(
				ansi16,
				ESC,
				style[2]
			)
		}
	end
end

local createStyler

local function compositeStyler(style, otherStyle)
	return createStyler(
		style.open .. otherStyle.open,
		otherStyle.close .. style.close
	)
end

local function foundProcessService()
	local success = pcall(function() game:getService("ProcessService") end)
	return success
end

local Chalk = { level = 2 }
if _G.NOCOLOR or not foundProcessService() then
	Chalk.level = 0
end

setmetatable(
	Chalk,
	{
		__call = function(_, str)
			if str == nil or type(str) == 'string' and #str == 0 then
				return ''
			end
			return tostring(str)
		end
	}
)

createStyler = function(open, close)
	local styler = {
		open = open,
		close = close
	}

	setmetatable(
		styler,
		{
			__call = function(self, str)
				if str == nil or type(str) == 'string' and #str == 0 then
					return ''
				end
				if Chalk.level == 0 then
					return tostring(str)
				end
				return self.open .. tostring(str) .. self.close
			end,
			__concat = function(self, other)
				return compositeStyler(self, other)
			end
		}
	)

	return styler
end

local function noStyle()
	return createStyler('', '')
end

local close = string.format(ansi16, ESC, 39)
local bgClose = string.format(ansi16, ESC, 49)
local reset = string.format(ansi16, ESC, 0)

for styleName, style in pairs(styles) do
	Chalk[styleName] = createStyler(style.open, style.close)
end

Chalk['reset'] = createStyler(reset, reset)

local function rgbToAnsi256(red, green, blue)
	if red == green and green == blue then
		if red < 8 then
			return 16
		end
		if red > 248 then
			return 231
		end

		return math.round((((red - 8) / 247) * 24) + 232)
	end

	local ansi = 16
		+ (36 * math.round(red / 255 * 5))
		+ (6 * math.round(green / 255 * 5))
		+ math.round(blue / 255 * 5)
	return ansi
end

Chalk['rgb'] = function(red, green, blue)
	if type(red) ~= 'number' or type(green) ~= 'number' or type(blue) ~= 'number' or
		red > 255 or red < 0 or
		green > 255 or green < 0 or
		blue > 255 or blue < 0
	then
		return noStyle()
	end
	local open = string.format(
		ansi256,
		ESC,
		ANSI_SET_FOREGROUND,
		rgbToAnsi256(red, green, blue)
	)
	return createStyler(open, close)
end

Chalk['bgRgb'] = function(red, green, blue)
	if type(red) ~= 'number' or type(green) ~= 'number' or type(blue) ~= 'number' or
		red > 255 or red < 0 or
		green > 255 or green < 0 or
		blue > 255 or blue < 0
	then
		return noStyle()
	end
	local open = string.format(
		ansi256,
		ESC,
		ANSI_SET_BACKGROUND,
		rgbToAnsi256(red, green, blue)
	)
	return createStyler(open, bgClose)
end

local function hexToRgb(hex)
	local red = tonumber(string.sub(hex, 2, 3), 16)
	local blue = tonumber(string.sub(hex, 4, 5), 16)
	local green = tonumber(string.sub(hex, 6, 7), 16)

	return rgbToAnsi256(red, blue, green)
end

Chalk['hex'] = function(hex)
	if type(hex) ~= 'string' or string.find(hex, '#%X') ~= nil or #hex ~= 7 then
		return noStyle()
	end
	local open = string.format(
		ansi256,
		ESC,
		ANSI_SET_FOREGROUND,
		hexToRgb(hex)
	)
	return createStyler(open, close)
end

Chalk['bgHex'] = function(hex)
	if type(hex) ~= 'string' or string.find(hex, '#%X') ~= nil or #hex ~= 7 then
		return noStyle()
	end
	local open = string.format(
		ansi256,
		ESC,
		ANSI_SET_BACKGROUND,
		hexToRgb(hex)
	)
	return createStyler(open, bgClose)
end

Chalk['ansi'] = function(ansi)
	if type(ansi) ~= 'number' or ansi < 30 or (ansi > 37 and ansi < 90) or ansi > 97 then
		return noStyle()
	end
	local open = string.format(
		ansi16,
		ESC,
		ansi
	)
	return createStyler(open, close)
end

Chalk['bgAnsi'] = function(ansi)
	if type(ansi) ~= 'number' or ansi < 40 or (ansi > 47 and ansi < 100) or ansi > 107 then
		return noStyle()
	end
	local open = string.format(
		ansi16,
		ESC,
		ansi
	)
	return createStyler(open, bgClose)
end

Chalk['ansi256'] = function(ansi)
	if type(ansi) ~= 'number' or ansi < 0 or ansi > 255 then
		return noStyle()
	end
	local open = string.format(
		ansi256,
		ESC,
		ANSI_SET_FOREGROUND,
		ansi
	)
	return createStyler(open, close)
end

Chalk['bgAnsi256'] = function(ansi)
	if type(ansi) ~= 'number' or ansi < 0 or ansi > 255 then
		return noStyle()
	end
	local open = string.format(
		ansi256,
		ESC,
		ANSI_SET_BACKGROUND,
		ansi
	)
	return createStyler(open, bgClose)
end

return Chalk
