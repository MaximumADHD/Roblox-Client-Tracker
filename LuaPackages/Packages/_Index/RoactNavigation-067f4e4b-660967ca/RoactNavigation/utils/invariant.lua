--[[*
 * Use invariant() to assert state which your program assumes to be true.
 *
 * Provide sprintf-style format (only %s is supported) and arguments
 * to provide information about what broke and what you were
 * expecting.
 *
 * The invariant message will be stripped in production, but the invariant
 * will remain to ensure logic does not differ in production.
 ]]

local validateFormat = function(_format: string?) end

if _G.__DEV__ then
	validateFormat = function(format: string?)
		if format == nil then
			error("invariant requires an error message argument")
		end
	end
end

local function invariant(condition: boolean, format: string?, ...)
	validateFormat(format)

	if not condition then
		if format == nil then
			error(
				"Minified exception occurred; use the non-minified dev environment "
					.. "for the full error message and additional helpful warnings.",
				2
			)
		else
			error(string.format(format, ...), 2)
		end
	end
end

return invariant
