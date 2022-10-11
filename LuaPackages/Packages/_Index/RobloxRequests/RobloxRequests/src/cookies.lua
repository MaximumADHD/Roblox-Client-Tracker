-- cookie jar class --
----------------------

local Main = script.Parent.Parent
local Lib = Main.lib
local Src = Main.src
---------------------------------

local json = require(Src.json)
local Url = require(Lib.url)

local function maybe_number(str)
	-- convert value to number if possible

	local num = tonumber(str)

	return num or str
end

local function trim(s)
	s = s or ""

	while s:sub(1, 1) == " " do
		s = s:sub(2)
	end

	while s:sub(-1, -1) == " " do
		s = s:sub(1, -2)
	end

	return s
end

-- Cookie object

local Cookie = {}
Cookie.__index = Cookie
function Cookie.new(name, value, opts)
	local self = setmetatable({}, Cookie)

	opts = opts or {}

	self.name = name
	self.value = value

	self.domain = opts.domain or ""
	self.path = opts.path or ""

	return self
end

function Cookie.fromSet(s)
	-- create from Set-Cookie header

	local opts = {}

	local args = s:split(";")

	local nv = args[1]:split("=")
	local name, value = trim(nv[1]), trim(nv[2])

	for i = 2, #args do
		local kv = args[i]:split("=")
		local k, v = trim(kv[1]):lower(), trim(kv[2])

		opts[k] = v
	end

	return Cookie.new(name, value, opts)
end

function Cookie:matches(url)
	-- check if cookie should be used for URL

	if not self.domain then
		return true
	end

	local u = Url.parse(url)

	if self.domain:sub(1, 1) == "." then -- wildcard domain
		if not (u.host:sub(-#self.domain, -1) == self.domain or u.host == self.domain:sub(2)) then
			return false
		end
	else
		if u.host ~= self.domain then
			return false
		end
	end

	if self.path then
		if not u.path:sub(1, #self.path) == self.path then
			return false
		end
	end

	return true
end

-- CookieJar object

local CookieJar = {}
CookieJar.__index = CookieJar
function CookieJar.new()
	local self = setmetatable({}, CookieJar)

	self.__cookiejar = true -- used to differentiate from dictionaries

	self.cookies = {}

	return self
end

function CookieJar:insert(name, value, opts)
	-- set new cookies in cookie jar

	self.cookies[name] = Cookie.new(name, value, opts)

	return self
end

function CookieJar:SetCookie(s)
	-- add cookie from set-cookie string

	local c = Cookie.fromSet(s)

	self.cookies[c.name] = c
end

function CookieJar:delete(name)
	self.cookies[name] = nil
end

function CookieJar:string(url)
	-- convert to header string
	local str = ""

	for _, cookie in pairs(self.cookies) do
		if str then
			str = str .. "; "
		end

		str = str .. ("%s=%s"):format(cookie.name, cookie.value)
	end

	return str
end

function CookieJar:__tostring()
	return json.enc(self.domains)
end

return CookieJar
