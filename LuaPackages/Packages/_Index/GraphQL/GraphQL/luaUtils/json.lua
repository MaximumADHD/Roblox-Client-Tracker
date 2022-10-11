-- from this GitHub gist: https://gist.github.com/tylerneylon/59f4bcf316be525b30ab

local json = {}

local function kind_of(obj)
	if type(obj) ~= "table" then
		return type(obj)
	end
	local i = 1
	for _ in pairs(obj) do
		if obj[i] ~= nil then
			i = i + 1
		else
			return "table"
		end
	end
	if i == 1 then
		return "table"
	else
		return "array"
	end
end

local function escape_str(s: string)
	local in_char = { "\\", '"', "/", "\b", "\f", "\n", "\r", "\t" }
	local out_char = { "\\", '"', "/", "b", "f", "n", "r", "t" }
	for i, c in ipairs(in_char) do
		s = s:gsub(c, "\\" .. out_char[i])
	end
	return s
end

function json.stringify(obj: any, as_key: boolean?)
	local s = {} -- We'll build the string as an array of strings to be concatenated.
	local kind = kind_of(obj) -- This is 'array' if it's an array or type(obj) otherwise.
	if kind == "array" then
		if as_key then
			error("Can't encode array as key.")
		end
		s[#s + 1] = "["
		for i, val in ipairs(obj) do
			if i > 1 then
				s[#s + 1] = ", "
			end
			s[#s + 1] = json.stringify(val)
		end
		s[#s + 1] = "]"
	elseif kind == "table" then
		if as_key then
			error("Can't encode table as key.")
		end
		s[#s + 1] = "{"
		for k, v in pairs(obj) do
			if #s > 1 then
				s[#s + 1] = ", "
			end
			s[#s + 1] = json.stringify(k, true)
			s[#s + 1] = ":"
			s[#s + 1] = json.stringify(v)
		end
		s[#s + 1] = "}"
	elseif kind == "string" then
		return '"' .. escape_str(obj) .. '"'
	elseif kind == "number" then
		if as_key then
			return '"' .. tostring(obj) .. '"'
		end
		return tostring(obj)
	elseif kind == "boolean" then
		return tostring(obj)
	elseif kind == "nil" then
		return "null"
	else
		error("Unjsonifiable type: " .. kind .. ".")
	end
	return table.concat(s)
end

return json
