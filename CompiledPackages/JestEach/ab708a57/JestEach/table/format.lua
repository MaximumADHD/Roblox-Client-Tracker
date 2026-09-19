--[[
// Copyright Joyent, Inc. and other Node contributors.
//
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the
// "Software"), to deal in the Software without restriction, including
// without limitation the rights to use, copy, modify, merge, publish,
// distribute, sublicense, and/or sell copies of the Software, and to permit
// persons to whom the Software is furnished to do so, subject to the
// following conditions:
//
// The above copyright notice and this permission notice shall be included
// in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
// OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN
// NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
// DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
// OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE
// USE OR OTHER DEALINGS IN THE SOFTWARE.
]]
-- ROBLOX comment: mostly ported from https://github.com/browserify/node-util/blob/master/util.js
local Packages = script.Parent.Parent.Parent

local LuauPolyfill = require(Packages.LuauPolyfill)
local Number = LuauPolyfill.Number
local NaN = Number.NaN

local HttpService = game:GetService("HttpService")

local format = function(...): any
	local formatRegExp = "%%[sdj%%]"
	local i = 2
	local args = { ... }
	local f = args[1]
	local len = #args
	local ref = f:gsub(formatRegExp, function(x)
		if x == "%%" then
			return "%"
		end
		if i > len then
			return x
		end
		if x == "%s" then
			local returnValue
			if typeof(args[i]) == "function" then
				returnValue = "Function"
			else
				returnValue = tostring(args[i])
			end
			i = i + 1
			return returnValue
		elseif x == "%d" then
			local returnValue = tonumber(args[i]) or NaN
			i = i + 1
			return tostring(returnValue)
		elseif x == "%j" then
			local ok, result = pcall(function()
				local returnValue = HttpService:JSONEncode(args[i])
				i = i + 1
				return returnValue
			end)

			if not ok then
				i = i + 1
				return "[Circular]"
			end

			return result
		else
			return x
		end
	end)
	return ref
end
return format
