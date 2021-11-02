--!nocheck
local RegEx = require(script.RegEx)

local RegExp = {}
local RegExpMetatable = {
	__index = RegExp,
	__tostring = function(self)
		return tostring(self._innerRegEx)
	end
}

function RegExp:exec(str: string)
	local match = self._innerRegEx:match(str)
	if not match then
		return nil
	end

	local index = match:span()
	local groups = match:grouparr()

	local matches = { groups[0] }
	for i = 1, groups.n do
		matches[i + 1] = groups[i]
	end
	matches.n = groups.n + 1
	matches.index = index
	matches.input = str
	return matches
end

function RegExp:test(str: string): boolean
	return self:exec(str) ~= nil
end

local function new(_self, source, flags)
	flags = flags or ""
	local innerRegEx = RegEx.new(source, flags)
	local object = {
		source = source,
		ignoreCase = flags:find("i") ~= nil,
		global = flags:find("g") ~= nil,
		multiline = flags:find("m") ~= nil,
		_innerRegEx = innerRegEx,
	}

	return setmetatable(object, RegExpMetatable)
end

return setmetatable(RegExp, {
	__call = new,
})
