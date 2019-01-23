-----------------------------------
---------------Log-----------------
-----------------------------------
--[[
	The log module script lets you log message from the plugin. Use this instead of print. It
	was added because we kept forgetting to remove print statements. You have to set
	isLoggingEnabled to true when logging, and remember to set it back to false before
	submitting your code. That means that there's only one place to turn the log messages
	on and off.
--]]
local Log = {}

-- Don't check isLoggingEnabled in as true! It will spam the Output window.
local isLoggingEnabled = false

-- Use this log method instead of print to avoid stray print messages getting shipped.
-- You can pass additional arguments when logging, e.g. Log:log("x is", x)
function Log:log(message, ...)
	if isLoggingEnabled then
		print(message, ...)
	end
end

return Log